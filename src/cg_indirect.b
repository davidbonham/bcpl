// ###                                               ######                                     
//  #  #    # #####  # #####  ######  ####  #####    #     # #       ####   ####  #    #  ####  
//  #  ##   # #    # # #    # #      #    #   #      #     # #      #    # #    # #   #  #      
//  #  # #  # #    # # #    # #####  #        #      ######  #      #    # #      ####    ####  
//  #  #  # # #    # # #####  #      #        #      #     # #      #    # #      #  #        # 
//  #  #   ## #    # # #   #  #      #    #   #      #     # #      #    # #    # #   #  #    # 
// ### #    # #####  # #    # ######  ####    #      ######  ######  ####   ####  #    #  ####  

STATIC $(
    ibr_indirect_br_instruction
    ibr_phi_node
    ibr_destination_count
    ibr_destinations
    ibr_destinations_size
$)

/** Prepare the indirect branch handling ready for the fist function
 *
 * Initialise our state will enough space to record <count> labels that
 * might be GOTO destinations.
 * 
 */
LET ibr_init(count) BE $(
    ibr_indirect_br_instruction := 0
    ibr_phi_node := 0
    ibr_destination_count := 0
    ibr_destinations := ws_alloc(count)
    ibr_destinations_size := count
$)

/** Set up this function's indirect branch if it doesn't already exist
 *
 * A basic block is created containing a PHI node that will capture all 
 * the incoming edges from GOTOs and an indirect branch instruction that
 * will capture all of the allowed destinations. The basic block isn't 
 * inserted into any function yet.
 */
LET ibr_need_indirect_branch() BE $(
    IF ibr_indirect_br_instruction = 0 THEN $(
        LET phi_bb = llvm_create_basic_block_in_context(context, "phi.bb")
        LET temp_builder = llvm_create_builder_in_context(context)
        LET i8ptr_type = llvm_pointer_type(char_type, 0)
        llvm_position_builder_at_end(temp_builder, phi_bb)
        ibr_phi_node := llvm_build_phi(temp_builder, i8ptr_type, "phi")
        ibr_indirect_br_instruction := llvm_build_indirect_br(temp_builder, ibr_phi_node, 8)
        llvm_dispose_builder(temp_builder)
    $)
$)

/** Add a destination address to the current indirect branch instruction
 *
 * Given an O-code label, record it in our list of pending destinations. 
 * We don't add it to the instruction yet because we can't be sure in general
 * if the label represents a GOTO destination or a future ENTRY. Once we 
 * reach the ENDPROC all of the labels should have had their types resolved
 * and at the point, ibr_insert_and_clean up will actually insert the 
 * label as a destination.
 */
LET ibr_add_destination(label) BE $(
    IF ibr_destination_count + 1 >= ibr_destinations_size DO cgerror("adding destination overlowed indirect branch list*N")
    ibr_destinations!ibr_destination_count := label
    ibr_destination_count +:= 1
    ibr_need_indirect_branch()
$)

LET ibr_add_incoming(value, bb) BE $(
    LET values = VEC 0
    LET blocks = VEC 0
    values!0 := value
    blocks!0 := bb
    ibr_need_indirect_branch()
    llvm_add_incoming(ibr_phi_node, values, blocks, 1)
$)

LET ibr_insert_and_cleanup(builder) BE $(

    IF ibr_indirect_br_instruction ~= 0 THEN $(

        LET incoming_edges = llvm_count_incoming(ibr_phi_node)
        IF incoming_edges > 0 THEN $(

            LET parent_bb = llvm_get_instruction_parent(ibr_indirect_br_instruction)

            // We need the indirect block/ Add all of its real destinations
            FOR i = 0 TO ibr_destination_count-1 DO $(
                LET label = ibr_destinations!i
                TEST lab_get_type(label) = LABEL_GOTO THEN $(
                    LET bb = lab_get_bb(label)
                    llvm_add_destination(ibr_indirect_br_instruction, bb)
                $)
                ELSE $(
                $)
            $)

            // Insert it after the current basic block
            llvm_insert_existing_basic_block_after_insert_block(builder, parent_bb)

            // Clean up for next function
            ibr_indirect_br_instruction := 0
            ibr_destination_count := 0
            ibr_phi_node := 0
        $)
    $)
$)

LET ibr_get_basic_block() = VALOF $(
    ibr_need_indirect_branch()
    llvm_get_instruction_parent(ibr_indirect_br_instruction)
$)
