GET "libhdr"

LET start() BE $(
    LET input = ?
    writes("Use all of the BLIB functions*N")
    writes("Type a number: ")
    input := readn() 
    writen(input)
    newline()
    writes(" Base 10  Base 16   Base 8*N")
    writed(input,8)
    wrch(' ')
    writehex(input,8)
    wrch(' ')
    writeoct(input,8)
$)
