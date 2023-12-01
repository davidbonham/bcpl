import re
import sys

# For cases that are too hard, we put hand-written versions here

hand_written_wrappers = {
    'LLVMBuildGEP2': '''
BCPLWORD llvm_build_gep2(BCPLWORD builder, BCPLWORD type_ref, BCPLWORD pointer, BCPLWORD indices, BCPLWORD num_indices, BCPLWORD name)
{
    char c_name[256];
    char const* r = b2c_str(name, c_name);

    BCPLWORD* ptr = (BCPLWORD*)b2c_address(indices);
    LLVMValueRef* const indices_copy = (LLVMValueRef*) malloc(sizeof(LLVMValueRef)*num_indices);
    int i;
    for (i = 0; i < num_indices; i += 1)
    {
        indices_copy[i] = (LLVMValueRef)ptr[i];
    }

return (BCPLWORD) LLVMBuildGEP2((LLVMBuilderRef)builder, (LLVMTypeRef)type_ref, (LLVMValueRef)pointer, indices_copy, (unsigned)num_indices, c_name);
}

''',

    'LLVMFunctionType': '''
BCPLWORD llvm_function_type(BCPLWORD ret_llvm_type_ref, BCPLWORD params_llvm_type_ref_ptr, BCPLWORD params_count, BCPLWORD is_varargs)
{
    // We can't just pass through our BCPL vector of type refs because the
    // elements size may differ, so we need to create a temporary copy.
    BCPLWORD* ptr = (BCPLWORD*)b2c_address(params_llvm_type_ref_ptr);
    LLVMTypeRef* param_types = (LLVMTypeRef*) malloc(params_count*sizeof(LLVMTypeRef));
    for (int i = 0; i < params_count; i += 1)
    {
        param_types[i] = (LLVMTypeRef) ptr[i];
    }

    LLVMTypeRef const result = LLVMFunctionType((LLVMTypeRef)ret_llvm_type_ref, param_types, params_count, is_varargs);
    free(param_types);
    return (BCPLWORD)result;
}

''',

    'LLVMBuildCall2': '''
BCPLWORD llvm_build_call2(BCPLWORD builder, BCPLWORD signature, BCPLWORD function, BCPLWORD arguments, BCPLWORD num_args, BCPLWORD name)
{
    extern bool extfn_tracing;
    char c_name[256];
    char const* r = b2c_str(name, c_name);

    // We can't assume that the arguments are the same size so we must copy
    // the vector
    BCPLWORD* ptr = (BCPLWORD*)b2c_address(arguments);
    LLVMValueRef* const args_copy = (LLVMValueRef*) malloc(sizeof(LLVMValueRef)*num_args);
    int i;
    for (i = 0; i < num_args; i += 1) args_copy[i] = (LLVMValueRef)ptr[i];

    if (extfn_tracing)
    {
        print_message("signature", LLVMPrintTypeToString((LLVMTypeRef)signature));
        printf("num_args=%lu\\n", num_args);
        for (i = 0; i < num_args; i += 1) print_message("arg", LLVMPrintValueToString((LLVMValueRef)args_copy[i]));
    }

    LLVMValueRef result = LLVMBuildCall2((LLVMBuilderRef)builder, (LLVMTypeRef)signature, (LLVMValueRef)function, args_copy, (unsigned)num_args, c_name);
    free(args_copy);

    return (BCPLWORD)result;
}

''',

    'LLVMPrintModuleToFile': '''
BCPLWORD llvm_print_module_to_file(BCPLWORD llvm_module_ref, BCPLWORD filename, BCPLWORD error_ref)
{
    char* c_error = NULL;
    LLVMBool const result = LLVMPrintModuleToFile((LLVMModuleRef)llvm_module_ref, b2c_string1(filename), &c_error);

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
        c2b_str(c_error, space);

        *(BCPLWORD*)b2c_address(error_ref) = space;
        LLVMDisposeMessage(c_error);
    }
    return result ? BCPLTRUE : 0;
}

''',

    'LLVMVerifyModule': '''
BCPLWORD llvm_verify_module(BCPLWORD llvm_module_ref, BCPLWORD llvm_verifier_failure_action, BCPLWORD out)
{
   return (BCPLWORD)LLVMVerifyModule((LLVMModuleRef)llvm_module_ref, (LLVMVerifierFailureAction)llvm_verifier_failure_action, NULL);
}

''',

    'LLVMGetBasicBlockName': '''
BCPLWORD llvm_get_basic_block_name(BCPLWORD bb, BCPLWORD vector)
{
    const char* const name = LLVMGetBasicBlockName((LLVMBasicBlockRef)bb);
    size_t const length = strlen(name);
    char* const vector_p = b2c_address(vector);
    vector_p[0] = length;
    memcpy(vector_p+1, name, length);
    return 0;
}

''',

    'LLVMPrintModuleToString': '''

BCPLWORD llvm_print_module_to_string(BCPLWORD module_ref)
{
    return c2b_address(LLVMPrintModuleToString((LLVMModuleRef)module_ref));
}

''',

    'LLVMDisposeMessage': '''
BCPLWORD llvm_dispose_message(BCPLWORD message)
{
    LLVMDisposeMessage(b2c_address(message));
}

''',

    'LLVMTracing': '''

BCPLWORD llvm_tracing(BCPLWORD flag)
{
    extern bool extfn_tracing;
    extfn_tracing = flag != 0;
    return 0;
}
''',

    'LLVMConstStringInContext': '''

BCPLWORD llvm_const_string_in_context(BCPLWORD c, BCPLWORD str, BCPLWORD length, BCPLWORD dont_null_terminate)
{
    // Because we want to initialise memory with a BCPL string, don't
    // convert it into a c string, just pass its real address
    const char* address = b2c_address(str);
    return (BCPLWORD)LLVMConstStringInContext((LLVMContextRef)c, address, (unsigned)length, (LLVMBool)dont_null_terminate);
}

''',

    'LLVMConstArray': '''

BCPLWORD llvm_const_array(BCPLWORD element_ty, BCPLWORD constant_vals, BCPLWORD length)
{
    LLVMValueRef* items = (LLVMValueRef*)b2c_address(constant_vals);
    return (BCPLWORD)LLVMConstArray((LLVMTypeRef)element_ty, items, (unsigned)length);
}

''',
    'LLVMPrintValueToString': '''

BCPLWORD llvm_print_value_to_string(BCPLWORD value)
{
    char* const message = LLVMPrintValueToString((LLVMValueRef)value);
    return build_message("llvm_print_value_to_string", message);
}

''',

    'LLVMAddIncoming': '''
BCPLWORD llvm_add_incoming(BCPLWORD phi_node, BCPLWORD incoming_values, BCPLWORD incoming_blocks, BCPLWORD count)
{
    LLVMValueRef*      values = (LLVMValueRef*)b2c_address(incoming_values);
    LLVMBasicBlockRef* blocks = (LLVMBasicBlockRef*)b2c_address(incoming_blocks);
    LLVMValueRef phi = (LLVMValueRef)phi_node;
    LLVMAddIncoming((LLVMValueRef)phi_node, values, blocks, (unsigned)count);
    return 0;
}

''',
}

def convert(camel):

    start = camel.replace('LLVM', 'llvm_')
    result = ''
    for i in range(len(start)-1):
        ch = start[i]
        result += ch
        if 'a' <= ch <= 'z' and 'A' <= start[i+1] <= 'Z':
            result += '_'
    result += start[-1]
    result = result.lower()

    if result in ('if', 'then', 'else', 'switch', 'case', 'default'):
        result += '_'

    result = result.replace('int64type', 'int64_type')
    return result

def generate_wrapper(return_type, function, arguments, has_args=True):

    if function in hand_written_wrappers: return hand_written_wrappers[function]

    result = ''
    arg_types = ','.join([argument[0] for argument in arguments])

    # We need to spot any input strings and convert them from bcpl strings
    used_arguments = []
    string_count = 0
    for argument in arguments:
        if 'char_ptr_t' in argument[0]:
            string_count += 1
            argument = [argument[0], f'b2c_string{string_count}({argument[1]})']
        used_arguments.append(argument)


    #has_strings = 'char_ptr_t' in return_type or (has_args and 'char_ptr_t' in arg_types)
    if has_args:
        # Parameters passed to us declared as BCPLWORDS
        parameter_list = ', '.join([f'BCPLWORD {convert(argument[1])}' for argument in arguments])
        # Arguments we pass to the function, cast to their LLVM type
        llvm_arguments = ', '.join([f'({argument[0]}){convert(argument[1])}' for argument in used_arguments])
    else:
        parameter_list = 'void'
        llvm_arguments = ''

    #if has_strings: result += '/*\n'
    result += f'BCPLWORD {convert(function)}({parameter_list})\n'

    result += '{\n'
    if return_type == 'void':
        result += f'    {function}({llvm_arguments});\n'
        result += '    return 0;\n'
    else:
        result += f'    return (BCPLWORD){function}({llvm_arguments});\n'
    result += '}\n'
    #if has_strings: result += '*/\n'
    result += '\n'

    return result

def generate_header(return_type, function, arguments, has_args=True):

    if has_args:
        parameter_list = ', '.join([f'BCPLWORD {convert(argument[1])}' for argument in arguments])
    else:
        parameter_list = 'void'

    return f'BCPLWORD {convert(function)}({parameter_list});\n\n'

wrappers = ''
enums = ['LLVM_START_MARKER = 4', 'LLVM_SET_MESSAGE_BUFFER', ]
headers = 'BCPLWORD llvm_set_message_buffer(BCPLWORD s);\n'
function_table = '    [LLVM_SET_MESSAGE_BUFFER] = {1, (void*)llvm_set_message_buffer},\n'
string_table = '    [LLVM_SET_MESSAGE_BUFFER] = "llvm_set_message_buffer",\n'
lets = 'LET llvm_set_message_buffer(s) = sys(Sys_ext, LLVM_SET_MESSAGE_BUFFER, s)\n'
api_count = 0

collected = ''
for n, line in enumerate(sys.stdin.readlines()):

    if line.startswith('void') or line.startswith('LLVM') or line.startswith('unsigned'):
        if collected != '': print(f'warning: unexpected start at line {n} after {collected}')
        collected = line[:-1]
    elif  collected != '':
        collected += line[:-1]

    if ';' in collected:

        # Somebody provides no builder operand
        collected = collected.replace('LLVMBuilderRef,', 'LLVMBuilderRef B,')
        # Clean up compound types by associating the pointer * with the type
        # not the argument
        while ' *' in collected: collected = collected.replace(' *', '* ')

        # and dealing with const
        collected = collected.replace('const char*', 'const_char_ptr_t ')
        collected = collected.replace('unsigned long long', 'unsigned_long_long_t')
        collected = collected.replace('unsigned long', 'unsigned_long_t')
        clean = collected.replace('(', ' ').replace(';', '').replace(')', ' ').replace(',', '')

        tokens = clean.split()
        return_type = tokens[0]
        function = tokens[1]
        arguments = []
        has_arguments = tokens[2:] != ['void']
        if not has_arguments:
            arguments = tokens[2:]
        else:
            for i in range(2, len(tokens), 2):

                arg_type = tokens[i]
                arg_name = tokens[i+1]
                arguments.append([arg_type, arg_name])

        # The C implementations
        wrappers += generate_wrapper(return_type, function, arguments, has_arguments)
        collected = ''

        # The C header file
        headers += generate_header(return_type, function, arguments, has_arguments)

        # The C function and string tables
        this_enum = convert(function).upper()
        enums.append(this_enum)
        function_table += f'    [{this_enum}] = {{{len(arguments)}, (void*){convert(function)}}},\n'
        string_table += f'    [{this_enum}] = "{function}",\n'

        # The BCPL LETs
        if has_arguments:
            bcpl_args = ', '.join([convert(a[1]) for a in arguments])
            sys_args = f'{this_enum}, {bcpl_args}'
        else:
            bcpl_args = ''
            sys_args = this_enum

        lets += f'LET {convert(function)}({bcpl_args}) = sys(Sys_ext, {sys_args})\n'

        api_count += 1

wrappers = wrappers.replace('const_char_ptr_t', 'const char*')
wrappers = wrappers.replace('char_ptr_t', 'char*')
wrappers = wrappers.replace('unsigned_long_long_t', 'unsigned long long')
wrappers = wrappers.replace('unsigned_long_t', 'unsigned long')

headers = headers.replace('const_char_ptr_t', 'const char*')
headers = headers.replace('char_ptr_t', 'char*')
headers = headers.replace('unsigned_long_t', 'unsigned long')
headers = headers.replace('unsigned_long_long_t', 'unsigned long long')

enums.append('LLVM_END_MARKER')
c_enums = ''.join(['    ' + e + ',\n' for e in enums])
b_enums = ''.join(['    ' + e + '\n' for e in enums])

llvmhdr = 'MANIFEST\n$(\n' + b_enums + '$)\n\n'
llvmhdr += lets

with open(sys.argv[1] + '.wrapper.imp', 'w') as w:
    w.write(wrappers)
with open(sys.argv[1] + '.wrapper.h', 'w') as w:
    w.write(headers)
#with open(sys.argv[1] + '.enums.b', 'w') as w:
#    w.write(b_enums)
with open(sys.argv[1] + '.enums.h', 'w') as w:
    w.write(c_enums)
with open(sys.argv[1] + '.function_table.imp', 'w') as w:
    w.write(function_table)
with open(sys.argv[1] + '.string_table.imp', 'w') as w:
    w.write(string_table)

with open(sys.argv[1] + '.llvmhdr.h', 'w') as w:
    w.write(llvmhdr)

print(f'{api_count} routines generated')