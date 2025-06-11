# -- Standard BCPL library functions that need to be coded in assembler --------

    .section        .text.bcplmain,"ax",@progbits

    .equ MAXGLOBALS,1024

# -- P := LEVEL() --------------------------------------------------------------
#
#   This function gives a representation of the current procedure activation
#   level for use with LONGJUMP
#
__level:
    movq    %rbp, %rax             # return the caller's frame pointer
    retq

# -- LONGJUMP(P, L) ------------------------------------------------------------
#
#   This routine causes a non-local jump to the label L at the activation
#   level P
#
__longjump:
    movq    %rdi, %rbp             # restore the saved frame pointer
    popq    %rdi                   # discard the caller's return address
    jmpq    *%rsi                  # branch to the label


# -- The standard BCPL Global Vector -------------------------------------------
#
# This corresponds to the values in cintcode/g/libhdr.h

    .section BCPLGVEC,"aw",@progbits
    .global __bcpl_global_vector

# Set up the global vector by initialising each cell to zero and defining a
# weak symbol __bcpl_gvn for global n. The code generator will create an alias
# with this name for each ENTRY name and so the linker will resolve it as the 
# address of the entry. In order to use the assembler's \@ mechanism within 
# the .rept we must wrap our content in a .macro:

    .macro GLOBAL_INIT
     .quad __bcpl_gv\@
     .weak __bcpl_gv\@
     .endm
 
 # Then define each of our 512 globals

        .data
        .align     8
 __bcpl_global_vector:
        .rept MAXGLOBALS
        GLOBAL_INIT
        .endr
        .type __bcpl_global_vector, @object
        .size __bcpl_global_vector, MAXGLOBALS*8

# Initialise our global vector with the entries for the standard library
# by defining the Gn to match the entry point of each routine.

    .macro GLOBAL gn, symbol
    .set __bcpl_gv\gn,\symbol
    .endm

    GLOBAL   0, MAXGLOBALS # 0      globsize
#   .quad 0                # 1      START
    GLOBAL   2, __stop     # 2      STOP is called by the FINISH O-code operator
#   .quad 0                # 3      (sys)
#   .quad 0                # 4      (clihook)
    GLOBAL   5, __muldiv
#   .quad 0                # 6      (changeco)
#   .quad 0                # 7      (currco)
#   .quad 0                # 8      (colist)
#   .quad 0                # 9      (rootnode)
#   .quad 0                # 10     RESULT2
#   .quad 0                # 11     (tempval)
#   .quad 0                # 12     CIS
#   .quad 0                # 13     COS
#   .quad 0                # 14     (currentdir)
    GLOBAL  15, __level
    GLOBAL  16, __longjump
#   .quad 0                # 17     (createco)
#   .quad 0                # 18     (deleteco)
#   .quad 0                # 19     (callco)
#   .quad 0                # 20     (cowait)
#   .quad 0                # 21     (resumeco)
#   .quad 0                # 22     (initco)
#   .quad 0                # 23     (startco)
#   .quad 0                # 24     (globin)
    GLOBAL  25, __getvec
#   .quad 0                # 26     (rdargs2)
    GLOBAL  27, __freevec
#   .quad 0                # 28     (abort)
#   .quad 0                # 29     (sysabort)
    GLOBAL  30, __packstring
    GLOBAL  31, __unpackstring
#   .quad 0                # 32     (getword)
#   .quad 0                # 33     (putword)
#   .quad 0                # 34     RANDNO
#   .quad 0                # 35     (setseed)
#   .quad 0                # 36     (sardch)
#   .quad 0                # 37
    GLOBAL  38, __rdch
#   .quad 0                # 39
    GLOBAL  40, __unrdch
    GLOBAL  41, __wrch
#   .quad 0                # 42
#   .quad 0                # 43
#   .quad 0                # 44
    GLOBAL  45, __aptovec
#   .quad 0                # 46
#   .quad 0                # 47
#   .quad 0                # 48     findinput
#   .quad 0                # 49     findoutput
#   .quad 0                # 50
#   .quad 0                # 51
    GLOBAL  52, __findstream
#   .quad 0                # 53
#   .quad 0                # 54
#   .quad 0                # 55
    GLOBAL  56, __selectinput
    GLOBAL  57, __selectoutput
    GLOBAL  58, __input
    GLOBAL  59, __output
#   .quad 0                # 60     endread
#   .quad 0                # 61     endwrite
    GLOBAL  62, __endstream
#   .quad 0                # 63
#   .quad 0                # 64
    GLOBAL  65, __rewind
#   .quad 0                # 66
#   .quad 0                # 67
#   .quad 0                # 68
#   .quad 0                # 69
#   .quad 0                # 70
#   .quad 0                # 71
#   .quad 0                # 72
    GLOBAL  73, __writeflt
#   .quad 0                # 73
#   .quad 0                # 74
#   .quad 0                # 75
#   .quad 0                # 76
#   .quad 0                # 77
#   .quad 0                # 78
#   .quad 0                # 79
#   .quad 0                # 80
#   .quad 0                # 81
#   .quad 0                # 82
#   .quad 0                # 83
#   .quad 0                # 84
#   .quad 0                # 85
#   .quad 0                # 86
#   .quad 0                # 87
#   .quad 0                # 88
#   .quad 0                # 89
#   .quad 0                # 90
#   .quad 0                # 91
#   .quad 0                # 92
#   .quad 0                # 93
#   .quad 0                # 94
#   .quad 0                # 95
#   .quad 0                # 96
#   .quad 0                # 97
#   .quad 0                # 98
#   .quad 0                # 99
#   .quad 0                # 100   
#   .quad 0                # 101   
#   .quad 0                # 102   
#   .quad 0                # 103   
#   .quad 0                # 104   
#   .quad 0                # 105   
#   .quad 0                # 106   
#   .quad 0                # 107   
#   .quad 0                # 108   
#   .quad 0                # 109   
#   .quad 0                # 110  
#   .quad 0                # 111  
#   .quad 0                # 112  
#   .quad 0                # 113  
#   .quad 0                # 114  
#   .quad 0                # 115  
#   .quad 0                # 116  
#   .quad 0                # 117  
#   .quad 0                # 118  
#   .quad 0                # 119
#   .quad 0                # 120
#   .quad 0                # 121
#   .quad 0                # 122
#   .quad 0                # 123
#   .quad 0                # 124
#   .quad 0                # 125
#   .quad 0                # 126
#   .quad 0                # 127    RANDSEED



