GET "libhdr"

LET start() BE $(
    LET cases = TABLE -5, -1, 0, 1, 5
    LET a = -5
    LET b = ABS a
    newline()
    writehex(ABS #X8000000000000000, 16)
    newline()
    writehex(ABS #XFFFFFFFFFFFFFFFF, 16)
    newline()
    newline()
    FOR i = 0 TO 4 DO $(
        writen(ABS cases!i)
        newline()
    $)
$)
