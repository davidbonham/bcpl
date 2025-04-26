// Test the initialisation of more than one global
// in the same source file.

GET "libhdr"

GLOBAL $(
   myglobal: 100
$)

LET myglobal() BE $(
    wrch('M')
$)

LET start() BE $(
    wrch('S')
    myglobal()
$)



