GET "libhdr"


LET bug_write_format() BE $(

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


AND my_write_format(format, lvnextarg) BE
{ LET p = 1
  // Both writef and sawritef must preserve result2
//DB  LET res2 = result2

//DB  UNLESS 0 < format < rootnode!rtn_memsize DO // Safety check
//DB    format := "##Bad format##"

  WHILE p <= format%0 DO
  { // When LOOP is executed p must point to the next format
    // character to process.
    LET k, type, f = format%p, ?, ?
    LET n, m, arg  = 0, 0, 0
    LET widthgiven = FALSE  // Set to RTUE ifthe item starts
                            // with %n or %n.m
    p := p + 1
    UNLESS k='%' DO { wrch(k); LOOP }

    // Deal with a substitution item
    type, arg := format%p, !!lvnextarg
    // arg holds the next writef argument in case it is needed.

sw: // type is the character following %, %n or %n.m
    // and p still points to this character.
    // If widthgiven is TRUE, type will not be a digit.

    SWITCHON capitalch(type) INTO
    { DEFAULT:    wrch(type) // %c where c in not expected
                  p := p+1   // output c and advance p.
                  LOOP

		  // Deal with %Dn (equivalent to %In).
      CASE 'D':
      CASE 'S':   f := writes;    GOTO nowidth
     nowidth:      // This for substitution items not needing
                  // a width shch as %n or %s but using the
		  // next writef argument.
		  f(arg, 0)
                  !lvnextarg := !lvnextarg + 1
		  p :=p+1
		  // p points to the character after
		  // %S, %C, %# or %N.
                  LOOP

      CASE 'P':
        {
            LET plural = arg ~= 1 // =TRUE unless arg=1
            !lvnextarg := !lvnextarg + 1
            p := p+1 // p points to the first ch after %P
            type := format%p

		    p := p+1 // p point to the character just after %P\ or %Pc
            LOOP
        }
    } // End of SWITCHON ...
  } // End of FOR p = ...

}


LET my_writef(format, a, b, c, d, e, f, g, h, i, j) BE $(

    LET argvec = VEC 9
    argvec!0 := a
    argvec!1 := b
    argvec!2 := c
    argvec!3 := d
    argvec!4 := e
    argvec!5 := f
    argvec!6 := g
    argvec!7 := h
    argvec!8 := i
    argvec!9 := j
    my_write_format(format, @argvec)
$)


LET start() BE my_writef("hello world*N")

