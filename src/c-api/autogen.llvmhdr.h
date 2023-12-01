MANIFEST
$(
    LLVM_START_MARKER = 4
    LLVM_SET_MESSAGE_BUFFER
    LLVM_SHUTDOWN
    LLVM_CONTEXT_CREATE
    LLVM_GET_GLOBAL_CONTEXT
    LLVM_CONTEXT_DISPOSE
    LLVM_MODULE_CREATE_WITH_NAME
    LLVM_MODULE_CREATE_WITH_NAME_IN_CONTEXT
    LLVM_DISPOSE_MODULE
    LLVM_DUMP_MODULE
    LLVM_PRINT_MODULE_TO_FILE
    LLVM_ADD_FUNCTION
    LLVM_INT64_TYPE_IN_CONTEXT
    LLVM_FUNCTION_TYPE
    LLVM_ARRAY_TYPE
    LLVM_POINTER_TYPE
    LLVM_VOID_TYPE_IN_CONTEXT
    LLVM_PRINT_VALUE_TO_STRING
    LLVM_CONST_PTR_TO_INT
    LLVM_CONST_INT_TO_PTR
    LLVM_CONST_INT
    LLVM_SET_LINKAGE
    LLVM_SET_SECTION
    LLVM_SET_VISIBILITY
    LLVM_ADD_GLOBAL
    LLVM_SET_INITIALIZER
    LLVM_SET_EXTERNALLY_INITIALIZED
    LLVM_DELETE_FUNCTION
    LLVM_INSERT_EXISTING_BASIC_BLOCK_AFTER_INSERT_BLOCK
    LLVM_APPEND_EXISTING_BASIC_BLOCK
    LLVM_CREATE_BASIC_BLOCK_IN_CONTEXT
    LLVM_APPEND_BASIC_BLOCK_IN_CONTEXT
    LLVM_APPEND_BASIC_BLOCK
    LLVM_INSERT_BASIC_BLOCK_IN_CONTEXT
    LLVM_INSERT_BASIC_BLOCK
    LLVM_CREATE_BUILDER_IN_CONTEXT
    LLVM_POSITION_BUILDER
    LLVM_POSITION_BUILDER_BEFORE
    LLVM_POSITION_BUILDER_AT_END
    LLVM_GET_INSERT_BLOCK
    LLVM_CLEAR_INSERTION_POSITION
    LLVM_INSERT_INTO_BUILDER
    LLVM_INSERT_INTO_BUILDER_WITH_NAME
    LLVM_DISPOSE_BUILDER
    LLVM_BUILD_RET_VOID
    LLVM_BUILD_RET
    LLVM_BUILD_BR
    LLVM_BUILD_COND_BR
    LLVM_BUILD_SWITCH
    LLVM_BUILD_INDIRECT_BR
    LLVM_ADD_CASE
    LLVM_ADD_DESTINATION
    LLVM_BUILD_ADD
    LLVM_BUILD_NSWADD
    LLVM_BUILD_NUWADD
    LLVM_BUILD_FADD
    LLVM_BUILD_SUB
    LLVM_BUILD_NSWSUB
    LLVM_BUILD_NUWSUB
    LLVM_BUILD_FSUB
    LLVM_BUILD_MUL
    LLVM_BUILD_NSWMUL
    LLVM_BUILD_NUWMUL
    LLVM_BUILD_FMUL
    LLVM_BUILD_UDIV
    LLVM_BUILD_EXACT_UDIV
    LLVM_BUILD_SDIV
    LLVM_BUILD_EXACT_SDIV
    LLVM_BUILD_FDIV
    LLVM_BUILD_UREM
    LLVM_BUILD_SREM
    LLVM_BUILD_FREM
    LLVM_BUILD_SHL
    LLVM_BUILD_LSHR
    LLVM_BUILD_ASHR
    LLVM_BUILD_AND
    LLVM_BUILD_OR
    LLVM_BUILD_XOR
    LLVM_BUILD_BIN_OP
    LLVM_BUILD_NEG
    LLVM_BUILD_NSWNEG
    LLVM_BUILD_NUWNEG
    LLVM_BUILD_FNEG
    LLVM_BUILD_NOT
    LLVM_BUILD_ALLOCA
    LLVM_BUILD_ARRAY_ALLOCA
    LLVM_BUILD_LOAD2
    LLVM_BUILD_STORE
    LLVM_BUILD_GEP2
    LLVM_BUILD_CALL2
    LLVM_BUILD_PTR_TO_INT
    LLVM_BUILD_INT_TO_PTR
    LLVM_VERIFY_MODULE
    LLVM_GET_INITIALIZER
    LLVM_GET_PARAM
    LLVM_BUILD_ICMP
    LLVM_INT1TYPE_IN_CONTEXT
    LLVM_GET_BASIC_BLOCK_NAME
    LLVM_GET_BASIC_BLOCK_PARENT
    LLVM_GET_BASIC_BLOCK_TERMINATOR
    LLVM_COUNT_BASIC_BLOCKS
    LLVM_GET_FIRST_BASIC_BLOCK
    LLVM_GET_LAST_BASIC_BLOCK
    LLVM_GET_NEXT_BASIC_BLOCK
    LLVM_GET_PREVIOUS_BASIC_BLOCK
    LLVM_GET_ENTRY_BASIC_BLOCK
    LLVM_BUILD_INT_CAST2
    LLVM_VERIFY_FUNCTION
    LLVM_PRINT_MODULE_TO_STRING
    LLVM_DISPOSE_MESSAGE
    LLVM_TRACING
    LLVM_CONST_STRING_IN_CONTEXT
    LLVM_INT8TYPE_IN_CONTEXT
    LLVM_BUILD_EXTRACT_ELEMENT
    LLVM_BUILD_ZEXT
    LLVM_BUILD_POINTER_CAST
    LLVM_BUILD_GLOBAL_STRING
    LLVM_BUILD_GLOBAL_STRING_PTR
    LLVM_CONST_ARRAY
    LLVM_GET_NEXT_INSTRUCTION
    LLVM_GET_FIRST_INSTRUCTION
    LLVM_IS_ATERMINATOR_INST
    LLVM_SET_ALIGNMENT
    LLVM_DELETE_BASIC_BLOCK
    LLVM_BUILD_FREE
    LLVM_GET_LAST_INSTRUCTION
    LLVM_INSTRUCTION_ERASE_FROM_PARENT
    LLVM_GET_INSTRUCTION_PARENT
    LLVM_GET_PREVIOUS_INSTRUCTION
    LLVM_INT128TYPE_IN_CONTEXT
    LLVM_DOUBLE_TYPE_IN_CONTEXT
    LLVM_BUILD_FPTO_SI
    LLVM_BUILD_SITO_FP
    LLVM_BUILD_BIT_CAST
    LLVM_LOOKUP_INTRINSIC_ID
    LLVM_GET_INTRINSIC_DECLARATION
    LLVM_BUILD_FCMP
    LLVM_BLOCK_ADDRESS
    LLVM_TYPE_OF
    LLVM_BUILD_PHI
    LLVM_ADD_INCOMING
    LLVM_COUNT_INCOMING
    LLVM_END_MARKER
$)

LET llvm_set_message_buffer(s) = sys(Sys_ext, LLVM_SET_MESSAGE_BUFFER, s)
LET llvm_shutdown() = sys(Sys_ext, LLVM_SHUTDOWN)
LET llvm_context_create() = sys(Sys_ext, LLVM_CONTEXT_CREATE)
LET llvm_get_global_context() = sys(Sys_ext, LLVM_GET_GLOBAL_CONTEXT)
LET llvm_context_dispose(c) = sys(Sys_ext, LLVM_CONTEXT_DISPOSE, c)
LET llvm_module_create_with_name(module_id) = sys(Sys_ext, LLVM_MODULE_CREATE_WITH_NAME, module_id)
LET llvm_module_create_with_name_in_context(module_id, c) = sys(Sys_ext, LLVM_MODULE_CREATE_WITH_NAME_IN_CONTEXT, module_id, c)
LET llvm_dispose_module(m) = sys(Sys_ext, LLVM_DISPOSE_MODULE, m)
LET llvm_dump_module(m) = sys(Sys_ext, LLVM_DUMP_MODULE, m)
LET llvm_print_module_to_file(m, filename, error_message) = sys(Sys_ext, LLVM_PRINT_MODULE_TO_FILE, m, filename, error_message)
LET llvm_add_function(m, name, function_ty) = sys(Sys_ext, LLVM_ADD_FUNCTION, m, name, function_ty)
LET llvm_int64_type_in_context(c) = sys(Sys_ext, LLVM_INT64_TYPE_IN_CONTEXT, c)
LET llvm_function_type(return_type, param_types, param_count, is_var_arg) = sys(Sys_ext, LLVM_FUNCTION_TYPE, return_type, param_types, param_count, is_var_arg)
LET llvm_array_type(element_type, element_count) = sys(Sys_ext, LLVM_ARRAY_TYPE, element_type, element_count)
LET llvm_pointer_type(element_type, address_space) = sys(Sys_ext, LLVM_POINTER_TYPE, element_type, address_space)
LET llvm_void_type_in_context(c) = sys(Sys_ext, LLVM_VOID_TYPE_IN_CONTEXT, c)
LET llvm_print_value_to_string(val) = sys(Sys_ext, LLVM_PRINT_VALUE_TO_STRING, val)
LET llvm_const_ptr_to_int(constant_val, to_type) = sys(Sys_ext, LLVM_CONST_PTR_TO_INT, constant_val, to_type)
LET llvm_const_int_to_ptr(constant_val, to_type) = sys(Sys_ext, LLVM_CONST_INT_TO_PTR, constant_val, to_type)
LET llvm_const_int(int_ty, n, sign_extend) = sys(Sys_ext, LLVM_CONST_INT, int_ty, n, sign_extend)
LET llvm_set_linkage(global, linkage) = sys(Sys_ext, LLVM_SET_LINKAGE, global, linkage)
LET llvm_set_section(global, section) = sys(Sys_ext, LLVM_SET_SECTION, global, section)
LET llvm_set_visibility(global, viz) = sys(Sys_ext, LLVM_SET_VISIBILITY, global, viz)
LET llvm_add_global(m, ty, name) = sys(Sys_ext, LLVM_ADD_GLOBAL, m, ty, name)
LET llvm_set_initializer(global_var, constant_val) = sys(Sys_ext, LLVM_SET_INITIALIZER, global_var, constant_val)
LET llvm_set_externally_initialized(global_var, is_ext_init) = sys(Sys_ext, LLVM_SET_EXTERNALLY_INITIALIZED, global_var, is_ext_init)
LET llvm_delete_function(fn) = sys(Sys_ext, LLVM_DELETE_FUNCTION, fn)
LET llvm_insert_existing_basic_block_after_insert_block(builder, bb) = sys(Sys_ext, LLVM_INSERT_EXISTING_BASIC_BLOCK_AFTER_INSERT_BLOCK, builder, bb)
LET llvm_append_existing_basic_block(fn, bb) = sys(Sys_ext, LLVM_APPEND_EXISTING_BASIC_BLOCK, fn, bb)
LET llvm_create_basic_block_in_context(c, name) = sys(Sys_ext, LLVM_CREATE_BASIC_BLOCK_IN_CONTEXT, c, name)
LET llvm_append_basic_block_in_context(c, fn, name) = sys(Sys_ext, LLVM_APPEND_BASIC_BLOCK_IN_CONTEXT, c, fn, name)
LET llvm_append_basic_block(fn, name) = sys(Sys_ext, LLVM_APPEND_BASIC_BLOCK, fn, name)
LET llvm_insert_basic_block_in_context(c, bb, name) = sys(Sys_ext, LLVM_INSERT_BASIC_BLOCK_IN_CONTEXT, c, bb, name)
LET llvm_insert_basic_block(insert_before_bb, name) = sys(Sys_ext, LLVM_INSERT_BASIC_BLOCK, insert_before_bb, name)
LET llvm_create_builder_in_context(c) = sys(Sys_ext, LLVM_CREATE_BUILDER_IN_CONTEXT, c)
LET llvm_position_builder(builder, block, instr) = sys(Sys_ext, LLVM_POSITION_BUILDER, builder, block, instr)
LET llvm_position_builder_before(builder, instr) = sys(Sys_ext, LLVM_POSITION_BUILDER_BEFORE, builder, instr)
LET llvm_position_builder_at_end(builder, block) = sys(Sys_ext, LLVM_POSITION_BUILDER_AT_END, builder, block)
LET llvm_get_insert_block(builder) = sys(Sys_ext, LLVM_GET_INSERT_BLOCK, builder)
LET llvm_clear_insertion_position(builder) = sys(Sys_ext, LLVM_CLEAR_INSERTION_POSITION, builder)
LET llvm_insert_into_builder(builder, instr) = sys(Sys_ext, LLVM_INSERT_INTO_BUILDER, builder, instr)
LET llvm_insert_into_builder_with_name(builder, instr, name) = sys(Sys_ext, LLVM_INSERT_INTO_BUILDER_WITH_NAME, builder, instr, name)
LET llvm_dispose_builder(builder) = sys(Sys_ext, LLVM_DISPOSE_BUILDER, builder)
LET llvm_build_ret_void(builder) = sys(Sys_ext, LLVM_BUILD_RET_VOID, builder)
LET llvm_build_ret(builder, v) = sys(Sys_ext, LLVM_BUILD_RET, builder, v)
LET llvm_build_br(builder, dest) = sys(Sys_ext, LLVM_BUILD_BR, builder, dest)
LET llvm_build_cond_br(builder, if_, then_, else_) = sys(Sys_ext, LLVM_BUILD_COND_BR, builder, if_, then_, else_)
LET llvm_build_switch(builder, v, else_, num_cases) = sys(Sys_ext, LLVM_BUILD_SWITCH, builder, v, else_, num_cases)
LET llvm_build_indirect_br(b, addr, num_dests) = sys(Sys_ext, LLVM_BUILD_INDIRECT_BR, b, addr, num_dests)
LET llvm_add_case(switch_, on_val, dest) = sys(Sys_ext, LLVM_ADD_CASE, switch_, on_val, dest)
LET llvm_add_destination(indirect_br, dest) = sys(Sys_ext, LLVM_ADD_DESTINATION, indirect_br, dest)
LET llvm_build_add(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_ADD, b, lhs, rhs, name)
LET llvm_build_nswadd(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_NSWADD, b, lhs, rhs, name)
LET llvm_build_nuwadd(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_NUWADD, b, lhs, rhs, name)
LET llvm_build_fadd(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_FADD, b, lhs, rhs, name)
LET llvm_build_sub(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_SUB, b, lhs, rhs, name)
LET llvm_build_nswsub(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_NSWSUB, b, lhs, rhs, name)
LET llvm_build_nuwsub(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_NUWSUB, b, lhs, rhs, name)
LET llvm_build_fsub(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_FSUB, b, lhs, rhs, name)
LET llvm_build_mul(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_MUL, b, lhs, rhs, name)
LET llvm_build_nswmul(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_NSWMUL, b, lhs, rhs, name)
LET llvm_build_nuwmul(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_NUWMUL, b, lhs, rhs, name)
LET llvm_build_fmul(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_FMUL, b, lhs, rhs, name)
LET llvm_build_udiv(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_UDIV, b, lhs, rhs, name)
LET llvm_build_exact_udiv(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_EXACT_UDIV, b, lhs, rhs, name)
LET llvm_build_sdiv(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_SDIV, b, lhs, rhs, name)
LET llvm_build_exact_sdiv(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_EXACT_SDIV, b, lhs, rhs, name)
LET llvm_build_fdiv(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_FDIV, b, lhs, rhs, name)
LET llvm_build_urem(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_UREM, b, lhs, rhs, name)
LET llvm_build_srem(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_SREM, b, lhs, rhs, name)
LET llvm_build_frem(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_FREM, b, lhs, rhs, name)
LET llvm_build_shl(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_SHL, b, lhs, rhs, name)
LET llvm_build_lshr(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_LSHR, b, lhs, rhs, name)
LET llvm_build_ashr(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_ASHR, b, lhs, rhs, name)
LET llvm_build_and(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_AND, b, lhs, rhs, name)
LET llvm_build_or(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_OR, b, lhs, rhs, name)
LET llvm_build_xor(b, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_XOR, b, lhs, rhs, name)
LET llvm_build_bin_op(b, op, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_BIN_OP, b, op, lhs, rhs, name)
LET llvm_build_neg(b, v, name) = sys(Sys_ext, LLVM_BUILD_NEG, b, v, name)
LET llvm_build_nswneg(b, v, name) = sys(Sys_ext, LLVM_BUILD_NSWNEG, b, v, name)
LET llvm_build_nuwneg(b, v, name) = sys(Sys_ext, LLVM_BUILD_NUWNEG, b, v, name)
LET llvm_build_fneg(b, v, name) = sys(Sys_ext, LLVM_BUILD_FNEG, b, v, name)
LET llvm_build_not(b, v, name) = sys(Sys_ext, LLVM_BUILD_NOT, b, v, name)
LET llvm_build_alloca(b, ty, name) = sys(Sys_ext, LLVM_BUILD_ALLOCA, b, ty, name)
LET llvm_build_array_alloca(b, ty, val, name) = sys(Sys_ext, LLVM_BUILD_ARRAY_ALLOCA, b, ty, val, name)
LET llvm_build_load2(b, ty, pointer_val, name) = sys(Sys_ext, LLVM_BUILD_LOAD2, b, ty, pointer_val, name)
LET llvm_build_store(b, val, ptr) = sys(Sys_ext, LLVM_BUILD_STORE, b, val, ptr)
LET llvm_build_gep2(b, ty, pointer, indices, num_indices, name) = sys(Sys_ext, LLVM_BUILD_GEP2, b, ty, pointer, indices, num_indices, name)
LET llvm_build_call2(b, ty, fn, args, num_args, name) = sys(Sys_ext, LLVM_BUILD_CALL2, b, ty, fn, args, num_args, name)
LET llvm_build_ptr_to_int(b, val, dest_ty, name) = sys(Sys_ext, LLVM_BUILD_PTR_TO_INT, b, val, dest_ty, name)
LET llvm_build_int_to_ptr(b, val, dest_ty, name) = sys(Sys_ext, LLVM_BUILD_INT_TO_PTR, b, val, dest_ty, name)
LET llvm_verify_module(m, action, out_message) = sys(Sys_ext, LLVM_VERIFY_MODULE, m, action, out_message)
LET llvm_get_initializer(global_var) = sys(Sys_ext, LLVM_GET_INITIALIZER, global_var)
LET llvm_get_param(fn, index) = sys(Sys_ext, LLVM_GET_PARAM, fn, index)
LET llvm_build_icmp(b, op, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_ICMP, b, op, lhs, rhs, name)
LET llvm_int1type_in_context(c) = sys(Sys_ext, LLVM_INT1TYPE_IN_CONTEXT, c)
LET llvm_get_basic_block_name(bb, vector) = sys(Sys_ext, LLVM_GET_BASIC_BLOCK_NAME, bb, vector)
LET llvm_get_basic_block_parent(bb) = sys(Sys_ext, LLVM_GET_BASIC_BLOCK_PARENT, bb)
LET llvm_get_basic_block_terminator(bb) = sys(Sys_ext, LLVM_GET_BASIC_BLOCK_TERMINATOR, bb)
LET llvm_count_basic_blocks(fn) = sys(Sys_ext, LLVM_COUNT_BASIC_BLOCKS, fn)
LET llvm_get_first_basic_block(fn) = sys(Sys_ext, LLVM_GET_FIRST_BASIC_BLOCK, fn)
LET llvm_get_last_basic_block(fn) = sys(Sys_ext, LLVM_GET_LAST_BASIC_BLOCK, fn)
LET llvm_get_next_basic_block(bb) = sys(Sys_ext, LLVM_GET_NEXT_BASIC_BLOCK, bb)
LET llvm_get_previous_basic_block(bb) = sys(Sys_ext, LLVM_GET_PREVIOUS_BASIC_BLOCK, bb)
LET llvm_get_entry_basic_block(fn) = sys(Sys_ext, LLVM_GET_ENTRY_BASIC_BLOCK, fn)
LET llvm_build_int_cast2(b, val, dest_ty, is_signed, name) = sys(Sys_ext, LLVM_BUILD_INT_CAST2, b, val, dest_ty, is_signed, name)
LET llvm_verify_function(fn, action) = sys(Sys_ext, LLVM_VERIFY_FUNCTION, fn, action)
LET llvm_print_module_to_string(m) = sys(Sys_ext, LLVM_PRINT_MODULE_TO_STRING, m)
LET llvm_dispose_message(message) = sys(Sys_ext, LLVM_DISPOSE_MESSAGE, message)
LET llvm_tracing(flag) = sys(Sys_ext, LLVM_TRACING, flag)
LET llvm_const_string_in_context(c, str, length, dont_null_terminate) = sys(Sys_ext, LLVM_CONST_STRING_IN_CONTEXT, c, str, length, dont_null_terminate)
LET llvm_int8type_in_context(c) = sys(Sys_ext, LLVM_INT8TYPE_IN_CONTEXT, c)
LET llvm_build_extract_element(b, vec_val, index, name) = sys(Sys_ext, LLVM_BUILD_EXTRACT_ELEMENT, b, vec_val, index, name)
LET llvm_build_zext(b, val, dest_ty, name) = sys(Sys_ext, LLVM_BUILD_ZEXT, b, val, dest_ty, name)
LET llvm_build_pointer_cast(b, val, dest_ty, name) = sys(Sys_ext, LLVM_BUILD_POINTER_CAST, b, val, dest_ty, name)
LET llvm_build_global_string(b, str, name) = sys(Sys_ext, LLVM_BUILD_GLOBAL_STRING, b, str, name)
LET llvm_build_global_string_ptr(b, str, name) = sys(Sys_ext, LLVM_BUILD_GLOBAL_STRING_PTR, b, str, name)
LET llvm_const_array(element_ty, constant_vals, length) = sys(Sys_ext, LLVM_CONST_ARRAY, element_ty, constant_vals, length)
LET llvm_get_next_instruction(inst) = sys(Sys_ext, LLVM_GET_NEXT_INSTRUCTION, inst)
LET llvm_get_first_instruction(bb) = sys(Sys_ext, LLVM_GET_FIRST_INSTRUCTION, bb)
LET llvm_is_aterminator_inst(inst) = sys(Sys_ext, LLVM_IS_ATERMINATOR_INST, inst)
LET llvm_set_alignment(v, bytes) = sys(Sys_ext, LLVM_SET_ALIGNMENT, v, bytes)
LET llvm_delete_basic_block(bb) = sys(Sys_ext, LLVM_DELETE_BASIC_BLOCK, bb)
LET llvm_build_free(b, pointer_val) = sys(Sys_ext, LLVM_BUILD_FREE, b, pointer_val)
LET llvm_get_last_instruction(bb) = sys(Sys_ext, LLVM_GET_LAST_INSTRUCTION, bb)
LET llvm_instruction_erase_from_parent(inst) = sys(Sys_ext, LLVM_INSTRUCTION_ERASE_FROM_PARENT, inst)
LET llvm_get_instruction_parent(inst) = sys(Sys_ext, LLVM_GET_INSTRUCTION_PARENT, inst)
LET llvm_get_previous_instruction(inst) = sys(Sys_ext, LLVM_GET_PREVIOUS_INSTRUCTION, inst)
LET llvm_int128type_in_context(c) = sys(Sys_ext, LLVM_INT128TYPE_IN_CONTEXT, c)
LET llvm_double_type_in_context(c) = sys(Sys_ext, LLVM_DOUBLE_TYPE_IN_CONTEXT, c)
LET llvm_build_fpto_si(b, val, dest_ty, name) = sys(Sys_ext, LLVM_BUILD_FPTO_SI, b, val, dest_ty, name)
LET llvm_build_sito_fp(b, val, dest_ty, name) = sys(Sys_ext, LLVM_BUILD_SITO_FP, b, val, dest_ty, name)
LET llvm_build_bit_cast(b, val, dest_ty, name) = sys(Sys_ext, LLVM_BUILD_BIT_CAST, b, val, dest_ty, name)
LET llvm_lookup_intrinsic_id(name, name_len) = sys(Sys_ext, LLVM_LOOKUP_INTRINSIC_ID, name, name_len)
LET llvm_get_intrinsic_declaration(mod, id, param_types, param_count) = sys(Sys_ext, LLVM_GET_INTRINSIC_DECLARATION, mod, id, param_types, param_count)
LET llvm_build_fcmp(b, op, lhs, rhs, name) = sys(Sys_ext, LLVM_BUILD_FCMP, b, op, lhs, rhs, name)
LET llvm_block_address(f, bb) = sys(Sys_ext, LLVM_BLOCK_ADDRESS, f, bb)
LET llvm_type_of(val) = sys(Sys_ext, LLVM_TYPE_OF, val)
LET llvm_build_phi(b, ty, name) = sys(Sys_ext, LLVM_BUILD_PHI, b, ty, name)
LET llvm_add_incoming(phi_node, incoming_values, incoming_blocks, count) = sys(Sys_ext, LLVM_ADD_INCOMING, phi_node, incoming_values, incoming_blocks, count)
LET llvm_count_incoming(phi_node) = sys(Sys_ext, LLVM_COUNT_INCOMING, phi_node)
