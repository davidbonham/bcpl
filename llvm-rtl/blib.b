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

AND findinput    (string)       =  findstream(string, id_inscb,     0)

AND pathfindinput(string, path) =  findstream(string, id_inscb,  path)

AND findoutput   (string)       =  findstream(string, id_outscb,    0)

AND findinoutput (string)       =  findstream(string, id_inoutscb,  0)

AND findupdate   (string)       =  findstream(string, id_inoutscb,  0)

AND findappend   (string)       =  findstream(string, id_appendscb, 0)

AND endread() BE endstream(cis)

AND endwrite() BE endstream(cos)




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
// of BLIB

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

        CASE fl_unmk: $(
            LET m, e, s = a, 0, m #>= 0.0 -> 1, -1
            IF s = -1 DO m :=  #- m
            WHILE m #>= 10.0 DO $( m #/:= 10.0; e +:= 1 ; writef("%10.5f %n*n", m, e) $)
            WHILE m # <= 1.0 DO $( m #*:= 10.0; e -:= 1 ; writef("%10.5f %n*n", m, e) $)
            result2 := e
            result := s = 1 -> m, #-m
        $)
        ENDCASE

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

// A stub to support rditem below
LET deplete(stream) BE stop(1)

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

LET stacksize() = VALOF $(

    LET rlim = VEC 1 // Soft limit and hard limit
    result2 := opsys(OPSYS_GETRLIMIT, rlim << 3)
    RESULTIS result2 = 0 -> rlim!0 >> 3, 0
$)
