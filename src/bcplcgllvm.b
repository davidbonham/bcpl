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


MANIFEST $( BYTESPERWORD     =  8  $)
MANIFEST $( GLOBALVECTORSIZE = 256 $)

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

GET "cg_workspace.b"
GET "cg_stack.b"





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

GET "cg_labels.b"

GET "cg_indirect.b"
GET "cg_llvmhelpers.b"
// -----------------------------------------------------------------------------



LET llvm_rdn() = VALOF 
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



GET "cg_handlers.b"


LET codegenerate(workspace, workspace_size) BE
$(
    LET l_param_types = VEC 10
    IF errcount > 0 RETURN
    writef("LLVM code generator with %N words of workspace*N", workspace_size)
    llvm_tracing(debug)

    // Set up the workspace
    ws_init(workspace, workspace_size)
    context := llvm_context_create()
    builder := llvm_create_builder_in_context()

    // LLVM types for BCPLWORD &c, commonly used
    word_type := llvm_int64_type_in_context(context)
    char_type := llvm_int8type_in_context(context)
    float_type := llvm_double_type_in_context(context)

    // Space for the readahead we need when reading O-code
    ocode_buffer := ws_alloc(READAHEAD)

    // Space for LLVM to return messages as BCPL strings
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


