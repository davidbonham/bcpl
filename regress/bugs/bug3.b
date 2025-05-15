GET "libhdr"

LET cg_ocode() BE
$(
    LET nl() = VALOF SWITCHON 1 INTO $( DEFAULT: RESULTIS 3 $)

    SWITCHON 1 INTO
    $(
        DEFAULT:
    $)
$)

LET start() BE writes("compiled successfully*n")