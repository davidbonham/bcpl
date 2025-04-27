GET "libhdr"

LET start() BE $(

   LET vec1 = getvec(10)
   LET vec2 = getvec(5)
   LET delta = vec2 - vec1
   FOR i = 0 TO 10 DO vec1!i := 'a' + i
   FOR i = 0 TO 5 DO vec2!i := 'A' + i
   writes("0x")
   writehex(vec1, 16)
   wrch(' ')
   writes("0x")
   writehex(vec2, 16)   
   wrch(' ')
   writed(delta, 8)
   wrch(' ')
   FOR i = 0 TO 10 DO wrch(vec1!i)
   wrch(' ')
   FOR i = 0 TO 5 DO wrch(vec2!i)
   newline()

   freevec(vec1)
   freevec(vec2)
   writes("vectors freed*n") 
$)
