/*
This contains the implemetation of the sys(Sys_ext, fno, ...) facility.

###### Still under development ############

Implemented by Martin Richards (c) April 2014

This file can be modified by users to provide any extension to the
BCPL library that the user would like.

BCPL calls to this library are of the form

res := sys(Sys_ext, fno, a1, a2, a3, a4,...)

This calls extfn(args, g)
where args[0] = fno, args[1]=a1,... etc
and   g points to the base of the global vector.

fno=0  Test that a version of the EXT extension is available
       res is TRUE if it is.

fno=1 ...

The function numbers such as EXT_avail, EXT_init and EXT_testfn are declared
as mainfests in g/ext.h
*/

#include "cintmain.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#ifndef EXTavail
#warning "EXTavail is not defined in extfn.c"
BCPLWORD extfn(BCPLWORD *args, BCPLWORD *g, BCPLWORD *W) {
  printf("extfn: EXTavail was not defined\n");
    return 0;   // EXT is not available
}
#endif

#ifdef EXTavail
// These must agree with the declarations in g/ext.h
#define EXT_Avail               0
#define EXT_Init                1
#define EXT_Testfn              2
#define EXT_Hello               3

#include "autogen.wrapper.h"

typedef enum {
#include "autogen.enums.h"    
} EXT_LLVM_Function;

typedef struct { int args; void* function; } EXT_LLVM_table_entry_t;
static EXT_LLVM_table_entry_t EXT_LLVM_table[] = 
{
#include "autogen.function_table.imp"    
};

const char* llvm_name[] =
{
#include "autogen.string_table.imp"        
};

bool extfn_tracing;

BCPLWORD extfn(BCPLWORD *a, BCPLWORD *g, BCPLWORD *W) {
  if (LLVM_START_MARKER < a[0] && a[0] < LLVM_END_MARKER)
  {
    EXT_LLVM_table_entry_t* entry = &EXT_LLVM_table[a[0]];
    if (extfn_tracing)
    {
        printf("          llvm fno=%ld(%s)", a[0], llvm_name[a[0]]);
        for (int i = 1; i <= entry->args; i += 1) printf(" a%d=0x%lx", i, a[i]);
        printf("\n");
    }
    switch (entry->args)
    {
      case 0: return ((BCPLWORD (*)(void))entry->function)();
      case 1: return ((BCPLWORD (*)(BCPLWORD))entry->function)(a[1]);
      case 2: return ((BCPLWORD (*)(BCPLWORD, BCPLWORD))entry->function)(a[1], a[2]);
      case 3: return ((BCPLWORD (*)(BCPLWORD, BCPLWORD, BCPLWORD))entry->function)(a[1], a[2], a[3]);
      case 4: return ((BCPLWORD (*)(BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD))entry->function)(a[1], a[2], a[3], a[4]);
      case 5: return ((BCPLWORD (*)(BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD))entry->function)(a[1], a[2], a[3], a[4], a[5]);
      case 6: return ((BCPLWORD (*)(BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD))entry->function)(a[1], a[2], a[3], a[4], a[5], a[6]);
      case 7: return ((BCPLWORD (*)(BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD))entry->function)(a[1], a[2], a[3], a[4], a[5], a[6], a[7]);
      case 8: return ((BCPLWORD (*)(BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD, BCPLWORD))entry->function)(a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8]);
      default:
        printf("too many arguments for EXT_LLVM\n");
    }
  }

  printf("extfn: not in %d < f < %d - fno=%ld a1=%ld a2=%ld a3=%ld a4=%ld\n",
          LLVM_START_MARKER, LLVM_END_MARKER, a[0], a[1], a[2], a[3], a[4]);
  switch(a[0]) 
  {
    default:
      printf("extfn: Unknown op: fno=%ld a1=%ld a2=%ld a3=%ld a4=%ld\n",
              a[0], a[1], a[2], a[3], a[4]);
      return 0;

    case EXT_Avail: // Return TRUE since the EXT features are available.
        return -1;

    case EXT_Init:  // Initialise all EXT features
      { return -1;
      }

    case EXT_Testfn:  // Set result2 and return a result.
        printf("extfn: fno=%ld a1=%ld a2=%ld a3=%ld\n",
              a[0], a[1], a[2], a[3]);
        g[Gn_result2] = a[1]*a[2] - a[3];
        return a[1]*a[2] + a[3];

    case EXT_Hello:
	      printf("extfn: hello %ld %ld\n", a[0], a[1]);
	      return a[0] > a[1] ? a[0] : a[1];
  }
}
#endif
