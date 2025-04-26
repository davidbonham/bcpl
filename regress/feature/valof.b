// Simplest program using VALOF also checks exit status

GET "libhdr"

LET fortytwo() = VALOF $( RESULTIS 42 $)

LET start() BE writes(42 = 42 -> "PASS*N", "FAIL*N")



