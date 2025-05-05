GET "libhdr"

// "If the VALOF block is the body of a function, the compiled code for
// its RESULTIS commands is optimised using FNRN rather than RES.

// Terminator found in the middle of a basic block!
// label %lab
// error: unable to verify function

LET bug2(a) = VALOF $(
    SWITCHON a INTO $(
        CASE 1:  RESULTIS 'a'; ENDCASE
        CASE 2:  RESULTIS 'b'; ENDCASE
        CASE 3:  writes("hello "); ENDCASE
        CASE 4:  RESULTIS 'd'; ENDCASE
        DEFAULT: writes("goodbye")
    $)
    RESULTIS 0
$)

LET start() BE $(
    LET a = bug2(1)
    LET b = bug2(2)
    LET c = bug2(3)
    LET d = bug2(4)
    LET e = bug2(5)
    writef(" a=%c b=%c d=%c*n", a, b, d)
$)
