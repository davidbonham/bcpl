LET cgerror(message, a0, a1, a2) BE
$(
    errcount +:= 1
    writes("error: ")
    writef(message, a0, a1, a2)
    longjump(fin_p, fin_l)
$)
LET assert(condition, reason) BE UNLESS condition DO cgerror("assertion failure: %S*N", reason)
