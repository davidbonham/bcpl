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

LET bb_after_terminator(label) BE $(
    // A basic block has a single entry and a single exit so once we emit a
    // terminator (in a GOTO, FNRN or JUMP for example) we must start a new
    // basic block. It may be that there if a LAB immediately following is
    // in which case its handler will create one but otherwise make sure
    // we start a new (unreachable) basic block.
    UNLESS cg_rdn_peek(0) = s_lab DO $(
        basicblock := llvm_create_basic_block_in_context(context, label)
        llvm_insert_existing_basic_block_after_insert_block(builder, basicblock)
        llvm_position_builder_at_end(builder, basicblock)
    $)
$)


LET cg_ocode() BE
$(
    LET nl() BE IF debug > 0 THEN newline()
    LET wf(f,a,b,c,d) BE IF debug > 0 THEN writef(f,a,b,c,d)
    LET trace_op(op) BE IF debug THEN writes(opname(op))


    LET name = VEC 10
    LET op = cg_rdn()
    LET n, m, k, label, save, num_globals, global_number = ?, ?, ?, ?, ?, ?, ?

    UNTIL op = 0 DO
    $(
        trace_op(op)
        SWITCHON op INTO
        $(
            // OCODE instructions that take no arguments
            CASE s_abs:         nl(); cg_abs();         ENDCASE
            CASE s_add:         nl(); cg_add();         ENDCASE
            CASE s_div:         nl(); cg_div();         ENDCASE
            CASE s_endproc:     nl(); cg_endproc();     ENDCASE
            CASE s_eq:          nl(); cg_eq();          ENDCASE
            CASE s_eqv:         nl(); cg_eqv();         ENDCASE
            CASE s_false:       nl(); cg_const(FALSE);  ENDCASE
            CASE s_finish:      nl(); cg_finish();      ENDCASE
            CASE s_fnrn:        nl(); cg_fnrn();        ENDCASE
            CASE s_ge:          nl(); cg_ge();          ENDCASE
            CASE s_getbyte:     nl(); cg_getbyte();     ENDCASE
            CASE s_goto:        nl(); cg_goto();        ENDCASE
            CASE s_gr:          nl(); cg_gr();          ENDCASE
            CASE s_le:          nl(); cg_le();          ENDCASE
            CASE s_logand:      nl(); cg_logand();      ENDCASE
            CASE s_logor:       nl(); cg_logor();       ENDCASE
            CASE s_ls:          nl(); cg_ls();          ENDCASE
            CASE s_lshift:      nl(); cg_lshift();      ENDCASE
            CASE s_mod:         nl(); cg_mod();         ENDCASE
            CASE s_mul:         nl(); cg_mul();         ENDCASE
            CASE s_ne:          nl(); cg_ne();          ENDCASE
            CASE s_neg:         nl(); cg_neg();         ENDCASE
            CASE s_not:         nl(); cg_not();         ENDCASE
            CASE s_putbyte:     nl(); cg_putbyte();     ENDCASE
            CASE s_query:       nl(); cg_query();       ENDCASE
            CASE s_rshift:      nl(); cg_rshift();      ENDCASE
            CASE s_rtrn:        nl(); cg_rtrn();        ENDCASE
            CASE s_rv:          nl(); cg_rv();          ENDCASE
            CASE s_stind:       nl(); cg_stind();       ENDCASE
            CASE s_store:       nl(); cg_store();       ENDCASE
            CASE s_sub:         nl(); cg_sub();         ENDCASE
            CASE s_true:        nl(); cg_const(TRUE);   ENDCASE
            CASE s_xor:         nl(); cg_xor();         ENDCASE

            // OCODE instructions that take a number
            CASE s_fnap:        n := cg_rdn(); wf(" %N*N", n); cg_rtap(n,TRUE);  ENDCASE
            CASE s_jf:          n := cg_rdn(); wf(" %N*N", n); cg_jf(n);         ENDCASE
            CASE s_jt:          n := cg_rdn(); wf(" %N*N", n); cg_jt(n);         ENDCASE
            CASE s_jump:        n := cg_rdn(); wf(" %N*N", n); cg_jump(n);       ENDCASE
            CASE s_lab:         n := cg_rdn(); wf(" %N*N", n); cg_lab(n);        ENDCASE
            CASE s_lf:          n := cg_rdn(); wf(" %N*N", n); cg_lf(n);         ENDCASE
            CASE s_lg:          n := cg_rdn(); wf(" %N*N", n); cg_lg(n);         ENDCASE
            CASE s_ll:          n := cg_rdn(); wf(" %N*N", n); cg_ll(n);         ENDCASE
            CASE s_llg:         n := cg_rdn(); wf(" %N*N", n); cg_llg(n);        ENDCASE
            CASE s_lll:         n := cg_rdn(); wf(" %N*N", n); cg_lll(n);        ENDCASE
            CASE s_llp:         n := cg_rdn(); wf(" %N*N", n); cg_llp(n);        ENDCASE
            CASE s_ln:          n := cg_rdn(); wf(" %N*N", n); cg_ln(n);         ENDCASE
            CASE s_lp:          n := cg_rdn(); wf(" %N*N", n); cg_lp(n);         ENDCASE
            CASE s_res:         n := cg_rdn(); wf(" %N*N", n); cg_res(n);        ENDCASE
            CASE s_rstack:      n := cg_rdn(); wf(" %N*N", n); cg_rstack(n);     ENDCASE
            CASE s_rtap:        n := cg_rdn(); wf(" %N*N", n); cg_rtap(n,FALSE); ENDCASE
            CASE s_sg:          n := cg_rdn(); wf(" %N*N", n); cg_sg(n);         ENDCASE
            CASE s_sl:          n := cg_rdn(); wf(" %N*N", n); cg_sl(n);         ENDCASE
            CASE s_sp:          n := cg_rdn(); wf(" %N*N", n); cg_sp(n);         ENDCASE
            CASE s_stack:       n := cg_rdn(); wf(" %N*N", n); cg_stack(n);      ENDCASE

            // Floating point extension
            CASE s_fabs:        nl(); cg_fabs();    ENDCASE
            CASE s_fneg:        nl(); cg_fneg();    ENDCASE
            CASE s_fix:         nl(); cg_fix();     ENDCASE
            CASE s_float:       nl(); cg_float();   ENDCASE

            CASE s_fls:         nl(); cg_fls();     ENDCASE

            CASE s_fmul:        nl(); cg_fmul();    ENDCASE
            CASE s_fadd:        nl(); cg_fadd();    ENDCASE
            CASE s_fdiv:        nl(); cg_fdiv();    ENDCASE
            CASE s_fsub:        nl(); cg_fsub();    ENDCASE
            CASE s_fmod:        nl(); cg_fmod();    ENDCASE
            CASE s_feq:         nl(); cg_feq();     ENDCASE
            CASE s_fne:         nl(); cg_fne();     ENDCASE
            CASE s_fgr:         nl(); cg_fgr();     ENDCASE
            CASE s_fle:         nl(); cg_fle();     ENDCASE
            CASE s_fge:         nl(); cg_fge();     ENDCASE

            // OCODE instructions for which we need a bit of lookahead
            CASE s_datalab:     n := cg_rdn(); wf(" %N*N", n); cg_datalab(n, cg_rdn_peek(0)); ENDCASE
            CASE s_itemn:       n := cg_rdn(); wf(" %N*N", n); cg_itemn(n, cg_rdn_peek(0));   ENDCASE

            // Special cases
            CASE s_selld:       n := cg_rdn(); m := cg_rdn();                wf(" %N %N*N", n, m);       cg_selld(n, m);    ENDCASE
            CASE s_selst:       n := cg_rdn(); m := cg_rdn(); k := cg_rdn(); wf(" %N %N %N*N", n, m, k); cg_selst(n, m, k); ENDCASE

            CASE s_section:
                cg_rdname(name, 10)
                wf(" %s*N", name)
                cg_section(name)
                is_current_section_empty := TRUE
            ENDCASE

            CASE s_entry:
                // We expect to consume <label> <name> <SAVE> <n>
                label := cg_rdn()
                cg_rdname(name, 10)
                cg_rdn() // skip SAVE
                save := cg_rdn()
                wf(" %N %S SAVE %N*N", label, name, save)
                cg_entry(label, name, save)
            ENDCASE

            CASE s_global:
                // We expect to read a count followed by that many pairs
                // of global numbers and labels
                FOR g = 1 TO cg_rdn() DO
                $(
                    LET g, v = cg_rdn(), cg_rdn()
                    wf(" %N %N*N", g, v)
                    cg_global(g, v)
                $)
            ENDCASE

            CASE s_lstr:
            $(
                // Read the string into workspace for the duration of
                // the call. N
                LET string_length = cg_rdn()
                LET mark = ws_mark()
                LET string = ws_alloc(string_length/BYTESPERWORD+1)
                FOR i = 1 TO string_length DO
                $(
                    LET c = cg_rdn()
                    string%i := c
                $)
                string%0 := string_length
                wf(" %N '%S'*N", string_length, string)
                cg_lstr(string)
                ws_wipe(mark)
            $)
            ENDCASE

            CASE s_switchon: $(
                LET cases = cg_rdn()
                LET default_label = cg_rdn()
                cg_switchon(cases, default_label)
            $)
            ENDCASE

            DEFAULT:
                writef("Bad OCODE operation %N(%S)", op, opname(op))
                longjump(fin_p, fin_l)
        $)

        // If this wasn't a SECTION, we are doing work in it
        UNLESS op = s_section | op = s_jump DO is_current_section_empty := FALSE

        // Look for the next OCODE instruction
        op := cg_rdn()
    $)
$)

AND cg_intrinsic(intrinsic, arity, result_type, type1, type2, type3) BE $(
    LET intrinsic_parameter_types = VEC 10
    LET parameters = VEC 10
    LET signature, intrinsic_fn, result = ?, ?, ?
    FOR i = 0 TO arity-1 DO $(
        LET arg = ss_pop("arg")
        intrinsic_parameter_types!i := (@type1)!i
        IF intrinsic_parameter_types!i = float_type DO arg := llvm_build_bit_cast(builder, arg, float_type, "farg")
        parameters!i := arg
    $)
    signature :=  llvm_function_type(result_type, intrinsic_parameter_types, arity, FALSE);
    intrinsic_fn := llvm_add_function(module, intrinsic, signature)

    // Build the call
    result := llvm_build_call2(builder, signature, intrinsic_fn, parameters, arity, "fnap")

    IF result_type = float_type DO result := llvm_build_bit_cast(builder, result, word_type, "result")
    ss_push(result)
$)

AND cg_binary_op(build_op, label) BE
$(
    // Pop the rhs and the the lhs off the stack, add them and push the
    // result
    LET rhs = ss_pop("rhs")
    LET lhs = ss_pop("lhs")
    LET result = build_op(builder, lhs, rhs, label)
    ss_push(result)
$)

AND cg_unary_op(build_op, label) BE
$(
    LET lhs = ss_pop("arg")
    LET result = build_op(builder, lhs, label)
    ss_push(result)
$)

// We have a single bit boolean value but the BCPL standard requires TRUE
// to be all bits set so we must SIGN extend it (arg4=1).
AND bool_to_word(bool) = llvm_build_int_cast2(builder, bool, word_type, 1, "booltoword")

AND cg_wrap_gr(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntSGT, lhs, rhs, label))
AND cg_wrap_le(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntSLE, lhs, rhs, label))
AND cg_wrap_eq(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntEQ,  lhs, rhs, label))
AND cg_wrap_ne(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntNE,  lhs, rhs, label))
AND cg_wrap_ls(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntSLT, lhs, rhs, label))
AND cg_wrap_ge(builder, lhs, rhs, label) = bool_to_word(llvm_build_icmp(builder, LLVM_IntSGE, lhs, rhs, label))

AND cg_add()    BE cg_binary_op(llvm_build_add,    "add")
AND cg_sub()    BE cg_binary_op(llvm_build_sub,    "sub")
AND cg_mod()    BE cg_binary_op(llvm_build_srem,   "mod")
AND cg_mul()    BE cg_binary_op(llvm_build_mul,    "mul")
AND cg_div()    BE cg_binary_op(llvm_build_sdiv,   "div")

// The proposed standard says "If the value of E2 is an integer larger than
// the word length of the implementation then the result of the shift operation
// is undefined.". It doesn't say what happens in the defined case of equality.
//
// In Martin richards' Cintpos manual, it says the result is always defined
// and is zero for such shifts.
AND cg_shift(shift_op) BE $(

    LET rhs = ss_pop("rhs")
    LET lhs = ss_pop("lhs")

    LET shifted_value = ?
    LET result_cell =  llvm_build_alloca(builder, word_type, "shift.result")
    LET result_value = ?

    // Generate code to test if the shift exceeds the LLVM limit (>=64)
    LET shift_limit = llvm_const_int(word_type, bitsperword, 0)
    LET is_shift_ok = llvm_build_icmp(builder, LLVM_IntSLT, rhs, shift_limit, "shift.defined")

    // We'll branch to one of these cases:
    LET valid_bb = llvm_create_basic_block_in_context(context, "shift.valid")
    LET undefined_bb  = llvm_create_basic_block_in_context(context, "shift.undefined")

    // And they'll both rejoin here:
    LET merge_bb = llvm_create_basic_block_in_context(context, "shift.merge")

    // Build the conditional branch
    llvm_build_cond_br(builder, is_shift_ok, valid_bb, undefined_bb)

    // Make the undefined case current and set the shift result to be zero,
    // storing it in a temporary to avoid the need for a phi-node - the
    // optimiser will sort this all out nicely.
    llvm_append_existing_basic_block(function, undefined_bb)
    basicblock := undefined_bb
    llvm_position_builder_at_end(builder, basicblock)
    shifted_value := llvm_const_int(word_type, 0, 0)
    llvm_build_store(builder, shifted_value, result_cell)
    llvm_build_br(builder, merge_bb)

    // Now the valid case where we need to do the shift we were given
    llvm_append_existing_basic_block(function, valid_bb)
    basicblock := valid_bb
    llvm_position_builder_at_end(builder, basicblock)
    shifted_value := shift_op(builder, lhs, rhs, "shift.result")
    llvm_build_store(builder, shifted_value, result_cell)
    llvm_build_br(builder, merge_bb)

    // Rejoin the mainline. We need to return the result on the stack so
    // build the code to load it from our temporary
    llvm_append_existing_basic_block(function, merge_bb)
    basicblock := merge_bb
    llvm_position_builder_at_end(builder, basicblock)
    result_value := llvm_build_load2(builder, word_type, result_cell, "shift.result.value")

    ss_push(result_value)
$)

AND cg_lshift() BE cg_shift(llvm_build_shl)
AND cg_rshift() BE cg_shift(llvm_build_lshr)

AND cg_gr()     BE cg_binary_op(cg_wrap_gr,        "gr")
AND cg_le()     BE cg_binary_op(cg_wrap_le,        "le")
AND cg_eq()     BE cg_binary_op(cg_wrap_eq,        "eq")
AND cg_ne()     BE cg_binary_op(cg_wrap_ne,        "ne")
AND cg_ls()     BE cg_binary_op(cg_wrap_ls,        "ls")
AND cg_ge()     BE cg_binary_op(cg_wrap_ge,        "ge")

AND cg_logand() BE cg_binary_op(llvm_build_and,    "logand")
AND cg_logor()  BE cg_binary_op(llvm_build_or,     "logor")
AND cg_neg()    BE cg_unary_op(llvm_build_neg,     "neg")
AND cg_not()    BE cg_unary_op(llvm_build_not,     "not")
AND cg_xor()    BE cg_binary_op(llvm_build_xor,    "xor")

AND cg_abs() BE
$(
    // FIXME: Replace with intrinsic in llvm 12

    // Generate the branch free version:
    //
    // x = 128-bit version of argument
    // y = x >> 63
    // abs = (x ^ y) - y
    LET long_long_int_type = llvm_int128type_in_context(context)
    LET arg = ss_pop("arg")
    LET x = llvm_build_int_cast2(builder, arg, long_long_int_type, TRUE, "abs.arg.128bit")
    LET y = llvm_build_ashr(builder, x, llvm_const_int(long_long_int_type, 63, 0), "arg.ashr63")
    LET x_xor_y = llvm_build_xor(builder, x, y, "x_xor_y")
    LET abs_value_128 = llvm_build_sub(builder, x_xor_y, y, "abs.result.128")
    LET abs_value = llvm_build_int_cast2(builder, abs_value_128, word_type, TRUE, "abs.result")
    ss_push(abs_value)
$)


AND cg_const(k) BE
$(
    ss_push(llvm_const_int(word_type, k, 0))
$)

AND cg_datalab(n, peek) BE
$(
    // We can't allocate this static until we know how large it is so for
    // now record the label number. This op will be followed by one or more
    // ITEMN ops. The last of those will create the static/table. Ensure
    // that we are followed by an itemn and if so, allocate all of the
    // free workspace to hold them while we collect them.
    UNLESS peek = s_itemn DO cgerror("DATALAB not followed by ITEMN")
    datalab_label  := n
    datalab_itemns := ws_alloc(ws_avail())
    datalab_itemn_count := 0
$)

AND cg_endproc() BE
$(
    LET r = ?
    ss_trace("cg_endproc entry")

    // If the last operation is a jump back to the top of the loop, we will
    // have created an unreachable empty basic block which should be deleted
    IF llvm_get_first_instruction(basicblock) = 0 DO
    $(
        LET dead_bb = basicblock
        basicblock := llvm_get_previous_basic_block(basicblock)
        llvm_delete_basic_block(dead_bb)
    $)
    llvm_position_builder_at_end(builder, basicblock)

    // If there is an indirect branch block, we need to add it to the
    // function if its PHI node has incoming edges. This will also
    // populate the indirect branch's label list with the labels for this
    // function.
    ibr_insert_and_cleanup(builder)
    IF debug DO $(
        LET error_ref = ?
        llvm_print_module_to_file(module, "testing.ll", @error_ref)
    $)
    r := llvm_verify_function(function, LLVM_PRINT_MESSAGE_ACTION)
    UNLESS r = 0 DO cgerror("unable to verify function*N")


    // This is the end of the function so we are no longer nested in it.
    // Restore the state for the outer function. At this point, the current
    // stack frame should be the one than cg_enter pushed.
    ss_popframe()
    llvm_position_builder_at_end(builder, basicblock)
    ss_trace("cg_endproc exit")

    // If there were some VEC declarations, we should have handled them
    // via a STACK before we get an ENDPROC.
    assert(pending_llps_free = 0, "unhandled VEC")

    // Any __res_a stack temporary RES or RSTACK may have allocated is now
    // out of scope
    A := 0
$)

AND cg_eqv() BE
$(
    LET rhs = ss_pop("eqv.rhs")
    LET lhs = ss_pop("eqv.lhs")
    LET xor = llvm_build_xor(builder, lhs, rhs, "eqv.xor")
    LET eqv = llvm_build_not(builder, xor, "eqv.not")
    ss_push(eqv)
$)


AND cg_finish() BE
$(
    // The standard says this is stop(0) and we say stop is global 2
    cg_ln(0)
    cg_lg(2)
    cg_rtap(4, FALSE)
    bb_after_terminator("postfinish")
$)

AND cg_fnrn() BE
$(
    // The variable on the top of the stack should be the result so get
    // its value
    LET result = ss_pop("fnrn.result")
    llvm_build_ret(builder, result)
    bb_after_terminator("postfnrn")
$)

AND cg_getbyte() BE
$(
    // We need to build a GEP so we need to pass it the index in an array
    LET indices = VEC 0

    // And a temp to hold the character we extract from the string
    LET char, char_ptr, charword = ?, ?, ?
    // Pop the character index we want
    LET index = ss_pop("getbyte.index")

    // Pop the temp holding the bcpl address of the string
    LET bcpl_address = ss_pop("getbyte.bcpladdr")

    // Calculate the llvm address and convert it into a pointer to char
    LET llvm_address = llvm_build_shl(builder, bcpl_address, llvm_const_int(word_type, 3, 0), "getbyte.llvmaddr")
    LET string_ptr = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(char_type, 0), "getbyte.string")

    // Build a pointer to the character we want
    indices!0 := index
    char_ptr := llvm_build_gep2(builder, char_type, string_ptr, indices, 1, "getbyte.charptr")

    // Load the character from the string
    char := llvm_build_load2(builder, char_type, char_ptr, "getbyte.char")

    // Extend it to a bcpl word
    charword := llvm_build_zext(builder, char, word_type, "getbyte.charword")

    ss_push(charword)
$)


AND cg_lg(n) BE
$(
    // Push the contents of a global onto the stack
    LET gv_address = build_array_element_ref(builder, llvm_array_type(word_type, GLOBALVECTORSIZE), G, n)
    LET gv_value = llvm_build_load2(builder, word_type, gv_address, "lg.value")
    ss_push(gv_value)
 $)

AND cg_ln(n) BE
$(
    // Create a constant and push its LLVMValueRef
    LET value = llvm_const_int(word_type, n, 0)
    ss_push(value)
$)

AND cg_llg(n) BE
$(
    // Get the address of global N
    LET gv_address = build_array_element_ref(builder, llvm_array_type(word_type, GLOBALVECTORSIZE), G, n)

    // Convert this machine address into a BCPLWORD
    LET bcplword = llvm_build_ptr_to_int(builder, gv_address, word_type, "llg.word")

    // Convert it into a BCPL address
    LET bcpladdr = llvm_build_ashr(builder, bcplword, llvm_const_int(word_type, 3, 0), "llg.bcpladdr")

    // Push this temporary onto our simulated stack
    ss_push(bcpladdr)
$)


AND cg_llp(n) BE
$(
    // We are loading the address of an local on the stack where n is
    // the offset of the local from the base of the current stack frame.
    LET llvm_address, bcpl_address, lv, lv_holder = ?, ?, ?, ?
    LET S = ss_tos()

     TEST n >= S THEN $(
        // The use of LLP in the statement 'LET x = VEC n' appears as
        // LLP n where n is not yet set to the base of the vector.
        // Defer the creation of this stack entry until the next STACK.
        // We record the cell we should have pushed to (S) and the cell
        // it should be referencing (n)
        assert (pending_llps_free < MAXPENDINGLLPS*2, "too many VECs")
        pending_llps!pending_llps_free := S
        pending_llps!(pending_llps_free+1) := n
        pending_llps_free +:= 2

        // We still need to maintain the stack pointer even though we will
        // set up the cell later
        ss_stack(ss_tos()+1)
    $)
    ELSE $(
        // This is a standard LLP
        // Get the address of the variable P!n and convert it to a BCPL l-value
        // by dividing by BYTESPERWORD and pushing a variable holding this result
        llvm_address := llvm_build_ptr_to_int(builder, ss_getframe(n), word_type, "llp.address")
        bcpl_address := llvm_build_ashr(builder, llvm_address, llvm_const_int(word_type, 3, 0), "llp.bcpladdr")
        ss_push(bcpl_address)
    $)
$)

AND cg_lp(n) BE
$(
    TEST n < ss_tos() THEN $(
        LET cell = ss_getframe(n)
        LET value = llvm_build_load2(builder, word_type, cell, "lp.value")
        ss_push(value)
    $)
    ELSE $(
        // It looks like it is legal to request the value of a local not yet
        // defined. For example
        //
        //    LET a = VALOF $( RESULTIS a $)
        //
        // compiles into OCODE but the reference to a is to a cell not yet
        // pushed on the simulated stack. Since the cell doesn't exist yet
        // we can't know its value so the best we can do is to treat this
        // as a QUERY operation.
        cg_query()
    $)
$)

AND cg_lstr(string) BE
$(
    // We need to allocate a byte for the length at the start
    LET data_size = string%0 + 1

    // A type for this string
    LET string_array_type = llvm_array_type(char_type, data_size)

    // Create a global of that type
    LET global_variable = llvm_add_global(module, string_array_type, "lstr.global")

    // Calculate the bcpl address of this global
    LET llvm_address = llvm_build_ptr_to_int(builder, global_variable, word_type, "lstr.llvmaddr")
    LET bcpl_address = llvm_build_ashr(builder, llvm_address, llvm_const_int(word_type, 3, 0), "lstr.bcpladdr")

    // Initialise the global with our string
    LET string_ptr = llvm_const_string_in_context(context, string, data_size, 1)
    llvm_set_alignment(global_variable, 8);
    llvm_set_initializer(global_variable, string_ptr)
    llvm_set_linkage(global_variable, LLVM_PRIVATE_LINKAGE)
    llvm_set_section(global_variable, module_data_section)

    // Store the bcpl address of the string into our tempa and push it onto
    ss_push(bcpl_address)
$)

AND cg_putbyte() BE
$(
    // We need to build a GEP so we need to pass it the index in an array
    LET indices = VEC 0

    LET char, char_ptr, charword = ?, ?, ?

    // Pop the character index we want
    LET index = ss_pop("putbyte.index")

    // Pop the temp holding the bcpl address of the string
    LET bcpl_address = ss_pop("putbyte.bcpladdr")

    // And the word holding the character we're to store, from which we
    // need to take the character
    LET charword = ss_pop("putbyte.charword")
    LET char = llvm_build_int_cast2(builder, charword, char_type, FALSE, "putbyte.char")

    // Calculate the llvm address and convert it into a pointer to char
    LET llvm_address = llvm_build_shl(builder, bcpl_address, llvm_const_int(word_type, 3, 0), "putbyte.llvmaddr")
    LET string_ptr = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(char_type, 0), "putbyte.string")

    // Build a pointer to the location for the character
    indices!0 := index
    char_ptr := llvm_build_gep2(builder, char_type, string_ptr, indices, 1, "putbyte.charptr")

    // Store the character into the string
    llvm_build_store(builder, char, char_ptr)
$)

AND cg_query() BE $(
    // This pushes a temp with an undefined value onto the stack
    LET undefined_value = llvm_const_int(word_type, #XBAD0BAD0BAD0BAD0, 0)
    ss_push(undefined_value)
$)

AND cg_res(n) BE $(

    // RES is called to place the current result in a holding register A
    // while we branch to the label where an RSTACK will restore it. (We're
    // dealing with variable nesting of blocks in a control structure.).
    // According to the paper, it should implement this:
    //
    // A := P[S-2]; S := S - 1; goto Ln
    //
    // but that looks wrong. Instead:
    LET pending_result = ss_pop("res.result")
    IF A = 0 DO A := allocate_temporary(builder, basicblock, "__res_a")
    llvm_build_store(builder, pending_result, A)
    cg_jump(n)
$)

AND cg_rstack(n) BE $(

    // Restore the pending result held in A to the top of the stack once
    // we have adjusted the stack top
    LET pending_result = ?
    IF A = 0 DO A := allocate_temporary(builder, basicblock, "__res_a")
    pending_result := llvm_build_load2(builder, word_type, A, "rstack.pending")
    ss_stack(n)
    ss_push(pending_result)
$)

AND cg_rtap(k, has_result) BE
$(
    LET name, result = ?, ?
    // n tells is the stack pointer at the start of our call frame:
    //
    // +----+----+----+----+----+----+----+
    // | sa | sa | sa |  args.. | fn |    |
    // +----+----+----+----+----+----+----+
    //   ^                             ^
    //   k                             S
    //
    // On exit the stack should look like this:
    //
    // +----+----+
    // | R  |    |
    // +----+----+
    //        ^
    //        S
    //
    // if it is a function returning R
    LET x = ss_trace("cg_rtap")

    LET num_args = ss_tos() - k - savespacesize - 1
    LET ep = ss_pop("rtap.fn")

    // Build a type for a pointer to a function with one argument
    LET signature = llvm_function_type(word_type, parameter_types, num_args, 0)
    LET ep_ptr_type = llvm_pointer_type(signature, 0);

    // Load the value of the entry point and cast it to a pointer
    LET ep_p_fn = llvm_build_int_to_ptr(builder, ep, ep_ptr_type, "rtap_ep_p_fn")

    // Build the argument list by loading their values. We need to do this
    // in reverse as we pop the arguments of the stack
    LET arg_values = VEC MAXPARAMETERS
    IF num_args > MAXPARAMETERS DO cgerror("Too many arguments (%N) in RTAP/FNAP*N", num_args)
    FOR i = num_args - 1 TO 0 BY -1 DO
    $(
        arg_values!i := ss_pop("arg")
    $)

    // Build the call
    name := has_result -> "fnap" , "rtap"
    result := llvm_build_call2(builder, signature, ep_p_fn, arg_values, num_args, name)

    // Clean up the call stack. If we're a function this is where to place
    // the result. For a FNAP, this os equivalent to S = k+1, P[S-1] = A
    // where A is the OCODE location of the result.
    ss_stack(k)

    IF has_result THEN
    $(
        ss_push(result)
    $)
$)

AND cg_rtrn() BE
$(

    // This is a routine so if it is called as a function, we want something
    // recognisable
    ss_trace("cg_rtrn")

    llvm_build_ret(builder, llvm_const_int(word_type, #XBAD0BAD0BAD0BAD0, 0))
    bb_after_terminator("postrtrn")
$)

AND cg_rv() BE
$(
    // The variable on the top of the stack holds a bcpl address. Convert
    // it into a llvm address, load the value held at that address  into
    // a new variable and push it onto the stack
    LET bcpl_address = ss_pop("rv.bcpladdress")
    LET llvm_address = llvm_build_shl(builder, bcpl_address, llvm_const_int(word_type, 3, 0), "rv.llvmaddr")
    LET lv = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(word_type, 0), "rv.lv")
    LET rv = llvm_build_load2(builder, word_type, lv, "rv.rv")
    ss_push(rv)
$)

AND cg_section(name) BE
$(
    LET gv_type = ?     // This will be the type of the global vector

    // If we are currently in a module, finish it by emitting its LL code
    // and deleting it
    UNLESS module = 0 DO emit_and_destroy_module()

    // Discard workspace allocated processing the last section
    ws_wipe(section_mark)

    // Create the new module and set up a function pass manager for
    // optimisation
    module := llvm_module_create_with_name_in_context(name, context)


    // Declare the global vector as an external reference
    gv_type := llvm_array_type(word_type, GLOBALVECTORSIZE)

    module_name := stralloc(name)
    module_text_section := stralloc(".text.")
    strappend(module_text_section, module_name)
    module_data_section := stralloc(".data.")
    strappend(module_data_section, module_name)
    module_rodata_section := stralloc(".rodata.")
    strappend(module_rodata_section, module_name)

    G := llvm_add_global(module, gv_type, "__bcpl_global_vector")
    llvm_set_section(G, "BCPLGVEC")
    llvm_set_visibility(G, LLVM_DEFAULT_VISIBILITY)
    llvm_set_linkage(G, LLVM_EXTERNAL_LINKAGE)

    // Start with a fresh value/type stack
    ss_init(ws_alloc(10000), 10000)

    // Since all BCPL signatures are just N BCPLWORD parameters, we can just
    // create a single vector for the maximum length we support and use the
    // first N elements in a signature.
    parameter_types := ws_alloc(MAXPARAMETERS)
    FOR i = 0 TO MAXPARAMETERS-1 DO parameter_types!i := word_type

    // A new map from label to basic block
    lab_init(10000)

    // Managemnt of indirect branches
    ibr_init(100)

    function := 0
    basicblock := 0
$)

AND cg_stind() BE
$(
    // STIND means !(P!(S-1)) := P!(S-2); S -:= 2
    //
    // or:
    //
    //    value    := P!(S-2)    temporary holding i64 value
    //    address  := P!(S-1)    temporary holding bcpl address
    //    !address := value
    //
    LET bcpl_address = ss_pop("stind.bcpladdr")
    LET source_value = ss_pop("stind.value")
    LET llvm_address = llvm_build_shl(builder, bcpl_address, llvm_const_int(word_type, 3, 0), "stind.llvmaddr")
    LET lv = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(word_type, 0), "stind.lv")
    llvm_build_store(builder, source_value, lv)
$)

AND cg_sg(n) BE
$(

    LET source_value = ss_pop("sg.value")
    LET gv_address = build_array_element_ref(builder, llvm_array_type(word_type, GLOBALVECTORSIZE), G, n)
    llvm_build_store(builder, source_value, gv_address)
$)

AND cg_sp(n) BE
$(
    LET source_value = ss_pop("sp.value")
    LET destination_variable = ss_getframe(n)

    llvm_build_store(builder, source_value, destination_variable)
$)

AND cg_stack(n) BE
$(

    // If there have been VEC declarations since the last STACK, deal with
    // them now.
    IF pending_llps_free > 0 THEN $(
        // We have a sequence of S/N pairs in the pending list where
        // S is the offset from P of the cell which is to hold the pointer to
        // the vector and N is the cell corresponding to element 0 of the vector.
        // The allocation process for each element will make use if the S value
        // of the following element so to avoid the last element being a special
        // case, we create a fake final element using the current value of S,
        // our argument n, and a value of 0 for the base address.
        pending_llps!(pending_llps_free+1) := n

        FOR i = 0 TO pending_llps_free-2 BY 2 DO $(
            LET ref_cell, vec_base = pending_llps!i, pending_llps!(i+1)
            LET next_vec_base = pending_llps!(i+3)
            LET vector_length = next_vec_base - vec_base

            // Create this vector on the stack
            LET vec_type = llvm_array_type(word_type, vector_length)
            LET vector = llvm_build_array_alloca(builder, vec_type, 0, "stack.vec")

            // We need the BCPL address of element 0 of this array
            LET vector_llvmaddress = llvm_build_ptr_to_int(builder, vector, word_type, "stack.vecaddr")
            LET vector_bcpladdress = llvm_build_ashr(builder, vector_llvmaddress, llvm_const_int(word_type, 3, 0), "stack.bcpladdr")

            // Temporarily set the stack top to be the target of the original
            // LLP so that we can simply push the value into place. The final
            // ss_stack below will tidy everything up
            ss_stack(ref_cell)
            ss_push(vector_bcpladdress)
        $)

        // Clear the pending list
        pending_llps_free := 0
    $)

    ss_stack(n)
$)

AND cg_store() BE RETURN

AND cg_build_binary_fop(builder, fop, lhs, rhs, label) = VALOF $(
    LET frhs = llvm_build_bit_cast(builder, rhs, float_type, "frhs")
    LET flhs = llvm_build_bit_cast(builder, lhs, float_type, "flhs")
    LET fresult = fop(builder, flhs, frhs, "fresult")
    LET result = llvm_build_bit_cast(builder, fresult, word_type, label)
    RESULTIS result
$)

AND cg_binary_fop(build_fop, label) BE
$(
    // Pop the rhs and the the lhs off the stack, add them and push the
    // result
    LET rhs = ss_pop("rhs")
    LET lhs = ss_pop("lhs")
    LET result = cg_build_binary_fop(builder, build_fop, lhs, rhs, label)
    ss_push(result)
$)

AND cg_unary_fop(build_fop, label) BE
$(
    // Pop the rhs and the the lhs off the stack, add them and push the
    // result
    LET lhs = ss_pop("lhs")
    LET flhs = llvm_build_bit_cast(builder, lhs, float_type, "flhs")
    LET fresult = build_fop(builder, flhs, "fresult")
    LET result = llvm_build_bit_cast(builder, fresult, word_type, label)
    ss_push(result)
$)

AND cg_ftest(comparison, label) BE
$(
    // Pop the rhs and the the lhs off the stack, add them and push the
    // result
    LET rhs = ss_pop("rhs")
    LET lhs = ss_pop("lhs")
    LET frhs = llvm_build_bit_cast(builder, rhs, float_type, "frhs")
    LET flhs = llvm_build_bit_cast(builder, lhs, float_type, "flhs")
    LET bool = llvm_build_fcmp(builder, comparison, flhs, frhs, "comparison")
    LET result = llvm_build_int_cast2(builder, bool, word_type, 1, label)

    ss_push(result)
$)


AND cg_fix()  BE  $(

    // The BCPL word on top of the simulated stack is actually a fload
    // The BCPL word on top of the simulated stack is actually a fload
    LET lhs = ss_pop("fix")
    LET flhs = llvm_build_bit_cast(builder, lhs, float_type, "fix.ftoi")

    LET result = llvm_build_fpto_si(builder, flhs, word_type, "fix")
    ss_push(result)
$)

AND cg_float()  BE  $(

    LET lhs = ss_pop("float")
    LET flhs = llvm_build_sito_fp(builder, lhs, float_type, "float.itof")

    // We must push the value as a BCPL word
    LET result = llvm_build_bit_cast(builder, flhs, word_type, "float")
    ss_push(result)
$)

AND cg_fabs() BE cg_intrinsic("llvm.fabs.f64", 1, float_type, float_type)

AND cg_fneg() BE cg_unary_fop(llvm_build_fneg, "fneg")

AND cg_fadd() BE cg_binary_fop(llvm_build_fadd, "fadd")
AND cg_fdiv() BE cg_binary_fop(llvm_build_fdiv, "fdiv")
AND cg_fmod() BE cg_binary_fop(llvm_build_frem, "frem")
AND cg_fmul() BE cg_binary_fop(llvm_build_fmul, "fmul")
AND cg_fsub() BE cg_binary_fop(llvm_build_fsub, "fsub")

AND cg_fls() BE cg_ftest(LLVM_REAL_OLT, "fls")
AND cg_feq() BE cg_ftest(LLVM_REAL_OEQ, "feq")
AND cg_fne() BE cg_ftest(LLVM_REAL_ONE, "fne")
AND cg_fgr() BE cg_ftest(LLVM_REAL_OGT, "fgr")
AND cg_fle() BE cg_ftest(LLVM_REAL_OLE, "fle")
AND cg_fge() BE cg_ftest(LLVM_REAL_OGE, "fge")

// ---------------------------------------------------------------------
// LABEL-based operations
// ---------------------------------------------------------------------


AND cg_entry(label, name, save) BE
$(
    // When this function is entered, the invoking FNAP or RTAP will have
    // created a stack frame that looks like this when we get here, for
    // example:  ENTRY L10 6 letter SAVE 5
    //
    // +------+------+------+------+------+------+------+
    // | Pold | K    | BB   | arg1 | arg2 |      |      |
    // +--0---+--1---+--2---+--4---+--5---+--6---+--9---+
    //    P                                  S
    //
    //
    // This handler combines ENTRY and SAVE so we can work out the number
    // of parameters from the SAVE value, which includes STACKSPACESIZE
    // words for the linkage area
    LET argc = save - savespacesize
    LET function_type = llvm_function_type(word_type, parameter_types, argc, 0)
    LET ba = ?

    trace("cg_entry entry L%n %s*n", label, name)

    // We're now going to make the stack look like it will when we are
    // called: we reserve the savearea and then emit code to get the
    // values of the arguments and puch them on the stack. When we finish,
    // S == save because of this.

    // Stack the current function - there will always be one because of
    // the enclosing dummy function that deals with jumps around routines
    // This records the current basic block in the linkage area.
    ss_pushframe(savespacesize)
    ss_trace("cg_entry after pushframe")

    ss_stack(savespacesize)

    // Add a function of this type to the current module and make it
    // current.
    function := llvm_add_function(module, name, function_type)
    llvm_set_section(function, module_text_section)

    // Start the function off with a basic block at its entry and make
    // it current
    basicblock := llvm_append_basic_block_in_context(context, function, "entry")
    llvm_position_builder_at_end(builder, basicblock)

   // For all of the arguments we expect to be passed, allocate locals
    // set to the argument values and place the locals in P so that the
    // rest of the functions OCODE can find them
    FOR arg = 0 TO argc-1 DO
    $(
        // Copy the argument into a local and place the local on the stack
        LET parameter = llvm_get_param(function, arg)
        ss_push(parameter)
    $)

    // The temporary RES/STACK holding location is not needed for function
    // call and return because the call object we build will return a
    // result object to us. However, it is needed for the RES and RSTACK
    // operations used in SWITCHON statements. Defer creation until the
    // first OCODE operation that needs it.
    A := 0

    // Like STATIC, a LET generates a static variable holding the procedure
    // address. We actually store the first basic block and rely on RTAP/FNAP
    // obtaining the parent function from it.
    // The label number allows us to record the static variable in the label
    // table. First create the static (LLVM private global)

    lab_declare(label, LAB_ENTRY, function)    
    lab_add_static(label)
    lab_set_static(label, llvm_const_ptr_to_int(function, word_type))

    // Set up the VEC pending allocation mechanism
    pending_llps_free := 0

    // We don't need an indirect branch yet so clear up the leftovers from
    // the last function
    ibr_reset()

    ss_trace("cg_entry exit")
$)

AND cg_switchon(num_cases, default_label) BE
$(
    // The value upon which we switch. Make sure it exists.
    LET value = ss_pop("switchon.value")
    LET default_flags = lab_declare(default_label, LAB_JUMP, function)
    LET default_bb = lab_get_basicblock(default_label, "default")
    LET switch = llvm_build_switch(builder, value, default_bb, num_cases)

    // Now add each of the cases we read. Again, make sure the label exists
    // in case it is declared later.
    FOR i = 1 TO num_cases DO $(
        LET number, case_label = cg_rdn(), cg_rdn()
        LET case_value = llvm_const_int(word_type, number, 0)
        LET case_flags = lab_declare(case_label, LAB_JUMP, function)
        LET case_bb = lab_get_basicblock(case_label, "case")
        llvm_add_case(switch, case_value, case_bb)
    $)

    // Like GOTO, SWITCHON deals with all cases in its branches so LLVM treats
    // the switch node we built as a terminator so we cannot emit more code
    // into this basic block. We expect the next OCODE to be a LAB, which will
    // start a new basic block but if it isn't, we need to create one. This is
    // an unreachable dead block which we will eliminate later. This happens
    // when TRN is very cautious and emits catch-all FNRN/RTRN code after us.
    UNLESS cg_rdn_peek(0) = s_lab DO $(
        basicblock := llvm_create_basic_block_in_context(context, "switchon.dead")
        llvm_insert_existing_basic_block_after_insert_block(builder, basicblock)
        llvm_position_builder_at_end(builder, basicblock)
    $)
$)

AND cg_global(global, label) BE
$(
    LET append_dec(string, number) BE $(
        LET final_digit = '0' + (number MOD 10)
        IF number > 9 DO append_dec(string, number / 10)
        string%0 +:= 1
        string%(string%0) := final_digit
    $)

    // We need to create the external weak symbol __bcpl_gvN as an alias of
    // the function name. Our initial string provides plenty of space
    // to append the global number. The alias is externally declared as a weak
    // symbol and once we associate it with our function, the linker will see
    // it gets resolved.
    LET global_name = "__bcpl_gv       "
    LET fn = lab_get_function(label)
    LET alias = ?
    global_name%0 := 9
    append_dec(global_name, global)
    alias := llvm_add_alias2(module, llvm_type_of(fn), 0, fn, global_name)
    llvm_set_linkage(alias, LLVM_EXTERNAL_LINKAGE)
$)

AND cg_goto() BE $(

    // The word on the top of the stack is the address of the LLVM basic
    // block for the label we are to branch to. We need to:
    //
    // 1. Pop the destination basic block and convert it from a BCPL word
    //    to a basic block pointer
    LET value = ss_pop("goto.bcplword")
    LET destination_ba = llvm_build_int_to_ptr(builder, value, llvm_pointer_type(word_type, 0), "goto.addr")

    // Add an incoming edge to the indirect branch's phi node, specifying
    // our destination as value for our case. Then branch unconditionally
    // to the phi node's basic block
    ibr_add_incoming(destination_ba, basicblock)
    llvm_build_br(builder, ibr_get_basicblock())

    // We ought to be followed by a LAB which will create the next basic
    // block for the next operation. However, if there is unreachable code
    // after us, there won't be a LAB so we'll have to create the basic
    // block
    UNLESS cg_rdn_peek(0) = s_lab DO $(
        bb_after_terminator("postgoto")
    $)
$)

AND cg_itemn(n, peek) BE
$(
    // Create a constant value and add it to those seen so far
    datalab_itemns!datalab_itemn_count := llvm_const_int(word_type, n, 0)
    datalab_itemn_count +:= 1

    UNLESS peek = s_itemn DO
    $(
        // This is the end of the ITEMNs so we can tell if this is a STATIC
        // (a single item) or a TABLE (multiple items)

        LET static_global, static_type, static_data, static_section = ?, ?, ?, ?
        TEST datalab_itemn_count > 1 THEN $(
            // A table is an array of bcplwords
            static_type := llvm_array_type(word_type, datalab_itemn_count)
            static_data := llvm_const_array(word_type, datalab_itemns, datalab_itemn_count)
            static_section := module_data_section
        $)
        ELSE $(
            // A static is a single bcolword
            static_type := word_type
            static_data := datalab_itemns!0
            static_section := module_data_section
        $)

        // The module's data holds a global initialised to the static data
        // at compile time
        static_global := llvm_add_global(module, static_type, "itemn.global")
        llvm_set_section(static_global, static_section)
        llvm_set_initializer(static_global, static_data)
        llvm_set_linkage(static_global, LLVM_INTERNAL_LINKAGE)

        // Record this label and location in our dictionary of statics.
        // We set the static flag ourselves because we have set up the
        // global ourselves.
        lab_declare(datalab_label, LAB_VARIABLE|LAB_STATIC, function)
        lab_set_table(datalab_label, static_global)

        // Clean up the workspace
        ws_wipe(datalab_itemns)
        datalab_itemns := 0
    $)
$)

AND cg_jf(n) BE
$(
    // The variable on the top of the stack is true or false. We need to
    // convert it to an i1 by comparing it with 0.
    LET bcplbool = ss_pop("truefalse")
    LET if_cond = llvm_build_icmp(builder, LLVM_IntEQ, bcplbool, llvm_const_int(word_type, 0, 0), "if_cond")


    // Make sure the label table is set up with a basic block we can
    // jump to if the condition is true
    LET dummy = lab_declare(n, LAB_JUMP, function)
    LET then_bb = lab_get_basicblock(n, "jf.then")

    // We need a new basic block to continue with if the condition is false
    // so add it after this one
    LET else_bb = llvm_append_basic_block_in_context(context, function, "jf.else")

    // Build the conditional branch
    llvm_build_cond_br(builder, if_cond, then_bb, else_bb)

    // Make the false basic block current
    basicblock := else_bb
    llvm_position_builder_at_end(builder, basicblock)
$)

AND cg_jt(n) BE
$(
    // The variable on the top of the stack is true or false. We need to
    // convert it to an i1 by comparing it with 0.
    LET bcplbool = ss_pop("truefalse")
    LET if_cond = llvm_build_icmp(builder, LLVM_IntNE, bcplbool, llvm_const_int(word_type, 0, 0), "if_cond")

    // Make sure the label table is set up with a basic block we can
    // jump to if the condition is true
    LET dummy = lab_declare(n, LAB_JUMP, function)
    LET then_bb = lab_get_basicblock(n, "jt.then")

    // We need a new basic block to continue with if the condition is false
    // so add it after this one
    LET else_bb = llvm_append_basic_block_in_context(context, function, "jt.else")

    // Build the conditional branch
    llvm_build_cond_br(builder, if_cond, then_bb, else_bb)

    // Make the false basic block current
    basicblock := else_bb
    llvm_position_builder_at_end(builder, basicblock)
$)



AND cg_jump(n) BE
$(
    // There will be an earlier or later LAB operation that wull store the
    // basic block in the static. Get hold of the basic block
    LET dummy = lab_declare(n, LAB_JUMP, function)
    LET target_bb = lab_get_basicblock(n, "jump.target")


    // Build a branch to the basic block
    llvm_build_br(builder, target_bb)

    // We ought to be followed by a LAB which will create the next basic
    // block for the next operation. However, if there is unreachable code
    // after us, there won't be a LAB so we'll have to create the basic
    // block
    bb_after_terminator("postjump")
$)

AND cg_lab(label) BE
$(
    // Make sure we have a basic block for this label. If a previous jump
    // mentioned it (because it's a branch forward), the block will have
    // been created then. If this is the first mention, the lookup will
    // create it now.
    LET dummy = lab_declare(label, LAB_LAB, function)
    LET lab_bb = lab_pending_basicblock(label, "lab")

    // If the current basic block doesn't have a terminating instruction,
    // connect it to the new block
    IF llvm_get_basic_block_terminator(basicblock) = 0 DO llvm_build_br(builder, lab_bb)

    // Now we can safely add the new block and make it current
    llvm_insert_existing_basic_block_after_insert_block(builder, lab_bb)
    llvm_position_builder_at_end(builder, lab_bb)
    basicblock := lab_bb
$)

AND cg_lf(label) BE
$(
    // We are pushing the target for a following GOTO, RTAP or FNAP. These
    // destinations (a basic block for a GOTO, a function for an  RTAP or
    // FNAP) are stored in BCPL statics - and so LLVM globals - so we need
    // to get that LLVM static and load its contents onto the stack.
    LET dummy = lab_declare(label, 0, function)
    LET static_variable = lab_get_static(label)
    LET static_contents = ?

    // This is a code address so the label must have a basic block and it
    // must have an initial value which is the block address of that basic
    // block. (Note: ENTRY will have already set its initialiser to the
    // function address.)
    IF llvm_get_initializer(static_variable) = 0 THEN $(
        LET bb = lab_get_basicblock(label, "lf")
        LET ba = llvm_block_address(function, bb)
        LET value = llvm_const_ptr_to_int(ba, word_type)
        llvm_set_initializer(static_variable, value)
    $)

    static_contents := llvm_build_load2(builder, word_type, static_variable, "lf.static.value")
    ss_push(static_contents)
$)

AND cg_ll(n) BE
$(
    // Get value of the static variable from our dictionary. This is the
    // module global initialised to the static data. The compiler will ask
    // for the right value only for statics, not tables so we know this
    // value is a bcpl word.
    LET dummy = lab_declare(n, 0, function)
    LET static_variable = lab_get_static(n)
    LET value = llvm_build_load2(builder, word_type,static_variable, "ll.static.value")

    // Push it onto our simulated stack
    ss_push(value)
$)

AND cg_lll(n) BE
$(
    // Get the address of the static variable and convert it to a BCPL l-value
    // by dividing by BYTESPERWORD and pushing a variable holding this result
    LET dummy = lab_declare(n, 0, function)
    LET static_variable = lab_get_static(n)
    LET llvm_address = llvm_build_ptr_to_int(builder, static_variable, word_type, "lll.llvmaddr")
    LET bcpl_address = llvm_build_ashr(builder, llvm_address, llvm_const_int(word_type, 3, 0), "lll.bcpladdr")

    // Store the bcpl address of the string
    ss_push(bcpl_address)
$)

AND cg_selld(len, sh) BE $(
    // SELLD takes two argments len and sh. It effect is equivalent to
    // P!(S-1) := !(P!(S-1)) >> sh & mask
    // where mask is a bit pattern containing len right justified ones. If em len is zero no
    // masking is done.
    LET mask = (1 << len) - 1

    // Get !(P!S-1))
    LET bcpl_address = ss_pop("selld.bcpladdress")
    LET llvm_address = llvm_build_shl(builder, bcpl_address, llvm_const_int(word_type, 3, 0), "selld.llvmaddr")
    LET lv = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(word_type, 0), "selld.lv")
    LET value = llvm_build_load2(builder, word_type, lv, "selld.value")

    // Apply the shift
    LET shift_value = llvm_const_int(word_type, sh, 0)
    LET shifted_value = llvm_build_lshr(builder, value, shift_value, "selld.shifted")

    // If the length is not zero, apply the mask
    TEST len ~= 0 THEN $(
        LET mask_value = llvm_const_int(word_type, mask, 0)
        LET masked_value = llvm_build_and(builder, shifted_value, mask_value, "selld.masked")
        ss_push(masked_value)
    $)
    ELSE $(
        ss_push(shifted_value)
    $)
$)

AND cg_selst(op, len, sh) BE $(
    // SELST takes three argments op, len and sh. If op is zero, its effect is
    // equivalent to
    //     SLCT len:sh:0 OF (P!(S-1)) := P!(S-2); S := S-2
    // but if op is non zero it represents and assignment operator (assop) and
    // the statement is equivalent to:
    //     SLCT len:sh:0 OF (P!(S-1)) assop:= P!(S-2); S := S-2
    // The mapping between op and assop is given by the following table.
    //
    // op assop       op assop     op assop
    //  0  none        1     !      2    #*
    //  3    #/        4  #MOD      5    #+
    //  6    #-        7     *      8     /
    //  9   MOD       10     +     11     -
    // 12    <<       13    >>     14     &
    // 15     |       16   EQV     17   XOR
    //
    // The floating-point assignment operators are only allowed when the
    // specified field is a full word, typically with len and sh both zero

    // If len us null, then we use the full word length
    LET length = len = 0 -> 8*BYTESPERWORD, len
    // The value on the top of the stack is the address of the element of
    // the vector to be modified. Get the original value
    LET bcpl_address = ss_pop("selst.bcpladdress")
    LET rhs = ss_pop("selst.rhs")
    LET llvm_address = llvm_build_shl(builder, bcpl_address, llvm_const_int(word_type, 3, 0), "selst.llvmaddr")
    LET lv = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(word_type, 0), "selst.lv")
    LET lhs_value = llvm_build_load2(builder, word_type, lv, "selst.value")

    // Mask covering all the bits in the target field, used to or-in the result
    LET mask = ((1 << length) - 1) << sh
    LET mask_value = llvm_const_int(word_type, mask, 0)

    // Mask covering all bits except the field, used to clear the target field.
    LET not_mask = ~mask
    LET not_mask_value = llvm_const_int(word_type, not_mask, 0)


    // We have a binary operation so get the working value out of the lhs field
    // and remove its shift
    LET target_field_value = llvm_build_and(builder, lhs_value, mask_value, "selst.masked.rhs")
    LET shift_value = llvm_const_int(word_type, sh, 0)
    LET working_field_value = llvm_build_lshr(builder, target_field_value, shift_value, "selst.working.field")

    // The lhs value with the target field cleared, ready to receive the result
    LET prepared_value = llvm_build_and(builder, lhs_value, not_mask_value, "selst.prepared.lhs")

    LET result_value, shifted_result, masked_result, new_value = 42, 43, 44, 45
    SWITCHON (op) INTO $(

        // Simple assignment
        CASE  0: result_value := rhs;                                                                 ENDCASE

        // Indirection
        CASE  1: $(
            // field !:= rhs  === field := field ! rhs === field := !(field + rhs)
            LET bcpl_address = llvm_build_add(builder, working_field_value, rhs, "selst.pling.bcpladdr")
            LET llvm_address = llvm_build_shl(builder, rhs, llvm_const_int(word_type, 3, 0), "selst.pling.lv.llvmaddr")
            LET lv = llvm_build_int_to_ptr(builder, llvm_address, llvm_pointer_type(word_type, 0), "selst.pling.lv")
            result_value := llvm_build_load2(builder, word_type, lv, "selst.pling.result")
        $)
        ENDCASE

        // Floating point
        CASE  2: result_value := cg_build_binary_fop(builder, llvm_build_fmul, working_field_value, rhs, "selst.fmul.result"); ENDCASE
        CASE  3: result_value := cg_build_binary_fop(builder, llvm_build_fdiv, working_field_value, rhs, "selst.fdiv.result"); ENDCASE
        CASE  4: result_value := cg_build_binary_fop(builder, llvm_build_frem, working_field_value, rhs, "selst.frem.result"); ENDCASE
        CASE  5: result_value := cg_build_binary_fop(builder, llvm_build_fadd, working_field_value, rhs, "selst.fadd.result"); ENDCASE
        CASE  6: result_value := cg_build_binary_fop(builder, llvm_build_fsub, working_field_value, rhs, "selst.fsub.result"); ENDCASE

        // Word
        CASE  7: result_value := llvm_build_mul(builder,  working_field_value, rhs, "selst.mul.result");  ENDCASE
        CASE  8: result_value := llvm_build_sdiv(builder, working_field_value, rhs, "selst.sdiv.result");  ENDCASE
        CASE  9: result_value := llvm_build_srem(builder, working_field_value, rhs, "selst.srem.result");  ENDCASE
        CASE 10: result_value := llvm_build_add(builder,  working_field_value, rhs, "selst.add.result");  ENDCASE
        CASE 11: result_value := llvm_build_sub(builder,  working_field_value, rhs, "selst.sub.result");  ENDCASE
        CASE 12: result_value := llvm_build_shl(builder,  working_field_value, rhs, "selst.shl.result");  ENDCASE
        CASE 13: result_value := llvm_build_lshr(builder, working_field_value, rhs, "selst.shr.result");  ENDCASE
        CASE 14: result_value := llvm_build_and(builder,  working_field_value, rhs, "selst.and.result");  ENDCASE
        CASE 15: result_value := llvm_build_or(builder,   working_field_value, rhs, "selst.or.result");  ENDCASE
        CASE 16: result_value := llvm_build_not(builder,  llvm_build_xor(builder, working_field_value, rhs, "selst.xor"), "selst.eqv.result"); ENDCASE
        CASE 17: result_value := llvm_build_xor(builder,  working_field_value, rhs, "selst.xor.result");  ENDCASE

        DEFAULT: cgerror("Bad OP %n in SELST*n", op)
    $)

    // Shift the new value into position and then mask any bits that have
    // overflowed the field
    shifted_result := llvm_build_shl(builder, result_value, shift_value, "selst.shifted.result")
    masked_result := llvm_build_and(builder, shifted_result, mask_value, "selst.masked.result")

    // So we can now combine them to give the new lhs
    new_value := llvm_build_or(builder, prepared_value, masked_result, "selst.updated.lhs")
    llvm_build_store(builder, new_value, lv)
$)




AND cg_sl(n) BE
$(
    // Get the value to store from its temporary on the simulated stack
    LET source_value = ss_pop("sl.value")

    // Get the variable into which it is to be stored of the simulated stack
    LET dummy = lab_declare(n, 0, function)
    LET destination_variable = lab_get_static(n)

    // Store the value there
    llvm_build_store(builder, source_value, destination_variable)
$)

