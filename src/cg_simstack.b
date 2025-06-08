//  #####                                                        #####
// #     # # #    # #    # #        ##   ##### ###### #####     #     # #####   ##    ####  #    #
// #       # ##  ## #    # #       #  #    #   #      #    #    #         #    #  #  #    # #   #
//  #####  # # ## # #    # #      #    #   #   #####  #    #     #####    #   #    # #      ####
//       # # #    # #    # #      ######   #   #      #    #          #   #   ###### #      #  #
// #     # # #    # #    # #      #    #   #   #      #    #    #     #   #   #    # #    # #   #
//  #####  # #    #  ####  ###### #    #   #   ###### #####      #####    #   #    #  ####  #    #
//
//
// Simulate P and S using workspace passed to us. The items we manipulate
// are often LLVM objects representing storage locations or expressions
// being build up as we process OCODE.

STATIC $(
    ss_p             // P forthe current stack frame in the stack map
    ss_s             // S for the current frame in the stack map
    ss_free          // The index of the next stack map entry to use
    ss_data          // Stack map: the deta held in the stack cell
    ss_addr          // Stack map: the address of the stack cell
    ss_capacity      // The number of stack map entries available
$)

MANIFEST $(
    SS_BASE = 100   // The minimum value of P
    SS_OLDP = 0     // The offset from P of the previous P
    SS_OLDS = 1     // The offset from P of the previous S
    SS_OLDB = 2     // The offset from P of the previous basic block
$)

LET ss_ps(label) BE trace("%S: P=%N S=%N P+S=%N", label, ss_p, ss_s, ss_p+ss_s)

// Given a stack address (so a combination of P and S) return the index
// of the stack map entry corresponding to that address. If the address
// dont not yet exist, return 0. Note that because entry 0 is the sentinal
// we can always use it to indicate failure.
LET ss_address_to_entry(n) = VALOF $(

    // Assume that there is some recency in requests and so search from
    // the top to the bottom. Remember we have a sentinal in entry 0 of
    // the map. We don't expect there to be many entries in the map and
    // so a linear search will do.
    FOR i = ss_free - 1 TO 1 BY -1 DO $(
        IF ss_addr!i = n DO $(
            RESULTIS i
        $)
    $)

    RESULTIS 0
$)

// Given a location n (typically the p+s of a local), locate the entry
// in the stack map with that address and return the corresponding value.
LET ss_x_get(n) = VALOF $(

    LET entry = ss_address_to_entry(n)
    IF entry = 0 DO cgerror("stack entry %n not found*N", n)
    RESULTIS ss_data!entry
 $)

// Given a location n (typically the p+s of a local), locate the entry
// in the stack map with that address and set its value to that given.
// If there is no entry with address n, create one.
LET ss_x_set(n, value) BE $(

    LET entry = ss_address_to_entry(n)
    IF entry = 0 DO $(
        //trace("ss_x_set new cell %N: located at %N value=%N*N", n, ss_free, value)
        assert(ss_free < ss_capacity, "stack map is full*N")
        ss_addr!ss_free := n
        entry := ss_free
        ss_free +:= 1
    $)

    ss_data!entry := value
$)

// Get the value of a local in the current stack frame (that is, the stack
// frame pointed to by P).
LET ss_getframe(s) = ss_x_get(ss_p + s)

// ss_init - initialise the simulated stack ready for use
//
// The workspace is recorded and the frame pointer P is set to point to
// the first word being the locaton of the current frame.
//
// workspace - the address of the first word me may use for our stack
// cellcount - the number of BCPLWORDS of space available

LET ss_init(workspace, cellcount) BE $(

    // The workspace we are given is allocated entirely to the stack map,
    // half to the addresses and half to the values.
    ss_addr := workspace
    ss_data := workspace + cellcount / 2
    ss_capacity := cellcount / 2
    ss_free := 0

    ss_p := SS_BASE
    ss_s := 0
    trace("ss_init P=%N S=%N*N", ss_p, ss_s)

    // Place a sentinal at the bottom of our stack map.
    ss_data!0 := #xDEADBEEF
    ss_addr!0 := #xDEADBEEF
    ss_free := 1

$)

// ss_pushframe - start a new frame on the simulated stack
//
// We're at the entry point of a called function or routine. At the moment
// the simulated stack looks like this, for an example Fn(A1,A2):
//
// +-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
// | Po  | So  |     | ... |     |     |     | A1  | A2  |  Fn |
// +--0--+--1--+--2--+--3--+--4--+--5--+--6--+--7--+--8--+--9--+
//    P                                                     S
//
// We are called with the argument to the SAVE operation, n=5. Because the
// savespacesize is 3, we know n - savespacesize = 5 - 3 = 2 so there are
// two arguments.
//
// We need to set up a new frame pointed to by P with S positioned at the
// free cell above the arguments:
//
// +-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
// |     |     |  BB | ... | Po  |     | BB  | A1  | A2  |     |     |
// +-----+-----+-----+-----+--0--+--1--+--2--+--3--+--4--+--5--+--6--+
//   Po                             Pnew                    S
//
// So Pnew = Po + S - save = P0 + 5 - 9
// These diagrams assume savespacesize = 3 but savespacesize is set by the
// BCPL compiler and available to us via the global vector. Our current
// implementation requires it to be at least 3.
//
// Note that the savespace cells we use to hold P and S are not LLVM
// objects but the basicblock value is.
//
// Note that we don't need to save the current LLVM function as well as the
// basic block as we can obtain the former from the latter by calling
// LLVMGetBasicBlockParent.
//
// When we pop this frame, the arguments and savespace reserved for us on
// the stack will be discarded by resetting S to the k we are given (if
// RTRN) or k+1 (if FNRN and P[k] is the result)

// -----------------------------------------------------------------------------
LET ss_pushframe(save) BE $(
// -----------------------------------------------------------------------------
//
// We are declaring a new function so we need to create a new stack frame
// above the enclosing functions frame. The value of P doesn't matter because
// all of the code we will generate will be independend of P, all it cares
// about is the relative positions of the expression in the frame.

    // The bottom of the new frame
    LET p1 = ss_p + ss_s

    // Make sure there is room in the frame to preserve our old state
    assert(savespacesize >= 3, "savespace tiny")

    ss_x_set(p1+SS_OLDP, ss_p)                      // Caller's P
    ss_x_set(p1+SS_OLDS, ss_s)                      // Caller's S on exit, args &c discarded
    ss_x_set(p1+SS_OLDB, basicblock)                // So we can reset LLVM to the function and basic block

    ss_p := p1
    ss_ps("ss_pushframe")
    trace("*N")
$)


// ss_popframe - pop the current stack frame off the similated stack
//
// The simulated stack looks like this at the moment
//
// +-----+-----+----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
// | Pq  | Sq  |    | ... | Po  | So  | Bo  | A1  | A2  | ... | An  |  Fn |
// +-----+-----+----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
//                           ^ -----------------------------------
//                           P
//
// Restore the caller's frame and stack pointer so it looks like this:
//
// +-----+-----+----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
// | Pq  | Sq  |    | ... | Po  | So  | Bo  | A1  | A2  | ... | An  |  Fn |
// +-----+-----+----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
//    ^------ S -------^
//    P
//
// and use the saved basic block so that  LLVM can be positioned at the
// end of the caller's basic block and function.

LET ss_popframe() BE $(

    ss_s       := ss_getframe(SS_OLDS)
    basicblock := ss_getframe(SS_OLDB)
    ss_p       := ss_getframe(SS_OLDP)
    function := basicblock = 0 -> 0, llvm_get_basic_block_parent(basicblock)
    trace("ss_popframe P=%N S now %N basicblock %N function %N *N", ss_p, ss_s, basicblock, function)
$)

// ss_push - create a store location for the value and push in on the simulated stack
//
// Create a new alloca and build code to store the value we were given in
// it. Then push the alloca onto the simulated stack.
//
// value - the value to be stored

LET ss_push(value) BE $(

    // Make sure there's room on the stack
    ss_x_set(ss_p+ss_s, allocate_temporary(builder, basicblock, "STK"))

    // And generate code to store the value in it
    llvm_build_store(builder, value, ss_getframe(ss_s))
    ss_ps("ss_push ")
    trace(" pushed %N S now %N*N", ss_getframe(ss_s), ss_s+1)
    ss_s +:= 1
$)

// ss_pop - pop the value off the top of the simulated stack

LET ss_pop(name) = VALOF $(
    // Remember S points to the free cell so S-1 is the value we need
    LET value = ss_getframe(ss_s - 1)
    ss_s -:= 1
    trace("ss_pop %S value %N P=%N S now %N*N", name, value, ss_p, ss_s)
    RESULTIS llvm_build_load2(builder, word_type, value, name)
$)

LET ss_drop(name) BE $(
    // We're not emitting IR but we chave consumed the TOS. This is typically
    // the result of being in unreachable code
    ss_s -:= 1
    trace("ss_pop %S value %N P=%N S now %N*N", name, ss_getframe(ss_s+1), ss_p, ss_s)
$)

// ss_tos - return the current value of S, leaving S unchanged

LET ss_tos() = ss_s

LET ss_frame() = ss_p

LET ss_stack(n) BE $(
    trace("ss_stack: adjust S from %N to %N*N", ss_s, n)
    ss_s := n
$)

LET ss_trace(label) BE $(
    LET top = ss_p
    trace("%S: ", label)
    WHILE top > SS_BASE DO $(
       trace("P=%N(P=%N,S=%N,BB); ", top, ss_x_get(top+SS_OLDP), ss_x_get(top+SS_OLDS))
       top := ss_x_get(top+0)
    $)
    trace("P=%N(?,?,?) END*N", top)
$)

