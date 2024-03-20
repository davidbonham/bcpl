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
    .quad 0                # 15     LEVEL
    .quad 0                # 16     LONGJUMP
    .quad 0                # 17     (createco)
    .quad 0                # 18     (deleteco)
    .quad 0                # 19     (callco)
    .quad 0                # 20     (cowait)
    .quad 0                # 21     (resumeco)
    .quad 0                # 22     (initco)
    .quad 0                # 23     (startco)
    .quad 0                # 24     (globin)
    .quad 0                # 25     GETVEC
    .quad 0                # 26     (rdargs2)
    .quad 0                # 27     FREEVEC
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
    .quad 0                # 45
    .quad 0                # 46
    .quad 0                # 47
    .quad __findinput      # 48
    .quad __findoutput     # 49
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

    .org __bcpl_global_vector + 512*8
__bcpl_elaborators:


