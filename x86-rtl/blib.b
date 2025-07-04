// Standard BCPL Run-time library
// ------------------------------
//
// This is the part of the run-time library that is written in BCPL rather
// than the assembler components that live in bcplmain.

SECTION "BLIB"

GET "libhdr"

// -----------------------------------------------------------------------------
// OFFICIAL BLIB
// -----------------------------------------------------------------------------
//
// We put randno first because it is declared via LET rather than AND

LET randno(upb) = VALOF  // Return a random number in the range 1 to upb
{ randseed := randseed*2147001325 + 715136305
  // randseed cycles through all 2^32 possible values.
  RESULTIS (ABS(randseed/3)) MOD upb + 1
}

AND unpackstring(s, v) BE FOR i = s%0 TO 0 BY -1 DO v!i := s%i

AND packstring(v, s) = VALOF
{ LET n = v!0 & 255
  LET size = n/bytesperword
  FOR i = 0 TO n DO s%i := v!i
  FOR i = n+1 TO (size+1)*bytesperword-1 DO s%i := 0
  RESULTIS size
}

AND write_format(format, lvnextarg) BE
{ LET p = 1
  // Both writef and sawritef must preserve result2
  LET res2 = result2


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

      CASE 'D':   IF widthgiven DO // Deal with %nD or %n.mD
                  { // Deal with %n.mD eg %6.2D
                    // Writes a scaled number of the form nnn.nn
                    LET scale = 1
                    FOR i = 1 TO m DO scale := scale * 10
                    writedz(arg/scale, n-1-m, FALSE, arg<0)
                    wrch('.')
                    writez( ABS arg MOD scale, m)
                    !lvnextarg := !lvnextarg + 1
		    p := p+1
		    // p points to the character after %dD or %n.mD
                    LOOP
                  }
		  // Deal with %Dn (equivalent to %In).
      CASE 'I':   f := writed;    GOTO getn
      CASE 'S':   f := writes;    GOTO nowidth
      CASE 'T':   f := writet;    GOTO getn
      CASE 'C':   f := wrch;      GOTO nowidth
      CASE '#':   f := codewrch;  GOTO nowidth
      CASE 'O':   f := writeoct;  GOTO getn
      CASE 'X':   f := writehex;  GOTO getn
      CASE 'N':   f := writen;    GOTO nowidth
      CASE 'U':   f := writeu;    GOTO getn
      CASE 'Z':   f := writez;    GOTO getn
      CASE 'B':   f := writebin;  GOTO getn

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

AND capitalch(ch) = 'a' <= ch <= 'z' -> ch + 'A' - 'a', ch

AND writedz(n, d, zeroes, neg) BE
{ // n     is the number to output
  // d     is the field width
  // zeroes    =TRUE is leading zeroes are to be output
  //           as zeroes. If FALSE leading zeroes are
  //           replaced by spaces.
  // neg       -TRUE if a minus sign is required.
  LET t = VEC 20
  LET i = 0
  LET k = -n

  IF neg DO { d := d - 1; k := n }

  { t!i := -(k MOD 10)
    k   := k/10
    i   := i + 1
  } REPEATWHILE k

  IF neg & zeroes DO wrch('-')
  FOR j = i+1 TO d DO wrch(zeroes -> '0', '*s')
  IF neg & ~zeroes DO wrch('-')
  FOR j = i-1 TO 0 BY -1 DO wrch(t!j+'0')
}

AND writed(n, d) BE writedz(n, d, FALSE, n<0)

AND writen(n) BE writed(n, 0)

AND writeoct(n, d) BE
{ IF d > 1 DO writeoct(n>>3, d-1)
  wrch((n&7)+'0')
}

AND writehex(n, d) BE
{ IF d>1 DO writehex(n>>4, d-1)
  wrch((n&15)!TABLE '0','1','2','3','4','5','6','7',
                    '8','9','A','B','C','D','E','F')
}

AND writebin(n, d) BE
{ IF d > 1 DO writebin(n>>1, d-1)
  wrch((n&1)+'0')
}

AND newline() BE wrch('*n')

AND compch(ch1, ch2) = capitalch(ch1) - capitalch(ch2)

AND compstring(s1, s2) = VALOF
{ LET lens1, lens2 = s1%0, s2%0
  LET smaller = lens1 < lens2 -> s1, s2
  FOR i = 1 TO smaller%0 DO
  { LET res = compch(s1%i, s2%i)
    IF res RESULTIS res
  }
  IF lens1 = lens2 RESULTIS 0
  RESULTIS smaller = s1 -> -1, 1
}

AND getkeylen(keys, len, i, keyword) = VALOF
{ // keys  is the rdargs format string
  // len   bytes in keys go from keys%1 to keys%len. len may be greater
  //       255.
  // i     is the number counting from zero of the argument
  //       specified by keys whose first keyword is to be
  //       copied into keyword.

  LET p = 1        // Position in keys string
  LET n = 0        // For length of key word

  // Set p to start of the keyword for argument i
  UNTIL p>len DO
  { UNLESS i BREAK
    IF keys%p=',' DO i := i-1
    p := p+1
  }

  // Copy the key word (ignoring newlines) into keyword
  WHILE p <= len DO
  { LET ch = keys%p
    IF ch='/' | ch='=' | ch=',' BREAK
    UNLESS ch='*n' DO
    { n := n + 1
      keyword%n := keys%p
    }
    p := p + 1
  }

  keyword%0 := n
  RESULTIS keyword
}

/*
rdargs provides the programmer with the facility to read
arguments from the currently selected input and store them in the
given vector.

The possible key qualifiers are:

  /a    this argument is required
  /k    argument requires the keyword
  /s    argument is a switch
  /n    argument has to be a number
  /p    prompt will be displayed
*/

AND rdargs(keys, argv, upb) = rdargslen(keys, keys%0, argv, upb)

AND rdargs2(keys1, keys2, argv, upb) = VALOF
{ LET len = 0
  LET keys = VEC 510/bytesperword
  FOR i = 1 TO keys1%0 DO { len := len+1; keys%len := keys1%i }
  FOR i = 1 TO keys2%0 DO { len := len+1; keys%len := keys2%i }
//sawritef("*nkeys: ")
//FOR i = 1 TO len DO sawrch(keys%i)
//sawrch('*n')
//abort(2222)
  RESULTIS rdargslen(keys, len, argv, upb)
}

AND rdargslen(keys, len, argv, upb) = VALOF
{ MANIFEST
  { a_bit =  1            // /A    must provide argument
    k_bit =  2            // /K    must use keyword
    s_bit =  4            // /S    switch argument
    n_bit =  8            // /N    number argument
    p_bit = 16            // /P    prompt if needed
    d_bit = 32            // argument defined bit
  }

  LET w        = 0       // w is a moving pointer into argv
  LET argmax   = 0
  LET errflag  = FALSE   // Set to TRUE when an error is encountered
  LET keyword  = VEC 30
  AND argtype  = VEC 127 // Space for argument qualifier bits

  // A typical key string is: "FROM=DATA/A,TO/K/P,VAL/K/N,T=TRACE/S"
//sawritef("argv %n to %n  upb=%n*n", argv, argv+upb, upb)
  clear_words(argv, upb+1)
  clear_words(argtype, 128)

  // Fill in the argument qualifier bits
  FOR p = 1 TO len DO
  { LET kch = keys%p

    IF kch = '/' SWITCHON capitalch(keys%(p+1)) INTO
    { DEFAULT: // Bad qualifier
               GOTO err

      CASE 'A': argtype!argmax := argtype!argmax | a_bit; ENDCASE
      CASE 'K': argtype!argmax := argtype!argmax | k_bit; ENDCASE
      CASE 'S': argtype!argmax := argtype!argmax | s_bit; ENDCASE
      CASE 'N': argtype!argmax := argtype!argmax | n_bit; ENDCASE
      CASE 'P': argtype!argmax := argtype!argmax | p_bit; ENDCASE
    }

    IF kch = ',' DO
    { argmax := argmax+1
      IF argmax>127 DO
      { sawritef("Error: rdargs format specified too many arguments*n")
        RESULTIS 0
      }
    }
  }

//sawritef("argmax = %n*n", argmax)
//abort(3333)
  // Check that no argument has both /S and /N set.
  FOR i = 0 TO argmax DO
    IF (argtype!i & (s_bit|n_bit)) = (s_bit|n_bit) GOTO err

//  FOR i = 0 TO argmax DO sawritef("%i3: %b6*n", i, argtype!i)
//sawritef("*n")

  w := argv + argmax + 1 // First free position in argv

  { // Main loop
    LET argno = -1
    LET wupb = upb - (w - argv) // Number of words remaining in argv
    LET itemtype = rditem(w, wupb)

    clear_words(keyword, 31) // Clear keyword!0 to keyword!30

    SWITCHON itemtype INTO
    { DEFAULT: // Unknown item type
               GOTO err

      CASE 0:  // endstreamch
      CASE 3:  // newline
      CASE 4:  // semicolon
// These item types mark the end of the argument list, but there may
// still be prompted input from the user.

               FOR i = 0 TO argmax DO
               { LET type = argtype!i
//sawritef("%i3: %b6*n", i, type)
//abort(4444)
                 UNLESS (argtype!i & (p_bit|d_bit))=p_bit &
                        cis!scb_type = scbt_console       &
                        cos!scb_type = scbt_console       LOOP

                 // Unset argument found with /P qualifier and both
                 // input and output are connected to a terminal so
                 // write a suitable prompt.
                 writes(getkeylen(keys, len, i, keyword))
                 UNLESS (argtype!i & s_bit) = 0 DO writes(" (yes/no)")
                 writes(" > ")
                 deplete(cos)
//sawritef("*nw=%n wupb=%n*n", w, wupb)
//abort(8888)
                 itemtype := rditem(w, wupb)
//abort(9999)

                 SWITCHON itemtype INTO
                 { CASE 0: // endstreamch
                           ENDCASE

                   CASE 1: // Unquoted item
//abort(7777)
                           IF (type & s_bit) ~= 0 DO
                           { argv!i := FALSE
                             IF compstring(w, "yes") = 0 |
                                compstring(w, "y") = 0 DO argv!i := TRUE
                             argtype!i := argtype!i | d_bit
                             GOTO skip
                           }

                           IF (type & n_bit) ~= 0 DO
                           { argv!i := w   // numeric
                             UNLESS string_to_number(w) GOTO err
                             !w := result2
                             argv!i := w
                             argtype!i := argtype!i | d_bit
                             w  := w + 1
                             wupb := wupb-1
                             GOTO skip
                           }

                   CASE 2: // Quoted item
                           // or unquoted item with neither /S or /N
//abort(5555)
                           argv!i := w
                           argtype!i := argtype!i | d_bit
                           w := w + w%0/bytesperword + 1
                           wupb := upb - (w - argv)
//sawritef("%i4: w=%i6  %b6  wupb=%n*n", i, w, argtype!i, wupb)
//abort(6666)
skip:
                           unrdch()
                           { LET ch = rdch()
                             IF ch='*n' | ch=';' | ch=endstreamch BREAK
                           } REPEAT
                           LOOP

                   CASE 3: // newline
                           // Do not set this argument.
                           LOOP

                   CASE 4: // semicolon
                           ENDCASE

                   DEFAULT:GOTO err
                 }
               } // End of for-loop

               // Before returning, check that all the required
               // arguments have been set.
               FOR i = 0 TO argmax DO
                 IF (argtype!i & (a_bit|d_bit))=a_bit GOTO err

               result2 := 0
               RESULTIS w // Point to first unused word in argv

      CASE 1:  // Unquoted item

               argno := findarglen(keys, len, w)

               TEST argno >= 0
               THEN { // Item matches a keyword

                      // Error is argument already defined
                      IF (argtype!argno & d_bit) ~= 0 GOTO err

                      // Check for /S qualifier
                      IF (argtype!argno & s_bit) ~= 0 DO
                      { argv!argno := -1 // Set the switch argument
                        argtype!argno := argtype!argno | d_bit
                        LOOP
                      }

                      // Read the argument value
                      { LET item = rditem(w, wupb)

                        IF item = 5 DO // Skip optional '='
                          item := rditem(w, wupb)

                        // Check for suitable value
                        UNLESS item=1 | item=2 GOTO err
                      }
                    }

               ELSE TEST rdch() = '*n' & compstring("?", w) = 0
                    THEN { FOR i = 1 TO len DO wrch(keys%i)
                           writes(": ")
                           deplete(cos) // MR 13/1/03
                           ENDCASE
                         }
                    ELSE unrdch()

// Deliberate missing 'ENDCASE'

      CASE 2: // The item was either quoted or
              // was unquoted but did not match a key word.
              // So it is a positional argument.
              // Find the first unset argument no having /K or /S
              IF argno < 0 FOR i = 0 TO argmax DO
                IF (argtype!i & (d_bit|k_bit|s_bit)) = 0 DO
                { argno := i
                  BREAK
                }

              // If the argument did not match a keyword and
              // there are no more positional arguments left
              // indicate a error.
              UNLESS argno>=0 GOTO err

              // Error if this argument is already set
              IF (argtype!argno & d_bit) ~= 0 GOTO err

              IF (argtype!argno & n_bit) ~= 0 DO
              { UNLESS string_to_number(w) GOTO err
                !w := result2
                argv!argno := w
                argtype!argno := argtype!argno | d_bit
                w  := w + 1
                LOOP
              }

              // Store an ordinary or quoted argument value
              argv!argno := w
              argtype!argno := argtype!argno | d_bit
              w := w + w%0/bytesperword + 1
              LOOP

    } // End of main switch
  } REPEAT

err: // An error was detected so skip to the end of the line.
  { LET ch = ?
    unrdch()
    ch := rdch() REPEATUNTIL ch='*n' |
                             ch=';'  |
                             ch=endstreamch
    result2 := 120  // Bad argument format or bad arguments
    RESULTIS 0  // Error result
  }
}

// Read an item from current input stream

// returns -1    error, input too long or unmatched quote
//          0    endstreamch
//          1    unquoted item
//          2    quoted item
//          3    *n
//          4    ;
//          5    =

// When an unquoted item is read its terminating character is
// unrdch-ed so that it can be read again by the next call of rdch.
// All items other items, namely strings, newline, ';', '=' and
// endstreamch, are self terminating and so do not need unrdch
// to be called.

AND rditem(v, upb) = VALOF
{ LET p, pmax = 0, (upb+1)*bytesperword-1
  // With bytesperword=4
  // upb=0 => pmax=3
  // upb=1 => pmax=7
  // ...
  LET ch, quoted = rdch(), FALSE
//sawritef("rditem: clearing from %n to %n*n", v, v+upb)
//abort(1023)
  FOR i = 0 TO upb DO v!i := 0

//sawritef("*nrditem first ch = '%c'*n", ch)

  // Skip over white space.
  WHILE ch='*s' | ch='*t' | ch='*c' DO ch := rdch()

  IF ch=endstreamch RESULTIS  0   // EOF
  IF ch='*n'        RESULTIS  3   // '*n'
  IF ch=';'         RESULTIS  4   // ';'
  IF ch='='         RESULTIS  5   // '='

  IF ch='"' DO { ch :=  rdch()
                 IF ch='*c' LOOP
                 IF ch='*n' | ch=endstreamch RESULTIS -1 // Error
                 IF ch='"' RESULTIS 2 // Found a quoted string.
                 IF ch='**' DO { ch := rdch()
                                 IF capitalch(ch)='N'  DO ch := '*n'
                                 IF capitalch(ch)='*"' DO ch := '*"' // MR 8/1/03
                               }
                 p := p+1
                 IF p>pmax RESULTIS -1 // Error
                 v%0, v%p := p, ch
               } REPEAT

  // Copy chars of an unquoted item into v
  UNTIL ch='*n' | ch='*s' | ch='*t' | ch=';' | ch='=' | ch=endstreamch DO
  { p := p+1
    IF p>pmax RESULTIS -1              // Error
    v%0, v%p := p, ch
    ch := rdch() REPEATWHILE ch='*c'
  }
  // Unrdch its terminating character

//sawritef("rditem returning type 1 %s, ch=%x2 '%c'*n", v, ch, ch)
  UNLESS ch=endstreamch DO unrdch()
  RESULTIS 1                            // Unquoted item
}

AND findarg(keys, w) = findarglen(keys, keys%0, w)

AND findarglen(keys, len, w) = VALOF
{ MANIFEST { matching = 0; skipping = 1 }
  LET state, wp, argno = matching, 0, 0
  FOR i = 1 TO len DO
  { LET kch=keys%i
    IF state=matching DO
    { IF (kch='=' | kch='/' | kch=',') & wp=w%0 DO
        RESULTIS argno
      wp := wp + 1
      UNLESS compch(kch, w%wp) = 0 DO state := skipping
    }
    IF kch=',' | kch='=' DO state, wp := matching, 0
    IF kch = ',' DO argno := argno + 1
  }
  IF state = matching & wp = w%0 RESULTIS argno
  RESULTIS -1
}

AND string_to_number(s) = VALOF
// Return TRUE if OK with value in result2
//        FALSE and result2=0 if s is not a number
// Example strings:
//   'A'
//  123    -99    +63
//  #377   -#x7FF +#b_1011_0011
// It ignores underscores in digit strings
{ LET p, len = 1, s%0
  LET neg, radix = FALSE, 10
  LET ch = ?

  result2 := 0
  UNLESS len RESULTIS FALSE
  ch := capitalch(s%p)
  IF ch = '*'' & len = 3 & s%3 = '*'' DO
  { result2 := s%2
    RESULTIS TRUE
  }

  IF ch = '+' | ch = '-' DO
  { neg := ch = '-'
    IF p = len RESULTIS TRUE
    p := p + 1
    ch := capitalch(s%p)
  }
  IF ch = '#' DO
  { radix := 8
    IF p = len RESULTIS TRUE
    p := p + 1
    ch := capitalch(s%p)
    IF ch = 'O' | ch = 'X' | ch = 'B' DO
    { IF ch = 'X' DO radix := 16
      IF ch = 'B' DO radix := 2
      IF p = len RESULTIS TRUE
      p := p + 1
      ch := capitalch(s%p)
    }
  }

  { LET n = '0' <= ch <= '9' -> ch - '0',
            'A' <= ch <= 'Z' -> ch - 'A' + 10,
            ch='_' -> -1, // Ignore underscores in numbers
            1000
    UNLESS n < radix RESULTIS FALSE
    IF n>=0 DO result2 := result2 * radix + n
    p := p + 1
    IF p > len BREAK
    ch := capitalch(s%p)
  } REPEAT

  IF neg DO result2 := -result2
  RESULTIS TRUE
}

AND copystring(from, to) BE
  FOR i = 0 TO from%0 DO to%i := from%i

AND copy_words(from, to, n) BE
  FOR i = 0 TO n-1 DO to!i := from!i

AND clear_words(v, n) BE
  FOR i = 0 TO n-1 DO v!i := 0

AND copy_bytes(fromlen, from, fillch, tolen, to) = VALOF
// This is an implementation of the VAX MOVC5 instruction
// for copying bytes.
{ LET n = fromlen
  // from and to are byte addresses!!!!!
  IF n>tolen DO n := tolen
  // This code need checking!!!!!
  FOR i = 0 TO n-1 DO 0%(to+i) := 0%(from+i)
  FOR i = n TO tolen-1 DO 0%(to+i) := fillch
  RESULTIS fromlen-n // Number of non copied characters
}



AND readn() = VALOF
{ LET sum, ch, neg = 0, 0, FALSE

  { ch := rdch()
    IF '0'<=ch<='9' BREAK
    SWITCHON ch INTO
    { DEFAULT:   unrdch()
                 result2 := -1
                 RESULTIS 0
      CASE '*s':
      CASE '*t':
      CASE '*n': LOOP

      CASE '-':  neg := TRUE
      CASE '+':  ch := rdch()
                 BREAK
    }
  } REPEAT

  WHILE '0'<=ch<='9' DO
  { sum := 10 * sum + ch - '0'
    ch := rdch()
  }
  IF neg DO sum := -sum
  unrdch()
  result2 := 0
  RESULTIS sum
}

AND input() = cis

AND output() = cos

AND writeflt(x, w, p) BE
{ // Write a floating point number x in a field width w.
  // p is the number of digits after the decimal point.
  // p will be forced to be >= 0
  // w will be forced to be >= p+3 to allow for a possible sign,
  //   one digit before the decimal point and the decimal point.
  LET val = sys(Sys_flt, fl_unmk, x) // Upto 18 digits in val
  LET e = result2                    // x = val times 10^e
  // val has upto 18 digits on 64 bit BCPL systems
  //     and upto  9 digits on 32 bit BCPL systems
  // If val=0 the number is 0.0
  // otherwise val is an integer containing upto 18 (or 9) decimal digits
  // Its most and least significant digits will both non zero.
  LET digv = VEC 18 // will hold upto 18+1 extracted decimal digits.
                    // The +1 is because rounding may add another digit.
  LET n = ?  // digv!0,.., digv!n will hold the extracted decimal digits.
             // Positions outside the range 0 to p representing zeroes,
             // so we can thinks of the given digits to be extended by
             // zeroes in both directions.
             // The digit at position 0 represents the value digv!0 x 10^e
  LET q = ?  // The position in digv of the first digit after the
             // decimal point. It value will be -e.
  LET r = ?  // The position of the p^th digit after the decimal point,
             // ie the last digit of the fraction to be output. It value
             // will be q-p.
  LET s = ?  // The position corresponding to the sign ('-' or ' ') to
             // the left of the most significant digit.
  LET f = ?  // Position of the first digit of val.
  LET t = ?  // The position of the first character to output which will
             // be either a sign or padding space.

  LET neg = FALSE
  IF val<0 DO neg, val := TRUE, -val // Ensure that val is >=0
//writef("*nval=%n e=%n neg=%n*n", val, e, neg)
  IF val=0 DO e := 0 // The number was 0.0

  IF p<0 DO p := 0 // p must not be negative
  IF w<4 DO w := 4 // Minimum width number is: Sd.d

  // Extract the decimal digits into digv!0,..., digv!n
  n := 0

  { digv!n := val MOD 10  // Extract the next digit
    val    := val  /  10
    n := n+1
  } REPEATWHILE val
  // digv!0     is the least significant digit and
  // digv!(n-1) is the most significant digit.
  // n is > 0

  // val was >= 0 and its digits are now held in positions 0 to n
  // of digv. Position zero holds the least significant digit
  // corresponding to digv!0 x 10^e. Digits at positons outside
  // the range 0 to n are treated as zeroes.
  // We now set the values of q,r,s, f and t. As an example,
  // If val=-1275, e=-2, w=11 and p=4 the settings are as follows:

  //         n                number of significant digits
  //           3 2 1 0        subscripts of digv
  //   S S S - 1 2.7 5 0 0    the Ss are padding spaces
  //   |     | | |       |
  //   |     | | q       |    position of the units digit
  //   |     | |         r    position of p^th fractional digit
  //   |     | |              position of the most significant
  //   |     | f              digit of val, f=n-1
  //   |     s                position of sign. If f>q s = q+1
  //   |                      otherwiae s = f+1
  //   t                      position of first character, t=r+w-1
  //                          If this is < s there are no padding spaces.

  // val and e are obtained from the sys(Sys_flt, fl_unmk, x) call.
  // The n digits of val are placed in digv!0 to digv!(n-1).
  // digv!0 is the least significant digit and figv!(n-1) is
  // non zero. The sign is held in neg.
  // p>=0 is the number of fractional digits.
  // If p=0 there are no fractional digits and the decimal point
  // is not output.

  // The calculations of the values of q, r, s, t are as follows:
  // If e=0 the units digit is in div!0
  // If e=-1 the units digit is in digv!1
  // etc so
  q := -e

  // r is chosen to give p digits after the decimal point and p
  // must be non zero, so
  IF p<0 DO p := 0
  r := q-p
  // Bear in mind both q and r may be subscripts of digv out of
  // the range of the digits provided by val.

  // If there is a digit from val greater than or equal to 5 at
  // position r-1 we must round up the number.

  IF 1 <= r <= n &      // dig!(r-1) is a digit from val
     digv!(r-1)>=5 DO   // Is it >= 5
  { // Yes, so add 1 at digit position r
    LET carry = 1       // We are adding 1
    LET i = r
    WHILE carry & i<n DO
    { LET d = digv!i + carry
      digv!i := d MOD 10
      carry  := d  /  10
      i := i+1
    }
    IF carry DO
    { // i must = n
      digv!n := 1   // We must be rounding from eg  99999 to
      n := n+1      //                             100000
                    // This increases the number of digits
		    // in digv.
    }
  }

//writef("*nAfter rounding:  ")
//writef("w=%n n=%n q=%n [", w, n, q)
//FOR j = 0 TO n-1 DO writef(" %n", digv!j)
//writef(" ]*n")

  f := n-1          // The subscript of digv holding the most
                    // significant digit of val.

  TEST f>q THEN s := f+1 // s is just left of the most significant digit.
           ELSE s := q+1 // s if just left of the units digit

  t := r + w - 1

//newline()
//writef("neg=%n w=%n p=%n n=%n t=%n s=%n f=%n q=%n r=%n*n",
//        neg, w, p, n, t, s, f, q, r)
//newline()

  // If the number only has zeroes neg should be FALSE
  IF neg DO
  { LET allzero = TRUE
    FOR j = r TO f>q->f,q IF 0<=j<n & digv!j DO { allzero := FALSE; BREAK }
    IF allzero DO neg := FALSE
  }
//  writef("all digits zero so neg=%n*n", neg)

  // Write out the padding spaces
  FOR i = t TO s+1 BY -1 DO wrch('*s')
  // write the sign
  TEST neg THEN wrch('-')
           ELSE wrch(' ')

  // Output the digits and the decimal point, if any.
  FOR i = s-1 TO r BY -1 DO
  { TEST 0 <= i < n THEN wrch(digv!i + '0')
                    ELSE wrch('0')
    // Conditionally output the decimal point
    IF i = q DO wrch('.')
  }
}

AND writez(n, d) BE writedz(n, d, TRUE,  n<0)

AND dat_to_strings(datv, v) = VALOF

// Returns v containing 3 strings representing the
// time and date given in datv, where
// datv!0 = days since 1 Jan 1970
// datv!1 = msecs since midnight
// datv!2 = -1
// or old format (no longer used)
// datv!0 = days since 1 Jan 1978
// datv!1 = mins since midnight
// datv!2 = ticks since start of current minute

// On return,
// v    contains a the date in the form DD-MMM-YYYY,
// v+5  contains the time in the format HH:MM:SS, and
// v+10 contains the day of the week.
// Vector v should have an upperbound of 14
// If the date is unset (days = 0) then the strings
// are all set to "<unset>"

{ LET days, msecs = datv!0, datv!1
  LET datestr, timestr, dowstr = v, v+5, v+10
  LET year = 1970 // BCPL, Unix and Windows epoc
  LET month = 1
  LET dayofweek = ?
  LET dowtemp = ?
  LET hours, mins, secs = ?, ?, ?
  LET monthtab     = TABLE   0, 31, 59, 90,120,151,
                           181,212,243,273,304,334,365
  LET leapmonthtab = TABLE   0, 31, 60, 91,121,152,
                           182,213,244,274,305,335,366
  LET mchars = "JanFebMarAprMayJunJulAugSepOctNovDec"
  LET mcharbase = ?
  LET mtable = ?

  //IF datv!2>=0 DO // No longer used
  //{ // Convert old dat format to new
  //  days := days + 2922 // Days between 1 Jan 1970 and 1978
  //  // Convert (mins,ticks) to msecs assuming 1000 ticks per second
  //  msecs  := datv!1*60_000 + datv!2
  //  datv!2 := -1 // mark as new dat format
  //}

  dayofweek := (days+4) MOD 7 // 1 Jan 1970 was a Thursday (code=4)
  secs  := msecs/1000         // Seconds since midnight
  msecs := msecs MOD 1000     // msecs since start of current second

//sawritef("dat_to_strings: days=%n secs=%n msecs=%n*n", days, secs, msecs)
  // Deal with case of unset date
  IF days <= 0 DO
  { LET unset = "<unset>"
    FOR i = 0 TO unset%0 DO
    { LET c = unset%i
      datestr%i := c
      timestr%i := c
      dowstr%i  := c
    }
    RESULTIS v
  }

  days := days + 1
  FOR j=0 TO 9 DO datestr%j := "DD-MMM-YYYY"%j
  FOR j=0 TO 8 DO timestr%j := "HH:MM:SS"%j

  // Construct date

  { // Loop to get year
    LET yearlen = isleap(year) -> 366, 365
    IF days <= yearlen BREAK
    days, year := days - yearlen, year + 1
  } REPEAT

  datestr%8  := year/1000 MOD 10 + '0'
  datestr%9  := year/100  MOD 10 + '0'
  datestr%10 := year/10   MOD 10 + '0'
  datestr%11 := year      MOD 10 + '0'

  // Find the month
  mtable := isleap(year) -> leapmonthtab, monthtab

  // 1 <= days <= 366
  month := 1 + days / 32 // Actual month or one less
  IF days > mtable ! month DO month := month+1

  mcharbase := month*3 - 2
  FOR j = 0 TO 2 DO datestr%(4+j) := mchars % (mcharbase + j)
  days := days - mtable ! (month - 1)
  datestr%1 := days/10 + '0'
  datestr%2 := days MOD 10 + '0'

  // Construct time

  mins  := secs  /  60
  hours := mins  /  60
  mins  := mins MOD 60
  secs  := secs MOD 60

  timestr%1 := hours/10 + '0'
  timestr%2 := hours MOD 10 + '0'
  timestr%4 := mins/10 + '0'
  timestr%5 := mins MOD 10 + '0'
  timestr%7 := secs/10 MOD 10 + '0'
  timestr%8 := secs MOD 10 + '0'

  // Get day of week

  dowtemp := VALOF SWITCHON dayofweek INTO
      { CASE 0: RESULTIS "Sunday"
        CASE 1: RESULTIS "Monday"
        CASE 2: RESULTIS "Tuesday"
        CASE 3: RESULTIS "Wednesday"
        CASE 4: RESULTIS "Thursday"
        CASE 5: RESULTIS "Friday"
        CASE 6: RESULTIS "Saturday"
      }

  FOR j = 0 TO dowtemp%0 DO dowstr%j := dowtemp%j

  RESULTIS v
}

AND isleap(year) = year MOD 400 = 0 -> TRUE,
                   year MOD 100 = 0 -> FALSE,
                   year MOD   4 = 0 -> TRUE,
                                       FALSE

AND readflt() = VALOF
{ // Read and return a floating point number from the
  // currently selected input stream.
  // Syntax: spaces [+|-] [digits] [. digits] [e [+|-] digits]
  // where spaces is zero or more white space chacters
  //       [+|-] is an optional sign
  //       digits is one or more decimal digits.
  // There must be at least one digit before or after the decimal point.
  // Underscores may be embedded in digit sequences.
  // If successful, the result is the 32-bit or 64-bit representation
  // of the floating point number, and result2 is zero.
  // On failure the result is zero and result2 to -1.

  // The strategy is as follows.
  // Read and ignore white space: newline, newpage, tab and spaces.
  // Read and remember the optional sign.
  // Accumulate up to 9 or 17 digits in val.
  // Count but otherwise ignore any additional digits left of the
  // optional decimal point. Remember the number of non ignored
  // digits following the optional decimal point.
  // Negate val if the sign was negative,
  // If the next character is E or e read and remember the optional
  // exponent sign and accumulate the exponent digits in exponent.
  // Negate exponent if negative.
  // Return the 32- or 64-bit floating point number based on
  // the val, the number of significant ignored digit and the
  // exponent using sys(Sys_flt, fl_mk, val, exponent).

  LET ch = rdch()
  LET err = FALSE   // Set to TRUE if the number is bad.
  LET neg = FALSE   // Sign of significand or exponent
  LET dmax = ON64 -> 17, 9
  LET digs = FALSE  // Set to TRUE by the first decimal digit
                    // This must be TRUE for a valid number
  LET dcount = -1   // =-1 or the number of digits after the
                    // leading zeroes.
  LET fcount = -1   // =-1 or the number of digits after the
                    // decimal point, if any.
  LET val, exponent = 0, 0

//sawritef("readflt: entered*n"); checkpos(ch)

  // Ignore leading white space
  WHILE ch='*s' | ch='*t' | ch='*n' | ch='*p' DO
  { //sawritef("readflt: reading white space chat %n*n", ch)
    ch := rdch()
  }

  IF ch='-' | ch='+' DO
  { IF ch='-' DO neg := TRUE // val must be negated
//sawritef("readflt: dealing with '%c'*n", ch)
    ch := rdch()
  }

  // Read the significand
  WHILE '0'<=ch<='9' | ch='_' | ch='.' DO
  { //sawritef("readflt: reading significand '%c'*n", ch)
    IF ch='_' DO
    { ch := rdch()
      LOOP
    }

    IF ch='.' DO
    { //sawritef("readflt: dealing with '%c'*n", ch)
      IF fcount>=0 DO err := TRUE // Only one '.' allowed
      fcount := 0 // Start counting fractional digits
      ch := rdch()
      LOOP
    }

    // ch must be a digit
    digs := TRUE // The significand has at least one digit.
    IF ch>'0' & dcount<0 DO dcount := 0
    IF dcount>=0 DO dcount := dcount + 1
    IF dcount <= dmax DO
       val := 10*val + ch - '0' // Accumulate the significand
    ch := rdch()
    IF fcount >= 0 DO fcount := fcount+1 // Count the fractional
                                         // digits
  }

  IF neg DO val := -val

//sawritef("readflt: significand = %n dcount=%n fcount=%n digs=%n*n",
//          val, dcount, fcount, digs)

  // dcount = number of digits after the leading zeroes
  // fcount indicates the number of digits after the decimal point.
  // digs is TRUE if there were any digits.

  // Read the an exponent is given.
  IF ch='e' | ch='E' DO
  { neg := FALSE
//sawritef("readflt: reading exponent*n")
    ch := rdch()

    IF ch='-' | ch='+' DO
    { //sawritef("readflt: reading exponent sign '%c'*n", ch)
      IF ch='-' DO neg := TRUE
      ch := rdch()
    }
    // Read the exponent
    WHILE '0'<=ch<='9' | ch='_' DO
    { sawritef("readflt: reading exponent ch='%c'*n", ch)
      UNLESS ch='_' DO exponent := 10*exponent + ch - '0'
      ch := rdch()
    }
    // Negate exponent if necessary.
    IF neg DO exponent := -exponent
  }
//sawritef("readflt: exponent=%n*n", exponent)

  // Unread the terminating character.
//sawritef("readflt: about to call unrdch before returning*n")

  unrdch()

  // Correct the exponent.
  IF dcount<0 DO dcount := 1 // All digits were zero
  IF fcount<0 DO fcount := 0 // There was no decimal point
  IF dcount < dmax DO dmax := dcount

  // The number of diigits to the right of the least significant
  // digit of the significand is: fcount-dmax
  // so we must add dcount-dmax-fcount to the exponent
//sawritef("readflt: val=%n exponent=%n dcount=%n fcount=%n dmax=%n*n",
//          val, exponent, dcount, fcount, dmax)
  exponent := exponent + dcount - dmax - fcount

succ:
  IF err DO
  { result2 := -1
//sawritef("readflt: Bad number*n")
//abort(999)
    RESULTIS 0
  }

  // Convert val x 10^exponent to a floating point number of the
  // current BCPL word length.
  val := sys(Sys_flt, fl_mk, val, exponent)
//sawritef("readflt: return result %13.6f  val=%8x*n", val, val)
  result2 :=  0  // Successful return
  //abort(1679)
  RESULTIS val
}


MANIFEST $(
    ABORT_UNKNOWNDCB = 100         // Attempt to close a DCB that was already closed?
    ABORT_NOCIS                    // Attempt to operate on CIS when none is selected
    ABORT_NOCOS                    // Attempt to operate on COS when none is selected
    ABORT_UNDEFINEDGLOBAL          // Attempt to call an undefined globak
    ABORT_STARTUNDEFINED           // No definition for start()
$)

// -----------------------------------------------------------------------------
// Local implementations
// -----------------------------------------------------------------------------

// We don't yet support the BCPL language feature that arguments to routines
// have consecutive stack addresses and so can be treated as a vector so we
// need our owr writef wrapper.
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

// To provide simple cintpos support, we implement sys in BCPL as part
// of BLIB. This code is used by code included from the official BLIB

// This call decomposes the floating point number a returning the signed
// integer mantissa and leaving the decimal exponent in result2. For example,
// fl_unmk64(1234.5678) will return 12345678 leaving -4 in result2.
LET fl_unmk64(f) = VALOF $(

    LET mantissa = ?
    LET exponent = 0
    LET d = f
    LET neg = FALSE

    IF d #= 0.0 DO $(
        result2 := 0
        RESULTIS 0
    $)

    // Make sure we work with a positive value. We will restore the correct
    // sign on exit
    neg := d #< 0.0
    IF neg DO d := #- d

    // We are now going to "normalise" our floating point value so that
    // lies in the range 1 <= d < 10, one digit before the decimal point.
    // The first step is to reduce values above this range. To minimise
    // the rounding error we use a large power of ten initially and then
    // a few steps 10-by-10.
    // while d>=10 divide by a power of 10 and adjust the exponent.
    WHILE d #>= 100000.0 & exponent < 100 DO$(
        d #/:= 100000.0
        exponent +:= 5
    $)

    WHILE d #>= 10.0 & exponent < 100 DO$(
        d #/:= 10.0
        exponent +:= 1
    $)

    IF  exponent >= 100 DO $(
        result2 := 100
        RESULTIS 1
    $)

    // Having reduced and large number to be less than 10, we now consider
    // the case of values less than or equal to 1. Here, we scale up the
    // value in a similar way to above

    WHILE d #<= 0.00001 & exponent > -100 DO $(
        d #*:= 100000.0
        exponent -:= 5
    $)

    WHILE d #< 1.0 & exponent > -100 DO $(
        d #*:= 10.0
        exponent -:= 1
    $)

    IF exponent <= -100  DO $(
        result2 := 0 // Treat 1E-100 as 0.0
        RESULTIS 0
    $)

    // Now we know it is in the range 1 <= d < 10 we can obtain all of
    // the 17 decimal digits in the mantissa
    // d is now <10.0 and >= 1.0
    mantissa := FIX (d * 1e16)     // Mantissa has 17 digits
    exponent -:= 16

    // If this is the 32-bit world, then there are only 9 significant
    // digits in the mantissa so we need to adjust it accordingly
    IF BYTESPERWORD = 4 DO $(
        WHILE mantissa >= 1e10 DO $(
            mantissa /:= 10  // Divide by 10 without rounding
            exponent +:= 1
        $)
        IF mantissa >= 1e9 DO $(
            mantissa := (mantissa+5)/10  // Divide by 10 with rounding
            exponent +:= 1
        $)
    $)

    // Divide mantissa by 10 with rounding and correct the exponent.
    mantissa := (mantissa+5)/10
    exponent +:= 1

    // Ensure the least significant decimal digit of mantissa
    // is not 0. Checking mantissa non zero for safety.
    WHILE (mantissa REM 10) = 0 & mantissa ~= 0 DO $(
        mantissa /:= 10
        exponent +:= 1
    $)

    IF  mantissa = 0 DO exponent := 0 // For safety.

    result2 := exponent
    RESULTIS neg -> -mantissa, mantissa
$)

LET sys_flt(operation, a, b, c, d) = VALOF $(
    LET result = ?
    SWITCHON operation INTO $(

        CASE fl_avail: result := TRUE;                                  ENDCASE

        CASE fl_mk:
            // a=mantissa, b=exponent
            result := FLOAT a
            WHILE b > 0 DO $( result #*:= 10.0; b -:= 1 $)
            WHILE b < 0 DO $( result #/:= 10.0; b +:= 1 $)
        ENDCASE

        CASE fl_unmk: result := fl_unmk64 (a);                          ENDCASE

        CASE fl_float: result := FLOAT a;                               ENDCASE
        CASE fl_fix:   result := FIX a;                                 ENDCASE
        CASE fl_abs:   result := a #>= 0.0 -> a, #- a;                  ENDCASE
        CASE fl_mul:   result := a #* b;                                ENDCASE
        CASE fl_div:   result := a #/ b;                                ENDCASE
        CASE fl_add:   result := a #+ b;                                ENDCASE
        CASE fl_sub:   result := a #- b;                                ENDCASE
        CASE fl_pos:   result := a;                                     ENDCASE
        CASE fl_neg:   result := #- a;                                  ENDCASE
        CASE fl_eq:    result := a #= b;                                ENDCASE
        CASE fl_ne:    result := a #~= b;                               ENDCASE
        CASE fl_gr:    result := a #> b;                                ENDCASE
        CASE fl_ge:    result := a #>= b;                               ENDCASE
        CASE fl_ls:    result := a #< b;                                ENDCASE
        CASE fl_le:    result := a #<= b;                               ENDCASE

        DEFAULT:
            writef("ERROR sys_flt operation=%n a=%16x b=%16x c=%16x d=%16x*n", operation, a, b, c, d)
            stop(1)
    $)
    RESULTIS result

$)

LET sys(package, operation, a, b, c, d) = VALOF $(
    LET result = ?
    SWITCHON package INTO $(
        CASE Sys_sardch: result := rdch();                              ENDCASE
        CASE Sys_sawrch: result := wrch(operation);                     ENDCASE
        CASE Sys_flt:    result := sys_flt(operation, a, b, c, d);      ENDCASE
        DEFAULT:
            writef("ERROR sys package=%n operation=%n a=%16x b=%16x c=%16x d=%16x*n", package, operation, a, b, c, d)
            stop(1)
    $)
    RESULTIS result
$)

AND writes(s) BE FOR i = 1 TO s%0 DO wrch(s%i)

LET writefp(a, f, n) BE writeflt(a, f, n)
LET readfp(a) = readflt()

// A stub to support rditem below
LET deplete(stream) BE stop(1)

LET abort(code) BE $(
    opsys(OPSYS_EXIT, code)
$)

// -- Routines defined in the proposed BCPL standard ---------------------------

// -- Portable implmentations

LET fplus(a, b, c)  = VALOF $( !c := !a #+ !b; RESULTIS c $)
LET fminus(a, b, c) = VALOF $( !c := !a #- !b; RESULTIS c $)
LET fmult(a, b, c)  = VALOF $( !c := !a #* !b; RESULTIS c $)
LET fdiv(a, b, c)   = VALOF $( !c := !a #/ !b; RESULTIS c $)
LET fneg(a, c)      = VALOF $( !c := #- !a;    RESULTIS c $)
LET ffix(a)         = FIX !a
LET ffloat(a, b)    = VALOF $( !b := FLOAT !a; RESULTIS b $)
LET fcomp(a, b)     = !a = !b -> 0, !a > !b -> 1, -1
LET fabs(a, b)      = VALOF $( !b := #ABS !a; RESULTIS b $)

// -- The BCPL Heap ------------------------------------------------------------

MANIFEST $(
    HEAP_SIZE = 1024*1024
    SIZE = SLCT 63:0:0
    FREE = SLCT 1:63:0
    SUCC = SLCT 0:0:1
    PREV = SLCT 0:0:2
    NULLPTR = 0
    SENTINAL_SIZE = 1
    SENTINAL = #x0BAD1FDEFACED0
    ALLOCATED_HEADER_SIZE = 1
$)

STATIC $(
    mmap__head = 0
    heap_start = 0
    heap_end
    free_list
    num_gets                   // Number of calls to getvec
    num_frees                  // Number of calls to freevec
    largest_get                // Largest requested size, in words
    largest_use                // Usage HWM in words of user space
    current_use                // Current usage in words of user space
$)

// A block on the freelist:
//
//  --->+---+----------------+
//      | 1 | size           |     size of block in bcplwords including header
//      +---+----------------+
//      |    SUCC            |-->  bcpladdress of SUCC block or NULLPTR
//      +---+----------------+
//   <--|    prev            |     bcpladdress of previous block or NULLPT
//      +---+----------------+
//      |       space        |
//      +---+----------------+     <-- bcpl address of space after block = address + size
//
// An allocated block:
//
//      +---+----------------+
//      | 0 | size           |     size of block in bcplwords including header
//      +---+----------------+ <-- returned address
//      |      SENTINAL      |
//      +--------------------+
//      |       space        |
//      +--------------------+
//      |      SENTINAL      |
//      +--------------------+

LET blib.dumpheap() BE $(

    LET current = free_list
    LET largest = 0
    LET count = 0
    LET free_space = 0

    writes("*N-- HEAP SPACE ------------------------------------------------------------------*n*n")
    TEST heap_start = NULLPTR THEN $(
        writef("Heap not allocated*n")
    $)
    ELSE $(
        writef("Heap of %N words allocated at range %16X..%16X (byte address %16X..%16X)*n", HEAP_SIZE, heap_start, heap_end, heap_start << 3, heap_end << 3)

        writes("*NBlocks on the free list:*n")
        writes("No.  Size (words)      At BCPL address   To BCPL address    Contents...*N")
        $(
            count +:= 1
            free_space +:= SIZE OF current
            IF SIZE OF current > largest DO largest := SIZE OF current
            writef("%4X: %16X %16X..%16X   ", count, SIZE OF current, current, current + SIZE OF current)
            FOR i = 0 TO 4 DO $(
                IF current + i < heap_end DO writehex(current!i, 16) <> wrch(' ')
            $)
            newline()
            current := SUCC OF current
        $) REPEATUNTIL current = NULLPTR
        writes("*nStatistics:*n")
        writef("Free list contains %N words of space in %N blocks. The largest is %N words*N", free_space, count, largest)
        writef("getvecs=%n (largest %n) freevecs=%n current use %n (hwm %n)*n*n", num_gets, largest_get, num_frees, current_use, largest_use)
    $)
$)

LET blib.init_heap() BE $(
    IF heap_start = NULLPTR THEN $(

        // Allocate the heap using the MMAP system call
        heap_start := opsys(OPSYS_MMAP, 0, HEAP_SIZE << 3, MMAP_PROT_READ|MMAP_PROT_WRITE, MMAP_MAP_PRIVATE|MMAP_MAP_ANONYMOUS, 0, 0)
        IF heap_start < 0 THEN opsys(OPSYS_EXIT, -heap_start)
        heap_start >>:= 3
        heap_end := heap_start + HEAP_SIZE

        // Create a free list holding a single block which is the entire heap
        free_list := heap_start
        SIZE OF free_list := HEAP_SIZE
        FREE OF free_list := 1
        SUCC OF free_list := NULLPTR
        PREV OF free_list := NULLPTR

        // Zero our statistics
        num_gets := 0
        num_frees := 0
        largest_get := 0
        largest_use := 0
        current_use := 0
    $)
$)

LET blib.finish_heap() BE $(
    LET status = opsys(OPSYS_MUNMAP, heap_start << 3, HEAP_SIZE << 3)
    heap_start := NULLPTR
$)

// Add block to free list (sorted by address for coalescing)
LET blib.add_to_free_list(block) BE $(

    // Mark the block as free
    FREE OF block := 1
    TEST free_list = NULLPTR THEN $(
        free_list := block
        SUCC OF block := NULLPTR
        PREV OF block := NULLPTR
    $)
    ELSE $(

        // Insert in address order for easier coalescing
        LET current = free_list
        LET prev = 0

        WHILE current ~= NULLPTR & current < block DO $(
            prev := current
            current := SUCC OF current
        $)

        TEST prev = NULLPTR THEN $(
            // Insert at beginning
           SUCC OF block := free_list
           PREV OF block := NULLPTR
           IF free_list ~= NULLPTR DO PREV OF free_list := block
           free_list := block
        $)
        ELSE $(
            // Insert after prev
            SUCC OF block := SUCC OF prev
            PREV OF block := prev
            IF SUCC OF prev ~= NULLPTR DO PREV OF (SUCC OF prev) := block
            SUCC OF prev := block
        $)
    $)
$)

// Remove block from free list
LET blib.remove_from_free_list(block) BE $(
    TEST PREV OF block ~= NULLPTR THEN $(
        SUCC OF (PREV OF block) := SUCC OF block
    $)
    ELSE $(
        free_list := SUCC OF block
    $)
    IF SUCC OF block ~= NULLPTR DO PREV OF (SUCC OF block) := PREV OF block

    SUCC OF block := NULLPTR
    PREV OF block := NULLPTR
$)


// Coalesce adjacent free blocks
LET blib.coalesce(block) = VALOF $(

    // Try to merge with SUCC block
    LET block_end = block + SIZE OF block
    IF block_end < heap_end DO $(
        LET SUCC_block = block_end
        IF FREE OF SUCC_block DO $(
            // Merge with SUCC block
            blib.remove_from_free_list(SUCC_block)
            SIZE OF block +:= SIZE OF SUCC_block
        $)
    $)

    // Try to merge with previous block
    IF PREV OF block ~= NULLPTR & PREV OF block + SIZE OF (PREV OF block) = block  DO $(
        LET prev_block = PREV OF block
        blib.remove_from_free_list(block)
        blib.remove_from_free_list(prev_block)
        SIZE OF prev_block +:= SIZE OF block
        blib.add_to_free_list(prev_block)
        RESULTIS prev_block
    $)

    RESULTIS block
$)

// Split a block if it's too large
LET blib.split_block(block, size) BE $(
    IF SIZE OF block >= size + 1 DO $(
        LET new_block = block + size
        SIZE OF new_block := SIZE OF block - size
        FREE OF new_block := 1
        SIZE OF block := size
        blib.add_to_free_list(new_block)
    $)
$)

LET getvec(upb) = VALOF $(

    // Allocate memory. Remember that getvec specifies the upper bound of the
    // allocated vector so that v!0 and v!upb are both valid addresses.

    // The size of block we are looking for needs to be large enough to
    // hold upb+1 words of user data plus the allocated block header, and
    // the allocated block sentinels
    LET required_size = upb + 1 + SENTINAL_SIZE*2 + ALLOCATED_HEADER_SIZE
    LET current = ?

    blib.init_heap()

    // Find a suitable free block
    current := free_list
    WHILE current ~= NULLPTR DO $(
        IF SIZE OF current >= required_size DO $(

            // Found a suitable block
            blib.remove_from_free_list(current)
            blib.split_block(current, required_size)
            FREE OF current := 0

            // Place a sentinal in the words before and after the user block
            current!1 := SENTINAL
            current!(required_size-1) := SENTINAL

            // Return pointer to data (after header and sentinal)
            num_gets +:= 1
            current_use +:= upb + 1
            IF current_use > largest_use DO largest_use := current_use
            IF upb + 1 > largest_get DO largest_get := upb + 1
            RESULTIS current + 2
        $)

        current := SUCC OF current
    $)

    RESULTIS 0 // No suitable block found
$)

// Free memory
LET freevec(address) BE $(

    IF address ~= 0 DO $(

        // Get block header and the block size in words
        LET block, block_size = address - 2, SIZE OF block

        // Check the sentinals are valid
        IF block!1 ~= SENTINAL | block!(block_size-1) ~= SENTINAL DO $(
            blib.dumpheap("attempt to free damaged block #X%16X", address)
            opsys(OPSYS_EXIT, 42)
        $)

        // Validate pointer is within heap bounds
        IF block <heap_start | block >= heap_end $(
            blib.dumpheap("attempt to free block not allocated by getvec #X%16X", address)
            opsys(OPSYS_EXIT, 42)
        $)

        // A block should not be already free
        IF FREE OF block = 1 DO $(
            blib.dumpheap("attempt to free block already marked as free #X%16X", address)
            opsys(OPSYS_EXIT, 42)
        $)

        blib.add_to_free_list(block)
        blib.coalesce(block)

        num_frees +:= 1
        current_use -:= block_size - (SENTINAL_SIZE*2 + ALLOCATED_HEADER_SIZE)
    $)
$)

// Return the size of the largest block (in words) we can allocate
LET maxvec() = VALOF $(
    LET largest_block = 0
    LET next_block = ?
    blib.init_heap()
    next_block := free_list
    UNTIL next_block = NULLPTR DO $(
        LET usable_size = SIZE OF next_block - (SENTINAL_SIZE*2 + ALLOCATED_HEADER_SIZE)
        IF usable_size > largest_block DO largest_block := usable_size
        next_block := SUCC OF next_block
    $)

    RESULTIS largest_block
$)


// Host-dependent implementations

LET time() = VALOF $(

    // The tm struct is two 64-bit values
    LET tm = VEC 1

    // Get CLOCK_MONOTONIC as this never goes backward on wall clock changes
    // so is reliable for timing intervals. The result will not wrap this
    // century.
    result2 := opsys(OPSYS_CLOCK_GETTIME, CLOCK_MONOTONIC, tm << 3)
    RESULTIS result2 = 0 -> tm!0 * 1000000000 + tm!1, 0
$)

LET datstamp(v) = VALOF $(
    // The tm struct is two 64-bit values
    LET tm = VEC 1

    // Get CLOCK_MONOTONIC as this never goes backward on wall clock changes
    // so is reliable for timing intervals. The result will not wrap this
    // century.
    result2 := opsys(OPSYS_CLOCK_GETTIME, CLOCK_MONOTONIC, tm << 3)

    // Days since the epoch from seconds since the epoch
    v!0 := tm!0 / 60 / 60 / 24

    // Milliseconds since midnight from seconds since midnight and nanoseconds
    v!1 := (tm!0 REM (60 * 60 * 24)) * 1_000 + tm!1/1_000_000

    // Element v!2 is not used
    RESULTIS result2 = 0
$)

LET timeofday() = VALOF $(
    STATIC $( datstr $)
    LET dv = VEC 1
    datstr := TABLE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    datstamp(dv)
    dat_to_strings(dv, datstr)

    // datstr now contains three bcpl strings:
    // datstr+0:  Today's date: 28-Jun-2025
    // datstr+5:  The GMT time: 10:45:21
    // datstr+10: The weekday:  Saturday

    RESULTIS datstr
$)

LET date() = timeofday() + 5

LET stacksize() = VALOF $(

    // Return the maximum size of the stack in machine words
    LET rlim = VEC 1 // Soft limit and hard limit
    result2 := opsys(OPSYS_GETRLIMIT, RLIMIT_STACK, rlim << 3)
    RESULTIS result2 = 0 -> rlim!0 >> 3, 0
$)

LET stop(n) BE opsys(OPSYS_EXIT, n)


MANIFEST $(
    ACCESS_READ  = 1
    ACCESS_WRITE = 2

    // DCB Layout
    //  0: ........ ........ ........ ........ ........ ........ ........ .......X  stream has reached EOF
    //  0: ........ ........ ........ ........ ........ ........ ........ ......X.  open for reading
    //  0: ........ ........ ........ ........ ........ ........ ........ .....X..  open for writing
    //  0: ........ ........ ........ ........ ........ ........ ........ ....X...  stream is permanantly open
    //  0: ........ ........ ........ ........ ........ ........ ........ ...X....  stream currently holding arguments
    //  0: XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX ........ ........ ........ ........  system call file descriptor
    //  1: XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX  bcpl address of buffer
    //  2: ........ ........ ........ ........ XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX  index of next byte to use in buffer
    //  2: XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX ........ ........ ........ ........  index past the end of valid data
    //  3: XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX  bcpl address of routine to close the stream
    //  4: XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX  bcpl address of routine to refill/flush stream
    //  5: XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX  bcpl address of next DCB in chain



    ACCESS = SLCT 2:1:0 // Bottom two bits of the DCB are the access modes
    PERM = SLCT 1:3:0   // Next bit is set if this is one of the permanent streams
    EOF  = SLCT 1:0:0   // We have already read EOF
    ARGS  = SLCT 1:4:0   // We have already read EOF
    FD   = SLCT 32:32:0 // The file descriptor
    BUFF = SLCT 1       // Pointer to i/o buffer
    POS  = SLCT 32:0:2  // Index of next character in buffer
    PAST = SLCT 32:32:2 // Index of first invalid character after end of data
    CLOSE = SLCT 3      // Call this routine to close the stream
    TRANSFER = SLCT 4   // Cal this function to read / write the next record
    CHAIN = SLCT 5      // For traversing all allocard DCBs
    DCB_SIZE = 6
    BUFF_SIZE = 128*8   // 1K block

    O_RDONLY = 0
    O_WRONLY = 1
    O_RDWR = 2
    O_TRUNC = #o1000
    O_CREAT = #o100
$)


STATIC $(
    stdin_dcb
    stdout_dcb
    stderr_dcb
    dcb_chain
$)

LET blib.allocate_dcb(fd, access, perm, close, transfer) = VALOF $(

    LET dcb = ?

    LET buffer = getvec(BUFF_SIZE/BYTESPERWORD-1)
    IF buffer = 0 RESULTIS 0

    dcb := getvec (DCB_SIZE-1)
    IF dcb = 0 DO $(
        freevec(buffer)
        RESULTIS 0
    $)

    ACCESS::dcb := access
    PERM::dcb := perm
    FD::dcb   := fd
    BUFF::dcb := buffer
    POS::dcb  := 0
    PAST::dcb := access = ACCESS_WRITE -> BUFF_SIZE, 0
    EOF::dcb  := FALSE

    TRANSFER::dcb := transfer
    CLOSE::dcb := close
    CHAIN::dcb := dcb_chain
    dcb_chain := dcb

    RESULTIS dcb
$)

LET blib.block_flush(dcb) BE $(
    IF POS::dcb > 0 DO $(
        LET status = opsys(OPSYS_WRITE, FD::dcb, BUFF::dcb << 3, POS::dcb)
        POS::dcb := 0
        IF status <= 0 DO result2 := -status
    $)
$)

LET blib.block_write(dcb) BE blib.block_flush(dcb)

LET xx(f, a, b, c, d) BE $(
    LET o = output()
    selectoutput(stderr_dcb)
    writef(f, a, b, c, d)
    blib.block_flush(cos)
    selectoutput(o)
$)

LET blib.block_close(dcb) BE $(
    IF ACCESS::dcb & ACCESS_WRITE DO blib.block_flush(dcb)
    UNLESS PERM::dcb DO $(

        // Find the address of the bcplword that points to this DCB, if any
        // and unlink our DCB from the chain
        LET ptr = dcb_chain
        LET old = NULLPTR
        WHILE ptr ~= NULLPTR DO $(
            IF ptr = dcb DO $(
                TEST old = NULLPTR THEN dcb_chain := CHAIN::dcb ELSE CHAIN::old := CHAIN::dcb
                freevec(BUFF::dcb)
                BUFF::dcb := 0
                freevec(dcb)
                RETURN
            $)
            old := ptr
            ptr := CHAIN::ptr
        $)
        // Here, the DCB wasn't on the list
        abort(ABORT_UNKNOWNDCB)
    $)
$)

LET blib.block_read(dcb) BE $(
    LET status = opsys(OPSYS_READ, FD::dcb, BUFF::dcb << 3, BUFF_SIZE)
    POS::dcb := 0
    TEST status <= 0 THEN $(

       IF status < 0 DO $(
            // Linux kernel has returned -errno.
            result2 := -status
        $)

        EOF::dcb := TRUE
    $)
    ELSE $(
        // Something was read. status is the number of bytes
        PAST::dcb := status
    $)
$)

LET blib.tty_write(dcb) BE blib.block_write(dcb)
LET blib.tty_read(dcb)   = blib.block_read(dcb)
LET blib.tty_write(dcb)  = blib.block_write(dcb)
LET blib.tty_close(dcb)  = blib.block_close(dcb)


LET blib.findfile(path, access) = VALOF $(

    LET open_flags = ?
    LET status = ?

    // Space for a copy of the longest possible BCPL string
    LET c_string = VEC 255 / BYTESPERWORD

    // The standard streams are permanently open and created before start()
    // is entered.
    IF path%1 = '**' RESULTIS access = ACCESS_READ -> stdin_dcb, stdout_dcb
    IF path%1 = '!' RESULTIS access = ACCESS_READ -> 0, stderr_dcb

    // The system call expects to be passed a C string, not a BCPL one.
    // Create a temporary copy.
    FOR i = 1 TO path%0 DO c_string%(i-1) := path%i
    c_string%(path%0) := 0

    // Convert the access into the OPEN system call flags.
    SWITCHON access INTO $(

        CASE ACCESS_READ:    open_flags := O_RDONLY;                    ENDCASE
        CASE ACCESS_WRITE:   open_flags := O_CREAT|O_TRUNC|O_WRONLY;    ENDCASE
        CASE ACCESS_READ|ACCESS_WRITE: open_flags := O_RDWR;            ENDCASE
        DEFAULT: result2 := 2; RESULTIS 0
    $)

    // We specify read/write access for user, group and world and allow
    // umask to restrict this
    status := opsys(OPSYS_OPEN, c_string << 3, open_flags, #o666)
    IF status >= 0 DO $(
        // what about read/write?
        LET transfer = access = ACCESS_READ -> blib.block_read, blib.block_write
        result2 := 0
        RESULTIS blib.allocate_dcb(status, access, FALSE, blib.block_close, transfer)
    $)

    result2 := -status
    RESULTIS 0
$)

LET blib.rditem_add(c_string) BE $(

    LET dcb = stdin_dcb

    // The c-string may not be 64-bit aligned so we start indexing into the
    // c-vector at the offset into the alight address
    LET index = c_string & 7
    LET vector = c_string >> 3
    WHILE PAST::dcb < BUFF_SIZE & vector%index ~= 0 DO $(
        // We have space freein the input buffer and we have'nt reached
        // the end of the c-style string. Insert another character
        (BUFF::dcb)%(PAST::dcb) := vector%index
        index +:= 1
        PAST::dcb +:= 1
    $)
$)

LET blib.rditem_end() BE $(
    LET dcb = stdin_dcb
    (BUFF::dcb)%(PAST::dcb)   := '*n'  // Force rditem to return the current token
    (BUFF::dcb)%(PAST::dcb+1) := #xff  // so that this is read on entry
    PAST::dcb +:= 2
    ARGS::dcb := TRUE                  // Mark the stream as holding arguments
$)

LET findinput(path) = blib.findfile(path, ACCESS_READ)
LET findoutput(path) = blib.findfile(path, ACCESS_WRITE)

LET selectinput(dcb) BE cis := dcb
LET selectoutput(dcb) BE cos := dcb

LET rdch() = VALOF $(
    LET result = ?
    LET dcb = input()
    IF dcb = 0 DO abort(ABORT_NOCIS)
    IF EOF::dcb RESULTIS ENDSTREAMCH

    // If the buffer is empty, attempt to fill it. Note that transfer
    // always leaves something in the buffer, even if is a single endstreamch
    IF POS::dcb = PAST::dcb DO (TRANSFER::dcb)(dcb)
    IF EOF::dcb RESULTIS ENDSTREAMCH

    result := (BUFF::dcb)%(POS::dcb)
    POS::dcb +:= 1

    // A value of 0xff when we are reading the arguments means we've reached
    // the end and should (a) switch out of ARGS mode and (b) return
    // ENDSTREAMCH
    IF result = #xff & ARGS::dcb DO $(
        result := ENDSTREAMCH
        ARGS::dcb := FALSE
    $)
    RESULTIS result
$)

LET unrdch() BE $(
    LET dcb = input()
    IF dcb = 0 DO abort(ABORT_NOCIS)

    // We guarantee that there is always one character in the buffer as long
    // as at least one character has been read. However, if unrdch is called
    // many times, we will reach the start of the buffer and there will be no
    // more characters to unread.
    IF POS::dcb > 0 DO POS::dcb -:= 1
$)

LET wrch(char) BE $(
    LET dcb = output()
    IF dcb = 0 DO abort(ABORT_NOCOS)

    // If the buffer is full, we'd better write it all out. Additionally,
    // if this is the end of the line and the stream is an interactive
    // output, flush the line too,
    IF POS::dcb = PAST::dcb | (char = '*n' & (dcb = stdout_dcb | dcb = stderr_dcb)) DO (TRANSFER::dcb)(dcb)

    // The transfer function promises that POS now points to a valid space
    (BUFF::dcb)%(POS::dcb) := char
    POS::dcb +:= 1
$)

LET endread() BE $(
    LET dcb = input()
    IF dcb = 0 DO abort(ABORT_NOCIS)

    blib.block_close(input())
    selectinput(0)
$)

LET endwrite() BE $(
    LET dcb = output()
    IF dcb = 0 DO abort(ABORT_NOCOS)

    blib.block_close(output())
    selectoutput(0)
$)

LET blib.ioinit(stdin, stdout, stderr) BE $(

    dcb_chain := NULLPTR

    // Under linux, the shell will have opened three standard streams for
    // our ptocess and so we set these up for the BCPL program's use.
    stdin_dcb  := blib.allocate_dcb(stdin,  ACCESS_READ,  TRUE, blib.tty_close, blib.tty_read)
    stdout_dcb := blib.allocate_dcb(stdout, ACCESS_WRITE, TRUE, blib.tty_close, blib.tty_write)
    stderr_dcb := blib.allocate_dcb(stderr, ACCESS_WRITE, TRUE, blib.tty_close, blib.tty_write)

    // ON entry, standard input and outpur are select
    selectinput(stdin_dcb)
    selectoutput(stdout_dcb)
$)

LET blib.ioterm() BE $(
    LET oldcos = cos
    LET dcb = dcb_chain
    cos := stderr_dcb

    //blib.dumpheap("at end of program*n")

    WHILE dcb ~= NULLPTR DO $(
        LET chain = CHAIN::dcb

        // The standard streams are expected to be open and we flush them
        TEST PERM::dcb THEN $(
            // Clear the PERM flags in the standard streams so they can be closed
            PERM::dcb := FALSE
        $)
        ELSE $(
            //writef("DCB #X%16X open on exit: FD %n POS %n LAST %n EOF %n *n", dcb, FD::dcb, POS::dcb, PAST::dcb, EOF::dcb)
        $)
        blib.block_close(dcb)
        dcb := chain
    $)
 $)



LET rewind() BE $(
    LET status = ?
    LET dcb = input()
    IF dcb = 0 DO abort(ABORT_NOCIS)
    status := opsys(OPSYS_LSEEK, FD::dcb, 0, 0)
    IF status < 0 DO $(
        result2 := -status
    $)
    POS::dcb := 0
    PAST::dcb := 0
    EOF::dcb := FALSE
$)


LET mapstore() BE $(

    LET dcb = ?
    LET level_state = ?
    LET global_vector = @globsize

    // Start with the global vector
    writef("*n-- GLOBAL VECTOR (%4I ENTRIES) ------------------------------------------------*n", globsize)
    FOR g = 0 TO globsize-1 DO $(

        IF (g REM 4) = 0 DO writef("*n%4I: ", g)
        writehex(global_vector!g, 16)
        wrch(' ')
    $)
    newline()

    // Now the open files
    writef("*n-- STREAMS (BUFFER SIZE %4I)) -------------------------------------------------*n*n", BUFF_SIZE)

    dcb := dcb_chain
    WHILE dcb ~= NULLPTR DO $(
        LET selected = dcb = cis | dcb = cos -> '**', ' '
        LET r = (ACCESS::dcb & ACCESS_READ) ~= 0  -> 'R', ' '
        LET w = (ACCESS::dcb & ACCESS_WRITE) ~= 0 -> 'W', ' '
        writef("%cDCB %16X: FD %2i ACCESS %c%c POS %4i LAST %4i EOF %n *n", selected, dcb, FD::dcb, r, w, POS::dcb, PAST::dcb, EOF::dcb)
        dcb := CHAIN::dcb
    $)

    // And the heap
    blib.dumpheap()

    // Finally, the level() states
    writef("*n-- LEVEL() STATES --------------------------------------------------------------*n*n", BUFF_SIZE)

    level_state := @(global_vector!globsize)
    $(
        writef("RSP=%16X RBP=%16X RBX=%16X R12=%16X R13=%16X R14=%16X R15=%16X*N",
            level_state!0, level_state!1, level_state!2, level_state!3, level_state!4, level_state!5, level_state!6)
        level_state +:= 7
    $) REPEATUNTIL level_state!0 = 0

    writes("*n--------------------------------------------------------------------------------*n*n")
$)


LET blib.undefined() BE abort(ABORT_UNDEFINEDGLOBAL)

LET blib.bcplmain(argc, argv, environ) BE $(

    LET gv = @globsize
    LET result = ?
    blib.ioinit(0, 1, 2)

    // Make the command line arguments appear as the initial data on standard
    // input (which is how the rdarg/rditem mechanism expects them)
    IF argc > 1 DO $(
        FOR i = 1 TO argc - 1 DO $(
            IF i > 1 DO blib.rditem_add(" ") // Treat args fred and jane as 'fred jane' not 'fredjane'
            blib.rditem_add(argv!i)
        $)
        blib.rditem_end()
    $)

    // Start with all of the unset elements of the global vector referencing
    // a debugging function
    FOR i = 0 TO globsize-1 DO $(
        IF gv!1 = 0 DO gv!i := blib.undefined
    $)

    filesys := environ

    // Get START
    TEST start = blib.undefined THEN $(
        selectoutput(stderr_dcb)
        writef("fatal: start is not defined*n")
        abort(ABORT_STARTUNDEFINED)
    $)
    ELSE $(
        result := start(0)
        blib.ioterm()
        blib.finish_heap()
        stop(result)
    $)
$)