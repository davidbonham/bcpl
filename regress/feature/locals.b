GET "libhdr"

LET start() BE $(
    LET a = 4
    LET b = 6
    LET c = a + b
    writehex(c, 8)
$)
