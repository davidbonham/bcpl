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
    ss_workspace     // Contents of our stack of call frames
    ss_pastworkspace // Address past the end, not ours to use
    ss_p             // Pointer to the current stack frame in the above
    ss_s             // S for the current frame
$)

LET ss_ps(label) BE trace("%S: P=%N S=%N P+S=%N", label, ss_p, ss_s, ss_p+ss_s)

// ss_init - initialise the simulated stack ready for use
//
// The workspace is recorded and the frame pointer P is set to point to
// the first word being the locaton of the current frame.
//
// workspace - the address of the first word me may use for our stack
// cellcount - the number of BCPLWORDS of space available

LET ss_init(workspace, cellcount) BE $(
    ss_workspace := workspace
    ss_pastworkspace := ss_workspace + cellcount
    ss_p := ss_workspace
    ss_s := 0
    trace("ss_init P=%N S=%N*N", ss_p, ss_s)
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
    assert(p1 + 3 < ss_pastworkspace, "P past end of stack space")

    p1!0 := ss_p                         // Caller's P
    p1!1 := ss_s                         // Caller's S on exit, args &c discarded
    p1!2 := basicblock                   // So we can reset LLVM to the function and basic block

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

    LET our_p = ss_p
    ss_p := our_p!0
    ss_s := our_p!1
    // Restore the LLVM building context for the parent, if we haven't
    // reached to the top
    basicblock := our_p!2
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

    // Create an LLVM location representing this stack cell. We need to
    // position the build at the start of the function and restore it later
    // So that all of our stack allocations are at the function entry. This
    // avoids problems when GOTO causes us to add phi nodes that can create
    // edges never used but mean that a local doesn't dominate all of its
    // apparant uses.
    LET current_block = llvm_get_insert_block(builder)

    // Move the builder to the start of the function
    LET parent_function = llvm_get_basic_block_parent(basicblock)
    LET function_entry_block = llvm_get_entry_basic_block(parent_function)
    LET terminator = llvm_get_basic_block_terminator(function_entry_block)
    TEST terminator = 0 THEN $(
        // First block in the function doesn't yet have a terminator so we
        // can add stuff to the end of the block
        llvm_position_builder_at_end(builder, function_entry_block)
    $)
    ELSE $(
        // The block is terminated so add stuff before it
        llvm_position_builder_before(builder, terminator)
    $)
    // Make sure there's room on the stack
    assert (ss_p + ss_s + 1< ss_pastworkspace, "push past end of stack space")

    // Allocate our stack cell
    ss_p!ss_s := llvm_build_alloca(builder, word_type, "STK")

    // Restore the builder's current location
    llvm_position_builder_at_end(builder, current_block)

    // And generate code to store the value in it
    llvm_build_store(builder, value, ss_p!ss_s)
    ss_ps("ss_push ")
    trace(" pushed %N S now %N*N", ss_p!ss_s, ss_s+1)
    ss_s +:= 1
$)

// ss_pop - pop the value off the top of the simulated stack

LET ss_pop(name) = VALOF $(
    // Remember S points to the free cell so once we decrement S, it
    // conveniently points to the value we need to return.

    ss_s -:= 1
    trace("ss_pop %S value %N P=%N S now %N*N", name, ss_p!(ss_s+1), ss_p, ss_s)
    RESULTIS llvm_build_load2(builder, word_type, ss_p!ss_s, name)
$)

LET ss_drop(name) BE $(
    // We're not emitting IR but we chave consumed the TOS. This is typically
    // the result of being in unreachable code
    ss_s -:= 1
    trace("ss_pop %S value %N P=%N S now %N*N", name, ss_p!(ss_s+1), ss_p, ss_s)
$)

// ss_tos - return the current value of S, leaving S unchanged

LET ss_tos() = ss_s

LET ss_frame() = ss_p

LET ss_get(n) = VALOF $(
    // Get the LLVM object at offset n from the base of the current
    // stack frame.
    assert(n < ss_s, "request for bad stack cell")
    trace("ss_get from cell %N: value=%N*N", n, ss_p!n)
    RESULTIS ss_p!n
$)

LET ss_set(n, value) BE $(
    assert(n < ss_s, "setting bad stack cell")
    trace("ss_set cell %N to %N*N", n, value)
    ss_p!n := value
$)

LET ss_stack(n) BE $(
    trace("ss_stack: adjust S from %N to %N*N", ss_s, n)
    ss_s := n
$)

LET ss_trace(label) BE $(
    LET top = ss_p
    trace("%S: ", label)
    WHILE top > ss_workspace DO $(
       trace("P=%N(P=%N,S=%N,BB); ", top, top!0, top!1)
       top := top!0
    $)
    trace("P=%N(?,?,?) END*N", top, top!0, top!1)
$)

