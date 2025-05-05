#include "llvm_bcpl_binding_utilities.h"
#include "llvm_bcpl_binding.h"

#include "llvm-c/Core.h"
#include "llvm-c/Analysis.h"
#include "llvm-c/Transforms/PassBuilder.h"

#include <stdint.h>

extern BCPLWORD getvec(BCPLWORD upb);

/** Binding to LLVMContext
 *
 * Create a new LLVM context and return a reference to it as an opaque type.
 * Because we don't intend it to be used for anything other than an argument
 * to another of our functions, we don't need to convert it into a BCPL cell
 * address.
 */
#include "autogen.wrapper.imp"
