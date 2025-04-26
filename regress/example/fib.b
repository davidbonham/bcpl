GET "libhdr"

LET fib(n) = VALOF $(
   SWITCHON n INTO $(
      CASE 0: RESULTIS 0
      CASE 1: RESULTIS 1
      DEFAULT: RESULTIS fib(n-1) + fib(n-2)
   $)
$)

LET start() BE $(

    FOR i = 1 TO 100 DO $(
        writed(i,4)
        writed(fib(i), 18)
        wrch('*N')
    $)
$)
