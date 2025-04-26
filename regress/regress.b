GET "libhdr"

STATIC $( testno $)

// ----------------------------------------------------------------------------
LET expect(actual, wanted) BE $(
// ----------------------------------------------------------------------------
// Record the result of a single test and advance the test number
    IF actual ~= wanted THEN $(
        writed(testno, 4)
        writes(" FAIL: expected #X")
        writehex(wanted, 16)
        writes(" not #X")
        writehex(actual, 16)
        newline()
    $)
    testno +:= 1
$)

// ----------------------------------------------------------------------------
LET abs_test() BE $(
// ----------------------------------------------------------------------------
// What is abs of minint?
    expect(ABS (1<<(bitsperword-1)), 0)
$)

LET start() BE $(
    abs_test()
$)
