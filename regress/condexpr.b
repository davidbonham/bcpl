GET "libhdr"

LET greater(a,b) = a > b -> a, b
LET start() BE $(
    wrch(greater('N', 'Y'))
    wrch('*N')
$)
