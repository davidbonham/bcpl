LET cgerror(message, a0, a1, a2) BE
$(
    errcount +:= 1
    writes("error: ")
    writef(message, a0, a1, a2)
    longjump(fin_p, fin_l)
$)

LET assert(condition, reason, a1, a2, a3, a4) BE $(
    UNLESS condition DO $(
        writes("assertion failure: ")
        writef(reason, a1, a2, a3, a4)
        longjump(fin_p, fin_l)
    $)
$)
