GET "libhdr"

LET start() BE $(
    LET length = "hello"%0
    TEST length = 5 THEN $(
        wrch('Y')
    $)
    ELSE $(
        wrch('N')
    $)
    wrch('*N')
$)
