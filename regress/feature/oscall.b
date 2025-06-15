GET "libhdr"

MANIFEST $(
    OSCALL_WRITE = 1
    OSCALL_MMAP = 9
    OSCALL_MUNMAP = 11
    OSCALL_EXIT = 60

    MAP_PRIVATE = 2
    MAP_ANONYMOUS = #x20
    PROT_READ = 1
    PROT_WRITE = 2
$)

LET xwrites(string) BE opsys(OSCALL_WRITE, 1, 8*string + 1, string%0)
LET xwrch(ch) BE opsys(OSCALL_WRITE, 1, 8*@ch, 1)
LET start() BE $(
   
    LET base = opsys(OSCALL_MMAP, 0, 64*1024, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, 0, 0)
    LET addr = base >> 3
    addr!0 := #x1122334455667788
    writehex(base, 16)
    newline()
    writehex(addr, 16)
    newline()
    writehex(addr!0, 16)
    newline()
    opsys(OSCALL_MUNMAP, base, 64*1024)
    writes("unmapped*n")
    newline()
    opsys(OSCALL_EXIT, 42)
$)
