// Standard BCPL Run-time library
// ------------------------------
//
// This is the part of the run-time library that is written in BCPL rather
// than the assembler components that live in bcplmain.
//
// The content is source from the bcpl book

SECTION "blib"

GET "libhdr"

LET writed(N, D) BE $(
    LET T = VEC 20
    AND I, K = 0, -N
    IF N<0 DO D, K := D-1, N
    T!I, K, I := -(K MOD 10), K/10, I+1 REPEATUNTIL K=0
    FOR J=I+1 TO D DO wrch('*S')
    IF N<0 DO wrch('-')
    FOR J =I-1 TO 0 BY -1 DO wrch(T!J+'0')
$)

LET writen(n) BE writed(n, 0)

LET writeoct(n, d) BE $(
    IF d > 1 DO writeoct(n>>3, d-1)
    wrch((n&7) + '0')
$)

LET writehex(n, d) BE $(
    IF d > 1 DO writehex(n>>4, d-1)
    wrch((n&15)!TABLE '0', '1', '2', '3', '4', '5', '6', '7',
                      '8', '9', 'A', 'B', 'C', 'D', 'E', 'F')
$)

LET writes(s) BE FOR i = 1 TO s%0 DO wrch(s%i)

LET newline() BE wrch('*N')

LET readn() = VALOF $(
    LET sum = 0
    LET neg = FALSE
    AND ch = 0

    ch := rdch() REPEATWHILE ch='*S' | ch='*T' | ch='*N'

    SWITCHON ch INTO $(
        CASE '-': neg := TRUE
        CASE '+': ch := rdch()
    $)

    WHILE '0' <= ch <= '9' DO $(
        sum := 10*sum + ch - '0'
        ch := rdch()
    $)

    IF neg THEN sum := -sum
    unrdch(ch)

    RESULTIS sum
$)

AND write_format(format, lvnextarg) BE
{ LET p = 1
  // Both writef and sawritef must preserve result2
  LET res2 = result2

  UNLESS 0 < format < rootnode!rtn_memsize DO // Safety check
    format := "##Bad format##"

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

      CASE '0':CASE '1':CASE '2':CASE '3':CASE '4':
      CASE '5':CASE '6':CASE '7':CASE '8':CASE '9':
                  // A substituion item starting with %n or %n.m
		  // It sets widthgiven to TRUE and n and m from %n.m
		  // leaving p pointing to the character just after %n.m
		  // If .m is not present m is left set to zero.
                  { n := 10*n + type - '0'
                    p := p+1
                    type := format%p
                    widthgiven := TRUE
                  } REPEATWHILE '0'<=type<='9'
		  // p points to the charcter just after the digits.
                  IF type='.' DO
                  { p := p+1
                    type := format%p
                    WHILE '0'<=type<='9' DO
                    { m := 10*m + type - '0'
                      p := p+1
                      type := format%p
                    }
                  }
		  // type is the character just after %n.m
		  // and p points to it.
                  GOTO sw

		  // Deal with %Dn (equivalent to %In).
      CASE 'D':
      CASE 'I':   f := writed;    GOTO getn
      CASE 'S':   f := writes;    GOTO nowidth
      //CASE 'T':   f := writet;    GOTO getn
      CASE 'C':   f := wrch;      GOTO nowidth
      //CASE '#':   f := codewrch;  GOTO nowidth
      CASE 'O':   f := writeoct;  GOTO getn
      CASE 'X':   f := writehex;  GOTO getn
      CASE 'N':   f := writen;    GOTO nowidth
      //CASE 'U':   f := writeu;    GOTO getn
      //CASE 'Z':   f := writez;    GOTO getn
      //CASE 'B':   f := writebin;  GOTO getn

    getn:         // This is used by substitution items needing
                  // a width such ad %6.3D or %I5 and using the
		  // next writef argument.
                  UNLESS widthgiven DO
                  { p := p+1
		    // p points to the first caharacter after
		    // %D, %O, %X, %I, %U, %Z or %B.
                    n := capitalch(format%p)
                    n := '0' <= n <= '9' -> n - '0', 10 + n - 'A'
                  }
		  f(arg, n)
                  !lvnextarg := !lvnextarg + 1
		  // Advance p to point to the character after
		  // eg %6.2D or %I5
		  p :=p+1
                  LOOP

    nowidth:      // This for substitution items not needing
                  // a width shch as %n or %s but using the
		  // next writef argument.
		  f(arg, 0)
                  !lvnextarg := !lvnextarg + 1
		  p :=p+1
		  // p points to the character after
		  // %S, %C, %# or %N.
                  LOOP

      CASE '$':
      CASE '+':   !lvnextarg := !lvnextarg + 1
		  p :=p+1
                  LOOP

      CASE '-':   !lvnextarg := !lvnextarg - 1
		  p :=p+1
                  LOOP

      CASE 'M': { LET buf = VEC 256/bytesperword
                  !lvnextarg := !lvnextarg + 1
                  UNLESS get_text(arg, buf, 256/bytesperword) DO
                    buf := "<<mess:%-%n>>"  // No message text
                  write_format(buf, lvnextarg)
		  p :=p+1
                  LOOP
                }

      CASE 'E':   !lvnextarg := !lvnextarg + 1
                  writee(arg, n, m)          // Deal with eg %13.3e
		  p :=p+1
                  LOOP

      CASE 'F':   !lvnextarg := !lvnextarg + 1
                  TEST widthgiven
                  THEN writeflt(arg, n, m)          // Deal with eg %8.3f
                  ELSE write_format(arg, lvnextarg) // Deal with %f
		  p :=p+1
                  LOOP

      CASE 'P': { LET plural = arg ~= 1 // =TRUE unless arg=1
                  !lvnextarg := !lvnextarg + 1
                  p := p+1 // p points to the first ch after %P
                  type := format%p

		  // type is the charcter just after %P
		  p := p+1 // p point to the character just after
		           // %P\ or %Pc

                  IF type = '\' DO
                  { // Deal with %P\singular\plural\ item
                    LET skipping = plural
		    // skipping is TRUE when when skipping the singular
		    // or plural text.
                    // p points to the start of the singular text
		    // and skipping is TRUE if this is to be skipped.
                    UNTIL p > format%0 DO
                    { LET ch = format%p
		      // ch is a '\' or a character of the singular
		      // or plural text.
		      //writef("|*nwritef: format=%s*n", format); newline()
		      //writef("*nwritef: p=%n ch=%c skipping=%n*n",
		      //       p, ch, skipping)
		      //abort(7456)
		      p := p+1
		      // p points to the character after ch.
                      TEST ch = '\'
		      THEN { skipping := ~skipping
			     // p points to the character just after
			     // the second or third \.
		             // skipping = ~plural after the second \
			     // skipping =  plural after the third \
                             //IF skipping = plural GOTO break
                             IF skipping = plural BREAK
                           }
                      ELSE { UNLESS skipping DO wrch(ch)
		             // p points to just after ch.
			   }
                    }
		    break:
                    LOOP
                  }

                  // Deal with %Pc.
		  // type = c not equal to '\'
		  // and p points to the character just after %Pc
                  IF plural DO wrch(type)
                  LOOP
                }
    } // End of SWITCHON ...
  } // End of FOR p = ...

  result2 := res2
}

LET writef(format, a, b, c, d, e, f, g, h, i, j) BE $(

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
    write_format(format, @argvec)
$)
