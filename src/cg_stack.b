
//  #####                                                        #####                             
// #     # # #    # #    # #        ##   ##### ###### #####     #     # #####   ##    ####  #    # 
// #       # ##  ## #    # #       #  #    #   #      #    #    #         #    #  #  #    # #   #  
//  #####  # # ## # #    # #      #    #   #   #####  #    #     #####    #   #    # #      ####   
//       # # #    # #    # #      ######   #   #      #    #          #   #   ###### #      #  #   
// #     # # #    # #    # #      #    #   #   #      #    #    #     #   #   #    # #    # #   #  
//  #####  # #    #  ####  ###### #    #   #   ###### #####      #####    #   #    #  ####  #    # 
//
// Because the simulated stack may be huge (containing VECs and so on) we only keep track of the
// significant locations. We use a map (F_MAP) that maps a value X onto the LLVM location (an 
// alloca node) for P!X.

MANIFEST $(
    MAXFRAMESIZE = 64 
$)

STATIC $( 
    stk_workspace   // Contents of our stack of call frames
    stk_free        // Address of the next free word in the above
    stk_size        // The number of words we were given
    stk_frame       // Pointer to the current stack frame in the above
$)

LET stk_init(w, s) BE $(

    stk_workspace := w
    stk_free := w
    stk_size := s
    stk_frame := 0
$)

MANIFEST $(
    F_BACK     = 0      // Index of caller's stack frame
    F_SIZE     = 1      // Size of this stack frame (including header)
    F_S        = 2      // This frame's current S
    F_H        = 3      // This frame's high water mark
    F_ALLOC    = 4      // The last alloca instruction for this frame
    F_MAP      = 5      // Address of the first cell of the map
    F_P        = 6      // Address of the first cell in this frame's Psparse
    F_FUNCTION = 7      // The function being compiled
    F_BB       = 8      // The function's current basic block
    F_HDRSIZE  = 9      // Number of fixed words in the frame header
$)

LET stk_trimframe() BE $(
    // Trim P in the emitted code to the size we actually used. All of the
    // alloca instructions we have created above the hight water mark are
    // deleted from their owning parent block.
    LET deletions = stk_frame!F_SIZE - stk_frame!F_H
    LET current = stk_frame!F_ALLOC
    writef("stk_trimframe: size=%N H=%N so deleting %N*N", stk_frame!F_SIZE, stk_frame!F_H, deletions)
    FOR i = 1 TO deletions DO $(
        LET t = current
        llvm_print_value_to_string(t)
        writef("deleting %s*n", llvm_result)

        current := llvm_get_previous_instruction(current)
        llvm_instruction_erase_from_parent(t)
    $)
$)

LET stk_popframe() BE $(

    
    function := stk_frame!F_FUNCTION
    basicblock := stk_frame!F_BB

    // Discard the frame. The allocas that we did not delete will be dropped
    // by LLVM at the end of the function.
    stk_free := stk_frame
    stk_frame := stk_frame!F_BACK
$)

LET ss_stack(n) BE 
$(
    // Point to the base of the map
    LET M = stk_frame!F_MAP

    // Discard all stack entries at address n or higher
    FOR i = 0 TO stk_frame!F_SIZE - 1 DO
    $(
        // Mark this entry as free
        UNLESS M!i < n DO M!i := -1
    $)

    stk_frame!F_S := n   
    stk_frame!F_H := n 
    IF debug = 2 THEN writef("ss_stack: S=%N*N", stk_frame!F_S)
$)

// Given n, a position in the simulated stack, return the corresponding 
// index X in our sparse vector Psparse (so Psparse!X holds the alloca 
// variable holding its contents). M!i is the index in Psparse of P!i.
//
// If there is no such entry, return -1.
LET ss_lookup(n) = VALOF
$(
    // Find the index of stack position n else -1
    LET M = stk_frame!F_MAP
    FOR i = 0 TO stk_frame!F_SIZE- 1 DO
    $(
        IF M!i = n THEN
        $(
            IF debug = 2 THEN writef("ss_lookup: P!%N at Psparse!%N*N", n, i)
            RESULTIS i
        $)
    $) 
    RESULTIS -1  
$)

LET ss_allocate(n) BE $(
    // Our use case for this is LLP for a pending vector. We need to map
    // a cell to P[n] so that we can push its LV
    LET cell = ss_lookup(-1)

    // And we need to tell the map that this cell holds P[n]
    LET M = stk_frame!F_MAP
    M!cell := n
$)

LET ss_set(location, value) BE $(

    LET M, Psparse = stk_frame!F_MAP, stk_frame!F_P

    // Create a stack variable above the current stack top as a reference
    // to a stack variable to be declared in the near future
    UNLESS ss_lookup(location) = -1 THEN cgerror("ss_set: %N already exists*N", location)
    M!location := location
    Psparse!location := value
$)

LET ss_push(value) BE 
$(
    LET M, Psparse, S = stk_frame!F_MAP, stk_frame!F_P, stk_frame!F_S

    // Find a free cell in Psparse - that is, an alloca location not 
    // currently in use. 
    LET free = ss_lookup(-1)
    IF free = -1 THEN cgerror("simulated stack has overflowed")

    // Push the value into the free cell and mark it in the map as representing
    // P[S]
    llvm_build_store(builder, value, Psparse!free)
    M!free := S
    S +:= 1

    // This may be higher in the stack than we've been in this function
    IF S > stk_frame!F_H DO stk_frame!F_H := S
    stk_frame!F_S := S

    IF debug = 2 THEN writef("ss_push S now %N*N", S)
$)

LET ss_pushquery() BE $(
    // The QUERY operation pushed an uninitialised value onto the stack. 
    // We don't want to generate s superfluous store so we simply map the
    // top of the stack and advance S leaving the top of stack element
    // allocated but with no value
    LET S = stk_frame!F_S
    ss_allocate(S)
    stk_frame!F_S +:= 1
$)

// Return the top of the stack frame (next free cell) as an offset from P. 
LET ss_tos() = stk_frame!F_S

LET ss_get(n) = VALOF
$(
    LET M, Psparse = stk_frame!F_MAP, stk_frame!F_P

    // Find the stack element at S-1
    LET location = ss_lookup(n)
    IF location = -1 DO cgerror("Simulated stack element %N missing*N", n)
    IF debug = 2 THEN writef("ss_get %N*N", n)
    RESULTIS Psparse!location
$)

// Pop the top item off the stack, returning a load from its cell
LET ss_popleft() = VALOF
$(
    LET M, Psparse, S = stk_frame!F_MAP, stk_frame!F_P, stk_frame!F_S

    // Find the cell that holds P[S-1], the top of the stack
    LET location = ss_lookup(S-1)
    IF location = -1 DO cgerror("Simulated top stack element P[%N] missing*N", S-1)

    IF debug = 2 THEN writef("popping %N location %N*N", S-1, location)

    // Remove this cell from the map of allocated cells.
    M!location := -1

    // Adjust the stack
    stk_frame!F_S -:= 1

    IF debug = 2 THEN writef("ss_pop S now %N*N", S-1)

    RESULTIS Psparse!location
$)

LET ss_pop(name) = VALOF $(
    LET lv = ss_popleft()
    RESULTIS llvm_build_load2(builder, word_type, lv, name)
$)

LET stk_backtrace() BE $(

    LET saved_frame = stk_frame
    UNTIL stk_frame = 0 DO $(

        writef("Frame at %N(size %N, parent=%N): S=%N H=%N*N", stk_frame, stk_frame!F_SIZE, stk_frame!F_BACK, stk_frame!F_S, stk_frame!F_H)
        FOR i = 0 TO stk_frame!F_S-1 DO $(
            TEST ss_lookup(i) = -1 THEN $(
                writef("P[%N] not found*N", i)
            $)
            ELSE $(
                LET cell = ss_get(i)
                llvm_print_value_to_string(cell)
                writef("P[%N] %S*N", i, llvm_result)
            $)
        $)

        stk_frame := stk_frame!F_BACK
    $)

    stk_frame := saved_frame
$)

LET stk_pushframe(size) BE $(

    LET Psparse = ?

    // Point to the base of the new frame
    LET new_frame = stk_free
    stk_free +:= size*2 + F_HDRSIZE
    IF stk_free >= stk_workspace + stk_size DO $(
        stk_backtrace()
        cgerror("request for %N word stack frame exhausted frames*N", size)
    $)

    // Fill in the header of the new stack
    new_frame!F_BACK     := stk_frame
    new_frame!F_SIZE     := size
    new_frame!F_S        := savespacesize
    new_frame!F_H        := 0
    new_frame!F_MAP      := new_frame + F_HDRSIZE
    new_frame!F_P        := new_frame!F_MAP + size
    new_frame!F_FUNCTION := function
    new_frame!F_BB       := basicblock

    // Allocate stack locations to the cells in Psparse and record the last
    // of them. 
    Psparse := new_frame!F_P
    FOR i = 0 TO size-1 DO $(
        Psparse!i := llvm_build_alloca(builder, word_type, "M")
    $)
    new_frame!F_ALLOC := llvm_get_last_instruction(basicblock)

    // Make the stack current
    stk_frame := new_frame
$)

LET dump_stack() BE $(
    writef("dump_stack: P=%N S=%N H=%N*N", stk_frame!F_P, stk_frame!F_S, stk_frame!F_H)
    FOR i = 0 TO stk_frame!F_S-1 DO $(
        UNLESS ss_lookup(i) = -1 DO $(
            LET value = ss_get(i)
            llvm_print_value_to_string(value)
            writef("P[%N] %S*N", i, llvm_result)
        $)
    $)
$)