
// UNDEFINED | CREATED       ......X
// BLOCK                     .....X.
// STATIC                    ....X..
// ENTRY | GOTO | JUMP | VAR XXXX...

STATIC $(
    label_table_size         // The number of table entries we can create
    label_type               // The type of label i
    label_static             // If not zero, the LLVM global variable for the static for label i
    label_bb                 // If not zero, the LLVM basic block for label i
    label_maxseen            // The highest entry we have set so far
$)

MANIFEST $(
    LAB_UNDEFINED =   0       // Label i is not in use
    LAB_CREATED   =   1       // Label i has been created
    LAB_BLOCK     =   2
    LAB_STATIC    =   4
    LAB_ENTRY     =   8       // One of the following...
    LAB_GOTO      =  16
    LAB_JUMP      =  32
    LAB_VARIABLE  =  64
    LAB_USED      = 128
$)

LET lab_dump(title) BE $(
    writes("Labels: ")
    writes(title)
    newline()
    FOR i = 0 TO label_table_size - 1 DO $(
        LET type = label_type!i
        IF type = LAB_UNDEFINED LOOP
        wrch('L')
        writed(i,3)
        wrch(' ')
        IF (type & LAB_UNDEFINED) ~= 0 DO writes("UNDEFINED ")
        IF (type & LAB_CREATED) ~= 0   DO writes("CREATED   ")
        IF (type & LAB_BLOCK) ~= 0     DO writes("BLOCK ")
        IF (type & LAB_STATIC) ~= 0    DO writes("STATIC ")
        IF (type & LAB_ENTRY) ~= 0     DO writes("ENTRY ")
        IF (type & LAB_GOTO) ~= 0      DO writes("GOTO ")
        IF (type & LAB_JUMP) ~= 0      DO writes("JUMP ")
        IF (type & LAB_VARIABLE) ~= 0  DO writes("VARIABLE ")
        IF (type & LAB_USED) ~= 0      DO writes("USED ")   
        TEST label_bb!i ~= 0 DO writehex(label_bb!i,16) ELSE writes("no basic block  ")
        wrch(' ')
        TEST label_static!i ~= 0 DO writehex(label_static!i,16) ELSE writes("no static cell")
        newline()
    $)
$)
LET lab_init(max) BE $(
    label_table_size := max
    label_type   := ws_alloc(max)
    label_static := ws_alloc(max)
    label_bb := ws_alloc(max)
    FOR i = 0 TO max - 1 DO
    $(
        label_type!i := LAB_UNDEFINED
        label_static!i := 0
        label_bb!i := 0
    $)
    label_maxseen := -1
$)

LET lab_create(n, flag) BE $(
    // Create a new label that does not already exist
    IF n >= label_table_size DO cgerror("creating label L%N overflows the label table*N", n)
    UNLESS label_type!n = LAB_UNDEFINED DO cgerror("creating label L%N that already exists*N", n)

    label_type!n := LAB_CREATED | flag
    IF n > label_maxseen THEN label_maxseen := n
$)

LET lab_declare(n, flag) BE $(
    // Create the label if it does not already exist
    IF n >= label_table_size DO cgerror("creating label L%N overflows the label table*N", n)
    TEST label_type!n = LAB_UNDEFINED THEN $(
       lab_create(n, flag)
    $)
    ELSE $(
        // It exists - update the flags
        label_type!n |:= flag
    $)
$)

LET lab_add_static(n) = VALOF $(
    IF label_type!n = LAB_UNDEFINED DO cgerror("attempt to add static to label L%N that does not exist*N", n)
    IF (label_type!n & LAB_STATIC) = 0 DO $(
        LET static_variable = llvm_add_global(module, word_type, "static")
        llvm_set_linkage(static_variable, LLVM_INTERNAL_LINKAGE)
        llvm_set_section(static_variable, module_data_section)
        label_static!n := static_variable
        label_type!n |:= LAB_STATIC
    $)
    RESULTIS label_static!n
$)

LET lab_add_basicblock(n, name) = VALOF $(
    IF label_type!n = LAB_UNDEFINED DO cgerror("attempt to add basic block to label L%N that does not exist*N", n)
    IF (label_type!n & LAB_BLOCK) ~= 0 DO cgerror("attempt to add basic block to label L%N that already has one*N", n)

    label_bb!n := llvm_create_basic_block_in_context(context, name)
    label_type!n |:= LAB_BLOCK
    RESULTIS label_bb!n
$)

LET lab_common_basicblock(n, name, usage) = VALOF $(
    IF label_type!n = LAB_UNDEFINED DO cgerror("attempt to get basic block for label L%N that does not exist*N", n)
    label_type!n |:= usage
    RESULTIS (label_type!n & LAB_BLOCK) ~= 0 -> label_bb!n, lab_add_basicblock(n, name)
$)

// ----------------------------------------------------------------------------
LET lab_get_basicblock(n, name) = lab_common_basicblock(n, name, LAB_USED) 
// ----------------------------------------------------------------------------
// Get this label's basic block, creating it if necessary. We know we'll use it

// ----------------------------------------------------------------------------
LET lab_pending_basicblock(n, name) =lab_common_basicblock(n, name, 0)
// ----------------------------------------------------------------------------
// Get this label's basic block, creating it if necessary. We are defining it
// not using it.


LET lab_get_bb(n) = VALOF $(

    LET type = label_type!n
    UNLESS label_static!n = 0 DO cgerror("label L%N is STATIC but basic block requested.*N", n)
    UNLESS type = LAB_BLOCK DO cgerror("attempting to get basic bl for label L%N but it has type %N*N", n, type)

    label_type!n |:= LAB_USED

    // If this label was declared by an earlier LAB or GOTO it won't
    // have a basic block so we'll create one.
    IF label_bb!n = 0 THEN $(
        label_bb!n := llvm_create_basic_block_in_context(context, "label")
    $)

    RESULTIS label_bb!n
$)

LET lab_get_static(n) = VALOF $(

    label_type!n |:= LAB_USED
    RESULTIS lab_add_static(n)
$)

LET lab_set_static(n, value) BE $(
    IF (label_type!n & LAB_STATIC) = 0 DO cgerror("attempting to set static for label L%N but static does not exist*N", n)

    label_type!n |:= LAB_USED

    llvm_set_initializer(label_static!n, value)
$)

LET lab_set_table(n, value) BE $(
    UNLESS (label_bb!n = 0) ~= 0 DO cgerror("label L%N is a basic block but static set.*N", n)
    UNLESS (label_type!n & LAB_VARIABLE) ~= 0 DO cgerror("attempting to set static for label L%N but it does not exist*N", n)

    label_static!n := value
$)

// -----------------------------------------------------------------------------
LET lab_populate_indirectbr(instruction) BE $(
// -----------------------------------------------------------------------------
//
// Search for all of the labels in this function (that is, labels following
// the last ENTRY label) and if we don't know they are JUMP labels or labels
// of static VARIABLES, add them to the indirect branch instruction we have
// been given as potential targets.

    FOR i = label_maxseen TO 0 BY -1 DO $(

        // Skip labels we know aren't usable
        IF label_type!i = LAB_UNDEFINED       THEN LOOP
        IF (label_type!i & LAB_USED) = 0      THEN LOOP
        IF (label_type!i & LAB_JUMP)  ~= 0    THEN LOOP
        IF (label_type!i & LAB_VARIABLE) ~= 0 THEN LOOP

        // Stop when we reach the start of the current function
        IF (label_type!i & LAB_ENTRY) ~= 0    THEN BREAK

        assert(label_bb!i ~= 0, "label L%N didn't have expected basic block", i)
        llvm_add_destination(instruction, label_bb!i)
    $)
$)