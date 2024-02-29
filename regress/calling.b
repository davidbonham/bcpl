GET "libhdr"

LET child() BE $(
    writes("in child*N")
$)

LET start() BE $(
    child()
$)

