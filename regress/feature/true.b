GET "libhdr"

LET start() BE $(
    LET x = TRUE
    writes(x -> "pass*n", "fail*n")
$)
