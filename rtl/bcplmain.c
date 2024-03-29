#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <errno.h>
#include <stdbool.h>
#include <string.h>

typedef int64_t bcplword_t;

extern bcplword_t __bcpl_global_vector[256];
extern bcplword_t __bcpl_elaborators;

static bcplword_t __attribute__((section("BCPLGVEC"))) __bcpl_elaborators_end;


// 9.1 Standard Stream Organisation Procedures
enum {
    G_CIS           =  12,
    G_COS           =  13,
    G_FINDINPUT     =  48,
    G_FINDOUTPUT    =  49,
    G_SELECTINPUT   =  56,
    G_SELECTOUTPUT  =  57,
    G_ENDREAD       =  60,
    G_ENDWRITE      =  61,
    G_REWIND        =  65,
    G_INPUT         =  58,
    G_OUTPUT        =  59,

// 9.2 Standard Input/Output Procedures

    G_RDCH          =  38,
    G_WRCH          =  41,
    G_UNRDCH        =  40,
    G_READN         =  83, // BLIB
    G_WRITES        =  89, // BLIB
    G_WRITED        =  85, // BLIB
    G_WRITEN        =  86, // BLIB
    G_WRITEOCT      =  88, // BLIB
    G_WRITEHEX      =  87, // BLIB
    G_WRITEF        =  94, // BLIB
    G_NEWLINE       =  84, // BLIB
    G_NEWPAGE       = 120, // BLIB

// 10.1 Start and Stop

    G_START         =   1,
    G_STOP          =   2,
    G_RESULT2       =  10,

// 10.2 Stack Organisation Routines

    G_LEVEL         =  15,
    G_LONGJUMP      =  16,
    G_APTOVEC       =  45,

// 10.3 String Handling

    G_UNPACKSTRING  =  30,
    G_PACKSTRING    =  31,
    G_GETBYTE       =  48,
    G_PUTBYTE       =  49,

// A.8 Scaled Arithmetic

    G_MULDIV        =   5,
};

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

bcplword_t __rdch(void)
{
    if (is_pending_character)
    {
        is_pending_character = false;
        return (bcplword_t)pending_character;
    }
    else
    {
        FILE* const CIS = (FILE*)__bcpl_global_vector[G_CIS];
        return (bcplword_t)fgetc(CIS);
    }    
}

bcplword_t __unrdch(bcplword_t ch)
{
    pending_character = (char)ch;
    is_pending_character = true;
    return 0;
}

bcplword_t __wrch(bcplword_t ch)
{
    FILE* const COS = (FILE*)__bcpl_global_vector[G_COS];
    fputc((char)ch, COS);
    return 0;
}

bcplword_t findstream(bcplword_t path, const char* mode)
{
    const char* const c_path = c_string(path);
    FILE* is = fopen(c_path, mode);
    if (is == NULL)
    {
        // Return the value of errno in result2
        __bcpl_global_vector[G_RESULT2] = errno;
    }
    return (bcplword_t)is;
}

bcplword_t __findinput(bcplword_t path)
{
    return findstream(path, "r");
}

bcplword_t __findoutput(bcplword_t path)
{
    return findstream(path, "w");
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



int main(int argc, char* argv[])
{
    // Setup standard input and standard output
    __bcpl_global_vector[G_CIS]             = (bcplword_t)stdin;
    __bcpl_global_vector[G_COS]             = (bcplword_t)stdout;

    // Elaborate BCPL sections
    if (&__bcpl_elaborators == &__bcpl_elaborators_end)
    {
        fprintf(stderr, "fatal: no module elaborators present - start is not present.\n");
    }
    else
    {
        bcplword_t* v;
        for (v = &__bcpl_elaborators; v < &__bcpl_elaborators_end; v += 2)
        {
            // This entry tells us to set the value of an element of the 
            // global vector
            __bcpl_global_vector[v[0]] = v[1];
        }

        // Get START
        bcplword_t (*start)(bcplword_t) = (bcplword_t (*)(bcplword_t))__bcpl_global_vector[G_START];
        if (start == 0)
        {
            fprintf(stderr, "fatal: start is not defined.\n");
        }
        else
        {
            //for (int i = 0; i < 256; i += 1)
            //{
            //    if (__bcpl_global_vector[i] != 0) printf("[%d] = 0x%016lx\n", i, __bcpl_global_vector[i]);
            //}

            bcplword_t result = start(0);
            putchar('\n');
            return result;
        }

    }
}


