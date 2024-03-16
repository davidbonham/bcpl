GET "libhdr"

LET mywrited(N, D) BE $(
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

LET start() BE mywrited(123, 8)
