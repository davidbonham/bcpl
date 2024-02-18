    .section BCPLGVEC,"aw",@progbits
    .global __bcpl_global_vector
    .global __bcpl_elaborators





 __bcpl_global_vector:
    .quad 0                # 0
    .quad 0                # 1     
    .quad __stop           # 2 STOP is called by the FINISH O-code operator
    .quad 0                # 3
    .quad 0                # 4
    .quad 0                # 5
    .quad 0                # 6
    .quad 0                # 7
    .quad 0                # 8
    .quad 0                # 9
    .quad 0                # 10
    .quad 0                # 11
    .quad 0                # 12 CIS
    .quad 0                # 13 COS
    .quad 0                # 14
    .quad 0                # 15
    .quad 0                # 16
    .quad 0                # 17
    .quad 0                # 18
    .quad 0                # 19
    .quad 0                # 20 
    .quad 0                # 21 
    .quad 0                # 22
    .quad 0                # 23
    .quad 0                # 24
    .quad 0                # 25
    .quad 0                # 26
    .quad 0                # 27
    .quad 0                # 28
    .quad 0                # 29
    .quad __packstring     # 30
    .quad __unpackstring   # 31
    .quad 0                # 32
    .quad 0                # 33
    .quad 0                # 34
    .quad 0                # 35
    .quad 0                # 36
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
   

