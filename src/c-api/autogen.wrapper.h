BCPLWORD llvm_set_message_buffer(BCPLWORD s);
BCPLWORD llvm_shutdown(void);

BCPLWORD llvm_context_create(void);

BCPLWORD llvm_get_global_context(void);

BCPLWORD llvm_context_dispose(BCPLWORD c);

BCPLWORD llvm_module_create_with_name(BCPLWORD module_id);

BCPLWORD llvm_module_create_with_name_in_context(BCPLWORD module_id, BCPLWORD c);

BCPLWORD llvm_dispose_module(BCPLWORD m);

BCPLWORD llvm_dump_module(BCPLWORD m);

BCPLWORD llvm_print_module_to_file(BCPLWORD m, BCPLWORD filename, BCPLWORD error_message);

BCPLWORD llvm_add_function(BCPLWORD m, BCPLWORD name, BCPLWORD function_ty);

BCPLWORD llvm_int64_type_in_context(BCPLWORD c);

BCPLWORD llvm_function_type(BCPLWORD return_type, BCPLWORD param_types, BCPLWORD param_count, BCPLWORD is_var_arg);

BCPLWORD llvm_array_type(BCPLWORD element_type, BCPLWORD element_count);

BCPLWORD llvm_pointer_type(BCPLWORD element_type, BCPLWORD address_space);

BCPLWORD llvm_void_type_in_context(BCPLWORD c);

BCPLWORD llvm_print_value_to_string(BCPLWORD val);

BCPLWORD llvm_const_ptr_to_int(BCPLWORD constant_val, BCPLWORD to_type);

BCPLWORD llvm_const_int_to_ptr(BCPLWORD constant_val, BCPLWORD to_type);

BCPLWORD llvm_const_int(BCPLWORD int_ty, BCPLWORD n, BCPLWORD sign_extend);

BCPLWORD llvm_set_linkage(BCPLWORD global, BCPLWORD linkage);

BCPLWORD llvm_set_section(BCPLWORD global, BCPLWORD section);

BCPLWORD llvm_set_visibility(BCPLWORD global, BCPLWORD viz);

BCPLWORD llvm_add_global(BCPLWORD m, BCPLWORD ty, BCPLWORD name);

BCPLWORD llvm_set_initializer(BCPLWORD global_var, BCPLWORD constant_val);

BCPLWORD llvm_set_externally_initialized(BCPLWORD global_var, BCPLWORD is_ext_init);

BCPLWORD llvm_delete_function(BCPLWORD fn);

BCPLWORD llvm_insert_existing_basic_block_after_insert_block(BCPLWORD builder, BCPLWORD bb);

BCPLWORD llvm_append_existing_basic_block(BCPLWORD fn, BCPLWORD bb);

BCPLWORD llvm_create_basic_block_in_context(BCPLWORD c, BCPLWORD name);

BCPLWORD llvm_append_basic_block_in_context(BCPLWORD c, BCPLWORD fn, BCPLWORD name);

BCPLWORD llvm_append_basic_block(BCPLWORD fn, BCPLWORD name);

BCPLWORD llvm_insert_basic_block_in_context(BCPLWORD c, BCPLWORD bb, BCPLWORD name);

BCPLWORD llvm_insert_basic_block(BCPLWORD insert_before_bb, BCPLWORD name);

BCPLWORD llvm_create_builder_in_context(BCPLWORD c);

BCPLWORD llvm_position_builder(BCPLWORD builder, BCPLWORD block, BCPLWORD instr);

BCPLWORD llvm_position_builder_before(BCPLWORD builder, BCPLWORD instr);

BCPLWORD llvm_position_builder_at_end(BCPLWORD builder, BCPLWORD block);

BCPLWORD llvm_get_insert_block(BCPLWORD builder);

BCPLWORD llvm_clear_insertion_position(BCPLWORD builder);

BCPLWORD llvm_insert_into_builder(BCPLWORD builder, BCPLWORD instr);

BCPLWORD llvm_insert_into_builder_with_name(BCPLWORD builder, BCPLWORD instr, BCPLWORD name);

BCPLWORD llvm_dispose_builder(BCPLWORD builder);

BCPLWORD llvm_build_ret_void(BCPLWORD builder);

BCPLWORD llvm_build_ret(BCPLWORD builder, BCPLWORD v);

BCPLWORD llvm_build_br(BCPLWORD builder, BCPLWORD dest);

BCPLWORD llvm_build_cond_br(BCPLWORD builder, BCPLWORD if_, BCPLWORD then_, BCPLWORD else_);

BCPLWORD llvm_build_switch(BCPLWORD builder, BCPLWORD v, BCPLWORD else_, BCPLWORD num_cases);

BCPLWORD llvm_build_indirect_br(BCPLWORD b, BCPLWORD addr, BCPLWORD num_dests);

BCPLWORD llvm_add_case(BCPLWORD switch_, BCPLWORD on_val, BCPLWORD dest);

BCPLWORD llvm_add_destination(BCPLWORD indirect_br, BCPLWORD dest);

BCPLWORD llvm_build_add(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_nswadd(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_nuwadd(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_fadd(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_sub(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_nswsub(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_nuwsub(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_fsub(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_mul(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_nswmul(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_nuwmul(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_fmul(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_udiv(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_exact_udiv(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_sdiv(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_exact_sdiv(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_fdiv(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_urem(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_srem(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_frem(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_shl(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_lshr(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_ashr(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_and(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_or(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_xor(BCPLWORD b, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_bin_op(BCPLWORD b, BCPLWORD op, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_build_neg(BCPLWORD b, BCPLWORD v, BCPLWORD name);

BCPLWORD llvm_build_nswneg(BCPLWORD b, BCPLWORD v, BCPLWORD name);

BCPLWORD llvm_build_fneg(BCPLWORD b, BCPLWORD v, BCPLWORD name);

BCPLWORD llvm_build_not(BCPLWORD b, BCPLWORD v, BCPLWORD name);

BCPLWORD llvm_build_alloca(BCPLWORD b, BCPLWORD ty, BCPLWORD name);

BCPLWORD llvm_build_array_alloca(BCPLWORD b, BCPLWORD ty, BCPLWORD val, BCPLWORD name);

BCPLWORD llvm_build_load2(BCPLWORD b, BCPLWORD ty, BCPLWORD pointer_val, BCPLWORD name);

BCPLWORD llvm_build_store(BCPLWORD b, BCPLWORD val, BCPLWORD ptr);

BCPLWORD llvm_build_gep2(BCPLWORD b, BCPLWORD ty, BCPLWORD pointer, BCPLWORD indices, BCPLWORD num_indices, BCPLWORD name);

BCPLWORD llvm_build_call2(BCPLWORD b, BCPLWORD ty, BCPLWORD fn, BCPLWORD args, BCPLWORD num_args, BCPLWORD name);

BCPLWORD llvm_build_ptr_to_int(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name);

BCPLWORD llvm_build_int_to_ptr(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name);

BCPLWORD llvm_verify_module(BCPLWORD m, BCPLWORD action, BCPLWORD out_message);

BCPLWORD llvm_get_initializer(BCPLWORD global_var);

BCPLWORD llvm_get_param(BCPLWORD fn, BCPLWORD index);

BCPLWORD llvm_build_icmp(BCPLWORD b, BCPLWORD op, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_int1type_in_context(BCPLWORD c);

BCPLWORD llvm_get_basic_block_name(BCPLWORD bb, BCPLWORD vector);

BCPLWORD llvm_get_basic_block_parent(BCPLWORD bb);

BCPLWORD llvm_get_basic_block_terminator(BCPLWORD bb);

BCPLWORD llvm_count_basic_blocks(BCPLWORD fn);

BCPLWORD llvm_get_first_basic_block(BCPLWORD fn);

BCPLWORD llvm_get_last_basic_block(BCPLWORD fn);

BCPLWORD llvm_get_next_basic_block(BCPLWORD bb);

BCPLWORD llvm_get_previous_basic_block(BCPLWORD bb);

BCPLWORD llvm_get_entry_basic_block(BCPLWORD fn);

BCPLWORD llvm_build_int_cast2(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD is_signed, BCPLWORD name);

BCPLWORD llvm_verify_function(BCPLWORD fn, BCPLWORD action);

BCPLWORD llvm_print_module_to_string(BCPLWORD m);

BCPLWORD llvm_dispose_message(BCPLWORD message);

BCPLWORD llvm_tracing(BCPLWORD flag);

BCPLWORD llvm_const_string_in_context(BCPLWORD c, BCPLWORD str, BCPLWORD length, BCPLWORD dont_null_terminate);

BCPLWORD llvm_int8type_in_context(BCPLWORD c);

BCPLWORD llvm_build_extract_element(BCPLWORD b, BCPLWORD vec_val, BCPLWORD index, BCPLWORD name);

BCPLWORD llvm_build_zext(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name);

BCPLWORD llvm_build_pointer_cast(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name);

BCPLWORD llvm_build_global_string(BCPLWORD b, BCPLWORD str, BCPLWORD name);

BCPLWORD llvm_build_global_string_ptr(BCPLWORD b, BCPLWORD str, BCPLWORD name);

BCPLWORD llvm_const_array(BCPLWORD element_ty, BCPLWORD constant_vals, BCPLWORD length);

BCPLWORD llvm_get_next_instruction(BCPLWORD inst);

BCPLWORD llvm_get_first_instruction(BCPLWORD bb);

BCPLWORD llvm_is_aterminator_inst(BCPLWORD inst);

BCPLWORD llvm_set_alignment(BCPLWORD v, BCPLWORD bytes);

BCPLWORD llvm_delete_basic_block(BCPLWORD bb);

BCPLWORD llvm_build_free(BCPLWORD b, BCPLWORD pointer_val);

BCPLWORD llvm_get_last_instruction(BCPLWORD bb);

BCPLWORD llvm_instruction_erase_from_parent(BCPLWORD inst);

BCPLWORD llvm_get_instruction_parent(BCPLWORD inst);

BCPLWORD llvm_get_previous_instruction(BCPLWORD inst);

BCPLWORD llvm_int128type_in_context(BCPLWORD c);

BCPLWORD llvm_double_type_in_context(BCPLWORD c);

BCPLWORD llvm_build_fpto_si(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name);

BCPLWORD llvm_build_sito_fp(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name);

BCPLWORD llvm_build_bit_cast(BCPLWORD b, BCPLWORD val, BCPLWORD dest_ty, BCPLWORD name);

BCPLWORD llvm_lookup_intrinsic_id(BCPLWORD name, BCPLWORD name_len);

BCPLWORD llvm_get_intrinsic_declaration(BCPLWORD mod, BCPLWORD id, BCPLWORD param_types, BCPLWORD param_count);

BCPLWORD llvm_build_fcmp(BCPLWORD b, BCPLWORD op, BCPLWORD lhs, BCPLWORD rhs, BCPLWORD name);

BCPLWORD llvm_block_address(BCPLWORD f, BCPLWORD bb);

BCPLWORD llvm_type_of(BCPLWORD val);

BCPLWORD llvm_build_phi(BCPLWORD b, BCPLWORD ty, BCPLWORD name);

BCPLWORD llvm_add_incoming(BCPLWORD phi_node, BCPLWORD incoming_values, BCPLWORD incoming_blocks, BCPLWORD count);

BCPLWORD llvm_count_incoming(BCPLWORD phi_node);

BCPLWORD llvm_run_passes(BCPLWORD m, BCPLWORD passes, BCPLWORD tm, BCPLWORD options);

BCPLWORD llvm_initialize_all_target_infos(void);

BCPLWORD llvm_get_default_target_triple(void);

BCPLWORD llvm_get_target_from_triple(BCPLWORD triple, BCPLWORD t, BCPLWORD error_message);

BCPLWORD llvm_create_target_machine(BCPLWORD t, BCPLWORD triple, BCPLWORD cpu, BCPLWORD features, BCPLWORD level, BCPLWORD reloc, BCPLWORD code_model);

BCPLWORD llvm_dispose_target_machine(BCPLWORD t);

BCPLWORD llvm_create_pass_builder_options(void);

BCPLWORD llvm_get_error_message(BCPLWORD err);

BCPLWORD llvm_dispose_pass_builder_options(BCPLWORD options);

BCPLWORD llvm_get_target_name(BCPLWORD t);

BCPLWORD llvm_set_function_call_conv(BCPLWORD fn, BCPLWORD cc);

BCPLWORD llvm_add_alias2(BCPLWORD m, BCPLWORD value_ty, BCPLWORD addr_space, BCPLWORD aliasee, BCPLWORD name);

BCPLWORD llvm_print_type_to_string(BCPLWORD ty);

