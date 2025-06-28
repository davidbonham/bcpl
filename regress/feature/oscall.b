GET "libhdr"

LET xwrites(fd, string) BE opsys(OPSYS_WRITE, fd, 8*string + 1, string%0)

LET start() BE $(
    LET base = opsys(OPSYS_MMAP, 0, 64*1024, MMAP_PROT_READ|MMAP_PROT_WRITE, MMAP_MAP_PRIVATE|MMAP_MAP_ANONYMOUS, 0, 0)
    LET addr = base >> 3
    addr!0 := #x1122334455667788
    xwrites(1, "Written to stdout:*n")
    writehex(addr!0, 16)
    wrch('*n')
    xwrites(1, "hello world*n")
    FOR i = 1 TO 10 DO $(
        writed(i,4)
        wrch('*n')
    $)
    opsys(OPSYS_MUNMAP, base, 64*1024)
    writes("unmapped*n")
    wrch('*n')
    wrch('*n')
    //xwrites(2, "Written to stderr*n")
    opsys(OPSYS_EXIT, 42)
$)
