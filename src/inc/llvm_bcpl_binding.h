#ifndef LLVM_BCPL_BINDING_H
#define LLVM_BCPL_BINDING_H

#include "cintmain.h"

/*
BCPLWORD LLVM_init(void);

BCPLWORD LLVM_context_create(void);

BCPLWORD LLVM_module_create_with_name_in_context(BCPLWORD name, BCPLWORD llvm_context_ref);

BCPLWORD LLVM_print_module_to_file(BCPLWORD llvm_module_ref, BCPLWORD filename, BCPLWORD error_ref);

BCPLWORD LLVM_create_builder_in_context(BCPLWORD llvm_context_ref);

void LLVM_dispose_builder(BCPLWORD llvm_builder_ref);

BCPLWORD LLVM_add_global(BCPLWORD llvm_module_ref, BCPLWORD llvm_type_ref, BCPLWORD name);

BCPLWORD LLVM_int64_type_in_context(BCPLWORD llvm_context_ref);

BCPLWORD LLVM_double_type_in_context(BCPLWORD llvm_context_ref);

BCPLWORD LLVM_set_section(BCPLWORD llvm_value_ref, BCPLWORD section);

BCPLWORD LLVM_set_visibility(BCPLWORD llvm_value_ref, BCPLWORD llvm_visibility);

BCPLWORD LLVM_array_type(BCPLWORD llvm_type_ref, BCPLWORD count);

BCPLWORD LLVM_set_linkage(BCPLWORD llvm_value_ref, BCPLWORD llvm_linkage);

BCPLWORD LLVM_const_ptr_to_int(BCPLWORD llvm_value_ref, BCPLWORD llvm_type_ref);

BCPLWORD LLVM_constant_int(BCPLWORD llvm_type_ref, BCPLWORD n, BCPLWORD sign_extend);

BCPLWORD LLVM_set_initializer(BCPLWORD llvm_value_ref, BCPLWORD llvm_init_ref);

BCPLWORD LLVM_context_dispose(BCPLWORD llvm_context_ref);

BCPLWORD LLVM_dispose_module(BCPLWORD llvm_module_ref);

BCPLWORD LLVM_add_function(BCPLWORD llvm_module_ref, BCPLWORD name, BCPLWORD llvm_type_ref);

BCPLWORD LLVM_function_type(BCPLWORD ret_llvm_type_ref, BCPLWORD params_llvm_type_ref_ptr, BCPLWORD params_count, BCPLWORD is_varargs);

BCPLWORD LLVM_create_basic_block_in_context(BCPLWORD llvm_context_ref, BCPLWORD name);

BCPLWORD LLVM_append_basic_block(BCPLWORD llvm_value_ref, BCPLWORD name);

BCPLWORD LLVM_position_builder_at_end(BCPLWORD llvm_builder_ref, BCPLWORD llvm_basic_block_ref);

BCPLWORD LLVM_get_param(BCPLWORD llvm_value_ref, BCPLWORD index);

BCPLWORD LLVM_build_add(BCPLWORD llvm_builder_ref, BCPLWORD llvm_value_ref_lhs, BCPLWORD llvm_value_ref_rhs, BCPLWORD name);

BCPLWORD LLVM_build_ret(BCPLWORD llvm_builder_ref, BCPLWORD llvm_value_ref);

BCPLWORD LLVM_verify_module(BCPLWORD llvm_module_ref, BCPLWORD llvm_verifier_failure_action);

BCPLWORD LLVM_dispose_message(BCPLWORD string);

BCPLWORD LLVM_const_string(BCPLWORD string, BCPLWORD length, BCPLWORD dont_terminate);

BCPLWORD LLVM_build_call_2(BCPLWORD builder, BCPLWORD signature, BCPLWORD function, BCPLWORD arguments, BCPLWORD num_args, BCPLWORD name);

BCPLWORD LLVM_build_GEP2(BCPLWORD builder, BCPLWORD type_ref, BCPLWORD pointer, BCPLWORD indices, BCPLWORD num_indices, BCPLWORD name);

BCPLWORD LLVM_build_load(BCPLWORD builder, BCPLWORD pointer, BCPLWORD name);

BCPLWORD LLVM_build_int_to_ptr(BCPLWORD builder, BCPLWORD integer, BCPLWORD pointer_type, BCPLWORD name);

BCPLWORD test_c(void);

BCPLWORD LLVM_pointer_type(BCPLWORD type, BCPLWORD address_space);

BCPLWORD LLVM_build_ret_void(BCPLWORD builder);

BCPLWORD LLVM_void_type_in_context(BCPLWORD context);

BCPLWORD LLVM_build_alloca(BCPLWORD builder, BCPLWORD type, BCPLWORD name);

BCPLWORD LLVM_build_array_alloca(BCPLWORD builder, BCPLWORD type, BCPLWORD size, BCPLWORD name);

BCPLWORD LLVM_build_store(BCPLWORD builder, BCPLWORD value, BCPLWORD pointer);

BCPLWORD LLVM_build_ptr_to_int(BCPLWORD builder, BCPLWORD pointer_value, BCPLWORD integer_type, BCPLWORD name);

BCPLWORD LLVM_build_nswadd(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_nuwadd(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_fadd(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_sub(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_nswsub(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_nuwsub(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_fsub(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_mul(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_nswmul(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_nuwmul(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_fmul(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_udiv(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_exactudiv(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_sdiv(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_exactsdiv(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_fdiv(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_urem(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_srem(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_frem(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_shl(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_lshr(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_ashr(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_and(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_or(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_xor(BCPLWORD builder, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD LLVM_build_br(BCPLWORD builder, BCPLWORD dest_bb);

BCPLWORD LLVM_build_cond_br(BCPLWORD builder, BCPLWORD if_val, BCPLWORD then_bb, BCPLWORD else_bb);

BCPLWORD LLVM_build_switch(BCPLWORD builder, BCPLWORD value, BCPLWORD else_bb, BCPLWORD num_cases);

BCPLWORD LLVM_build_indirect_br(BCPLWORD builder, BCPLWORD address, BCPLWORD num_dests);

BCPLWORD LLVM_delete_function(BCPLWORD function);

BCPLWORD LLVM_print_value_to_string(BCPLWORD value);

BCPLWORD LLVM_insert_existing_basic_block_after_insert_block(BCPLWORD builder, BCPLWORD basicblock);

*/

#include "autogen.wrapper.h"
#endif