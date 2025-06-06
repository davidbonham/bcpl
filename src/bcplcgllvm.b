SECTION "CG"

GET "libhdr"
GET "bcplfecg"
GET "llvmgvec"
GET "llvmapi"
GET "llvmenums"

MANIFEST $( BYTESPERWORD     =   8  $)
MANIFEST $( GLOBALVECTORSIZE = 1024 $)
MANIFEST $( READAHEAD        =   4  $)
MANIFEST $( MAXPENDINGLLPS   = 512  $)
MANIFEST $( MAXPARAMETERS    =  32  $)

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

    pending_llps             // Vector of LLP n pnding a STORE
    pending_llps_free        // Index of next free entry

    section_mark             // workspace level at start of section
    is_current_section_empty // Stops us emitting unused initial section

    ocode_buffer             // Read ahead of incoming O-code
    ocode_buffer_next = READAHEAD

    datalab_label            // The label for the last DATALAB we saw
    datalab_itemns           // Workspace allocated by DATALAB for ITEMNs
    datalab_itemn_count      // The number of ITEMNs we have collected

$)

LET trace(f,a,b,c,d) BE IF debug > 0 THEN writef(f,a,b,c,d)

GET "cg_llvmhelpers.b"
GET "cg_errors.b"
GET "cg_workspace.b"
GET "cg_simstack.b"
GET "cg_labels.b"
GET "cg_indirect.b"

// -----------------------------------------------------------------------------

LET cg_rdn() = VALOF
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

AND cg_rdn_peek(n) = VALOF
$(
    LET requested_index = (ocode_buffer_next + n) MOD READAHEAD
    RESULTIS ocode_buffer!requested_index
$)

AND cg_rdname(buffer, buflen) BE
$(
    // Read a length and that many bytes into the buffer, truncating at
    // the buffer length. The buffer is a vector of buflen words and on
    // exit it will hold the name as a bcpl string.
    LET name_length = cg_rdn()
    LET max_string = buflen*BYTESPERWORD - 1
    FOR pos = 1 TO name_length DO
    $(
        LET ch = cg_rdn()
        IF pos <= max_string DO buffer%pos := ch
    $)
    buffer%0 := name_length < max_string -> name_length, max_string
$)

GET "cg_handlers.b"

STATIC $( ocode_reader_active = FALSE $)
LET ocode_reader() = VALOF $(
    UNLESS ocode_reader_active DO $(
        selectinput(findinput("ocode"))
        ocode_reader_active := TRUE
    $)
    RESULTIS readn()
$)

LET codegenerate(workspace, workspace_size) BE
$(
  
    LET l_param_types = VEC 10
    IF errcount > 0 RETURN
    writef("LLVM code generator with %N words of workspace. cgg=%n*N", workspace_size,cgg)
    llvm_tracing(debug)

    // The following code replaced rdn with a version that reads from
    // a raw ocode file in the current directory, ignoring the ocode
    // that SYN and TRN have prepared for us
    //rdn := ocode_reader

    // Set up the workspace
    ws_init(workspace, workspace_size)
    context := llvm_context_create()
    builder := llvm_create_builder_in_context(context)

    // LLVM types for BCPLWORD &c, commonly used
    word_type := llvm_int64_type_in_context(context)
    char_type := llvm_int8type_in_context(context)
    float_type := llvm_double_type_in_context(context)

    // Space for the readahead we need when reading O-code
    ocode_buffer := ws_alloc(READAHEAD)

    // Space for LLVM to return messages as BCPL strings
    llvm_result := ws_alloc(256 / 8)
    llvm_set_message_buffer(llvm_result)

    // Space to record pending LLP operations per function
    pending_llps := ws_alloc(MAXPENDINGLLPS*2)


    section_mark := ws_mark()
    is_current_section_empty := TRUE

    // A default section
    cg_section("BCPLMAIN")
    cg_ocode()
    emit_and_destroy_module()

    llvm_context_dispose(context)
$)


