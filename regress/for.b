GET "libhdr"

LET start() BE $(
    LET total = 0
    // Expect these two loops to be unrolled to constant load/call wrch
    // to make the loop branch-free
    FOR ch = 'A' TO 'Z' DO $(
        wrch(ch)
    $)
    FOR ch = 'z' TO 'a' BY -4 DO $(
        wrch(ch)
    $)
    // Expect this loop to be evaluated at compile time
    FOR i = 1 TO 10 BY 2 DO $(
        total +:= i
    $)
    wrch('A' + total)
    wrch('*N')
$)
