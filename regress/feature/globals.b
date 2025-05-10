// Test the initialisation of more than one global
// in the same source file.

GET "libhdr"

GLOBAL $(

   myglobal: ug;
   nextglobal
$)

LET myglobal() BE $(
    wrch('M')
    nextglobal +:= 1
    wrch(nextglobal)
    
$)

LET start() BE $(
    LET delta = @nextglobal - @myglobal
    nextglobal := 'A'
    wrch('S')
    myglobal()
    wrch('a' + delta)
$)



