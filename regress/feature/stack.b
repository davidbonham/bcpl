GET "libhdr"

GLOBAL $( a: 128; b: 129; fin_l: 200; fin_p: 201 $)

LET foo(p, l) BE $(
    writes("in foo*n")
    longjump(fin_p, fin_l)
$)

LET start() BE $(
    a := 10
    b := 20
    fin_p, fin_l := level(), error
    foo(a, b)
    writes("normal return from foo*n")
error:
    writes("correctly arriving at error*n")
$)
