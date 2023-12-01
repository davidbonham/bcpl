
#include "cintmain.h"
extern char *b2c_str(BCPLWORD bstr, char *cstr);
extern void c2b_str(char const *cstr, BCPLWORD bstr);
extern BCPLWORD getvec(BCPLWORD upb);

 
#include "llvm_bcpl_binding.h"

#include "llvm-c/Core.h"
#include "llvm-c/Analysis.h"
//#include "llvm-c/Transforms/Scalar.h"
//#include "llvm-c/Transforms/InstCombine.h"
//#include "llvm-c/Transforms/Utils.h"

#include <stdint.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>

#define BCPLTRUE (-1)

static char* bcpl_string;

/** Convert a BCPL address into a read address
 * 
 * Givne a BCPLWORD that is the BCPL address of a location, for example, addr
 * in the following:
 *
 *     LET b = 3
 *     LET addr = @b
 *
 * return a pointer to the first byte in the cell. 
 *
 * @param b     BCPL cell address of a cell
 * @return      True address of first byte in cell
*/
uint8_t* b2c_address(BCPLWORD b)
{
    // A BCPL address b is acrutally an index into the cintpos memory represented
    // by BCPLWORD array W
    extern BCPLWORD* const W; 
    return (uint8_t*)(W + b);
}

BCPLWORD c2b_address(char* ptr)
{
    // Express as a byte offset from W and then as a word offset
    extern BCPLWORD* const W; 
    return (BCPLWORD)((BCPLWORD*)ptr - W);
}

char const* b2c_string1(BCPLWORD b)
{
    static char string1[256];
    return b2c_str(b, string1);
}

char const* b2c_string2(BCPLWORD b)
{
    static char string2[256];
    return b2c_str(b, string2);
}

BCPLWORD LLVM_init(void)
{
    // Currently, nothing to do
    return BCPLTRUE;
}

static BCPLWORD build_message(const char* label, char* message)
{
    if (bcpl_string == NULL)
    {
         printf("%s: no BCPL string buffer - %s\n", label, message);
    }
    else
    {

        size_t size = strlen(message);
        if (size > 255)
        {
            // Too long for a BCPL string
            printf("%s: truncated - %s\n", label, message);
            size = 255;
        }
        else 

        memcpy(bcpl_string+1, message, size);
        bcpl_string[0] = size;
    }

    LLVMDisposeMessage(message);
    return (BCPLWORD)0;
}

static 
void print_message(char* label, char*message)
{
    printf("%s: %s\n", label, message);
    LLVMDisposeMessage(message);
}

/** Binding to LLVMContext
 *
 * Create a new LLVM context and return a reference to it as an opaque type.
 * Because we don't intend it to be used for anything other than an argument
 * to another of our functions, we don't need to convert it into a BCPL cell
 * address.
 */
#include "autogen.wrapper.imp"


BCPLWORD llvm_set_message_buffer(BCPLWORD buffer)
{
    bcpl_string = b2c_address(buffer);
    return 0;
 }
