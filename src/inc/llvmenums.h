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
