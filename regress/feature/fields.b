GET "libhdr"

MANIFEST $(
    byte0 = SLCT 8:0:0    // bottom byte of element 0
    word1 = SLCT 32:0:1   // bottom word of element 0 
    sign = SLCT 1:63:0    // top bit of element 0
   
$)

LET start() BE $(
    LET d = VEC 2
    LET b, w, s = ?, ?, ?
    d!0 := #x8070605040302010
    d!1 := #xf0f1f2f3f4f5f6f7
    b := byte0 OF d
    w := word1 OF d
    s := sign OF d
    writehex(b, 16)
    newline()
    writehex(w, 16)
    newline()
    writehex(s, 16)
    newline()
    sign OF d +:= 1
    writehex(d!0, 16)
$)
