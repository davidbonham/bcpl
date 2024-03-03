GET "libhdr"

LET typeof(char) = VALOF $(
    LET answer = ?
    SWITCHON char INTO $(
       CASE 'a': CASE 'b': CASE 'c': CASE 'd': 
           answer := 'L'
       ENDCASE
      
       CASE 'A': CASE 'B': CASE 'C': CASE 'D':
           answer := 'U'
       ENDCASE

       DEFAULT:
           answer := '?'
       ENDCASE
    $)
    RESULTIS answer
$)

LET start() BE $(
    LET type = typeof('D')
    wrch(type = 'U' -> 'Y', 'N')
    wrch(typeof('a') = 'L' -> 'Y', 'N')
    wrch(typeof('!') = '?' -> 'Y', 'N')
$)
