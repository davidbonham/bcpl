
#pragma once
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>

typedef uint64_t BCPLWORD;
#define BCPLTRUE (-1)

uint8_t* b2c_address(BCPLWORD b);
BCPLWORD c2b_address(char* ptr);

char*    b2c_string(BCPLWORD bstr, char* cstr);
BCPLWORD c2b_string(const char* cstr, BCPLWORD bstr);

char const* b2c_string1(BCPLWORD b);
char const* b2c_string2(BCPLWORD b);
char const* b2c_string3(BCPLWORD b);

BCPLWORD LLVM_init(void);

BCPLWORD bcpl_build_message(const char* label, char* message);
void     bcpl_print_message(char* label, char*message);

BCPLWORD llvm_set_message_buffer(BCPLWORD buffer);

