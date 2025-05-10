GET "libhdr"

GLOBAL $( left_shift: ug $)

LET left_shift(value, shift) = value << shift

LET start() BE $(
    LET a = left_shift(1, 64)
    LET b = left_shift(1, 65)
    writes(a = 0 -> "pass", "fail")
    writes(b = 0 -> "pass", "fail")
$)

