LET write_llvm_string(string) BE $(
   LET i = 0
    UNTIL string%i = 0 DO $(
        wrch(string%i)
        i +:= 1
    $)
$)

LET declare_global(module, number, word_ref) BE
$(
    LET global_ref     = llvm_const_int(word_type, number, 0)
    LET emitted_global = llvm_add_global(module, word_type, "__bcpl_global")
    LET emitted_value  = llvm_add_global(module, word_type, "__bcpl_value")
    llvm_set_section(emitted_global, "BCPLGVEC")
    llvm_set_section(emitted_value,  "BCPLGVEC")
    llvm_set_initializer(emitted_global, global_ref)
    llvm_set_initializer(emitted_value,  word_ref)

    // Alas, if we declare these with internal linkage, the linker will
    // discard them as unreferenced when optimising. WEAK_ANK seems to
    // match our needs.
    llvm_set_linkage(emitted_global, LLVM_WEAK_ANY_LINKAGE)
    llvm_set_linkage(emitted_value,  LLVM_WEAK_ANY_LINKAGE)
$)


LET build_array_element_ref(builder, array_type_ref, array_ref, number) = VALOF
$(
    LET indices = VEC 1
    indices!0 := llvm_const_int(word_type, 0, 0)
    indices!1 := llvm_const_int(word_type, number, 0)
    RESULTIS llvm_build_gep2(builder, array_type_ref, array_ref, indices, 2, "gv")
$)


LET optimise_module(module) = VALOF $(

    // Use the new LLVM pass manager via the simplified llvm C binding
    // where we pass an opt-style string. The call sequence was deduced
    // from the LLVM unit test for the pass manager.

    LET target_triple = ?
    LET target = ?
    LET target_machine = ?
    LET pass_builder_options = ?
    LET error_ref = ?

    // This is a BCPL string copied from the actual triple, which the
    // call will already have deleted by the time it returns
    llvm_get_default_target_triple()
    target_triple := llvm_result
    llvm_set_target(module, target_triple)
    llvm_initialize_all_target_infos()
    target := llvm_get_target_from_triple(target_triple)
    target_machine := llvm_create_target_machine(target, target_triple, "pc", "", LLVM_CODEGENLEVEL_DEFAULT, LLVM_RELOC_DEFAULT, LLVM_CODEMODEL_DEFAULT)
    pass_builder_options := llvm_create_pass_builder_options()

    error_ref := llvm_run_passes(module, "default<O2>", target_machine, pass_builder_options)
    IF error_ref ~= 0 DO $(
       writes("Optimisation pass failed: ")
       write_llvm_string(llvm_get_error_message(error_ref))
       newline()
       RESULTIS 1
    $)

    llvm_dispose_pass_builder_options(pass_builder_options)
    llvm_dispose_target_machine(target)
    RESULTIS 0
$)

LET emit_and_destroy_module() BE
$(
    // We don't keep the global function, which should now be current
    // DB 19-dec-2023 - doing this makes module unprintable: llvm_delete_function(function)
    UNLESS is_current_section_empty DO
    $(
        LET r = llvm_verify_module(module, LLVM_PRINT_MESSAGE_ACTION)
        IF r ~= 0 DO $(
            LET text = llvm_print_module_to_string(module)
            writef("Failed to verify section %S*N", module_name)
            write_llvm_string(text)
            longjump(fin_p, fin_l)
        $)

        r := optimise_module(module)
        IF r ~= 0 DO $(
            writef("Failed to optimise section %S*N", module_name)
            longjump(fin_p, fin_l)
        $)

        TEST r = 0 DO
        $(
            LET text = llvm_print_module_to_string(module)
            TEST text = 0 THEN
            $(
                writes("Unable to get text of module*N")
                longjump(fin_p, fin_l)
            $)
            ELSE
            $(
                LET saved_output = output()
                LET i = 0

                selectoutput(gostream)
                UNTIL text%i = 0 DO $(
                    wrch(text%i)
                    i +:= 1
                $)
                selectoutput(saved_output)
                writef("Compiled section %S - %N bytes of IR*N", module_name, i)
            $)
        $)
        ELSE
        $(
            writef("Section %S not verified by LLVM*N", module_name)
            longjump(fin_p, fin_l)
        $)

        //FIXME new pass manager llvm_dispose_pass_manager(fpm)
        llvm_dispose_module(module)

        is_current_section_empty := TRUE
    $)
$)


// -----------------------------------------------------------------------------
LET dump_bb(label, bb) BE
$(
    IF debug > 0 THEN $(

        LET name = VEC 10
        LET parent = llvm_get_basic_block_parent(bb)
        LET terminator = llvm_get_basic_block_terminator(bb)
        LET instruction = llvm_get_first_instruction(bb)

        llvm_get_basic_block_name(bb, name)
        writef("---- %s: basic block=0x%16X name %S parent 0x%16X terminator 0x%16X*N", label, bb, name, parent, terminator)

        UNTIL instruction = 0 DO $(

            llvm_print_value_to_string(instruction)
            writef("    %S*N", llvm_result)
            instruction := llvm_get_next_instruction(instruction)
        $)
    $)
$)

LET dump_function_bbs(label, f) BE
$(
    LET entry_bb = llvm_get_entry_basic_block(f)
    LET next_bb  = llvm_get_first_basic_block(f)
    LET last_bb  = llvm_get_last_basic_block(f)

    IF debug > 0 THEN writes("-- function blocks ----*N")

    UNLESS next_bb = entry_bb DO dump_bb(label, entry_bb)
    UNTIL next_bb = 0 DO
    $(
        dump_bb(label, next_bb)
        next_bb := llvm_get_next_basic_block(next_bb)
    $)
    IF debug > 0 THEN writes("-----------------------*N")


$)
