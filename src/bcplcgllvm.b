GET "libhdr"
GET "bcplfecg"

GET "c-api/autogen.llvmhdr"

MANIFEST
$(
    LLVM_DEFAULT_VISIBILITY    = 0
    LLVM_HIDDEN_VISIBILITY     = 1
    LLVM_PROTECTED_VISIBILITY  = 2
$)

MANIFEST
$(
    LLVM_EXTERNAL_LINKAGE                 =  0
    LLVM_AVAILABLE_EXTERNALLY_LINKAGE     =  1
    LLVM_LINK_ONCE_ANY_LINKAGE            =  2
    LLVM_LINK_ONCE_ODR_LINKAGE            =  3
    LLVM_LINK_ONCE_ODR_AUTO_HIDE_LINKAGE  =  4 
    LLVM_WEAK_ANY_LINKAGE                 =  5    
    LLVM_WEAK_ODR_LINKAGE                 =  6     
    LLVM_APPENDING_LINKAGE                =  7
    LLVM_INTERNAL_LINKAGE                 =  8                         
    LLVM_PRIVATE_LINKAGE                  =  9   
    LLVM_DLL_IMPORT_LINKAGE               = 10   
    LLVM_DLL_EXPORT_LINKAGE               = 11   
    LLVM_EXTERNAL_WEAK_LINKAGE            = 12
    LLVM_GHOST_LINKAGE                    = 13      
    LLVM_COMMON_LINKAGE                   = 14      
    LLVM_LINKER_PRIVATE_LINKAGE           = 15
    LLVM_LINKER_PRIVATE_WEAK_LINKAGE      = 16
$)

MANIFEST
$(
    LLVM_ABORT_PROCESS_ACTION = 0
    LLVM_PRINT_MESSAGE_ACTION = 1
    LLVM_RETURN_STATUS_ACTION = 2
$)

MANIFEST
$(
    LLVM_IntEQ = 32  // equal
    LLVM_IntNE       // not equal 
    LLVM_IntUGT      // unsigned greater than 
    LLVM_IntUGE      // unsigned greater or equal 
    LLVM_IntULT      // unsigned less than 
    LLVM_IntULE      // unsigned less or equal 
    LLVM_IntSGT      // signed greater than 
    LLVM_IntSGE      // signed greater or equal 
    LLVM_IntSLT      // signed less than 
    LLVM_IntSLE      // signed less or equal
$)

MANIFEST $(
  LLVM_REAL_PREDICATE_FALSE // Always false (always folded) 
  LLVM_REAL_OEQ             // True if ordered and equal
  LLVM_REAL_OGT             // True if ordered and greater than 
  LLVM_REAL_OGE             // True if ordered and greater than or equal 
  LLVM_REAL_OLT             // True if ordered and less than 
  LLVM_REAL_OLE             // True if ordered and less than or equal 
  LLVM_REAL_ONE             // True if ordered and operands are unequal 
  LLVM_REAL_ORD             // True if ordered (no nans) 
  LLVM_REAL_UNO             // True if unordered: isnan(X) | isnan(Y) 
  LLVM_REAL_UEQ             // True if unordered or equal 
  LLVM_REAL_UGT             // True if unordered or greater than 
  LLVM_REAL_UGE             // True if unordered, greater than, or equal 
  LLVM_REAL_ULT             // True if unordered or less than 
  LLVM_REAL_ULE             // True if unordered, less than, or equal 
  LLVM_REAL_UNE             // True if unordered or not equal 
  LLVM_REAL_PREDICATE_TRUE  // Always true (always folded) 
$)

MANIFEST $(
  // LLVMCodeGenOptLevel
  LLVM_CODEGENLEVEL_NONE       = 0
  LLVM_CODEGENLEVEL_LESS       = 1
  LLVM_CODEGENLEVEL_DEFAULT    = 2
  LLVM_CODEGENLEVEL_AGGRESSIVE = 3
$)

MANIFEST $(
  // LLVMRelocMode
  LLVM_RELOC_DEFAULT        = 0
  LLVM_RELOC_STATIC         = 1
  LLVM_RELOC_PIC            = 2
  LLVM_RELOC_DYNAMICNOPIC   = 3
$)

MANIFEST $(
  // LLVMCodeModel
  LLVM_CODEMODEL_DEFAULT    = 0
  LLVM_CODEMODEL_JITDEFAULT = 1
  LLVM_CODEMODEL_SMALL      = 2
  LLVM_CODEMODEL_KERNEL     = 3
  LLVM_CODEMODEL_MEDIUM     = 4
  LLVM_CODEMODEL_LARGE      = 5
$)

// The workspace is given to us a one long vector which we allocate
// like a stack
STATIC $( workspace_base; workspace_size; workspace_free;  $)

MANIFEST $( BYTESPERWORD     =  8  $)
MANIFEST $( GLOBALVECTORSIZE = 256 $)
MANIFEST $( 
    LABEL_UNDEF = 0     // This label is not in use
    LABEL_LAB           // Seen as LAB
    LABEL_STATIC        // This label refers to static data
    LABEL_JUMP          // This label is a JUMP/JT/JF destination
    LABEL_ENTRY         // This label is ENTRY entry point
    LABEL_LF            // This label was created by LF but type not yet known
    LABEL_GOTO          // This label is a GOTO destinatin
$)
MANIFEST $( READAHEAD = 4 $)
MANIFEST $( MAXFRAMESIZE = 64 $)

STATIC
$(
    llvm_result              // String returned from last llvm call

    context
    builder
    module
    module_name
    module_text_section
    module_data_section
    module_rodata_section

    staticvec

    word_type                // The type for a BCPL word
    float_type               // Interpreting bit pattern as a float
    char_type                // Type of a character
    string_array_type        // Type of a n array of 0 characters
    parameter_types          // A vector of BCPL word types

    G                        // LLVMValueRef to the global vector
    A                        // RES/RSTACK temporary holding location

    function                 // The current function
    basicblock               // The current basic block in this function

    label_table_size
    label_type
    label_static
    label_bb

    pending_cell_referer     // Vector of n P[n] holds LLP[m] for m >= S
    pending_cell_referenced  // The corresponding m
    pending_cell_count       // The number of entries

    //FIXME new pass manager fpm                      // The function pass manager for this module

    section_mark             // workspace level at start of section
    is_current_section_empty // Stops us emitting unused initial section
    is_unreachable           // Last OCODE op was a FNRN or RTRN

    ocode_buffer             // Read ahead of incoming O-code
    ocode_buffer_next = READAHEAD 

    datalab_label            // The label for the last DATALAB we saw
    datalab_itemns           // Workspace allocated by DATALAB for ITEMNs
    datalab_itemn_count      // The number of ITEMNs we have collected

    ibr_indirect_br_instruction
    ibr_phi_node
    ibr_destination_count
    ibr_destinations
    ibr_destinations_size
$)

LET cgerror(message, a0, a1, a2) BE
$(
    errcount +:= 1
    writes("error: ")
    writef(message, a0, a1, a2)
    longjump(fin_p, fin_l)
$)
LET assert(condition) BE UNLESS condition DO cgerror("assertion failure*N")

// -----------------------------------------------------------------------------
// Workspace allocation
// -----------------------------------------------------------------------------

LET ws_init(space, size) BE $(
    workspace_base := space
    workspace_free := space
    workspace_size := size
$)

LET ws_alloc(size) = VALOF $(
    LET block = workspace_free
    workspace_free +:= size
    IF workspace_free > workspace_base + workspace_size DO cgerror("request for %N words exhausted workspace*N", size)
    RESULTIS block
$)

LET ws_mark() = workspace_free
LET ws_wipe(mark) BE workspace_free := mark
LET ws_avail() = workspace_size - (workspace_free - workspace_base)


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
    FOR i = 1 TO deletions DO $(
        LET t = current
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
            UNLESS ss_lookup(i) = -1 DO $(
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
    new_frame!F_S        := 0
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

// -----------------------------------------------------------------------------
LET dump_bb(label, bb) BE
$(
    IF debug > 0 THEN $(

        LET name = VEC 10
        LET parent = llvm_get_basic_block_parent(bb)
        LET terminator = llvm_get_basic_block_terminator(bb)
        LET instruction = llvm_get_first_instruction(bb)

        llvm_get_basic_block_name(bb, name)
        writef("---- %s: basic block=0x%16X name %S parent 0x%16X terminator 0x%16X*N", label, bb, name, parent, terminator)

        UNTIL instruction = 0 DO $(

            llvm_print_value_to_string(instruction)
            writef("    %S*N", llvm_result)
            instruction := llvm_get_next_instruction(instruction)
        $)
    $)
$)

LET dump_function_bbs(label, f) BE
$(
    LET entry_bb = llvm_get_entry_basic_block(f)
    LET next_bb  = llvm_get_first_basic_block(f)
    LET last_bb  = llvm_get_last_basic_block(f)

    IF debug > 0 THEN writes("-- function blocks ----*N")

    UNLESS next_bb = entry_bb DO dump_bb(label, entry_bb)
    UNTIL next_bb = 0 DO
    $(
        dump_bb(label, next_bb)
        next_bb := llvm_get_next_basic_block(next_bb)
    $) 
    IF debug > 0 THEN writes("-----------------------*N")


$)

LET dump_labels() BE $(
    FOR i = 0 TO label_table_size-1 DO $(
        UNLESS label_type!i = LABEL_UNDEF DO $(
            TEST label_type!i = LABEL_STATIC THEN $(
                llvm_print_value_to_string(label_static!i)
                writef("label %N: %S*N", i, llvm_result)
            $)
            ELSE $(
                writef("label %N: JUMP*N", i)
            $)
        $)
    $)
$)

LET dump_stack() BE $(
    writef("dump_stack: S=%N*N", stk_frame!F_S)
    FOR i = 0 TO stk_frame!F_S-1 DO $(
        UNLESS ss_lookup(i) = -1 DO $(
            LET value = ss_get(i)
            llvm_print_value_to_string(value)
            writef("P[%N] %S*N", i, llvm_result)
        $)
    $)
$)

LET strappend(string, appendix) BE
$(
    LET old_length = string%0
    LET next_ch = old_length
    FOR i = 1 TO appendix%0 DO string%(next_ch+i) := appendix%i
    string%0 +:= appendix%0
$)

AND stralloc(string) = VALOF
$(
    // Remenber we need a byte for the length
    LET words_needed = 256 / BYTESPERWORD
    LET work_string = ws_alloc(words_needed)
    work_string%0 := 0
    strappend(work_string, string)
    RESULTIS work_string
$)

// #                                          
// #         ##   #####  ###### #       ####  
// #        #  #  #    # #      #      #      
// #       #    # #####  #####  #       ####  
// #       ###### #    # #      #           # 
// #       #    # #    # #      #      #    # 
// ####### #    # #####  ###### ######  ####                   

LET lab_init(max) BE $(
    label_table_size := max
    label_type   := ws_alloc(max)
    label_static := ws_alloc(max)
    label_bb := ws_alloc(max)
    FOR i = 0 TO max - 1 DO 
    $( 
        label_type!i := LABEL_UNDEF
        label_static!i := 0
        label_bb!i := 0
    $)

$)

LET lab_declare(n, type) BE $(

    // We do a check that any transition is an expected one
    //
    //      ->   UNDEF LAB   LF    GOTO  ENTRY STATIC JUMP
    // UNDEF        E    U     U     U     U     U     U
    // LAB          E    E     U     U     E     U     U
    // LF           E    -     -     U     U     E     E
    // GOTO         E    -     -     -     E     E     E
    // ENTRY        E    E     -     E     E     E     E
    // STATIC       E    -     E     E     E     -     E
    // JUMP         E    -     E     E     E     E     -
    //
    // where E=Error, U=Update type, -=keep old type 
    LET error(label, old_type, new_type) BE cgerror("Attempt to use L%N of type %S as %S*N", label, old_type, new_type)

    IF n >= label_table_size DO cgerror("declaring label L%N overflows the label table*N", n)

    // We should never declare a label as UNDEF
    IF type = LABEL_UNDEF THEN error(n, "any", "UNDEF")

    SWITCHON label_type!n INTO $(

        CASE LABEL_UNDEF:
            label_type!n := type
        ENDCASE

        CASE LABEL_LAB:
            IF type = LABEL_LAB | type = LABEL_ENTRY THEN error(n, "LAB", "LAB or ENTRY")
            label_type!n := type
        ENDCASE

        CASE LABEL_LF:
            IF type = LABEL_STATIC | type = LABEL_JUMP THEN error(n, "LF", "STATIC or JUMP")
            IF type = LABEL_GOTO | type = LABEL_ENTRY THEN label_type!n := type
        ENDCASE

        CASE LABEL_GOTO:
            IF type = LABEL_ENTRY | type = LABEL_STATIC | type = LABEL_JUMP THEN error(n, "GOTO", "JUMP, ENTRY or STATIC")
        ENDCASE

        CASE LABEL_ENTRY:
            IF type ~= LABEL_LF THEN error(n, "ENTRY", "not LF")
        ENDCASE

        CASE LABEL_STATIC:
            IF type ~= LABEL_LAB & type ~= LABEL_STATIC THEN error(n, "STATIC", "not LAB")
        ENDCASE

        CASE LABEL_JUMP:
            IF type ~= LABEL_LAB & type ~= LABEL_JUMP THEN error(n, "JUMP", "not LAB or JUMP")
        ENDCASE
    $)
$)


LET lab_get_type(n) = label_type!n

LET lab_get_type_name(type) = VALOF SWITCHON type INTO $(
    CASE LABEL_UNDEF:  RESULTIS "UNDEF"
    CASE LABEL_LAB:    RESULTIS "LAB"
    CASE LABEL_STATIC: RESULTIS "STATIC"
    CASE LABEL_JUMP:   RESULTIS "JUMP"
    CASE LABEL_ENTRY:  RESULTIS "ENTRY"
    CASE LABEL_LF:     RESULTIS "LF"
    CASE LABEL_GOTO:   RESULTIS "GOTO"
    DEFAULT: RESULTIS "BUG"
$)

LET lab_get_bb(n) = VALOF $(

    // We don't expect this to be called for labels declared
    // as static locations - ENTRY, RTAP, FNAP, LL, LLL, SL
    // and GOTO for example
    IF label_type!n = LABEL_STATIC DO cgerror("label L%N is STATIC but basic block requested.*N", n)

    // If this label was declared ay an earlier LAB or GOTO it won't
    // have a basic block so we'll create one.
    IF label_bb!n = 0 THEN $(
        label_bb!n := llvm_create_basic_block_in_context(context, "label")
    $)

    RESULTIS label_bb!n
$)

LET lab_find_bb(bb) = VALOF $(
    FOR label = 0 TO label_table_size-1 DO $(
        IF label_bb!label = bb RESULTIS label
    $)
    RESULTIS -1
$)

LET lab_get_static(n) = VALOF $(

    IF label_static!n = 0 THEN $(
        LET static_variable = llvm_add_global(module, word_type, "static")
        llvm_set_linkage(static_variable, LLVM_INTERNAL_LINKAGE)
        llvm_set_section(static_variable, module_data_section)
        label_static!n := static_variable
    $)
    RESULTIS label_static!n
$)

LET lab_set_static(n, value) BE $(
    llvm_set_initializer(label_static!n, value)    
$)

LET lab_set_table(n, value) BE label_static!n := value

LET lab_has_bb(n) = label_bb!n ~= 0
LET lab_has_static(n) = label_static!n ~= 0

LET lab_dump() BE $(
    FOR i = 0 TO label_table_size-1 DO $(
        UNLESS label_type!i = LABEL_UNDEF DO $(
            writef("Label %N type %N has_static=%N has_bb=%N*N", i, label_type!i, lab_has_static(i), lab_has_bb(i))
        $)
    $)
$)


// ###                                               ######                                     
//  #  #    # #####  # #####  ######  ####  #####    #     # #       ####   ####  #    #  ####  
//  #  ##   # #    # # #    # #      #    #   #      #     # #      #    # #    # #   #  #      
//  #  # #  # #    # # #    # #####  #        #      ######  #      #    # #      ####    ####  
//  #  #  # # #    # # #####  #      #        #      #     # #      #    # #      #  #        # 
//  #  #   ## #    # # #   #  #      #    #   #      #     # #      #    # #    # #   #  #    # 
// ### #    # #####  # #    # ######  ####    #      ######  ######  ####   ####  #    #  ####  

/** Prepare the indirect branch handling ready for the fist function
 *
 * Initialise our state will enough space to record <count> labels that
 * might be GOTO destinations.
 * 
 */
LET ibr_init(count) BE $(
    ibr_indirect_br_instruction := 0
    ibr_phi_node := 0
    ibr_destination_count := 0
    ibr_destinations := ws_alloc(count)
    ibr_destinations_size := count
$)

/** Set up this function's indirect branch if it doesn't already exist
 *
 * A basic block is created containing a PHI node that will capture all 
 * the incoming edges from GOTOs and an indirect branch instruction that
 * will capture all of the allowed destinations. The basic block isn't 
 * inserted into any function yet.
 */
LET ibr_need_indirect_branch() BE $(
    IF ibr_indirect_br_instruction = 0 THEN $(
        LET phi_bb = llvm_create_basic_block_in_context(context, "phi.bb")
        LET temp_builder = llvm_create_builder_in_context(context)
        LET i8ptr_type = llvm_pointer_type(char_type, 0)
        llvm_position_builder_at_end(temp_builder, phi_bb)
        ibr_phi_node := llvm_build_phi(temp_builder, i8ptr_type, "phi")
        ibr_indirect_br_instruction := llvm_build_indirect_br(temp_builder, ibr_phi_node, 8)
        llvm_dispose_builder(temp_builder)
    $)
$)

/** Add a destination address to the current indirect branch instruction
 *
 * Given an O-code label, record it in our list of pending destinations. 
 * We don't add it to the instruction yet because we can't be sure in general
 * if the label represents a GOTO destination or a future ENTRY. Once we 
 * reach the ENDPROC all of the labels should have had their types resolved
 * and at the point, ibr_insert_and_clean up will actually insert the 
 * label as a destination.
 */
LET ibr_add_destination(label) BE $(
    IF ibr_destination_count + 1 >= ibr_destinations_size DO cgerror("adding destination overlowed indirect branch list*N")
    ibr_destinations!ibr_destination_count := label
    ibr_destination_count +:= 1
    ibr_need_indirect_branch()
$)

LET ibr_add_incoming(value, bb) BE $(
    LET values = VEC 0
    LET blocks = VEC 0
    values!0 := value
    blocks!0 := bb
    ibr_need_indirect_branch()
    llvm_add_incoming(ibr_phi_node, values, blocks, 1)
$)

LET ibr_insert_and_cleanup(builder) BE $(

    IF ibr_indirect_br_instruction ~= 0 THEN $(

        LET incoming_edges = llvm_count_incoming(ibr_phi_node)
        IF incoming_edges > 0 THEN $(

            LET parent_bb = llvm_get_instruction_parent(ibr_indirect_br_instruction)

            // We need the indirect block/ Add all of its real destinations
            FOR i = 0 TO ibr_destination_count-1 DO $(
                LET label = ibr_destinations!i
                TEST lab_get_type(label) = LABEL_GOTO THEN $(
                    LET bb = lab_get_bb(label)
                    llvm_add_destination(ibr_indirect_br_instruction, bb)
                $)
                ELSE $(
                $)
            $)

            // Insert it after the current basic block
            llvm_insert_existing_basic_block_after_insert_block(builder, parent_bb)

            // Clean up for next function
            ibr_indirect_br_instruction := 0
            ibr_destination_count := 0
            ibr_phi_node := 0
        $)
    $)
$)

LET ibr_get_basic_block() = VALOF $(
    ibr_need_indirect_branch()
    llvm_get_instruction_parent(ibr_indirect_br_instruction)
$)

// -----------------------------------------------------------------------------


LET declare_global(module, number, word_ref) BE
$(
    LET global_ref     = llvm_const_int(word_type, number, 0)
    LET emitted_global = llvm_add_global(module, word_type, "__bcpl_global")
    LET emitted_value  = llvm_add_global(module, word_type, "__bcpl_value")
    llvm_set_section(emitted_global, "BCPLGVEC")
    llvm_set_section(emitted_value,  "BCPLGVEC")
    llvm_set_initializer(emitted_global, global_ref)
    llvm_set_initializer(emitted_value,  word_ref)

    // Alas, if we declare these with internal linkage, the linker will 
    // discard them as unreferenced when optimising
    llvm_set_linkage(emitted_global, LLVM_INTERNAL_LINKAGE)
    llvm_set_linkage(emitted_value,  LLVM_INTERNAL_LINKAGE)
$)


LET build_array_element_ref(builder, array_type_ref, array_ref, number) = VALOF
$(
    LET indices = VEC 1
    indices!0 := llvm_const_int(word_type, 0, 0)
    indices!1 := llvm_const_int(word_type, number, 0)
    RESULTIS llvm_build_gep2(builder, array_type_ref, array_ref, indices, 2, "gv")
$)

LET declare_global_function(module, number, function) BE
$(
    LET function_as_word_ref  = llvm_const_ptr_to_int(function, word_type)
    declare_global(module, number, function_as_word_ref)
$)

LET optimise_module(module) = VALOF $(
    
    // Use the new LLVM pass manager via the simplified llvm C binding
    // where we pass an opt-style string. The call sequence was deduced
    // from the LLVM unit test for the pass manager.

    LET target_triple = ?
    LET target = ?
    LET target_machine = ?
    LET pass_builder_options = ?
    LET error_ref = ?

    // This is a BCPL string copied from the actual triple, which the
    // call will already have deleted by the time it returns
    llvm_get_default_target_triple()
    target_triple := llvm_result

    llvm_initialize_all_target_infos()
    target := llvm_get_target_from_triple(target_triple)
    target_machine := llvm_create_target_machine(target, target_triple, "generic", "", LLVM_CODEGENLEVEL_DEFAULT, LLVM_RELOC_DEFAULT, LLVM_CODEMODEL_DEFAULT)
    pass_builder_options := llvm_create_pass_builder_options()

    error_ref := llvm_run_passes(module, "default<O2>", target_machine, pass_builder_options)
    IF error_ref ~= 0 DO $(
       LET message = llvm_get_error_message(error_ref)
       writef("Optimisation pass failed: %S*N", message)
       RESULTIS 1
    $)
    
    llvm_dispose_pass_builder_options(pass_builder_options)
    llvm_dispose_target_machine(target)
    RESULTIS 0
$)

LET emit_and_destroy_module() BE
$(
    // We don't keep the global function, which should now be current
    // DB 19-dec-2023 - doing this makes module unprintable: llvm_delete_function(function)
    UNLESS is_current_section_empty DO
    $(
        LET r = optimise_module(module)
        TEST r ~= 0 DO 
        $(
            writef("Failed to optimise section %S*N", module_name)
            longjump(fin_p, fin_l)
        $)
        ELSE
        $(
            r := llvm_verify_module(module, LLVM_PRINT_MESSAGE_ACTION)
            TEST r = 0 DO
            $(
                LET text = llvm_print_module_to_string(module)
                TEST text = 0 THEN
                $(
                    writes("Unable to get text of module*N")
                    longjump(fin_p, fin_l)
                $)
                ELSE
                $(
                    LET saved_output = output()
                    LET i = 0

                    selectoutput(gostream)
                    UNTIL text%i = 0 DO $(
                        wrch(text%i)
                        i +:= 1
                    $)
                    selectoutput(saved_output)
                    writef("Compiled section %S - %N bytes of IR*N", module_name, i)
                $)
            $)
            ELSE
            $(
                writef("Section %S not verified by LLVM*N", module_name)
                longjump(fin_p, fin_l)
            $)
        $)

        //FIXME new pass manager llvm_dispose_pass_manager(fpm)
        llvm_dispose_module(module)

        is_current_section_empty := TRUE
    $)
$)


AND codegenerate(workspace, workspace_size) BE
$(
    LET l_param_types = VEC 10
    IF errcount > 0 RETURN
    writef("LLVM code generator with %N words of workspace*N", workspace_size)
    llvm_tracing(debug = 2 -> 1, 0)

    // Set up the workspace
    ws_init(workspace, workspace_size)
    context := llvm_context_create()
    builder := llvm_create_builder_in_context()

    // A type for a BCPLWORD
    word_type := llvm_int64_type_in_context(context)
    char_type := llvm_int8type_in_context(context)
    float_type := llvm_double_type_in_context(context)

    // Space for the readahead we need when reading O-code
    ocode_buffer := ws_alloc(READAHEAD)

    // Space for LLVM to return messages
    llvm_result := ws_alloc(256 / 8)
    llvm_set_message_buffer(llvm_result)

    section_mark := ws_mark()
    is_current_section_empty := TRUE
    is_unreachable := FALSE
    // A default section
    cg_section("bcplmain")

    cg_ocode()

    emit_and_destroy_module()

    llvm_context_dispose(context)
$)

AND rdname(buffer, buflen) BE
$(
    // Read a length and that many bytes into the buffer, truncating at 
    // the buffer length. The buffer is a vector of buflen words and on
    // exit it will hold the name as a bcpl string.
    LET name_length = llvm_rdn()
    LET max_string = buflen*BYTESPERWORD - 1
    FOR pos = 1 TO name_length DO 
    $(
        LET ch = llvm_rdn()
        IF pos <= max_string DO buffer%pos := ch
    $)
    buffer%0 := name_length < max_string -> name_length, max_string
$)

AND llvm_rdn() = VALOF 
$(
    // This value will be in 0.. READAHEAD-1 once we are running
    LET char = ?

    IF ocode_buffer_next = READAHEAD THEN
    $(
        // This is the first call so we need to allocate a buffer for our
        // readaheada and fill it. Since we are called before any O-code
        // has been performed, we know the workspace we allocate won't be
        // wiped.
        ocode_buffer_next := 0
        FOR i = 0 TO READAHEAD-1 DO ocode_buffer!i := rdn()
    $)

    // Take the next buffered character out of its slot and use the empty
    // slot to hold the next read-ahead. We rely on rdn() returning 0 and
    // then subsequently anthing at the end of the ocode
    char := ocode_buffer!ocode_buffer_next
    ocode_buffer!ocode_buffer_next := rdn()
    ocode_buffer_next := (ocode_buffer_next + 1) MOD READAHEAD
    RESULTIS char
$)

AND llvm_rdn_peek(n) = VALOF
$(
    LET requested_index = (ocode_buffer_next + n) MOD READAHEAD
    RESULTIS ocode_buffer!requested_index
$)

AND cg_ocode() BE
$(
    LET nl() BE IF debug > 0 THEN newline()
    LET wf(f,a,b,c,d) BE IF debug > 0 THEN writef(f,a,b,c,d)

    LET name = VEC 10
    LET op = llvm_rdn()
    LET n, label, save, num_globals, global_number = ?, ?, ?, ?, ?

    is_unreachable := FALSE
    UNTIL op = 0 DO
    $(
        IF debug=2 THEN dump_stack()
        wf("%S:", opname(op))
        SWITCHON op INTO 
        $(
            // OCODE instructions that take no arguments
            CASE s_abs:         nl(); cg_abs();         ENDCASE
            CASE s_add:         nl(); cg_add();         ENDCASE
            CASE s_div:         nl(); cg_div();         ENDCASE
            CASE s_endproc:     nl(); cg_endproc();     ENDCASE
            CASE s_eq:          nl(); cg_eq();          ENDCASE
            CASE s_eqv:         nl(); cg_eqv();         ENDCASE
            CASE s_false:       nl(); cg_const(FALSE);  ENDCASE
            CASE s_finish:      nl(); cg_finish();  is_unreachable := TRUE;    ENDCASE
            CASE s_fnrn:        nl(); cg_fnrn(); is_unreachable := TRUE; ENDCASE
            CASE s_ge:          nl(); cg_ge();          ENDCASE
            CASE s_getbyte:     nl(); cg_getbyte();     ENDCASE
            CASE s_goto:        nl(); cg_goto(); is_unreachable := TRUE;       ENDCASE
            CASE s_gr:          nl(); cg_gr();          ENDCASE
            CASE s_le:          nl(); cg_le();          ENDCASE
            CASE s_logand:      nl(); cg_logand();      ENDCASE
            CASE s_logor:       nl(); cg_logor();       ENDCASE
            CASE s_ls:          nl(); cg_ls();          ENDCASE
            CASE s_lshift:      nl(); cg_lshift();      ENDCASE
            CASE s_mod:         nl(); cg_mod();         ENDCASE
            CASE s_mul:         nl(); cg_mul();         ENDCASE
            CASE s_ne:          nl(); cg_ne();          ENDCASE
            CASE s_neg:         nl(); cg_neg();         ENDCASE
            CASE s_not:         nl(); cg_not();         ENDCASE
            CASE s_putbyte:     nl(); cg_putbyte();     ENDCASE
            CASE s_query:       nl(); cg_query();       ENDCASE
            CASE s_rshift:      nl(); cg_rshift();      ENDCASE
            CASE s_rtrn:        nl(); cg_rtrn(); is_unreachable := TRUE; ENDCASE
            CASE s_rv:          nl(); cg_rv();          ENDCASE
            CASE s_stind:       nl(); cg_stind();       ENDCASE
            CASE s_store:       nl(); cg_store();       ENDCASE
            CASE s_sub:         nl(); cg_sub();         ENDCASE
            CASE s_true:        nl(); cg_const(TRUE);   ENDCASE
            CASE s_xor:         nl(); cg_xor();         ENDCASE

            // OCODE instructions that take a number
            CASE s_fnap:        n := llvm_rdn(); wf(" %N*N", n); cg_rtap(n,TRUE);  ENDCASE
            CASE s_jf:          n := llvm_rdn(); wf(" %N*N", n); cg_jf(n);         ENDCASE
            CASE s_jt:          n := llvm_rdn(); wf(" %N*N", n); cg_jt(n);         ENDCASE
            CASE s_jump:        n := llvm_rdn(); wf(" %N*N", n); cg_jump(n);       is_unreachable := TRUE; ENDCASE
            CASE s_lab:         n := llvm_rdn(); wf(" %N*N", n); cg_lab(n);        is_unreachable := FALSE; ENDCASE
            CASE s_lf:          n := llvm_rdn(); wf(" %N*N", n); cg_lf(n);         ENDCASE
            CASE s_lg:          n := llvm_rdn(); wf(" %N*N", n); cg_lg(n);         ENDCASE
            CASE s_ll:          n := llvm_rdn(); wf(" %N*N", n); cg_ll(n);         ENDCASE
            CASE s_llg:         n := llvm_rdn(); wf(" %N*N", n); cg_llg(n);        ENDCASE
            CASE s_lll:         n := llvm_rdn(); wf(" %N*N", n); cg_lll(n);        ENDCASE
            CASE s_llp:         n := llvm_rdn(); wf(" %N*N", n); cg_llp(n);        ENDCASE
            CASE s_ln:          n := llvm_rdn(); wf(" %N*N", n); cg_ln(n);         ENDCASE
            CASE s_lp:          n := llvm_rdn(); wf(" %N*N", n); cg_lp(n);         ENDCASE
            CASE s_res:         n := llvm_rdn(); wf(" %N*N", n); cg_res(n);        ENDCASE
            CASE s_rstack:      n := llvm_rdn(); wf(" %N*N", n); cg_rstack(n);     ENDCASE
            CASE s_rtap:        n := llvm_rdn(); wf(" %N*N", n); cg_rtap(n,FALSE); ENDCASE
            CASE s_sg:          n := llvm_rdn(); wf(" %N*N", n); cg_sg(n);         ENDCASE
            CASE s_sl:          n := llvm_rdn(); wf(" %N*N", n); cg_sl(n);         ENDCASE
            CASE s_sp:          n := llvm_rdn(); wf(" %N*N", n); cg_sp(n);         ENDCASE
            CASE s_stack:       n := llvm_rdn(); wf(" %N*N", n); cg_stack(n);      ENDCASE

            // Floating point extension
            CASE s_fabs:        nl(); cg_fabs();    ENDCASE
            CASE s_fneg:        nl(); cg_fneg();    ENDCASE
            CASE s_fix:         nl(); cg_fix();     ENDCASE
            CASE s_float:       nl(); cg_float();   ENDCASE

            CASE s_fls:         nl(); cg_fls();     ENDCASE

            CASE s_fmul:        nl(); cg_fmul();    ENDCASE
            CASE s_fadd:        nl(); cg_fadd();    ENDCASE
            CASE s_fdiv:        nl(); cg_fdiv();    ENDCASE
            CASE s_fsub:        nl(); cg_fsub();    ENDCASE
            CASE s_fmod:        nl(); cg_fmod();    ENDCASE
            CASE s_feq:         nl(); cg_feq();     ENDCASE
            CASE s_fne:         nl(); cg_fne();     ENDCASE
            CASE s_fgr:         nl(); cg_fgr();     ENDCASE
            CASE s_fle:         nl(); cg_fle();     ENDCASE
            CASE s_fge:         nl(); cg_fge();     ENDCASE

            // OCODE instructions for which we need a bit of lookahead
            CASE s_datalab:     n := llvm_rdn(); wf(" %N*N", n); cg_datalab(n, llvm_rdn_peek(0)); ENDCASE
            CASE s_itemn:       n := llvm_rdn(); wf(" %N*N", n); cg_itemn(n, llvm_rdn_peek(0));   ENDCASE

            // Special cases

            CASE s_section:
                rdname(name, 10)
                wf(" %s*N", name)
                cg_section(name)
                is_current_section_empty := TRUE
                is_unreachable := FALSE
            ENDCASE

            CASE s_entry:      
                // We expect to consume <label> <name> <SAVE> <n>
                label := llvm_rdn()
                rdname(name, 10)
                llvm_rdn() // skip SAVE
                save := llvm_rdn()
                wf(" %N %S SAVE %N*N", label, name, save)
                is_unreachable := FALSE
                cg_entry(label, name, save)
            ENDCASE

            CASE s_global:
                // We expect to read a count followed by that many pairs
                // of global numbers and labels
                FOR g = 1 TO llvm_rdn() DO 
                $(
                    LET g, v = llvm_rdn(), llvm_rdn()
                    wf("GLOBAL %N %N*N", g, v)
                    cg_global(g, v)
                $)
            ENDCASE

            CASE s_lstr:
            $(
                // Read the string into workspace for the duration of
                // the call. N
                LET string_length = llvm_rdn()
                LET mark = ws_mark()
                LET string = ws_alloc(string_length/BYTESPERWORD+1)
                FOR i = 1 TO string_length DO 
                $( 
                    LET c = llvm_rdn()
                    string%i := c
                $)
                string%0 := string_length
                wf(" %N '%S'*N", string_length, string)
                cg_lstr(string)
                ws_wipe(mark)
            $)
            ENDCASE

            CASE s_switchon: $(
                LET cases = llvm_rdn()
                LET default_label = llvm_rdn()
                cg_switchon(cases, default_label)
            $)
            ENDCASE

            DEFAULT: 
                writef("Bad OCODE operation %N(%S)", op, opname(op))
                longjump(fin_p, fin_l)
        $)

        // If this wasn't a SECTION, we are doing work in it
        UNLESS op = s_section | op = s_jump DO is_current_section_empty := FALSE

        // Look for the next OCODE instruction
        op := llvm_rdn()
    $)
$)

AND cg_intrinsic(intrinsic, arity, result_type, type1, type2, type3) BE $(
    LET parameter_types = VEC 10 
    LET parameters = VEC 10
    LET signature, intrinsic_fn, result = ?, ?, ?
    FOR i = 0 TO arity -1 DO $(
        LET arg = ss_pop("arg")
        parameter_types!i := (@type1)!i
        IF parameter_types!i = float_type DO arg := llvm_build_bit_cast(builder, arg, float_type, "farg")
        parameters!i := arg
    $)
    signature :=  llvm_function_type(result_type, parameter_types, arity, FALSE);
    intrinsic_fn := llvm_add_function(module, intrinsic, signature)

    // Build the call
    result := llvm_build_call2(builder, signature, intrinsic_fn, parameters, arity, "fnap")

    IF result_type = float_type DO result := llvm_build_bit_cast(builder, result, word_type, "result")
    ss_push(result)
$)

AND cg_binary_op(build_op, label) BE
$(
    // Pop the rhs and the the lhs off the stack, add them and push the
    // result
    LET rhs = ss_pop("rhs")
    LET lhs = ss_pop("lhs")
    LET result = build_op(builder, lhs, rhs, label)
    ss_push(result)
$)

AND cg_unary_op(build_op, label) BE
$(
    LET lhs = ss_pop("arg")
    LET result = build_op(builder, lhs, label)
    ss_push(result)
$)

AND bool_to_word(bool) = llvm_build_int_cast2(builder, bool, word_type, 0, "booltoword")
AND cg_wrap_gr(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntSGT, lhs, rhs, label))
AND cg_wrap_le(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntSLE, lhs, rhs, label))
AND cg_wrap_eq(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntEQ,  lhs, rhs, label))
AND cg_wrap_ne(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntNE,  lhs, rhs, label))
AND cg_wrap_ls(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntSLT, lhs, rhs, label))
AND cg_wrap_ge(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntSGE, lhs, rhs, label))

AND cg_add()    BE cg_binary_op(llvm_build_add,    "add")
AND cg_sub()    BE cg_binary_op(llvm_build_sub,    "sub")
AND cg_mod()    BE cg_binary_op(llvm_build_srem,   "mod")
AND cg_mul()    BE cg_binary_op(llvm_build_mul,    "mul")
AND cg_div()    BE cg_binary_op(llvm_build_sdiv,   "div")
AND cg_lshift() BE cg_binary_op(llvm_build_shl,    "lshift") 
AND cg_rshift() BE cg_binary_op(llvm_build_lshr,   "rshift") // proposed standard

AND cg_gr()     BE cg_binary_op(cg_wrap_gr,        "gr")
AND cg_le()     BE cg_binary_op(cg_wrap_le,        "le")
AND cg_eq()     BE cg_binary_op(cg_wrap_eq,        "eq")
AND cg_ne()     BE cg_binary_op(cg_wrap_ne,        "ne")
AND cg_ls()     BE cg_binary_op(cg_wrap_ls,        "ls")
AND cg_ge()     BE cg_binary_op(cg_wrap_ge,        "ge")

AND cg_logand() BE cg_binary_op(llvm_build_and,    "logand")
AND cg_logor()  BE cg_binary_op(llvm_build_or,     "logor")
AND cg_neg()    BE cg_unary_op(llvm_build_neg,     "neg")
AND cg_not()    BE cg_unary_op(llvm_build_not,     "not")
AND cg_xor()    BE cg_binary_op(llvm_build_xor,    "xor")

AND cg_abs() BE
$(
    // FIXME: Replace with intrinsic in llvm 12
    
    // Generate the branch free version: 
    //
    // x = 128-bit version of argument
    // y = x >> 63
    // abs = (x ^ y) - y
    LET long_long_int_type = llvm_int128type_in_context(context)
    LET arg = ss_pop("arg")
    LET x = llvm_build_int_cast2(builder, arg, long_long_int_type, TRUE, "abs.arg.128bit")
    LET y = llvm_build_ashr(builder, x, llvm_const_int(long_long_int_type, 63, 0), "arg.ashr63")
    LET x_xor_y = llvm_build_xor(builder, x, y, "x_xor_y")
    LET abs_value_128 = llvm_build_sub(builder, x_xor_y, y, "abs.result.128")
    LET abs_value = llvm_build_int_cast2(builder, abs_value_128, word_type, TRUE, "abs.result")
    ss_push(abs_value)
$)

AND cg_const(k) BE
$(
    ss_push(llvm_const_int(word_type, k, 0))
$)

AND cg_datalab(n, peek) BE
$(
    // We can't allocate this static until we know how large it is so for
    // now record the label number. This op will be followed by one or more
    // ITEMN ops. The last of those will create the static/table. Ensure
    // that we are followed by an itemn and if so, allocate all of the
    // free workspace to hold them while we collect them.
    UNLESS peek = s_itemn DO cgerror("DATALAB not followed by ITEMN")
    datalab_label  := n
    datalab_itemns := ws_alloc(ws_avail())
    datalab_itemn_count := 0
$)

AND cg_endproc() BE 
$(
    LET r = ?

    // Get rid of the excess allocs
    stk_trimframe()

    // If the last operation is a jump back to the top of the loop, we will
    // have created an unreachable empty basic block which should be deleted
    IF llvm_get_first_instruction(basicblock) = 0 DO 
    $(
        LET dead_bb = basicblock
        basicblock := llvm_get_previous_basic_block(basicblock)
        llvm_delete_basic_block(dead_bb)
    $)
    llvm_position_builder_at_end(builder, basicblock)

    // If there is an indirect branch block, we need to add it to the 
    // function if its PHI node has incoming edges
    ibr_insert_and_cleanup(builder)
    dump_function_bbs("", function)

    r := llvm_verify_function(function, LLVM_PRINT_MESSAGE_ACTION)
    UNLESS r = 0 DO cgerror("unable to verify function*N")

    // This is the end of the function so we are no longer nested in it.
    // Restore the state for the outer function
    stk_popframe()
    llvm_position_builder_at_end(builder, basicblock)
$)

AND cg_eqv() BE
$(
    LET rhs = ss_pop("eqv.rhs")
    LET lhs = ss_pop("eqv.lhs")
    LET xor = llvm_build_xor(builder, lhs, rhs, "eqv.xor")
    LET eqv = llvm_build_not(builder, xor, "eqv.not")
    ss_push(eqv)
$)

AND cg_entry(label, name, save) BE 
$(
    // Work out the number of parameters from the SAVE value, which includes
    // STACKSPACESIZE words for the linkage area
    LET argc = save - savespacesize
    LET function_type = llvm_function_type(word_type, parameter_types, argc, 0)

    // Add a function of this type to the current module
    function := llvm_add_function(module, name, function_type)
    llvm_set_section(function, module_text_section)

    // Like STATIC, a LET generates a static variable holding the procedure
    // address. The label number allows us to record the static variable
    // in the label table. First create the static (LLVM private global)
    lab_declare(label, LABEL_ENTRY)
    lab_get_static(label)
    lab_set_static(label, llvm_const_ptr_to_int(function, word_type))

    // Start the function of with a basic block at its entry
    basicblock := llvm_append_basic_block(function, "entry")
    llvm_position_builder_at_end(builder, basicblock)

    // Stack the current function - there will always be one because of
    // the enclosing dummy function that deals with jumps around routines
    stk_pushframe(MAXFRAMESIZE)


    // Set the stack frame up to be empty (bar the three linkage words).
    // Clear any higher cells and the list of pending cells
    ss_stack(savespacesize)
    pending_cell_count := 0

    // For all of the arguments we expect to be passed, allocate locals
    // set to the argument values and place the locals in P so that the
    // rest of the functions OCODE can find them
    FOR arg = 0 TO argc-1 DO
    $(
        // Copy the argument into a local and place the local on the stack
        LET parameter = llvm_get_param(function, arg)
        ss_push(parameter)
    $)

    // The temporary RES/STACK holding location is not yet in use
    A := llvm_build_alloca(builder, word_type, "__res_a")


$)

AND cg_finish() BE
$(
    // The standard says this is stop(0) and we say stop is global 2
    cg_ln(0)
    cg_lg(2)
    cg_rtap(4)
$)

AND cg_fnrn() BE
$(
    // See cg_ln for the fix for unreachable code we've added here
    UNLESS is_unreachable
    $(
        // The variable on the top of the stack should be the result so get
        // its value 
        LET result = ss_pop("fnrn.result")
        llvm_build_ret(builder, result)
    $)
$)

AND cg_getbyte() BE
$(
    // We need to build a GEP so we need to pass it the index in an array
    LET indices = VEC 0

    // And a temp to hold the character we extract from the string
    LET char, char_ptr, charword = ?, ?, ?
    // Pop the character index we want
    LET index = ss_pop("getbyte.index")

    // Pop the temp holding the bcpl address of the string
    LET bcpl_address = ss_pop("getbyte.bcpladdr")

    // Calculate the llvm address and convert it into a pointer to char
    LET llvm_address = llvm_build_shl(builder, bcpl_address, llvm_const_int(word_type, 3, 0), "getbyte.llvmaddr")
    LET string_ptr = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(char_type, 0), "getbyte.string")
 
    // Build a pointer to the character we want 
    indices!0 := index
    char_ptr := llvm_build_gep2(builder, char_type, string_ptr, indices, 1, "getbyte.charptr")

    // Load the character from the string
    char := llvm_build_load2(builder, char, char_ptr, "getbyte.char")

    // Extend it to a bcpl word
    charword := llvm_build_zext(builder, char, word_type, "getbyte.charword")

    ss_push(charword)
$)

AND cg_global(global, label) BE
$(
    // The value of the label is the static variable we allocated to hold
    // it. The value it contains is currently held as its initialiser
    LET static_variable = lab_get_static(label)
    LET static_value = llvm_get_initializer(static_variable)
    declare_global(module, global, static_value)
$)

AND cg_goto() BE $(

    // The word on the top of the stack is the address of the LLVM basic
    // block for the label we are to branch to. We need to:
    //
    // 1. Pop the destination basic block and convert it from a BCPL word
    //    to a basic block pointer
    LET bcplword = ss_pop("goto.bb.word")
    LET label = lab_find_bb(bcplword)
    LET bb_address = llvm_build_int_to_ptr(builder, bcplword, llvm_pointer_type(char_type, 0), "goto.bbptr")
     
    // 3. Add our result and basic block as an incoming edge to the PHI node
    ibr_add_incoming(bb_address, basicblock)

    // Promote the label to a GOTO
    lab_declare(label, LABEL_GOTO)

    // 4. Build a branch to the indirect branch's basic block.
    llvm_build_br(builder, ibr_get_basic_block())

    // We ought to be followed by a LAB which will create the next basic
    // block for the next operation. However, if there is unreachable code
    // after us, there won't be a LAB so we'll have to create the basic 
    // block
    UNLESS llvm_rdn_peek(0) = s_lab DO $(
        basicblock := llvm_create_basic_block_in_context(context, "goto.dead")
        llvm_insert_existing_basic_block_after_insert_block(builder, basicblock)
        llvm_position_builder_at_end(builder, basicblock)
    $)
$)

AND cg_itemn(n, peek) BE
$(
    // Create a constant value and add it to those seen so far
    datalab_itemns!datalab_itemn_count := llvm_const_int(word_type, n, 0)
    datalab_itemn_count +:= 1

    UNLESS peek = s_itemn DO
    $(
        // This is the end of the ITEMNs so we can tell if this is a STATIC
        // (a single item) or a TABLE (multiple items)

        LET static_global, static_type, static_data, static_section = ?, ?, ?, ?
        TEST datalab_itemn_count > 1 THEN $(
            // A table is an array of bcplwords
            static_type := llvm_array_type(word_type, datalab_itemn_count)
            static_data := llvm_const_array(word_type, datalab_itemns, datalab_itemn_count)
            static_section := module_rodata_section
        $)
        ELSE $(
            // A static is a single bcolword
            static_type := word_type
            static_data := datalab_itemns!0
            static_section := module_data_section
        $)

        // The module's data holds a global initialised to the static data
        // at compile time
        static_global := llvm_add_global(module, static_type, "itemn.global")
        llvm_set_linkage(static_global, LLVM_PRIVATE_LINKAGE)
        llvm_set_initializer(static_global, static_data)
        llvm_set_section(static_global, static_section)

        // Record this label and location in our dictionary of statics
        lab_declare(datalab_label, LABEL_STATIC)
        lab_set_table(datalab_label, static_global)

        // Clean up the workspace
        ws_wipe(datalab_itemns)
        datalab_itemns := 0
    $)
$)

AND cg_jf(n) BE
$(
    // The variable on the top of the stack is true or false. We need to
    // convert it to an i1 by comparing it with 0.
    LET bcplbool = ss_pop("truefalse")
    LET if_cond = llvm_build_icmp(builder, LLVM_IntEQ, bcplbool, llvm_const_int(word_type, 0, 0), "if_cond")


    // Make sure the label table is set up with a basic block we can 
    // jump to if the condition is true
    LET dummy = lab_declare(n, LABEL_JUMP)
    LET then_bb = lab_get_bb(n)

    // We need a new basic block to continue with if the condition is false
    // so add it after this one
    LET else_bb = llvm_append_basic_block(function, "jf.else")

    // Build the conditional branch
    llvm_build_cond_br(builder, if_cond, then_bb, else_bb)

    // Make the false basic block current
    basicblock := else_bb
    llvm_position_builder_at_end(builder, basicblock)
$)

AND cg_jt(n) BE
$(
    // The variable on the top of the stack is true or false. We need to
    // convert it to an i1 by comparing it with 0.
    LET bcplbool = ss_pop("truefalse")
    LET if_cond = llvm_build_icmp(builder, LLVM_IntNE, bcplbool, llvm_const_int(word_type, 0, 0), "if_cond")

    // Make sure the label table is set up with a basic block we can 
    // jump to if the condition is true
    LET dummy = lab_declare(n, LABEL_JUMP)
    LET then_bb = lab_get_bb(n)

    // We need a new basic block to continue with if the condition is false
    // so add it after this one
    LET else_bb = llvm_append_basic_block(function, "jt.else")

    // Build the conditional brancj
    llvm_build_cond_br(builder, if_cond, then_bb, else_bb)

    // Make the false basic block current
    basicblock := else_bb
    llvm_position_builder_at_end(builder, basicblock)
$)



AND cg_jump(n) BE
$(
    // Look up the label to see if we have already allocated a basic block
    // for it. If not, we allocate one.
    LET dummy = lab_declare(n, LABEL_JUMP)
    LET target_bb = lab_get_bb(n)

    // Build a branch to the basic block
    llvm_build_br(builder, target_bb)

    // We ought to be followed by a LAB which will create the next basic
    // block for the next operation. However, if there is unreachable code
    // after us, there won't be a LAB so we'll have to create the basic 
    // block
    basicblock := llvm_create_basic_block_in_context(context, "dead")
    llvm_insert_existing_basic_block_after_insert_block(builder, basicblock)
    llvm_position_builder_at_end(builder, basicblock)
$)

AND cg_lab(label) BE
$(
    // Make sure we have a basic block for this label. If a previous jump
    // mentioned it (because it's a branch forward), the block will have
    // been created then. If this is the first mention, the lookup will 
    // create it now.
    LET dummy = lab_declare(label, LABEL_LAB)
    LET bb = lab_get_bb(label)

    // If the current basic block doesn't have a terminating instruction,
    // connect it to the new block
    IF llvm_get_basic_block_terminator(basicblock) = 0 DO llvm_build_br(builder, bb)

    // Now we can safely add the new block
    llvm_insert_existing_basic_block_after_insert_block(builder, bb)
    llvm_position_builder_at_end(builder, bb)

    // and make it current
    basicblock := bb
$)

AND cg_lf(label) BE
$(
    LET static_contents = ?

    lab_declare(label, LABEL_LF)

    UNLESS lab_get_type(label) = LABEL_ENTRY DO $(
        // Until we know it's an entry, we must assume it's a GOTO destination
        // and push the associated basic block. At the end of the function, it
        // will be a JUMP, GOTO or ENTRY. We'll delete the basic block for
        // any label that have changed to an ENTRY.
        UNLESS lab_has_static(label) DO $(
            LET bb = lab_get_bb(label)
            LET bb_address = llvm_block_address(function, bb)
            LET bcplword = llvm_const_ptr_to_int(bb_address, word_type)
            LET static_variable = lab_get_static(label)
            lab_set_static(label, bcplword)
            ibr_add_destination(label)
        $)
    $)

    static_contents := llvm_build_load2(builder, word_type, lab_get_static(label), "lf.static.value")
    ss_push(static_contents)
$)

AND cg_lg(n) BE
$(
    // Push the contents of a global onto the stack
    LET gv_address = build_array_element_ref(builder, llvm_array_type(word_type, GLOBALVECTORSIZE), G, n)
    LET gv_value = llvm_build_load2(builder, word_type, gv_address, "lg.value")
    ss_push(gv_value)
 $)

AND cg_ln(n) BE 
$(
    // This is a fix for an oddity in BCPLTRN which generates an LN 0 FNRN
    // at the end of a function even if we have already emitted a FNRN or
    // RTRN. We track this case and if we are unreachable, ignore this LN 
    // (and we will igore the following FNRN)
    UNLESS is_unreachable 
    $(
        // Create a constant and push its LLVMValueRef
        LET value = llvm_const_int(word_type, n, 0)
        ss_push(value)
    $)
$)

AND cg_llg(n) BE
$(
    // Get the address of global N
    LET gv_address = build_array_element_ref(builder, llvm_array_type(word_type, GLOBALVECTORSIZE), G, n)

    // Convert this machine address into a BCPLWORD
    LET bcplword = llvm_build_ptr_to_int(builder, gv_address, word_type, "llg.word")

    // Convert it into a BCPL address
    LET bcpladdr = llvm_build_ashr(builder, bcplword, llvm_const_int(word_type, 3, 0), "llg.bcpladdr")

    // Push this temporary onto our simulated stack
    ss_push(bcpladdr)
$)

AND cg_ll(n) BE
$(
    // Get value of the static variable from our dictionary. This is the
    // module global initialised to the static data. The compiler will ask
    // for the right value only for statics, not tables so we know this
    // value is a bcpl word.
    LET dummy = lab_declare(n, LABEL_STATIC)
    LET value = llvm_build_load2(builder, word_type, lab_get_static(n), "ll.value")

    // Push it onto our simulated stack
    ss_push(value)
$)

AND cg_lll(n) BE
$(
    // Get the address of the static variable and convert it to a BCPL l-value
    // by dividing by BYTESPERWORD and pushing a variable holding this result
    LET dummy = lab_declare(n, LABEL_STATIC)
    LET llvm_address = llvm_build_ptr_to_int(builder, lab_get_static(n), word_type, "lll.llvmaddr")
    LET bcpl_address = llvm_build_ashr(builder, llvm_address, llvm_const_int(word_type, 3, 0), "lll.bcpladdr")

    // Store the bcpl address of the string
    ss_push(bcpl_address)
$)

AND cg_llp(n) BE
$(
    LET llvm_address, bcpl_address, lv, lv_holder = ?, ?, ?, ?
    LET S = stk_frame!F_S
    // If this is the start of a vector declaration, the stack variable 
    // may be above the current stack top and not yet allocated. 
    IF ss_lookup(n) = -1 THEN $(
        ss_allocate(n)
        IF n >= S THEN $(
            pending_cell_referer!pending_cell_count := S
            pending_cell_referenced!pending_cell_count := n
            pending_cell_count +:= 1
        $)
    $)

    // This is a standard LLP
    // Get the address of the variable P!n and convert it to a BCPL l-value
    // by dividing by BYTESPERWORD and pushing a variable holding this result
    llvm_address := llvm_build_ptr_to_int(builder, ss_get(n), word_type, "llp.address")
    bcpl_address := llvm_build_ashr(builder, llvm_address, llvm_const_int(word_type, 3, 0), "llp.bcpladdr")
    ss_push(bcpl_address)
$)

AND cg_lp(n) BE 
$(
    LET cell = ss_get(n)
    LET value = llvm_build_load2(builder, word_type, cell, "lp.value")
    ss_push(value)
$)

AND cg_lstr(string) BE
$(
    // We need to allocate a byte for the length at the start
    LET data_size = string%0 + 1

    // A type for this string
    LET string_array_type = llvm_array_type(char_type, data_size)

    // Create a global of that type
    LET global_variable = llvm_add_global(module, string_array_type, "lstr.global")

    // Calculate the bcpl address of this global 
    LET llvm_address = llvm_build_ptr_to_int(builder, global_variable, word_type, "lstr.llvmaddr")
    LET bcpl_address = llvm_build_ashr(builder, llvm_address, llvm_const_int(word_type, 3, 0), "lstr.bcpladdr")

    // Initialise the global with our string
    LET string_ptr = llvm_const_string_in_context(context, string, data_size, 1)
    llvm_set_alignment(global_variable, 8);
    llvm_set_initializer(global_variable, string_ptr)
    llvm_set_linkage(global_variable, LLVM_PRIVATE_LINKAGE)
    llvm_set_section(global_variable, module_rodata_section)


    // Store the bcpl address of the string into our tempa and push it onto
    ss_push(bcpl_address)
$)

AND cg_putbyte() BE
$(
    // We need to build a GEP so we need to pass it the index in an array
    LET indices = VEC 0

    LET char, char_ptr, charword = ?, ?, ?

    // Pop the character index we want
    LET index = ss_pop("putbyte.index")

    // Pop the temp holding the bcpl address of the string
    LET bcpl_address = ss_pop("putbyte.bcpladdr")

    // And the word holding the character we're to store, from which we 
    // need to take the character
    LET charword = ss_pop("putbyte.charword")
    LET char = llvm_build_int_cast2(builder, charword, char_type, FALSE, "putbyte.char")

    // Calculate the llvm address and convert it into a pointer to char
    LET llvm_address = llvm_build_shl(builder, bcpl_address, llvm_const_int(word_type, 3, 0), "putbyte.llvmaddr")
    LET string_ptr = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(char_type, 0), "putbyte.string")
 
    // Build a pointer to the location for the character
    indices!0 := index
    char_ptr := llvm_build_gep2(builder, char_type, string_ptr, indices, 1, "putbyte.charptr")

    // Store the character into the string
    llvm_build_store(builder, char, char_ptr)
$)

AND cg_query() BE $(
    // This pushes a temp with an undefined value onto the stack
    ss_pushquery()
$)

AND cg_res(n) BE $(

    // RES is called to place the current result in a holding register A 
    // while we branch to the label where an RSTACK will restore it. (We're 
    // dealing with variable nesting of blocks in a control structure.). 
    // According to the paper, it should implement this:
    //
    // A := P[S-2]; S := S - 1; goto Ln
    // 
    // but that looks wrong. Instead:
    LET pending_result = ss_pop("res.result")
    llvm_build_store(builder, pending_result, A)
    cg_jump(n)
$)

AND cg_rstack(n) BE $(

    // Restore the pending result held in A to the top of the stack once
    // we have adjusted the stack top
    LET pending_result = llvm_build_load2(builder, word_type, A, "rstack.pending")
    ss_stack(n)
    ss_push(pending_result)
$)

AND cg_rtap(n, has_result) BE 
$(
    LET name, result = ?, ?
    // n tells is the stack pointer at the start of our call frame:
    //
    // +----+----+----+----+----+----+----+
    // | sa | sa | sa |  args.. | fn |    |
    // +----+----+----+----+----+----+----+
    //   ^                             ^
    //   n                             S
    //     
    // On exit the stack should look like this:
    //
    // +----+----+
    // | R  |    |
    // +----+----+
    //        ^                             
    //        S                             
    // 
    // if it is a function returning R
    LET num_args = stk_frame!F_S - n - savespacesize - 1
    LET ep = ss_pop("rtap.ep")

    // Build a type for a pointer to a function with one argument
    LET signature = llvm_function_type(word_type, parameter_types, num_args, 0)
    LET ep_ptr_type = llvm_pointer_type(signature, 0);

    // Load the value of the entry point and cast it to a pointer
    LET ep_p_fn = llvm_build_int_to_ptr(builder, ep, ep_ptr_type, "rtap_ep_p_fn")

    // Build the argument list by loading their values. We need to do this
    // in reverse as we pop the arguments of the stack
    LET arg_values = VEC 10
    FOR i = num_args - 1 TO 0 BY -1 DO 
    $(
        arg_values!i := ss_pop("arg")
    $)

    // Build the call
    name := has_result -> "fnap" , "rtap"
    result := llvm_build_call2(builder, signature, ep_p_fn, arg_values, num_args, name)

    // Clean up the call stack. If we're a function this is where to place
    // the result
    ss_stack(n)

    IF has_result THEN
    $(
        ss_push(result)
    $)
$)

AND cg_rtrn() BE
$(
    // This is a routine so if it is called as a function, we want something
    // recognisable
    llvm_build_ret(builder, llvm_const_int(word_type, #XBAD0BAD0BAD0BAD0, 0))
$)

AND cg_rv() BE
$(
    // The variable on the top of the stack holds a bcpl address. Convert
    // it into a llvm address, load the value held at that address  into
    // a new variable and push it onto the stack
    LET bcpl_address = ss_pop("rv.bcpladdress")
    LET llvm_address = llvm_build_shl(builder, bcpl_address, llvm_const_int(word_type, 3, 0), "rv.llvmaddr")
    LET lv = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(word_type, 0), "rv.lv")
    LET rv = llvm_build_load2(builder, word_type, lv, "rv.rv")
    ss_push(rv)
$)

AND cg_section(name) BE
$(
    LET gv_type = ?     // This will be the type of the global vector
    LET signature = ?   // This will be the type of our outer function

    // If we are currently in a module, finish it by emitting its LL code 
    // and deleting it
    UNLESS module = 0 DO emit_and_destroy_module()

    // Discard workspace allocated processing the last section
    ws_wipe(section_mark)

    // Create the new module and set up a function pass manager for
    // optimisation
    module := llvm_module_create_with_name_in_context(name, context)
    //FIXME new pass manager fpm := llvm_create_function_pass_manager_for_module(module)

    //FIXME new pass manager llvm_add_promote_memory_to_register_pass(fpm);
    //FIXME new pass manager llvm_add_cfgsimplification_pass(fpm)
    //FIXME new pass manager llvm_add_constant_propagation_pass(fpm)
    //FIXME new pass manager llvm_add_new_gvnpass(fpm)
    //FIXME new pass manager llvm_add_reassociate_pass(fpm)
    //FIXME new pass manager llvm_add_partially_inline_lib_calls_pass(fpm)
    //FIXME new pass manager llvm_add_instruction_combining_pass(fpm);
    //FIXME new pass manager llvm_add_cfgsimplification_pass(fpm)

    //FIXME new pass manager llvm_initialize_function_pass_manager(fpm)

    // Declare the global vector as an external reference
    gv_type := llvm_array_type(word_type, GLOBALVECTORSIZE)

    module_name := stralloc(name)
    module_text_section := stralloc(".text.")
    strappend(module_text_section, module_name)
    module_data_section := stralloc(".data.")
    strappend(module_data_section, module_name)
    module_rodata_section := stralloc(".rodata.")
    strappend(module_rodata_section, module_name)
 
    G := llvm_add_global(module, gv_type, "__bcpl_global_vector")
    llvm_set_section(G, "BCPLGVEC")
    llvm_set_visibility(G, LLVM_DEFAULT_VISIBILITY)
    llvm_set_linkage(G, LLVM_EXTERNAL_LINKAGE)

    // Start with a fresh value/type stack
    stk_init(ws_alloc(1000), 1000)

    // Since all BCPL signatures are just N BCPLWORD parameters, we can just
    // create a single vector for the maximum length we support and use the
    // first N elements in a signature.
    parameter_types := ws_alloc(32)
    FOR i = 0 TO 31 DO parameter_types!i := word_type

    // A new map from label to basic block
    lab_init(10000)

    // Managemnt of indirect branches
    ibr_init(100)

    // A list of all cells on the stack that contain an LLP to a cell that
    // was above S at the time - likely to be the cell that points to the
    // base of a vector
    pending_cell_referer    := ws_alloc(32)
    pending_cell_referenced := ws_alloc(32)
    pending_cell_count      := 0

    // We create an outmost function in the module (so that the initual 
    // JUMP around the text can be handled normally &c) which will be
    // discarded when we reach the end of the current module.
    signature := llvm_function_type(word_type, parameter_types, 0, 0)
    function := llvm_add_function(module, "__bcpl_dummy_function", signature)
    basicblock := llvm_append_basic_block(function, "__bcpl_dummy_function_entry")
    llvm_position_builder_at_end(builder, basicblock)
    stk_pushframe(3)

    // Fake a RTRN
    cg_rtrn()
$)

AND cg_stind() BE
$(
    // STIND means !(P!(S-1)) := P!(S-2); S -:= 2
    //
    // or:
    //
    //    value    := P!(S-2)    temporary holding i64 value
    //    address  := P!(S-1)    temporary holding bcpl address
    //    !address := value      
    //
    LET bcpl_address = ss_pop("stind.bcpladdr")
    LET source_value = ss_pop("stind.value")
    LET llvm_address = llvm_build_shl(builder, bcpl_address, llvm_const_int(word_type, 3, 0), "stind.llvmaddr")
    LET lv = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(word_type, 0), "stind.lv")
    llvm_build_store(builder, source_value, lv)
$)

AND cg_sg(n) BE
$(

    LET source_value = ss_pop("sg.value")
    LET gv_address = build_array_element_ref(builder, llvm_array_type(word_type, GLOBALVECTORSIZE), G, n)
    llvm_build_store(builder, source_value, gv_address)
$)

AND cg_sl(n) BE
$(
    // Get the value to store from its temporary on the simulated stack
    LET source_value = ss_pop("sl.value")

    // Get the variable into which it is to be stored of the simulated stack
    LET dummy = lab_declare(n, LABEL_STATIC)
    LET destination_variable = lab_get_static(n)

    // Store the value there
    llvm_build_store(builder, source_value, destination_variable)
$)

AND cg_sp(n) BE
$(
    LET source_value = ss_pop("sp.value")
    LET destination_variable = ss_get(n)

    llvm_build_store(builder, source_value, destination_variable)
$)

AND cg_stack(n) BE 
$(  
    LET allocate_vector(p_new, p_old) BE $(

        // The gap bewtween the variables allocate by earlier LLPs tells
        // us the size of the vector.
        LET size = p_new - p_old

        // Create this vector on the stack
        LET vec_type = llvm_array_type(word_type, size)
        LET vector = llvm_build_array_alloca(builder, vec_type, 0, "stack.vec")

        // We need the BCPL address of element 0 of this array
        LET vector_llvmaddress = llvm_build_ptr_to_int(builder, vector, word_type, "stack.vecaddr")
        LET vector_bcpladdress = llvm_build_ashr(builder, vector_llvmaddress, llvm_const_int(word_type, 3, 0), "stack.bcpladdr")

        // There should be a cell on the stack below us holding the LLP
        // of this vector.
        FOR i = 0 TO pending_cell_count-1 DO $(
            IF pending_cell_referenced!i = p_old THEN $(
                LET pointer_temp = ss_get(pending_cell_referer!i)
                llvm_build_store(builder, vector_bcpladdress, pointer_temp)
                RETURN
            $)
        $)
        cgerror("No LLP for cell %N found when allocating %N element vector*N", p_old, size)
    $)


    // We need to assign space to all stack variables that don't yet
    // have values. These will fall above the top of the stack, created
    // by LLP references to locations that did not yet exist. At this
    // point, the only remaining cases will be the result of VEC declarations
    // and in such a case, we expect the following O-code to be a STACK
    // which we will need to peek at to know how must space to allocate
    IF llvm_rdn_peek(0) = s_store THEN $(

        // Look at how the top of the stack will be moved by the pending
        // stack
        LET new_S = n

        // Search above the current stack top for declared stack entries.
        // each time we get one, we note its location and if there is a
        // previous one we now know it's array size. For example:
        //
        //  80    81    82    83    84    85    86    87    88    89
        // +-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
        // | xxx |  V  |  ?  |  ?  |  ?  |  U  |  ?  |  ?  |  ?  |  ?  |
        // +-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
        //          ^                                         ^
        //          S                                         new S
        //
        // The alloca's at 81 and 85 are both VECs. Because U-V = 4,
        // V must be a VEC 4 and because new S - U = 3, U must be a VEC 3
        // (Note that VEC N allocates N+1 cells)
        //
        // The BCPL variable holding the addresses of the vectors (@V and
        // @U) are, as generated by the compiler emitting LLPs, located 
        // immediately before the vector.

        // Loop over all of the possible locations S <= n < new S looking
        // for VECs
        LET pending_vec = -1

        FOR p_index = stk_frame!F_S TO new_S DO $(

            // NB: This is the index into the map, not into Psparse:
            LET ss_location = ss_lookup(p_index)
            UNLESS ss_location = -1 DO $(

                // A location that exists above the stack top - we have 
                // found the next vector. If there is one pending, we now
                // know its size so we can allocate it and store its
                // bcpl address in the location's variable
                UNLESS pending_vec = -1 DO $(
                    allocate_vector(p_index, pending_vec)
                $)
                
                // Our current VEC is now the pending one
                pending_vec := p_index
            $)
        $)

        // If there is a pending vec here, it is the last one and so extends
        // up to the new top of the stack
        UNLESS pending_vec = -1 DO $(
            allocate_vector(new_S, pending_vec)
        $)

        // All our vectors are now defined. The next STACK will push the
        // stack pointer above them
    $)

    // Set the stack pointer - either creating a new frame or discarding
    // the current one
    ss_stack(n)
$)

AND cg_store() BE RETURN

AND cg_switchon(num_cases, default_label) BE
$(
    // The value upon which we switch
    LET value = ss_pop("switchon.value")
    LET dummy = lab_declare(default_label, LABEL_JUMP)
    LET default_bb = lab_get_bb(default_label)
    LET switch = llvm_build_switch(builder, value, default_bb, num_cases)

    // Now add each of the cases we read
    FOR i = 1 TO num_cases DO $(
        LET number, case_label = llvm_rdn(), llvm_rdn()
        LET case_value = llvm_const_int(word_type, number, 0)
        LET dummy = lab_declare(case_label, LABEL_JUMP)
        LET case_bb = lab_get_bb(case_label)
        llvm_add_case(switch, case_value, case_bb)
    $)
$)

AND cg_binary_fop(build_fop, label) BE
$(
    // Pop the rhs and the the lhs off the stack, add them and push the
    // result
    LET rhs = ss_pop("rhs")
    LET lhs = ss_pop("lhs")
    LET frhs = llvm_build_bit_cast(builder, rhs, float_type, "frhs")
    LET flhs = llvm_build_bit_cast(builder, lhs, float_type, "flhs")
    LET fresult = build_fop(builder, flhs, frhs, "fresult")
    LET result = llvm_build_bit_cast(builder, fresult, word_type, label)
    ss_push(result)
$)

AND cg_unary_fop(build_fop, label) BE
$(
    // Pop the rhs and the the lhs off the stack, add them and push the
    // result
    LET lhs = ss_pop("lhs")
    LET flhs = llvm_build_bit_cast(builder, lhs, float_type, "flhs")
    LET fresult = build_fop(builder, flhs, "fresult")
    LET result = llvm_build_bit_cast(builder, fresult, word_type, label)
    ss_push(result)
$)

AND cg_ftest(comparison, label) BE
$(
    // Pop the rhs and the the lhs off the stack, add them and push the
    // result
    LET rhs = ss_pop("rhs")
    LET lhs = ss_pop("lhs")
    LET frhs = llvm_build_bit_cast(builder, rhs, float_type, "frhs")
    LET flhs = llvm_build_bit_cast(builder, lhs, float_type, "flhs")
    LET bool = llvm_build_fcmp(builder, comparison, flhs, frhs, "comparison")
    LET result = llvm_build_int_cast2(builder, bool, word_type, 0, label)
    ss_push(result)
$)


AND cg_fix()  BE  $(

    // The BCPL word on top of the simulated stack is actually a fload
    // The BCPL word on top of the simulated stack is actually a fload
    LET lhs = ss_pop("fix")
    LET flhs = llvm_build_bit_cast(builder, lhs, float_type, "fix.ftoi")

    LET result = llvm_build_fpto_si(builder, flhs, word_type, "fix")
    ss_push(result)
$)

AND cg_float()  BE  $(

    LET lhs = ss_pop("float")
    LET flhs = llvm_build_sito_fp(builder, lhs, float_type, "float.itof")

    // We must push the value as a BCPL word
    LET result = llvm_build_bit_cast(builder, lhs, word_type, "float")
    ss_push(result)
$)

AND cg_fabs() BE cg_intrinsic("llvm.fabs.f64", 1, float_type, float_type)

AND cg_fneg() BE cg_unary_fop(llvm_build_fneg, "fneg")

AND cg_fadd() BE cg_binary_fop(llvm_build_fadd, "fadd")
AND cg_fdiv() BE cg_binary_fop(llvm_build_fdiv, "fdiv")
AND cg_fmod() BE cg_binary_fop(llvm_build_frem, "frem")
AND cg_fmul() BE cg_binary_fop(llvm_build_fmul, "fmul")
AND cg_fsub() BE cg_binary_fop(llvm_build_fsub, "fsub")

AND cg_fls() BE cg_ftest(LLVM_REAL_OLT, "fls")
AND cg_feq() BE cg_ftest(LLVM_REAL_OEQ, "feq")
AND cg_fne() BE cg_ftest(LLVM_REAL_ONE, "fne")
AND cg_fgr() BE cg_ftest(LLVM_REAL_OGT, "fgr")
AND cg_fle() BE cg_ftest(LLVM_REAL_OLE, "fle")
AND cg_fge() BE cg_ftest(LLVM_REAL_OGE, "fge")
