// Standard BCPL Run-time library
// ------------------------------
//
// This is the part of the run-time library that is written in BCPL rather
// than the assembler components that live in bcplmain.
//
// The content is source from the bcpl book 

SECTION "blib"

GET "libhdr"

LET writed(N, D) BE $(
    LET T = VEC 20
    AND I, K = 0, -N
    AND ZZ = VEC 5
    AND YY = 0
    IF N<0 DO D, K := D-1, N
    T!I, K, I := -(K MOD 10), K/10, I+1 REPEATUNTIL K=0
    FOR J=I+1 TO D DO wrch('*S')
    IF N<0 DO wrch('-')
    FOR J =I-1 TO 0 BY -1 DO wrch(T!J+'0')
$)

LET writen(n) BE writed(n, 0)

LET writeoct(n, d) BE $(
    IF d > 1 DO writeoct(n>>3, d-1)
    wrch((n&7) + '0')
$)

LET writehex(n, d) BE $(
    IF d > 1 DO writehex(n>>4, d-1)
    wrch((n&15)!TABLE '0', '1', '2', '3', '4', '5', '6', '7', 
                      '8', '9', 'A', 'B', 'C', 'D', 'E', 'F')
$)

LET writes(s) BE FOR i = 1 TO s%0 DO wrch(s%i)

LET newline() BE wrch('*N')

LET readn() = VALOF $(
    LET sum = 0
    LET neg = FALSE
    AND ch = 0

    ch := rdch() REPEATWHILE ch='*S' | ch='*T' | ch='*N'

    SWITCHON ch INTO $(
        CASE '-': neg := TRUE
        CASE '+': ch := rdch()
    $)

    WHILE '0' <= ch <= '9' DO $(
        sum := 10*sum + ch - '0'
        ch := rdch()
    $)

    IF neg THEN sum := -sum
    unrdch(ch)

    RESULTIS sum
$)
