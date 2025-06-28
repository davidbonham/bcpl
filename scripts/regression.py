#!/usr/bin/env python3
import os
import subprocess
import argparse
import sys
from pathlib import Path
import logging
import shutil
from typing import List

'''
A test case consists of:

1. A BCPL source file <name>.b
2. The expected output from its execution, <name>.expected

Detritus is placed in the results directory <name>.actual

'''

def compile_source(source_file, compiler, output_file=None):
    """Compile the source file using the specified compiler."""
    print(f"Compiling {source_file}...")
    
    if compiler == "gcc":
        output = output_file if output_file else source_file.stem
        cmd = ["gcc", str(source_file), "-o", output]
    elif compiler == "g++":
        output = output_file if output_file else source_file.stem
        cmd = ["g++", str(source_file), "-o", output]
    elif compiler == "javac":
        cmd = ["javac", str(source_file)]
    elif compiler == "python":
        # No compilation needed for Python
        return True, None
    else:
        return False, f"Unsupported compiler: {compiler}"
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True)
        if result.returncode != 0:
            return False, f"Compilation error: {result.stderr}"
        return True, None
    except Exception as e:
        return False, f"Error during compilation: {str(e)}"


def run_program(source_file, compiler, input_file=None):
    """Run the compiled program and return its output."""
    print(f"Running {source_file}...")
    
    if compiler == "gcc" or compiler == "g++":
        executable = source_file.stem
        if os.name == "nt":  # Windows
            executable += ".exe"
        cmd = [f"./{executable}"]
    elif compiler == "javac":
        cmd = ["java", source_file.stem]
    elif compiler == "python":
        cmd = ["python", str(source_file)]
    else:
        return False, f"Unsupported compiler: {compiler}", ""
    
    try:
        # Handle input file if provided
        stdin = None
        if input_file and os.path.exists(input_file):
            stdin = open(input_file, 'r')
        
        result = subprocess.run(cmd, stdin=stdin, capture_output=True, text=True)
        
        if stdin:
            stdin.close()
            
        if result.returncode != 0:
            return False, f"Runtime error: {result.stderr}", ""
        
        return True, None, result.stdout
    except Exception as e:
        return False, f"Error running program: {str(e)}", ""


def compare_output(output, expected_file):
    """Compare the program's output with the expected output file."""
    print(f"Comparing output with {expected_file}...")
    
    if not os.path.exists(expected_file):
        return False, f"Expected output file not found: {expected_file}"
    
    with open(expected_file, 'r') as f:
        expected_output = f.read()
    
    # Normalize line endings
    output = output.replace('\r\n', '\n').rstrip('\n')
    expected_output = expected_output.replace('\r\n', '\n').rstrip('\n')
    
    if output == expected_output:
        return True, None
    else:
        diff = list(difflib.unified_diff(
            expected_output.splitlines(True),
            output.splitlines(True),
            fromfile='Expected',
            tofile='Actual'
        ))
        return False, ''.join(diff)


def process_file(source_file, expected_file, input_file=None, compiler=None):
    """Process a single source file."""
    source_path = Path(source_file)
    
    if not compiler:
        compiler = detect_compiler(source_path)
        if not compiler:
            return f"Could not detect compiler for {source_file}. Please specify a compiler."
    
    # Compile the source file
    compile_success, compile_error = compile_source(source_path, compiler)
    if not compile_success:
        return f"Failed to compile {source_file}: {compile_error}"
    
    # Run the program
    run_success, run_error, program_output = run_program(source_path, compiler, input_file)
    if not run_success:
        return f"Failed to run {source_file}: {run_error}"
    
    # Compare output with expected results
    compare_success, compare_result = compare_output(program_output, expected_file)
    if compare_success:
        return f"✅ {source_file}: Output matches expected results."
    else:
        return f"❌ {source_file}: Output does not match expected results:\n{compare_result}"


def generate_tests(root: str, selection: str) -> List[str]:
    '''
    Given a directory tree containing BCPL source files with suffic '.b'
    return a list of pathnames to each source file relative to the root
    directory and with the suffix removed.
    '''
    tests = []
    for parent, _, files in os.walk(root):
        for file in files:
            if file.endswith('.b'):
                # Trim root directory and file extension
                relative_path = os.path.join(parent, file)[len(root)+1:-2]
                if not selection or relative_path.endswith(selection):
                    tests.append(relative_path)
    return tests

def perform_one_test(source: str, inputs: str, results: str) -> bool:

    bcpl_source = os.path.join(inputs, source + '.b')
    bcpl_executable = os.path.join(results, source)
    expected_output = os.path.join(inputs, source + '.expected')
    actual_output = os.path.join(results, source + '.actual')

    # Make sure the executable doesn't already exist
    if os.path.exists(bcpl_executable):
        logger.warning(f'removing existing executable {bcpl_executable}')
        os.remove(bcpl_executable)

    # Build the executable
    command = ["scripts/bcplcl", '--optimise', '--object', bcpl_executable, bcpl_source]
    logging.debug(f'running {" ".join(command)}')
    result = subprocess.run(command,capture_output=True,text=True)

    # If the executable does not exist, we failed to compile it so save the
    # compiler output as the actual result
    if not os.path.exists(bcpl_executable):
        logger.error(f'❌ failed to compile {bcpl_source} to {bcpl_executable}')
        with open(actual_output, 'w') as actual:
            print('-- stdout -------------------------------------------', file=actual)
            print(result.stdout, file=actual)
            print('-- stderr -------------------------------------------', file=actual)
            print(result.stderr, file=actual)
            return False;

    # Run the executable
    logging.debug(f'running {bcpl_executable}')
    result = subprocess.run(bcpl_executable, capture_output=True, text=True)
    with open(actual_output, 'w') as actual:
        print('-- stdout -------------------------------------------', file=actual)
        print(result.stdout, file=actual)
        print('-- stderr -------------------------------------------', file=actual)
        print(result.stderr, file=actual)

    # Now compare with the expected results. If there is no actual output, we
    # treat it as a pass but warn

    if os.path.exists(expected_output):
        with open(expected_output, 'r') as expected:
            expected_text = expected.read()
        with open(actual_output, 'r') as actual:
            actual_text = actual.read()

        passed = expected_text == actual_text
        logger.info(f'✅ {bcpl_source}' if passed else f'❌ {bcpl_source}')
    else:
        logger.warning(f'✅ {bcpl_source} - pass but no expected results')
        passed = True

    return passed


def perform_tests(tests: List[str], inputs: str, results: str) -> int:
    passes = 0
    fails = 0

    for test in tests:
        passed = perform_one_test(test, inputs, results)
        if passed:
            passes += 1
        else:
            fails += 1

    (logger.info if fails == 0 else logger.error) (f'{passes}/{passes + fails} tests passed')
 
    return fails == 0

def build_results_tree(tests: List[str], results:str) -> None:

    for test in tests:
        output_dir = os.path.join(results, os.path.dirname(test))
        Path(output_dir).mkdir(parents=True, exist_ok=True)


def runtests(tests: str, results:str, selection: str) -> int:

    if not os.path.isdir(tests):
        print(f"Error: {tests} is not a directory")
        return 1
    else:    
        logger.info(f'generating results {results} from tests {tests}')
        test_list = generate_tests(tests, selection)
        build_results_tree(test_list, results)
        return perform_tests(test_list, tests, results)


def remaster(tests_path: str, results_path: str, selection: str) -> int:

    test_list = generate_tests(tests_path, selection)
    for test in test_list:
        actual_path = os.path.join(results_path, test + '.actual')
        expected_path = os.path.join(tests_path, test + '.expected')
        if os.path.exists(actual_path):
            if os.path.exists(expected_path):
                logger.info(f'replacing {expected_path} with {actual_path}')
            else:
                logger.info(f'creating {expected_path} from {actual_path}')
            shutil.copy(actual_path, expected_path)
        else:
            logger.warning(f'no actual result {actual_path} so {expected_path} not updated')

    return True


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Test source files by compiling, running, and comparing output.')
    parser.add_argument('tests', help='Directory tree containing test source files')
    parser.add_argument('results', help='Directory tree containing the detritus')
    parser.add_argument('--select', help='Run this single test')
    parser.add_argument('--remaster', action='store_true', help='Remaster the expected results using the existing actual results')
    parser.add_argument('--logging', choices=['debug', 'info', 'warning', 'error'], default='warning', help='Level for logging')

    args = parser.parse_args()
    logger = logging.getLogger(__name__)
    logging.basicConfig(format='%(asctime)s %(levelname)-8s %(message)s', datefmt='%H:%M:%S', level=getattr(logging, args.logging.upper()))

    if args.remaster:
        status = remaster(args.tests, args.results, args.select)
    else:
        status = runtests(args.tests, args.results, args.select)
    logger.info(f'status is {status}')
