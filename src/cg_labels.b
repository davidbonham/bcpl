// #                                          
// #         ##   #####  ###### #       ####  
// #        #  #  #    # #      #      #      
// #       #    # #####  #####  #       ####  
// #       ###### #    # #      #           # 
// #       #    # #    # #      #      #    # 
// ####### #    # #####  ###### ######  ####                   

MANIFEST $( 
    LABEL_UNDEF = 0     // This label is not in use
    LABEL_LAB           // Seen as LAB
    LABEL_STATIC        // This label refers to static data
    LABEL_JUMP          // This label is a JUMP/JT/JF destination
    LABEL_ENTRY         // This label is ENTRY entry point
    LABEL_LF            // This label was created by LF but type not yet known
    LABEL_GOTO          // This label is a GOTO destinatin
$)

STATIC $(
    label_table_size
    label_type
    label_static
    label_bb
$)

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
