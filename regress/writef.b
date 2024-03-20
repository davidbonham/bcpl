GET "libhdr"

LET write_format() BE $(

    LET p = 1
    WHILE p <= 0 DO $(

        SWITCHON p INTO $(

            CASE 'N':
                GOTO nowidth
        getn:
                LOOP
        nowidth:
                LOOP

            CASE 'P':

                IF p = '\' DO $(
                    LET skipping = 0
                    UNTIL p > 0 DO $(
                        skipping := ~skipping
			//p := p + 47
                    $)
                $)
        $)
    $)
$)

//LET start() BE write_format()

