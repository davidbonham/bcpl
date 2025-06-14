#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <errno.h>
#include <stdbool.h>
#include <string.h>

typedef int64_t bcplword_t;
#define NUMGLOBALS 1024
extern bcplword_t __bcpl_global_vector[NUMGLOBALS];

#include "global_enums.h"

// -- Our initial RTL is layered on top of the C RTL ---------------------------

bcplword_t __muldiv(bcplword_t a, bcplword_t b, bcplword_t c)
{
    // This function calculates (A*B)/C, holding the intermediate product
    // (A*B) as a double length integer. If the result does not fit in a 
    // normal integer the action of MULDIV is undefined. The remainder from 
    // the division is left in global variable RESULT2.
    const __int128_t la = a;
    const __int128_t lb = b;
    const __int128_t lc = c;
    const __int128_t product = la * lb;
    const __int128_t remainder = product % lc;
    const __int128_t result = product / lc;
    
    __bcpl_global_vector[G_RESULT2] = remainder;
    return result;  
}

void __stop(bcplword_t exitcode)
{
    exit(exitcode);
}

static bool is_pending_character;
static char pending_character;

static char* c_string(bcplword_t bcplstring)
{
    static char buffer[256];
    const char* const address = (const char*)(bcplstring << 3);
    size_t length = address[0];
    memcpy(buffer, address+1, length);
    buffer[length] = '\0';
    return buffer;
}


static char* cmdline_buffer;
static const char* cmdline_next;
static long int rdch_ch;

static void __rditem_add(const char* string)
{
    strcat(cmdline_buffer, string);
}

bcplword_t __rdch(void)
{
    if (is_pending_character)
    {
        is_pending_character = false;
        rdch_ch = pending_character;
    }
    else if (cmdline_buffer != NULL)
    {
        // There are still some command line arguments to read
        rdch_ch = *cmdline_next++;
        if (rdch_ch == '\xff') rdch_ch = -1;
        if (*cmdline_next == 0)
        {
            free(cmdline_buffer);
            cmdline_buffer = 0;
        }
    }
    else
    {
        FILE* const CIS = (FILE*)__bcpl_global_vector[G_CIS];
        rdch_ch = fgetc(CIS);
    }
    //printf("rdch '%c' (0x%02lx) is_pending=%d cmdline_buffer=%p\n", (char)rdch_ch, rdch_ch, is_pending_character, cmdline_buffer);
    return (bcplword_t)rdch_ch;
}

bcplword_t __unrdch(bcplword_t ch)
{
    pending_character = rdch_ch;
    is_pending_character = true;
    return 0;
}

bcplword_t __wrch(bcplword_t ch)
{
    FILE* const COS = (FILE*)__bcpl_global_vector[G_COS];
    fputc((char)ch, COS);
    return 0;
}

bcplword_t __selectinput(bcplword_t is)
{
    __bcpl_global_vector[G_CIS] = is;
    return 0;
}

bcplword_t __selectoutput(bcplword_t is)
{
    __bcpl_global_vector[G_COS] = is;
    return 0;
}

bcplword_t __endstream(bcplword_t stream)
{
    fclose((FILE*)stream);
    return 0;
}

bcplword_t __endread(void)
{
    fclose((FILE*)__bcpl_global_vector[G_CIS]);
    __bcpl_global_vector[G_CIS] = 0;
    return 0;
}

bcplword_t __endwrite(void)
{
    fclose((FILE*)__bcpl_global_vector[G_COS]);
    __bcpl_global_vector[G_COS] = 0;
    return 0;
}

bcplword_t __rewind(void)
{
    rewind((FILE*)__bcpl_global_vector[G_CIS]);
    return 0;
}


bcplword_t __input(void)
{
    return __bcpl_global_vector[G_CIS];
}

bcplword_t __output(void)
{
    return __bcpl_global_vector[G_COS]; 
}

bcplword_t __aptovec(bcplword_t function, bcplword_t size)
{
    uint64_t space = (uint64_t)alloca(size*sizeof(bcplword_t));
    bcplword_t bcpl_address = (bcplword_t)(space >> 3);

    return ((bcplword_t (*)(bcplword_t, bcplword_t))function) (bcpl_address, size);
}

bcplword_t __unpackstring(bcplword_t string, bcplword_t vector)
{
    const char* const string_ptr = (const char*)(string << 3);
    bcplword_t* const vector_ptr = (bcplword_t*)(vector << 3);

    // Loop starts from 0 to copy the length too
    for (int i = 0; i <= string_ptr[0]; i += 1)
    {
        vector_ptr[i] = string_ptr[i];
    }
    return vector_ptr[0];
}

bcplword_t __packstring(bcplword_t vector, bcplword_t string)
{
    const bcplword_t* const vector_ptr = (const bcplword_t*)(vector << 3);
    char* const string_ptr = (char*)(string << 3);

    // Loop starts from 0 to copy the length too
    for (int i = 0; i <= vector_ptr[0]; i += 1)
    {
        string_ptr[i] = vector_ptr[i];
    }
    return vector_ptr[0];
}

bcplword_t __getbyte(bcplword_t vector, bcplword_t index)
{
    const char* const string_ptr = (const char*)(vector << 3);
    return (bcplword_t)string_ptr[index];
}

bcplword_t __putbyte(bcplword_t vector, bcplword_t index, bcplword_t byte)
{
    char* const string_ptr = (char*)(vector << 3);
    string_ptr[index] = (char)byte;
    return 0;
}

bcplword_t __getvec(bcplword_t size)
{
    // Section A7 says we return one more word so that V!0 and V!size are
    // both legal.
    void* c_vec = malloc((size+1)*sizeof(bcplword_t));
    return (bcplword_t)c_vec >> 3;
}

bcplword_t __freevec(bcplword_t vec)
{
    void* c_vec = (void*)(vec << 3);
    free(c_vec);
    return 0;
}

bcplword_t __writeflt(bcplword_t value)
{
    // Direct casting will perform an integer->>double conversion, which
    // we don't want.
    const union { double d; bcplword_t b; } data = {.b=value};
    FILE* const standard_output = (FILE*)__bcpl_global_vector[G_COS];
    fprintf(standard_output, "%f", data.d);
    return 0;
}

bcplword_t __undefined(void)
{
    fprintf(stderr, "attempt to call routine via undefined global\n");
    exit(1);
}

static bcplword_t openpath(const char* path, const char* mode)
{
    const bcplword_t f = (bcplword_t)fopen(path, mode);
    // Return the value of errno in result2
    __bcpl_global_vector[G_RESULT2] = errno;
    return f;
}

bcplword_t __findstream(bcplword_t path, bcplword_t mode, bcplword_t searchvar)
{
    const bcplword_t id_inscb        = 0x81;
    const bcplword_t id_outscb       = 0x82;
    const bcplword_t id_inoutscb     = 0x83;
    const bcplword_t id_appendscb    = 0x84;

    // Check for invalid mode
    if (mode < id_inscb || mode > id_appendscb) return 0;

    const char* mode_strings[] = {"r", "w", "rw", "w+"};
    const char* selected_mode = mode_strings[mode - id_inscb];

    // Convert the bcpl path to a c string
    char c_path[256];
    strncpy(c_path, c_string(path), 255);

    // If there is no search path or the path is absolute, do the open immediately
    if (searchvar == 0 || c_path[0] == '/') return openpath(c_path, selected_mode);

    // Get the name of the environment variable
    const char* const variable_name = c_string(searchvar);

    // Get its value. We must not modify the value returned so we need to
    // copy it for strtok to modify. We'll restrict ourselves to the first
    // 4K of text.
    const char* const variable_text = getenv(variable_name);
    if (variable_text == NULL) return openpath(c_path, selected_mode);
    if (strlen(variable_text) >= 4096) return 0;
    char search_string[4096];
    strcpy(search_string, variable_text);

    for (const char* directory = strtok(search_string, ":;"); directory != NULL; directory = strtok(NULL, ":;"))
    {
        char full_path[256+256];
        strcpy(full_path, directory);
        strcat(full_path, "/");
        strcat(full_path, c_path);
        FILE* file = fopen(full_path, selected_mode);
        if (file != NULL) return (bcplword_t)file;
    }

    // Return the value of errno in result2
    __bcpl_global_vector[G_RESULT2] = errno;
    return 0;
}



// -- The main entry point -----------------------------------------------------

int main(int argc, char* argv[])
{
    // Make the command line arguments appear as the initial data on standard
    // input (which is how the rdarg/rditem mechanism expects them)
    if (argc > 1)
    {
        size_t length = 2;
        for (int i = 1; i < argc; i += 1) length += 1 + strlen(argv[i]);
        cmdline_next = cmdline_buffer = malloc(length);
        cmdline_buffer[0] = 0;
        for (int i = 1; i < argc; i += 1)
        {
            if (i > 1) __rditem_add(" ");         // Treat args fred and jane as 'fred jane' not 'fredjane'
            __rditem_add(argv[i]);
        }
        __rditem_add("\n\n");            // Terminate the line
    }

    //for (int i = 0; i < NUMGLOBALS; i += 1)
    //{
    //    if (__bcpl_global_vector[i] != 0) printf("[%d] = 0x%016lx\n", i, __bcpl_global_vector[i]);
    //}

    // Start with all of the unset elements of the global vector referencing
    // a debugging function
    for (int i = 0; i < NUMGLOBALS; i += 1) if (__bcpl_global_vector[i] == 0) __bcpl_global_vector[i] = (bcplword_t) __undefined;

    // Setup standard input and standard output
    __bcpl_global_vector[G_CIS]             = (bcplword_t)stdin;
    __bcpl_global_vector[G_COS]             = (bcplword_t)stdout;

    // Get START
    bcplword_t (*start)(bcplword_t) = (bcplword_t (*)(bcplword_t))__bcpl_global_vector[G_START];
    if (start == 0)
    {
        fprintf(stderr, "fatal: start is not defined.\n");
    }
    else
    {
        bcplword_t result = start(0);
        putchar('\n');
        return result;
    }
}


// -- Support previously provided by CINTSYS64 ---------------------------------

bcplword_t getvec(bcplword_t size) __attribute((alias("__getvec")));
bool extfn_tracing;

