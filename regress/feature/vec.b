GET "libhdr"

LET is_false(condition) BE wrch(condition -> 'N', 'Y')
LET is_true(condition) BE wrch(condition -> 'Y', 'N')

LET swap(refa, refb) BE $(
   LET temp = !refa
   !refa := !refb
   !refb := temp
$)

LET start(a) BE  $(
    LET x = VEC 10
    LET x3 = @(x!3)
    LET a, b = 'A', 'B'
    x!0 := 0
    x!1 := 1
    FOR i = 2 TO 10 DO $(
        x!i := x!(i-1) + x!(i-2)
    $)
    is_true(x!10 = 55)
    is_true(!x3 = 2)

    swap(@a, @b)
    is_true(b = 'A')
$)
