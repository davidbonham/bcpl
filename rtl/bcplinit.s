# Standard BCPL library functions that need to be coded in assembler by
# hand.

    .section        .text.bcplmain,"ax",@progbits

# P := LEVEL()
#
#   This function gives a representation of the current procedure activation
#   level for use with LONGJUMP
#
__level:
    movq    %rbp, %rax             # return the caller's frame pointer
    retq

# LONGJUMP(P, L)
#
#   This routine causes a non-local jump to the label L at the activation
#   level P
#
__longjump:
    movq    %rdi, %rbp             # restore the saved frame pointer
    popq    %rdi                   # discard the caller's return address
    jmpq    *%rsi                  # branch to the label


# The standard BCPL Global Vector
#
# This corresponds to the values in cintcode/g/libhdr.h

    .section BCPLGVEC,"aw",@progbits
    .global __bcpl_global_vector
    .global __bcpl_elaborators


 __bcpl_global_vector:
    .quad 0                # 0      glob0 = globsize
    .quad 0                # 1      START
    .quad __stop           # 2      STOP is called by the FINISH O-code operator
    .quad 0                # 3      (sys)
    .quad 0                # 4      (clihook)
    .quad __muldiv         # 5
    .quad 0                # 6      (changeco)
    .quad 0                # 7      (currco)
    .quad 0                # 8      (colist)
    .quad 0                # 9      (rootnode)
    .quad 0                # 10     RESULT2
    .quad 0                # 11     (tempval)
    .quad 0                # 12     CIS
    .quad 0                # 13     COS
    .quad 0                # 14     (currentdir)
    .quad __level          # 15     LEVEL
    .quad __longjump       # 16     LONGJUMP
    .quad 0                # 17     (createco)
    .quad 0                # 18     (deleteco)
    .quad 0                # 19     (callco)
    .quad 0                # 20     (cowait)
    .quad 0                # 21     (resumeco)
    .quad 0                # 22     (initco)
    .quad 0                # 23     (startco)
    .quad 0                # 24     (globin)
    .quad __getvec         # 25     GETVEC
    .quad 0                # 26     (rdargs2)
    .quad __freevec        # 27     FREEVEC
    .quad 0                # 28     (abort)
    .quad 0                # 29     (sysabort)
    .quad __packstring     # 30
    .quad __unpackstring   # 31
    .quad 0                # 32     (getword)
    .quad 0                # 33     (putword)
    .quad 0                # 34     RANDNO
    .quad 0                # 35     (setseed)
    .quad 0                # 36     (sardch)
    .quad 0                # 37
    .quad __rdch           # 38
    .quad 0                # 39
    .quad __unrdch         # 40
    .quad __wrch           # 41
    .quad 0                # 42
    .quad 0                # 43
    .quad 0                # 44
    .quad __aptovec        # 45     APTOVEC
    .quad 0                # 46
    .quad 0                # 47
    .quad __findinput      # 48     FINDINPUT
    .quad __findoutput     # 49     FINDOUTPUT
    .quad 0                # 50
    .quad 0                # 51
    .quad 0                # 52
    .quad 0                # 53
    .quad 0                # 54
    .quad 0                # 55
    .quad __selectinput    # 56
    .quad __selectoutput   # 57
    .quad __input          # 58
    .quad __output         # 59
    .quad __endread        # 60
    .quad __endwrite       # 61
    .quad 0                # 62
    .quad 0                # 63
    .quad 0                # 64
    .quad __rewind         # 65
    .quad 0                # 66
    .quad 0                # 67
    .quad 0                # 68
    .quad 0                # 69
    .quad 0                # 70
    .quad 0                # 71
    .quad 0                # 72
    .quad 0                # 73
    .quad 0                # 74
    .quad 0                # 75
    .quad 0                # 76
    .quad 0                # 77
    .quad 0                # 78
    .quad 0                # 79
    .quad 0                # 80
    .quad 0                # 81
    .quad 0                # 82
    .quad 0                # 83
    .quad 0                # 84
    .quad 0                # 85
    .quad 0                # 86
    .quad 0                # 87
    .quad 0                # 88
    .quad 0                # 89
    .quad 0                # 90
    .quad 0                # 91
    .quad 0                # 92
    .quad 0                # 93
    .quad 0                # 94
    .quad 0                # 95
    .quad 0                # 96
    .quad 0                # 97
    .quad 0                # 98
    .quad 0                # 99
    .quad 0                # 100   
    .quad 0                # 101   
    .quad 0                # 102   
    .quad 0                # 103   
    .quad 0                # 104   
    .quad 0                # 105   
    .quad 0                # 106   
    .quad 0                # 107   
    .quad 0                # 108   
    .quad 0                # 109   
    .quad 0                # 110  
    .quad 0                # 111  
    .quad 0                # 112  
    .quad 0                # 113  
    .quad 0                # 114  
    .quad 0                # 115  
    .quad 0                # 116  
    .quad 0                # 117  
    .quad 0                # 118  
    .quad 0                # 119
    .quad 0                # 120
    .quad 0                # 121
    .quad 0                # 122
    .quad 0                # 123
    .quad 0                # 124
    .quad 0                # 125
    .quad 0                # 126
    .quad 0                # 127    RANDSEED


    .rept 511-127
    .quad 0
    .endr
    .org __bcpl_global_vector + 512*8
__bcpl_elaborators:



