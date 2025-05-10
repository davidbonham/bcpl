
#include "llvm_bcpl_binding_utilities.h"
#include "llvm-c/Core.h"

#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>

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
uint8_t*
b2c_address(BCPLWORD b)
{
    // A BCPL address b is acrutally an index into the cintpos memory represented
    // by BCPLWORD array W
    extern BCPLWORD* const W; 
    return (uint8_t*)(W + b);
}

BCPLWORD
c2b_address(char* ptr)
{
    // Express as a byte offset from W and then as a word offset
    extern BCPLWORD* const W; 
    return (BCPLWORD)((BCPLWORD*)ptr - W);
}

/** Convert a BCPL string into a C string
 *
 * Given the BCPL address of a BCPL (counted) string, copy it into the
 * buffer provided as a C (0-terminated) string. The destination buffer
 * is assumed to be at least 256 bytes long (255 characters and a terminating
 * 0).
 *
 * @param bstr    BCPL address of a source BCPL string
 * @param cstr    Pointer to the output buffer to hold the C string
 * @return the address of the C string (cstr)
 */
char*
b2c_string(BCPLWORD bstr, char* cstr)
{
    const uint8_t* const bstr_ptr = b2c_address(bstr);
    const size_t length = bstr_ptr[0];
    for (size_t i = 0; i < length; i += 1)
    {
        cstr[i] = bstr_ptr[i+1];
    }
    cstr[length] = 0;
    return cstr;
}

/** Convert a C string into a BCPL string
 *
 * Given the address of a source buffer holding a C (0-terminated) string,
 * copy in into destination buffer specified by its BCPL address as a BCPL
 * (counted) string. The source string cannot be more than 255 characters
 * long (excluding the terminating zero) - if it is, 0 is returned as the
 * result.
 *
 * @param cstr    Pointer to the source buffer holding the C string
 * @param bstr    BCPL address of the desintation BCPL string
 * @return the BCPL address of the BCPL string (bstr) or 0 on error
 */
BCPLWORD
c2b_string(const char* cstr, BCPLWORD bstr)
{
    uint8_t* const bstr_ptr = b2c_address(bstr);
    size_t length;
    for (length = 0; cstr[length] != 0 && length < 256; length += 1)
    {
        bstr_ptr[length+1] = cstr[length];
    }
    bstr_ptr[0] = length;
    return length == 256 ? 0 : length;
}

char const*
b2c_string1(BCPLWORD b)
{
    static char string1[256];
    return b2c_string(b, string1);
}

char const*
b2c_string2(BCPLWORD b)
{
    static char string2[256];
    return b2c_string(b, string2);
}

char const*
b2c_string3(BCPLWORD b)
{
    static char string3[256];
    return b2c_string(b, string3);
}


BCPLWORD
LLVM_init(void)
{
    // Currently, nothing to do
    return BCPLTRUE;
}

BCPLWORD
bcpl_build_message(const char* label, char* message)
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

void
bcpl_print_message(char* label, char*message)
{
    printf("%s: %s\n", label, message);
    LLVMDisposeMessage(message);
}


BCPLWORD
llvm_set_message_buffer(BCPLWORD buffer)
{
    bcpl_string = b2c_address(buffer);
    return 0;
}

