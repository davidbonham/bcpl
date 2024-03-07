SECTION "BIGPRIMES"
 
GET "libhdr"
 
STATIC $( count  $)
 
LET start() = VALOF
$( LET n, k = 2, 100
   LET argv = VEC 50

   writes("The first ")
   writen(k)
   writes(" primes from ")
   writen(n)
   writes(" are:*n")

   count := 0

   UNTIL count>=k DO
   $( IF isprime(n) DO out(n)
      n := n+1
   $)
 
   writes("*nend of output*n")

   RESULTIS 0
$)

AND isprime(n) = VALOF
$( LET d = 2
   $( IF d*d>n RESULTIS TRUE
      IF n REM d = 0 RESULTIS FALSE
      d := d+1
   $) REPEAT
$)
 
AND out(n) BE
$( IF count REM 5 = 0 DO newline()
   writed(n,9)
   count := count + 1
$)
