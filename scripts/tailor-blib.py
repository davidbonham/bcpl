#!/usr/bin/env python3

'''
To avoid commiting copyright material, we write out own BLIB as a template
containing lines like

%insert rdargslen

that copy the implementation of the function from the official source of
blib into our derived blib.b fil;e which is then compiled to IR.

'''
import argparse
import re
import sys

def locate(map: dict[str, tuple[int,int]], name: str) -> tuple[int,int]:
    if name not in blib_map:
        print(f'error: routine {name} not found in official blib', file=sys.stderr)
        sys.exit(1)
    else:
        return blib_map[name]

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Merge selected routines from official BLIB into ours')
    parser.add_argument('template',  help='path to our template blib')
    parser.add_argument('release',   help='path to the official blib.b')
    parser.add_argument('--verbose', action='store_true')
    args = parser.parse_args()

    with open(args.release, 'r') as source:
        official_blib = source.readlines()

    # Build an index mapping the routine name to starting and ending lines
    blib_map = {}
    start_line = None
    routine_re = re.compile(r'(AND|LET)\s+([A-Za-z0-9_]+)\s*\(')
    for line, text in enumerate(official_blib):
        if match := routine_re.search(text):
            if start_line:
                blib_map[name] = (start_line, line-1)
                if args.verbose:
                    print(f'lines {start_line:4d}-{line-1:4d} {name}', file=sys.stderr)
            name = match.group(2)
            start_line = line

    # Don't forget the last one
    if start_line:
        blib_map[name] = (start_line, line)
        if args.verbose:
            print(f'lines {start_line:4d}-{line-1:4d} {name}', file=sys.stderr)

    blib_map['%%EOF%%'] = (line+1, line+1)

    next_line = 0
    with open(args.template, 'r') as template:
        for line in template.readlines():
            if line.startswith('%'):

                # This is a directive
                directive, name = line.split()
                if name in blib_map:
                    start, finish = blib_map[name]
                else:
                    line_number = int(name)
                    start, finish = line_number, line_number

                if directive == '%insert':
                    for srcline in range (start, finish+1):
                        print (official_blib[srcline], end='')
                    if args.verbose:
                        print(f'inserted {name}', file=sys.stderr)
                    next_line = finish

                elif directive == '%skipto':
                    if args.verbose:
                        print(f'skipped lines {next_line}-{start-1}', file=sys.stderr)
                    next_line = start

                elif directive == '%copyto':
                    for srcline in range(next_line, start):
                        print(official_blib[srcline], end='')
                    if args.verbose:
                        print(f'copied lines {next_line}-{start-1}', file=sys.stderr)
                    next_line = start

                elif directive == '%after':
                    if args.verbose:
                        print(f'skipped past routine {name} lines {next_line}-{finish}', file=sys.stderr)
                    next_line = finish + 1
            else:
                print(line,end='')




