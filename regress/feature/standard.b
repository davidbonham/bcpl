GET "libhdr"

// Check that all of the routines mentioned in the proposed standard are
// present in lbhdr and placed correctly in the global vector.
LET start() BE $(

    $(
        LET string = "Hello World"
        LET v = VEC 11
        LET s = VEC 11
        unpackstring(string, v)
        writef("%c %c %c %c*n", v!7, v!5, v!8, v!11)
        v!6 := 3
        packstring(v+6, s)
        writes(s)
        newline()
    $)

    $(
        LET tmp = findoutput("/tmp/standard.tmp")
        LET old = output()
        selectoutput(tmp)
        writes("should not appear*n")
        endwrite()
        selectoutput(old)
        writes("should appear*n")

        old := input()
        tmp := findinput("/tmp/standard.tmp")
        selectinput(tmp)
        FOR i = 1 TO 6 DO wrch(rdch())
        FOR i = 1 TO 4 DO rdch()
        FOR i = 1 TO 8 DO wrch(rdch())
        endread()
        selectinput(old)
    $)

    $(
        writefp(FLOAT 100 #/ FLOAT 3, 16, 4)
        newline()
        writefp(12345678.90123456789, 25, 12)
        newline()
    $)

    $(
        // We need to test timeofday and date in a way that doesn't vary
        // 29-Jun-2025  3=- 7=- 8=2 9=0
        // 15:33:41     3=: 6=:

        LET tod = timeofday()
        writef("%c=- %c=- %c=2 %c=0*n", tod%3, tod%7, tod%8, tod%9)
        tod := date()
        writef("%c=: %c=:*n", tod%3, tod%6)
    $)

    // This must be the very final test
    stop(42)
$)
