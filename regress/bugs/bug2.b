GET "libhdr"

LET rdargslen() = VALOF $(
    SWITCHON 3 INTO $(
         CASE 1:
             GOTO err
         ENDCASE
         CASE 4:
             FOR i = 7 TO 11 DO $(
                  GOTO skip
skip:
             $)
         ENDCASE
    $)
err:
$)

LET start() BE writes("compiled successfully*n")
