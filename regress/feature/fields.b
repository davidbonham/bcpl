GET "libhdr"

MANIFEST $(
    sign = SLCT 1:63:0
$)

LET start() BE $(
    LET b = VEC 0
    LET c = ?
    b!0 := -1
    c := sign OF b
    writen(c)
$)
