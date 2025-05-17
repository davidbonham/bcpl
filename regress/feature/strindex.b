GET "libhdr"

LET start() BE $(
    LET result = "P.A.S.S.*n."
    LET length = "hello"%0
    TEST length = 5 THEN $(
        wrch('Y')
    $)
    ELSE $(
        wrch('N')
    $)
    wrch('*N')
    FOR i = 1 TO 9 BY 2 DO wrch(result%i)
$)
