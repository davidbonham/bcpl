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
$)

// ss_pushframe - start a new frame on the simulated stack
//
// We're at the entry point of a called function or routine. At the moment
// the simulated stack looks like this:
//
// +-----+-----+----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
// | Po  | So  |    | ... |     |     |     | A1  | A2  | ... | An  |  Fn |
// +-----+-----+----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
//    ^----------------------------- S --------------------------------^
//    ^--------- k ----------^
//    P
//
// Where P points to the base of the caller's frame, S points to the top of
// its stack and k is the distance from the base of the caller's frame to
// the base of the new frame.
//
// When we finished, we will have saved the current P and S in the savespace at
// P[k], P[k+1] and set up P' and S' to represent the new frame like this:
//
// +-----+-----+----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
// | Po  | So  | Bo | ... |  P  |  S  | BB  | A1  | A2  | ... | An  |  Fn |
// +-----+-----+----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
//                           ^
//                           P' S'=0
//
// These diagrams assume savespacesize = 3 but savespacesize is set by the
// BCPL compiler and available to us via the global vector. Our current
// implementation requires it to be at least 3.
//
// We expect a following SAVE ocode operation to set S.
//
// Note that the savespace cells we use to hold P and S are not LLVM
// objects but the basicblock value is.
//
// Note that we don't need to save the current LLVM function as well as the
// basic block as we can obtain the former from the latter by calling
// LLVMGetBasicBlockParent.
//
// When we pop this frame, the arguments and savespace reserved for us on
// the stack will be discarded by resetting S to the k we are given. If we
// are a function, we need to allow an extra 1 for the function result we
// have left on the stack.

LET ss_pushframe(k, is_function) BE $(

    LET p1 = ss_p + k
    assert(savespacesize >= 3)
    assert(p1 + 3 < ss_pastworkspace)

    p1!0 := ss_p                         // Caller's frame
    p1!1 := k + (is_function -> 1, 0)    // Caller's stack on exit, args &c discarded
    p1!2 := basicblock                   // So we can reset LLVM to the function and basic block

    ss_p := p1
    trace("ss_pushframe P=%N S still %N*N", ss_p, ss_s)
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
    basicblock := our_p!2
    function := llvm_get_basic_block_parent(basicblock)
    trace("ss_popframe P=%N S now %N*N", ss_p, ss_s)
$)

// ss_push - create a store location for the value and push in on the simulated stack
//
// Create a new alloca and build code to store the value we were given in
// it. Then push the alloca onto the simulated stack.
//
// value - the value to be stored

LET ss_push(value) BE $(
    // Make sure there's room on the stack
    assert (ss_p + ss_s + 1< ss_pastworkspace)

    // Create an LLVM location representing this stack cell
    ss_p!ss_s := llvm_build_alloca(builder, word_type, "STK")

    // And generate code to store the value in it
    llvm_build_store(builder, value, ss_p!ss_s)
    ss_s +:= 1

    trace("ss_push value %N P=%N S now %N*N", ss_p!(ss_s-1), ss_p, ss_s)
$)

// ss_pop - pop the value off the top of the simulated stack

LET ss_pop(name) = VALOF $(
    // Remember S points to the free cell so once we decrement S, it
    // conveniently points to the value we need to return.

    ss_s -:= 1
    trace("ss_pop %S value %N P=%N S now %N*N", name, ss_p!(ss_s+1), ss_p, ss_s)
    RESULTIS llvm_build_load2(builder, word_type, ss_p!ss_s, name)
$)

// ss_tos - return the current value of S, leaving S unchanged

LET ss_tos() = ss_s


LET ss_get(n) = VALOF $(
    // Get the LLVM object at offset n from the base of the current
    // stack frame.
    assert(n < ss_s)
    trace("ss_get from cell %N: value=%N*N", n, ss_p!n)
    RESULTIS ss_p!n
$)

LET ss_set(n, value) BE $(
    assert(n < ss_s)
    trace("ss_set cell %N to %N*N", n, value)
    ss_p!n := value
$)

LET ss_stack(n) BE $(
    trace("ss_stack: adjust S from %N to %N*N", ss_s, n)
    ss_s := n
$)
