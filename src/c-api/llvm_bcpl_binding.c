

// These are the C wrappers converting members of the LLVM C-API into versions
// callable from BCPL via the global vector

#include "llvm_bcpl_binding_utilities.h"
#include "llvm_bcpl_binding.h"

#include "llvm-c/Core.h"
#include "llvm-c/Analysis.h"
#include "llvm-c/Transforms/PassBuilder.h"

#include <stdint.h>

extern BCPLWORD getvec(BCPLWORD upb);

BCPLWORD llvm_shutdown(void)
{
    LLVMShutdown();
    return 0;
}

BCPLWORD llvm_context_create(void)
{
    return (BCPLWORD)(uintptr_t)LLVMContextCreate();
}

BCPLWORD llvm_get_global_context(void)
{
    return (BCPLWORD)(uintptr_t)LLVMGetGlobalContext();
}

BCPLWORD llvm_context_dispose(BCPLWORD c)
{
    LLVMContextDispose((LLVMContextRef)(uintptr_t)c);
    return 0;
}

BCPLWORD llvm_module_create_with_name(BCPLWORD module_id)
{
    return (BCPLWORD)(uintptr_t)LLVMModuleCreateWithName((const char*)(uintptr_t)b2c_string1(module_id));
}

BCPLWORD llvm_module_create_with_name_in_context(BCPLWORD module_id, BCPLWORD c)
{
    return (BCPLWORD)(uintptr_t)LLVMModuleCreateWithNameInContext((const char*)(uintptr_t)b2c_string1(module_id), (LLVMContextRef)(uintptr_t)c);
}

BCPLWORD llvm_dispose_module(BCPLWORD m)
{
    LLVMDisposeModule((LLVMModuleRef)(uintptr_t)m);
    return 0;
}

BCPLWORD llvm_dump_module(BCPLWORD m)
{
    LLVMDumpModule((LLVMModuleRef)(uintptr_t)m);
    return 0;
}


BCPLWORD llvm_print_module_to_file(BCPLWORD llvm_module_ref, BCPLWORD filename, BCPLWORD error_ref)
{
    char* c_error = NULL;
    LLVMBool const result = LLVMPrintModuleToFile((LLVMModuleRef)(uintptr_t)llvm_module_ref, b2c_string1(filename), &c_error);

    if (c_error == NULL)
    {
        *(BCPLWORD*)b2c_address(error_ref) = 0;
    }
    else
    {
        // It will be up to the BCPL program to deal with and dispose of the
        // resulting error message to we need to allocate space on the BCPL
        // heap for it, return that copy and free our own
        BCPLWORD words_needed = strlen(c_error) / sizeof(BCPLWORD);
        BCPLWORD space = getvec(words_needed);
        c2b_string(c_error, space);

        *(BCPLWORD*)b2c_address(error_ref) = space;
        LLVMDisposeMessage(c_error);
    }
    return result ? BCPLTRUE : 0;
}

BCPLWORD llvm_add_function(BCPLWORD m, BCPLWORD name, BCPLWORD function_ty)
{
    return (BCPLWORD)(uintptr_t)LLVMAddFunction((LLVMModuleRef)(uintptr_t)m, (const char*)(uintptr_t)b2c_string1(name), (LLVMTypeRef)(uintptr_t)function_ty);
}

BCPLWORD llvm_int64_type_in_context(BCPLWORD c)
{
    return (BCPLWORD)(uintptr_t)LLVMInt64TypeInContext((LLVMContextRef)(uintptr_t)c);
}


BCPLWORD llvm_function_type(BCPLWORD ret_llvm_type_ref, BCPLWORD params_llvm_type_ref_ptr, BCPLWORD params_count, BCPLWORD is_varargs)
{
    // We can't just pass through our BCPL vector of type refs because the
    // elements size may differ, so we need to create a temporary copy.
    BCPLWORD* ptr = (BCPLWORD*)b2c_address(params_llvm_type_ref_ptr);
    LLVMTypeRef* param_types = (LLVMTypeRef*) malloc(params_count*sizeof(LLVMTypeRef));
    for (int i = 0; i < params_count; i += 1)
    {
        param_types[i] = (LLVMTypeRef)(uintptr_t) ptr[i];
    }

    LLVMTypeRef const result = LLVMFunctionType((LLVMTypeRef)(uintptr_t)ret_llvm_type_ref, param_types, params_count, is_varargs);
    free(param_types);
    return (BCPLWORD)(uintptr_t)result;
}

BCPLWORD llvm_array_type(BCPLWORD element_type, BCPLWORD element_count)
{
    return (BCPLWORD)(uintptr_t)LLVMArrayType((LLVMTypeRef)(uintptr_t)element_type, (unsigned)(uintptr_t)element_count);
}

BCPLWORD llvm_pointer_type(BCPLWORD element_type, BCPLWORD address_space)
{
    return (BCPLWORD)(uintptr_t)LLVMPointerType((LLVMTypeRef)(uintptr_t)element_type, (unsigned)(uintptr_t)address_space);
}

BCPLWORD llvm_void_type_in_context(BCPLWORD c)
{
    return (BCPLWORD)(uintptr_t)LLVMVoidTypeInContext((LLVMContextRef)(uintptr_t)c);
}



BCPLWORD llvm_print_value_to_string(BCPLWORD value)
{
    char* const message = LLVMPrintValueToString((LLVMValueRef)(uintptr_t)value);
    return bcpl_build_message("llvm_print_value_to_string", message);
}

BCPLWORD llvm_const_ptr_to_int(BCPLWORD constant_val, BCPLWORD to_type)
{
    return (BCPLWORD)(uintptr_t)LLVMConstPtrToInt((LLVMValueRef)(uintptr_t)constant_val, (LLVMTypeRef)(uintptr_t)to_type);
}

BCPLWORD llvm_const_int_to_ptr(BCPLWORD constant_val, BCPLWORD to_type)
{
    return (BCPLWORD)(uintptr_t)LLVMConstIntToPtr((LLVMValueRef)(uintptr_t)constant_val, (LLVMTypeRef)(uintptr_t)to_type);
}

BCPLWORD llvm_const_int(BCPLWORD int_ty, BCPLWORD n, BCPLWORD sign_extend)
{
    return (BCPLWORD)(uintptr_t)LLVMConstInt((LLVMTypeRef)(uintptr_t)int_ty, (unsigned long long)(uintptr_t)n, (LLVMBool)(uintptr_t)sign_extend);
}

BCPLWORD llvm_set_linkage(BCPLWORD global, BCPLWORD linkage)
{
    LLVMSetLinkage((LLVMValueRef)(uintptr_t)global, (LLVMLinkage)(uintptr_t)linkage);
    return 0;
}

BCPLWORD llvm_set_section(BCPLWORD global, BCPLWORD section)
{
    LLVMSetSection((LLVMValueRef)(uintptr_t)global, (const char*)(uintptr_t)b2c_string1(section));
    return 0;
}

BCPLWORD llvm_set_visibility(BCPLWORD global, BCPLWORD viz)
{
    LLVMSetVisibility((LLVMValueRef)(uintptr_t)global, (LLVMVisibility)(uintptr_t)viz);
    return 0;
}

BCPLWORD llvm_add_global(BCPLWORD m, BCPLWORD ty, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMAddGlobal((LLVMModuleRef)(uintptr_t)m, (LLVMTypeRef)(uintptr_t)ty, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_set_initializer(BCPLWORD global_var, BCPLWORD constant_val)
{
    LLVMSetInitializer((LLVMValueRef)(uintptr_t)global_var, (LLVMValueRef)(uintptr_t)constant_val);
    return 0;
}

BCPLWORD llvm_set_externally_initialized(BCPLWORD global_var, BCPLWORD is_ext_init)
{
    LLVMSetExternallyInitialized((LLVMValueRef)(uintptr_t)global_var, (LLVMBool)(uintptr_t)is_ext_init);
    return 0;
}

BCPLWORD llvm_delete_function(BCPLWORD fn)
{
    LLVMDeleteFunction((LLVMValueRef)(uintptr_t)fn);
    return 0;
}

BCPLWORD llvm_insert_existing_basic_block_after_insert_block(BCPLWORD builder, BCPLWORD bb)
{
    LLVMInsertExistingBasicBlockAfterInsertBlock((LLVMBuilderRef)(uintptr_t)builder, (LLVMBasicBlockRef)(uintptr_t)bb);
    return 0;
}

BCPLWORD llvm_append_existing_basic_block(BCPLWORD fn, BCPLWORD bb)
{
    LLVMAppendExistingBasicBlock((LLVMValueRef)(uintptr_t)fn, (LLVMBasicBlockRef)(uintptr_t)bb);
    return 0;
}

BCPLWORD llvm_create_basic_block_in_context(BCPLWORD c, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMCreateBasicBlockInContext((LLVMContextRef)(uintptr_t)c, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_append_basic_block_in_context(BCPLWORD c, BCPLWORD fn, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMAppendBasicBlockInContext((LLVMContextRef)(uintptr_t)c, (LLVMValueRef)(uintptr_t)fn, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_append_basic_block(BCPLWORD fn, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMAppendBasicBlock((LLVMValueRef)(uintptr_t)fn, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_insert_basic_block_in_context(BCPLWORD c, BCPLWORD bb, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMInsertBasicBlockInContext((LLVMContextRef)(uintptr_t)c, (LLVMBasicBlockRef)(uintptr_t)bb, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_insert_basic_block(BCPLWORD insert_before_bb, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMInsertBasicBlock((LLVMBasicBlockRef)(uintptr_t)insert_before_bb, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_create_builder_in_context(BCPLWORD c)
{
    return (BCPLWORD)(uintptr_t)LLVMCreateBuilderInContext((LLVMContextRef)(uintptr_t)c);
}

BCPLWORD llvm_position_builder(BCPLWORD builder, BCPLWORD block, BCPLWORD instr)
{
    LLVMPositionBuilder((LLVMBuilderRef)(uintptr_t)builder, (LLVMBasicBlockRef)(uintptr_t)block, (LLVMValueRef)(uintptr_t)instr);
    return 0;
}

BCPLWORD llvm_position_builder_before(BCPLWORD builder, BCPLWORD instr)
{
    LLVMPositionBuilderBefore((LLVMBuilderRef)(uintptr_t)builder, (LLVMValueRef)(uintptr_t)instr);
    return 0;
}

BCPLWORD llvm_position_builder_at_end(BCPLWORD builder, BCPLWORD block)
{
    LLVMPositionBuilderAtEnd((LLVMBuilderRef)(uintptr_t)builder, (LLVMBasicBlockRef)(uintptr_t)block);
    return 0;
}

BCPLWORD llvm_get_insert_block(BCPLWORD builder)
{
    return (BCPLWORD)(uintptr_t)LLVMGetInsertBlock((LLVMBuilderRef)(uintptr_t)builder);
}

BCPLWORD llvm_clear_insertion_position(BCPLWORD builder)
{
    LLVMClearInsertionPosition((LLVMBuilderRef)(uintptr_t)builder);
    return 0;
}

BCPLWORD llvm_insert_into_builder(BCPLWORD builder, BCPLWORD instr)
{
    LLVMInsertIntoBuilder((LLVMBuilderRef)(uintptr_t)builder, (LLVMValueRef)(uintptr_t)instr);
    return 0;
}

BCPLWORD llvm_insert_into_builder_with_name(BCPLWORD builder, BCPLWORD instr, BCPLWORD name)
{
    LLVMInsertIntoBuilderWithName((LLVMBuilderRef)(uintptr_t)builder, (LLVMValueRef)(uintptr_t)instr, (const char*)(uintptr_t)b2c_string1(name));
    return 0;
}

BCPLWORD llvm_dispose_builder(BCPLWORD builder)
{
    LLVMDisposeBuilder((LLVMBuilderRef)(uintptr_t)builder);
    return 0;
}

BCPLWORD llvm_build_ret_void(BCPLWORD builder)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildRetVoid((LLVMBuilderRef)(uintptr_t)builder);
}

BCPLWORD llvm_build_ret(BCPLWORD builder, BCPLWORD v)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildRet((LLVMBuilderRef)(uintptr_t)builder, (LLVMValueRef)(uintptr_t)v);
}

BCPLWORD llvm_build_br(BCPLWORD builder, BCPLWORD dest)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildBr((LLVMBuilderRef)(uintptr_t)builder, (LLVMBasicBlockRef)(uintptr_t)dest);
}

BCPLWORD llvm_build_cond_br(BCPLWORD builder, BCPLWORD if_, BCPLWORD then_, BCPLWORD else_)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildCondBr((LLVMBuilderRef)(uintptr_t)builder, (LLVMValueRef)(uintptr_t)if_, (LLVMBasicBlockRef)(uintptr_t)then_, (LLVMBasicBlockRef)(uintptr_t)else_);
}

BCPLWORD llvm_build_switch(BCPLWORD builder, BCPLWORD v, BCPLWORD else_, BCPLWORD num_cases)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildSwitch((LLVMBuilderRef)(uintptr_t)builder, (LLVMValueRef)(uintptr_t)v, (LLVMBasicBlockRef)(uintptr_t)else_, (unsigned)(uintptr_t)num_cases);
}

BCPLWORD llvm_build_indirect_br(BCPLWORD b, BCPLWORD addr, BCPLWORD num_dests)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildIndirectBr((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)addr, (unsigned)(uintptr_t)num_dests);
}

BCPLWORD llvm_add_case(BCPLWORD switch_, BCPLWORD on_val, BCPLWORD dest)
{
    LLVMAddCase((LLVMValueRef)(uintptr_t)switch_, (LLVMValueRef)(uintptr_t)on_val, (LLVMBasicBlockRef)(uintptr_t)dest);
    return 0;
}

BCPLWORD llvm_add_destination(BCPLWORD indirect_br, BCPLWORD dest)
{
    LLVMAddDestination((LLVMValueRef)(uintptr_t)indirect_br, (LLVMBasicBlockRef)(uintptr_t)dest);
    return 0;
}

BCPLWORD llvm_build_add(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildAdd((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_nswadd(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildNSWAdd((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_nuwadd(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildNUWAdd((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_fadd(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildFAdd((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_sub(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildSub((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_nswsub(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildNSWSub((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_nuwsub(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildNUWSub((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_fsub(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildFSub((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_mul(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildMul((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_nswmul(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildNSWMul((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_nuwmul(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildNUWMul((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_fmul(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildFMul((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_udiv(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildUDiv((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_exact_udiv(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildExactUDiv((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_sdiv(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildSDiv((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_exact_sdiv(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildExactSDiv((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_fdiv(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildFDiv((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_urem(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildURem((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_srem(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildSRem((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_frem(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildFRem((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_shl(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildShl((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_lshr(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildLShr((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_ashr(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildAShr((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_and(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildAnd((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_or(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildOr((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_xor(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildXor((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_bin_op(BCPLWORD b, BCPLWORD op, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildBinOp((LLVMBuilderRef)(uintptr_t)b, (LLVMOpcode)(uintptr_t)op, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_neg(BCPLWORD b, BCPLWORD v, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildNeg((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)v, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_nswneg(BCPLWORD b, BCPLWORD v, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildNSWNeg((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)v, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_fneg(BCPLWORD b, BCPLWORD v, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildFNeg((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)v, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_not(BCPLWORD b, BCPLWORD v, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildNot((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)v, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_alloca(BCPLWORD b, BCPLWORD ty, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildAlloca((LLVMBuilderRef)(uintptr_t)b, (LLVMTypeRef)(uintptr_t)ty, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_array_alloca(BCPLWORD b, BCPLWORD ty, BCPLWORD val, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildArrayAlloca((LLVMBuilderRef)(uintptr_t)b, (LLVMTypeRef)(uintptr_t)ty, (LLVMValueRef)(uintptr_t)val, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_load2(BCPLWORD b, BCPLWORD ty, BCPLWORD pointer_val, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildLoad2((LLVMBuilderRef)(uintptr_t)b, (LLVMTypeRef)(uintptr_t)ty, (LLVMValueRef)(uintptr_t)pointer_val, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_store(BCPLWORD b, BCPLWORD val, BCPLWORD ptr)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildStore((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)val, (LLVMValueRef)(uintptr_t)ptr);
}


BCPLWORD llvm_build_gep2(BCPLWORD builder, BCPLWORD type_ref, BCPLWORD pointer, BCPLWORD indices, BCPLWORD num_indices, BCPLWORD name)
{
    char c_name[256];
    char const* r = b2c_string(name, c_name);

    BCPLWORD* ptr = (BCPLWORD*)b2c_address(indices);
    LLVMValueRef* const indices_copy = (LLVMValueRef*) malloc(sizeof(LLVMValueRef)*num_indices);
    int i;
    for (i = 0; i < num_indices; i += 1)
    {
        indices_copy[i] = (LLVMValueRef)(uintptr_t)ptr[i];
    }

return (BCPLWORD)(uintptr_t) LLVMBuildGEP2((LLVMBuilderRef)(uintptr_t)builder, (LLVMTypeRef)(uintptr_t)type_ref, (LLVMValueRef)(uintptr_t)pointer, indices_copy, (unsigned)num_indices, c_name);
}


BCPLWORD llvm_build_call2(BCPLWORD builder, BCPLWORD signature, BCPLWORD function, BCPLWORD arguments, BCPLWORD num_args, BCPLWORD name)
{
    extern bool extfn_tracing;
    char c_name[256];
    char const* r = b2c_string(name, c_name);

    // We can't assume that the arguments are the same size so we must copy
    // the vector
    BCPLWORD* ptr = (BCPLWORD*)b2c_address(arguments);
    LLVMValueRef* const args_copy = (LLVMValueRef*) malloc(sizeof(LLVMValueRef)*num_args);
    int i;
    for (i = 0; i < num_args; i += 1) args_copy[i] = (LLVMValueRef)(uintptr_t)ptr[i];

    if (extfn_tracing)
    {
        bcpl_print_message("signature", LLVMPrintTypeToString((LLVMTypeRef)(uintptr_t)signature));
        printf("num_args=%ld\n", num_args);
        for (i = 0; i < num_args; i += 1) bcpl_print_message("arg", LLVMPrintValueToString((LLVMValueRef)args_copy[i]));
    }

    LLVMValueRef result = LLVMBuildCall2((LLVMBuilderRef)(uintptr_t)builder, (LLVMTypeRef)(uintptr_t)signature, (LLVMValueRef)(uintptr_t)function, args_copy, (unsigned)num_args, c_name);
    free(args_copy);

    return (BCPLWORD)(uintptr_t)result;
}

BCPLWORD llvm_build_ptr_to_int(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildPtrToInt((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)val, (LLVMTypeRef)(uintptr_t)dest_ty, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_int_to_ptr(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildIntToPtr((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)val, (LLVMTypeRef)(uintptr_t)dest_ty, (const char*)(uintptr_t)b2c_string1(name));
}


BCPLWORD llvm_verify_module(BCPLWORD llvm_module_ref, BCPLWORD llvm_verifier_failure_action, BCPLWORD out)
{
   return (BCPLWORD)LLVMVerifyModule((LLVMModuleRef)(uintptr_t)llvm_module_ref, (LLVMVerifierFailureAction)(uintptr_t)llvm_verifier_failure_action, NULL);
}

BCPLWORD llvm_get_initializer(BCPLWORD global_var)
{
    return (BCPLWORD)(uintptr_t)LLVMGetInitializer((LLVMValueRef)(uintptr_t)global_var);
}

BCPLWORD llvm_get_param(BCPLWORD fn, BCPLWORD index)
{
    return (BCPLWORD)(uintptr_t)LLVMGetParam((LLVMValueRef)(uintptr_t)fn, (unsigned)(uintptr_t)index);
}

BCPLWORD llvm_build_icmp(BCPLWORD b, BCPLWORD op, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildICmp((LLVMBuilderRef)(uintptr_t)b, (LLVMIntPredicate)(uintptr_t)op, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_int1type_in_context(BCPLWORD c)
{
    return (BCPLWORD)(uintptr_t)LLVMInt1TypeInContext((LLVMContextRef)(uintptr_t)c);
}


BCPLWORD llvm_get_basic_block_name(BCPLWORD bb, BCPLWORD vector)
{
    const char* const name = LLVMGetBasicBlockName((LLVMBasicBlockRef)(uintptr_t)bb);
    size_t const length = strlen(name);
    char* const vector_p = (char*)b2c_address(vector);
    vector_p[0] = length;
    memcpy(vector_p+1, name, length);
    return 0;
}

BCPLWORD llvm_get_basic_block_parent(BCPLWORD bb)
{
    return (BCPLWORD)(uintptr_t)LLVMGetBasicBlockParent((LLVMBasicBlockRef)(uintptr_t)bb);
}

BCPLWORD llvm_get_basic_block_terminator(BCPLWORD bb)
{
    return (BCPLWORD)(uintptr_t)LLVMGetBasicBlockTerminator((LLVMBasicBlockRef)(uintptr_t)bb);
}

BCPLWORD llvm_count_basic_blocks(BCPLWORD fn)
{
    return (BCPLWORD)(uintptr_t)LLVMCountBasicBlocks((LLVMValueRef)(uintptr_t)fn);
}

BCPLWORD llvm_get_first_basic_block(BCPLWORD fn)
{
    return (BCPLWORD)(uintptr_t)LLVMGetFirstBasicBlock((LLVMValueRef)(uintptr_t)fn);
}

BCPLWORD llvm_get_last_basic_block(BCPLWORD fn)
{
    return (BCPLWORD)(uintptr_t)LLVMGetLastBasicBlock((LLVMValueRef)(uintptr_t)fn);
}

BCPLWORD llvm_get_next_basic_block(BCPLWORD bb)
{
    return (BCPLWORD)(uintptr_t)LLVMGetNextBasicBlock((LLVMBasicBlockRef)(uintptr_t)bb);
}

BCPLWORD llvm_get_previous_basic_block(BCPLWORD bb)
{
    return (BCPLWORD)(uintptr_t)LLVMGetPreviousBasicBlock((LLVMBasicBlockRef)(uintptr_t)bb);
}

BCPLWORD llvm_get_entry_basic_block(BCPLWORD fn)
{
    return (BCPLWORD)(uintptr_t)LLVMGetEntryBasicBlock((LLVMValueRef)(uintptr_t)fn);
}

BCPLWORD llvm_build_int_cast2(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD is_signed, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildIntCast2((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)val, (LLVMTypeRef)(uintptr_t)dest_ty, (LLVMBool)(uintptr_t)is_signed, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_verify_function(BCPLWORD fn, BCPLWORD action)
{
    return (BCPLWORD)(uintptr_t)LLVMVerifyFunction((LLVMValueRef)(uintptr_t)fn, (LLVMVerifierFailureAction)(uintptr_t)action);
}



BCPLWORD llvm_print_module_to_string(BCPLWORD module_ref)
{
    return c2b_address(LLVMPrintModuleToString((LLVMModuleRef)(uintptr_t)module_ref));
}


BCPLWORD llvm_dispose_message(BCPLWORD message)
{
    LLVMDisposeMessage((char*)b2c_address(message));
    return 0;
}



BCPLWORD llvm_tracing(BCPLWORD flag)
{
    extern bool extfn_tracing;
    extfn_tracing = (flag & 2) != 0;
    return 0;
}


BCPLWORD llvm_const_string_in_context(BCPLWORD c, BCPLWORD str, BCPLWORD length, BCPLWORD dont_null_terminate)
{
    // Because we want to initialise memory with a BCPL string, don't
    // convert it into a c string, just pass its real address
    const char* address = (char*)b2c_address(str);
    return (BCPLWORD)(uintptr_t) LLVMConstStringInContext((LLVMContextRef)(uintptr_t)c, address, (unsigned)length, (LLVMBool)dont_null_terminate);
} 

BCPLWORD llvm_int8type_in_context(BCPLWORD c)
{
    return (BCPLWORD)(uintptr_t)LLVMInt8TypeInContext((LLVMContextRef)(uintptr_t)c);
}

BCPLWORD llvm_build_extract_element(BCPLWORD b, BCPLWORD vec_val, BCPLWORD index, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildExtractElement((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)vec_val, (LLVMValueRef)(uintptr_t)index, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_zext(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildZExt((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)val, (LLVMTypeRef)(uintptr_t)dest_ty, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_pointer_cast(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildPointerCast((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)val, (LLVMTypeRef)(uintptr_t)dest_ty, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_global_string(BCPLWORD b, BCPLWORD str, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildGlobalString((LLVMBuilderRef)(uintptr_t)b, (const char*)(uintptr_t)b2c_string1(str), (const char*)(uintptr_t)b2c_string2(name));
}

BCPLWORD llvm_build_global_string_ptr(BCPLWORD b, BCPLWORD str, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildGlobalStringPtr((LLVMBuilderRef)(uintptr_t)b, (const char*)(uintptr_t)b2c_string1(str), (const char*)(uintptr_t)b2c_string2(name));
}



BCPLWORD llvm_const_array(BCPLWORD element_ty, BCPLWORD constant_vals, BCPLWORD length)
{
    LLVMValueRef* items = (LLVMValueRef*)b2c_address(constant_vals);
    return (BCPLWORD)(uintptr_t) LLVMConstArray((LLVMTypeRef)(uintptr_t)element_ty, items, (unsigned)length);
}

BCPLWORD llvm_get_next_instruction(BCPLWORD inst)
{
    return (BCPLWORD)(uintptr_t)LLVMGetNextInstruction((LLVMValueRef)(uintptr_t)inst);
}

BCPLWORD llvm_get_first_instruction(BCPLWORD bb)
{
    return (BCPLWORD)(uintptr_t)LLVMGetFirstInstruction((LLVMBasicBlockRef)(uintptr_t)bb);
}

BCPLWORD llvm_is_aterminator_inst(BCPLWORD inst)
{
    return (BCPLWORD)(uintptr_t)LLVMIsATerminatorInst((LLVMValueRef)(uintptr_t)inst);
}

BCPLWORD llvm_set_alignment(BCPLWORD v, BCPLWORD bytes)
{
    LLVMSetAlignment((LLVMValueRef)(uintptr_t)v, (unsigned)(uintptr_t)bytes);
    return 0;
}

BCPLWORD llvm_delete_basic_block(BCPLWORD bb)
{
    LLVMDeleteBasicBlock((LLVMBasicBlockRef)(uintptr_t)bb);
    return 0;
}

BCPLWORD llvm_build_free(BCPLWORD b, BCPLWORD pointer_val)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildFree((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)pointer_val);
}

BCPLWORD llvm_get_last_instruction(BCPLWORD bb)
{
    return (BCPLWORD)(uintptr_t)LLVMGetLastInstruction((LLVMBasicBlockRef)(uintptr_t)bb);
}

BCPLWORD llvm_instruction_erase_from_parent(BCPLWORD inst)
{
    LLVMInstructionEraseFromParent((LLVMValueRef)(uintptr_t)inst);
    return 0;
}

BCPLWORD llvm_get_instruction_parent(BCPLWORD inst)
{
    return (BCPLWORD)(uintptr_t)LLVMGetInstructionParent((LLVMValueRef)(uintptr_t)inst);
}

BCPLWORD llvm_get_previous_instruction(BCPLWORD inst)
{
    return (BCPLWORD)(uintptr_t)LLVMGetPreviousInstruction((LLVMValueRef)(uintptr_t)inst);
}

BCPLWORD llvm_int128type_in_context(BCPLWORD c)
{
    return (BCPLWORD)(uintptr_t)LLVMInt128TypeInContext((LLVMContextRef)(uintptr_t)c);
}

BCPLWORD llvm_double_type_in_context(BCPLWORD c)
{
    return (BCPLWORD)(uintptr_t)LLVMDoubleTypeInContext((LLVMContextRef)(uintptr_t)c);
}

BCPLWORD llvm_build_fpto_si(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildFPToSI((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)val, (LLVMTypeRef)(uintptr_t)dest_ty, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_sito_fp(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildSIToFP((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)val, (LLVMTypeRef)(uintptr_t)dest_ty, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_build_bit_cast(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildBitCast((LLVMBuilderRef)(uintptr_t)b, (LLVMValueRef)(uintptr_t)val, (LLVMTypeRef)(uintptr_t)dest_ty, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_lookup_intrinsic_id(BCPLWORD name, BCPLWORD name_len)
{
    return (BCPLWORD)(uintptr_t)LLVMLookupIntrinsicID((const char*)(uintptr_t)b2c_string1(name), (size_t)(uintptr_t)name_len);
}

BCPLWORD llvm_get_intrinsic_declaration(BCPLWORD mod, BCPLWORD id, BCPLWORD param_types, BCPLWORD param_count)
{
    return (BCPLWORD)(uintptr_t)LLVMGetIntrinsicDeclaration((LLVMModuleRef)(uintptr_t)mod, (unsigned)(uintptr_t)id, (LLVMTypeRef*)(uintptr_t)param_types, (size_t)(uintptr_t)param_count);
}

BCPLWORD llvm_build_fcmp(BCPLWORD b, BCPLWORD op, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildFCmp((LLVMBuilderRef)(uintptr_t)b, (LLVMRealPredicate)(uintptr_t)op, (LLVMValueRef)(uintptr_t)lhs, (LLVMValueRef)(uintptr_t)rhs, (const char*)(uintptr_t)b2c_string1(name));
}

BCPLWORD llvm_block_address(BCPLWORD f, BCPLWORD bb)
{
    return (BCPLWORD)(uintptr_t)LLVMBlockAddress((LLVMValueRef)(uintptr_t)f, (LLVMBasicBlockRef)(uintptr_t)bb);
}

BCPLWORD llvm_type_of(BCPLWORD val)
{
    return (BCPLWORD)(uintptr_t)LLVMTypeOf((LLVMValueRef)(uintptr_t)val);
}

BCPLWORD llvm_build_phi(BCPLWORD b, BCPLWORD ty, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMBuildPhi((LLVMBuilderRef)(uintptr_t)b, (LLVMTypeRef)(uintptr_t)ty, (const char*)(uintptr_t)b2c_string1(name));
}


BCPLWORD llvm_add_incoming(BCPLWORD phi_node, BCPLWORD incoming_values, BCPLWORD incoming_blocks, BCPLWORD count)
{
    LLVMValueRef*      values = (LLVMValueRef*)b2c_address(incoming_values);
    LLVMBasicBlockRef* blocks = (LLVMBasicBlockRef*)b2c_address(incoming_blocks);
    LLVMValueRef phi = (LLVMValueRef)(uintptr_t)phi_node;
    LLVMAddIncoming(phi, values, blocks, (unsigned)count);
    return 0;
}

BCPLWORD llvm_count_incoming(BCPLWORD phi_node)
{
    return (BCPLWORD)(uintptr_t)LLVMCountIncoming((LLVMValueRef)(uintptr_t)phi_node);
}

BCPLWORD llvm_run_passes(BCPLWORD m, BCPLWORD passes, BCPLWORD tm, BCPLWORD options)
{
    return (BCPLWORD)(uintptr_t)LLVMRunPasses((LLVMModuleRef)(uintptr_t)m, (const char*)(uintptr_t)b2c_string1(passes), (LLVMTargetMachineRef)(uintptr_t)tm, (LLVMPassBuilderOptionsRef)(uintptr_t)options);
}

BCPLWORD llvm_initialize_all_target_infos(void)
{
    LLVMInitializeAllTargetInfos();
    return 0;
}


BCPLWORD llvm_get_default_target_triple()
{
    char* const message = LLVMGetDefaultTargetTriple();
    return bcpl_build_message("llvm_get_default_target_triple", message);
}

BCPLWORD llvm_get_target_from_triple(BCPLWORD target_triple, BCPLWORD unused_target, BCPLWORD unused_error)
{
    // We return the triple as the result and the error via llvm_result
    char* error_message;
    LLVMTargetRef target;
    LLVMBool failed = LLVMGetTargetFromTriple(b2c_string1(target_triple), &target, &error_message);
    return failed ? bcpl_build_message("llvm_get_target_from_triple", error_message) : (BCPLWORD)(uintptr_t)target;
}    
BCPLWORD llvm_create_target_machine(BCPLWORD t, BCPLWORD triple, BCPLWORD cpu, BCPLWORD features, BCPLWORD level, BCPLWORD reloc, BCPLWORD code_model)
{
    return (BCPLWORD)(uintptr_t)LLVMCreateTargetMachine((LLVMTargetRef)(uintptr_t)t, (const char*)(uintptr_t)b2c_string1(triple), (const char*)(uintptr_t)b2c_string2(cpu), (const char*)(uintptr_t)b2c_string3(features), (LLVMCodeGenOptLevel)(uintptr_t)level, (LLVMRelocMode)(uintptr_t)reloc, (LLVMCodeModel)(uintptr_t)code_model);
}

BCPLWORD llvm_dispose_target_machine(BCPLWORD t)
{
    LLVMDisposeTargetMachine((LLVMTargetMachineRef)(uintptr_t)t);
    return 0;
}

BCPLWORD llvm_create_pass_builder_options(void)
{
    return (BCPLWORD)(uintptr_t)LLVMCreatePassBuilderOptions();
}

BCPLWORD llvm_get_error_message(BCPLWORD err)
{
    LLVMGetErrorMessage((LLVMErrorRef)(uintptr_t)err);
    return 0;
}

BCPLWORD llvm_dispose_pass_builder_options(BCPLWORD options)
{
    LLVMDisposePassBuilderOptions((LLVMPassBuilderOptionsRef)(uintptr_t)options);
    return 0;
}

BCPLWORD llvm_get_target_name(BCPLWORD t)
{
    LLVMGetTargetName((LLVMTargetRef)(uintptr_t)t);
    return 0;
}

BCPLWORD llvm_set_function_call_conv(BCPLWORD fn, BCPLWORD cc)
{
    LLVMSetFunctionCallConv((LLVMValueRef)(uintptr_t)fn, (unsigned)(uintptr_t)cc);
    return 0;
}

BCPLWORD llvm_add_alias2(BCPLWORD m, BCPLWORD value_ty, BCPLWORD addr_space, BCPLWORD aliasee, BCPLWORD name)
{
    return (BCPLWORD)(uintptr_t)LLVMAddAlias2((LLVMModuleRef)(uintptr_t)m, (LLVMTypeRef)(uintptr_t)value_ty, (unsigned)(uintptr_t)addr_space, (LLVMValueRef)(uintptr_t)aliasee, (const char*)(uintptr_t)b2c_string1(name));
}



BCPLWORD llvm_print_type_to_string(BCPLWORD value)
{
    char* const message = LLVMPrintTypeToString((LLVMTypeRef)(uintptr_t)value);
    return bcpl_build_message("llvm_print_type_to_string", message);
}


BCPLWORD llvm_get_host_cpuname(void)
{
    return bcpl_build_message("llvm_get_host_cpuname", LLVMGetHostCPUName());
}

BCPLWORD llvm_get_host_cpufeatures(void)
{
    return bcpl_build_message("llvm_get_host_features", LLVMGetHostCPUFeatures());
}
BCPLWORD llvm_set_target(BCPLWORD m, BCPLWORD triple)
{
    LLVMSetTarget((LLVMModuleRef)(uintptr_t)m, (const char*)(uintptr_t)b2c_string1(triple));
    return 0;
}

