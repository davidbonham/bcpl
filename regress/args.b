GET "libhdr"

LET letter(a,b) = a + b
LET start() BE $(
    LET r = letter('A', 4)
    wrch(r)
    wrch('*N')
$)

