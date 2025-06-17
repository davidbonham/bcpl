#!/usr/bin/env python3

'''

Generate a pair of libhdr and bcplinit.s files that are consistent with the
proposed standard and the CINTSYS header file needed to build the BCPL compiler
under CINTSYS64.

It consumes:

o  a cross-reference file for the CINTSYS64 LIBHDR file
o  a template of our own LIBHDR file, specifying the items we need
o  a template of our own bcplinit.s file, specifying GLOBAL definitions

to generate the LIBHDR and bcplinit.s files we need.

The CINTPOS header file is compiled to generate a cross-reference file:

$ cintsys64 -c bcpl t64 ${BCPL64HDRS}/libhdr.h xref  >cintsys.tmp

the cross-reference file looks like this:

W2Bsh M:3 DEF libhdr.h[28] W2Bsh=B2Wsh
ON64 M:-1 DEF libhdr.h[29] ON64=64=64
glob0 G:0 DEF libhdr.h[37] glob0=0
globsize G:0 DEF libhdr.h[38] globsize=0
start G:1 DEF libhdr.h[39] start=1

Run this script twice, once to generate our own LIBHDR:

$ python genlibhdr.py cintsys.tmp <src/libhdr.template >stc/inc/libhdr.h

and again to generate the bcplinit.s file that defines the global vector:

$ python genlibhdr.py --vector src/bcplinit.template cintsys.tmp <src/libhdr.template >rtl/bcplinit.s

'''
import argparse
import re
import sys


def convert(globals, manifests, vector_template, enum_case, verbose):

    # Match GLOBAL <xx>,__<name> from the bcplinit template
    vector_pattern = re.compile(r'^[ ]+GLOBAL\s+([^, ]+)\s*,\s*__(\S+)')

    # Match <name>: <value?> or <name> = <value> from the libhdr template
    pattern = re.compile(r'^[ ]*([^:= ]+)\s*([=:])\s*(\S+)')

    # Read in the libhdr template from standard input
    libhdr_template = sys.stdin.readlines()

    # In our first pass over the libhdr template, we find all of the globals
    # in the template that are also in the cintsys header and build a map
    # from name to cintsys global number
    used_global_value = {} # map name to value

    for line in libhdr_template:
        if match := pattern.match(line):
            name,case,value = match.groups()
            if case == ':' and name in globals:
                used_global_value[name] = globals[name]

    # Build an inverse map from the used global values to the names
    used_global_name = {}  # map value to list of names
    for k, v in used_global_value.items():
        used_global_name[v] = used_global_name.get(v, []) + [k]

    # We keep the value of the next free global to be used when we need to
    # allocate one
    next_free = 0
    while str(next_free) in used_global_name:
        next_free += 1

    # Capture the generated libhdr in a list
    libhdr_output = []

    # Our exit status - 0 is success
    status = 0

    # IN our second pass over the libhdr template globals:
    # a) if the template specifies a value, check that any cintsys64 definition
    #    has the same value
    # b) if no value is specified (text is '?') then assign the cintsys64 value
    #    if it is present otherwise allocate a free one.
    for line in libhdr_template:
        line = line.rstrip()
        if match := pattern.match(line):
            name,case,value = match.groups()
            table = used_global_value if case == ':' else manifests
            if value == '?':
                # We need to allocate a vale to this global. If it is one
                # present in the cintsys header, uise that value otherwise
                # allocate the next free one
                if name in table:
                    value = table[name]
                else:
                    value = str(next_free)
                    next_free += 1
                    while str(next_free) in used_global_name:
                        next_free += 1
                    if verbose:
                        print(f'"{name}" not found in the cintsys header - allocated global {value}', file=sys.stderr)

                    # This global is now in use
                    used_global_name[value] = used_global_name.get(value, []) + [name]
                    used_global_value[name] = value

            elif name in table and table[name] != value:
                    print(f'error: "{name}" is {value}, but cintpos header value is {table[name]}', file=sys.stderr)
                    status = 1
                    continue

            # We are generating the libhdr
            libhdr_output.append(f'    {name} {case} {value}')

        else:
            libhdr_output.append(line)


    if vector_template and status == 0:

        # We now have all of the information we need to generate the global
        # vector
        with open(vector_template, 'r') as gv:
            for line in gv.readlines():
                if match := vector_pattern.match(line):
                    number, name = match.groups()
                    if number == '?':
                        if name not in used_global_value:
                            print(f'error: global vector entry __{name} has no global defined in libhdr', file=sys.stderr)
                            status = 1
                        else:
                            number = used_global_value[name]
                    else:
                        if name in used_global_value:
                            if used_global_value[name] != number:
                                print(f'error: global vector entry for __{name} specified global {number} but the libhdr definition is {used_global_value[name]} in libhdr', file=sys.stderr)
                                status = 1

                    if status == 0:
                        print(f'    GLOBAL {number:>3}, __{name}')
                else:
                    print (line, end='')

    elif enum_case:

        # Write out the C enum that's used by bcplmain() to set up the
        # run-time environment before entering start()
        keys = sorted([int(key) for key in used_global_name])
        print ('enum\n{')
        for number in keys:
            print(f'    G_{used_global_name[str(number)][0].upper():20} = {number:>3},')
        print ('};')

    else:

        # Output the libhsr we have generated
        for line in libhdr_output:
            print(line)

    return status






def main(vector_template, cintpos_xref_path, enum, verbose):

    # Process the XREF file to extract all of the manifest constants and
    # globals it defines.
    cintsys_manifests = {} # map name to number
    cintsys_globals = {}   # map name to number
    with open(cintpos_xref_path, 'r') as c:
        for line in c.readlines():
            line = line.strip()

            if 'M:' in line:
                name, defn, rest = line.split(' ', 2)
                defn = defn[2:]
                cintsys_manifests[name] = defn

            elif 'G:' in line:
                name, defn, rest = line.split(' ', 2)
                defn = defn[2:]
                cintsys_globals[name] = defn

    # Use this information to convert our templates into the requested output
    convert(cintsys_globals, cintsys_manifests, vector_template, enum, verbose)


if __name__ == '__main__':

    parser = argparse.ArgumentParser(formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('--vector', type=str, help='path to global vector template, generate a global vector not libhdr')
    parser.add_argument('--enum', action='store_true', help='generate a C enum not libhdr')
    parser.add_argument('--verbose', action='store_true', help='Show allocated globals')
    parser.add_argument('xref', help='Path to the xref output from the cintpos libhdr')
    args = parser.parse_args()

    status = main(args.vector, args.xref, args.enum, args.verbose)
    sys.exit(status)
