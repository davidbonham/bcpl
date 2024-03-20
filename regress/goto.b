GET "libhdr"

LET expect(ok, testno) BE $(
    writed(testno, 4)
    writes(ok -> ": PASS*N", ": FAIL*N")
$)

LET simple(n, testno) BE $(
    IF n REM 2 = 0 GOTO even
    IF n REM 2 = 1 GOTO odd
    expect(FALSE, testno)
even:
    expect(n = 2, testno)
    GOTO end
odd:
    expect(n = 1, testno)
end:
$)

LET vialocal(n, testno) BE $(
    LET targets = TABLE ?, one, two
    GOTO targets!n
    expect(FALSE, testno)
one:
    expect(n = 1, testno)
two:
    expect(n = 2, testno)
end:
$)

LET start() BE $(
    simple(1, 1)
    simple(2, 2)
    vialocal(1, 3)
    vialocal(2, 3)
$)
