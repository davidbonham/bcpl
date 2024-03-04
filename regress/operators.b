GET "libhdr"

LET is_false(condition) BE wrch(condition -> 'N', 'Y')
LET is_true(condition) BE wrch(condition -> 'Y', 'N')

LET test(one, two, minusone, anothertwo, ten, a_true, a_false) BE $(

    is_true(two = anothertwo)
    is_false(one = minusone)

    is_false(two ~= anothertwo)
    is_true(one ~= minusone)

    is_true(one < two)
    is_true(minusone < one)
    is_false(two < anothertwo)
    is_false(two < one)

    is_true(one <= two)
    is_true(minusone <= one)
    is_true(two <= anothertwo)
    is_false(two < one)

    is_false(one > two)
    is_false(minusone > one)
    is_false(two > anothertwo)
    is_true(two > one)

    is_false(one >= two)
    is_false(minusone >= one)
    is_true(two >= anothertwo)
    is_true(two >= one)

    is_true(two + one = 3)
    is_true(two - one = 1)
    is_true(two * minusone = -2)
    is_true(ten / two = 5)

    is_true(ten REM two = 0)
    is_true(ten REM 3 = 1)

    is_true(ten << two = 40)
    is_true(ten >> one = 5)

    is_true(a_true & a_true)
    is_false(a_true & a_false)
    is_false(a_false & a_false)

    is_true(a_true | a_true)
    is_true(a_true | a_false)
    is_false(a_false | a_false)

    is_false(a_true NEQV a_true)
    is_true(a_true NEQV a_false)
    is_false(a_false NEQV a_false)

    is_true(a_true EQV a_true)
    is_false(a_true EQV a_false)
    is_true(a_false EQV a_false)

    is_false(~ a_true)
    is_true(NOT a_false)

    is_true(- one = minusone)
    is_true(ABS minusone = one)
    is_true(ABS two = anothertwo)


$)

LET start(a) BE  $(
   test(1, 2, -1, 2, 10, TRUE, FALSE)
$)
