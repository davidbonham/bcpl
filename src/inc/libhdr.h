// This is the contents of the libnary header as described in
//
//     A PROPOSED DEFINITION OF THE LANGUAGE BCPL,
//     M.D. Middleton, R. Firth, M. Richards, I. Willers,
//     1st October 1979
//

MANIFEST $(
    ENDRECORDCH = -2
    ENDSTREAMCH = -1
    BYTESPERWORD = 8
    BITSPERBYTE = 8
    FIRSTFREEGLOBAL = 100
    BITSPERWORD = BYTESPERWORD*BITSPERBYTE
    MAXINT = #x7fffffffffffffff
    MININT = ~MAXINT
    FP_LEN = 1
$)

// Constants for the opsys routine
MANIFEST $(

    OPSYS_WRITE = 1
    OPSYS_MMAP = 9
    OPSYS_MUNMAP = 11
    OPSYS_EXIT = 60
    OPSYS_CLOCK_GETTIME = 228
    OPSYS_GETRLIMIT = 97

    MMAP_MAP_PRIVATE = 2
    MMAP_MAP_ANONYMOUS = #x20

    MMAP_PROT_READ = 1
    MMAP_PROT_WRITE = 2

    CLOCK_MONOTONIC = 0

    RLIMIT_STACK = 3

$)


// This global vector contains entries defined in the proposed standard plus any
// additional values required for the compiler to execute uner CINTSYS64

GLOBAL $(
    globsize : 0
    result2 : 10

    // Section 9.1: Standard Stream Organisation Procedures
    selectinput : 56
    selectoutput : 57
    input : 58
    output : 59
    findoutput : 49
    findinput : 48
    endread : 60
    endwrite : 61
    rewind : 4

    // Sectiob 9.2: Standard Input/Output Procedures
    rdch : 38
    unrdch : 40
    readn : 83
    wrch : 41
    writes : 89
    writed : 85
    writen : 86
    writeoct : 88
    writehex : 87
    writef : 94
    newline : 84
    newpage : 120

    // Section 10.1 Start and Stop

    start : 1
    stop : 2

    // Section 10.2: Stack Organisation Routines

    level : 15
    longjump : 16
    aptovec : 6

    // Section 10.3: String Handling

    unpackstring : 31
    packstring : 30
    getbyte : 7
    putbyte : 8

    // A7: Store Allocation

    maxvec : 9
    getvec : 25
    freevec : 27
    stacksize : 11

    // A8: Scaled Arithmetic

    muldiv : 5

    // A9: Block I/O

    rdblock : 14
    wrblock : 17

    // A10: Binary I/O

    rdbin : 18
    wrbin : 19
    endrecord : 20

    // A11: Direct Access I/O

    finddirect : 21
    readdirect : 22
    writedirect : 23
    closedirect : 24

    // A12: System Services

    filesys : 29
    opsys : 32

    fplus : 33
    fminus : 36
    fneg : 37
    fmult : 39
    fdiv : 42
    fabs : 44
    ffix : 45
    ffloat : 46
    fcomp : 47

    // A13: Floating Point I/O Procedures

    writefp : 50
    readfp : 51

    // A14: Time and Date

    date : 54
    timeofday : 55
    time : 63

    // A15: Externam Procedures

    callc : 64


$)



// Constants from CINTPOS64
MANIFEST $(
    bytesperword = 8
    bitsperword = 64
    endstreamch = -1
    Sys_flt = 63
    Sys_ext = 68
    ON64 = -1
    UTF8 = -1
    GB2312 = -2
    ug = 200
// Floating point operations used in sys(Sys_flt, op,...)
// 32- or 64-bit floating point will be used depending on
// whether 32- or 64-bit Cintcode is being used.
// Any change to these definitions require a corresponding
// change in cinterp.c and rasterp.c
    fl_avail = 0
fl_mk; fl_unmk
fl_float; fl_fix; fl_abs
fl_mul; fl_div; fl_mod
fl_add; fl_sub; fl_pos; fl_neg
fl_eq; fl_ne; fl_ls; fl_gr; fl_le; fl_ge

    fl_acos = 20
fl_asin
fl_atan
fl_atan2
fl_cos
fl_sin
fl_tan
fl_cosh
fl_sinh
fl_tanh
fl_exp     //=30
fl_frexp
fl_ldexp
fl_log
fl_log10

    fl_pow = 36
fl_sqrt
fl_ceil
fl_floor
fl_modf    //=40   Invoke the C function modf to extract the
           //      fractional and integer parts of a floating
           //      point number

fl_N2F     // =41 Convert scaled fixed point to floating
fl_F2N     //     Convert floating point to scaled fixed point
fl_radius2 //     Return the distance from the origin to point(x,y)
fl_radius3 //     Return the distance from the origin to point(x,y,z)
fl_64to32  // =45 Convert from 64 to 32 bit floating point. Only
           //     used when running on 64 bit BCPL. Needed for the
           //     OpenGL interface.
fl_32to64  // =46 Convert from 32 to 64 bit floating point. Only
           //     used when needing to generate a 64 bit floating
           //     point while running on 32 bit BCPL. The result
           //     holds the LS 32 bits and result2 the MS bits.

scb_buf
scb_pos
    id_inscb = 129
    id_outscb = 130
    id_inoutscb = 131
    id_appendscb = 132
    scbt_console = -1
scb_type           // <=0 interactive stream, >0 block file
    Sys_sardch = 10
    Sys_sawrch = 11

$)


GLOBAL $(
       // From CINTSYS
    sys : 3
    glob0 : 0
    cis : 12
    cos : 13
    rdargs2 : 26
    rdargs : 102
    rditem : 103
    abort : 28
    randno : 34
    setseed : 35
    capitalch : 96

    // More CINTSYS - called by its write_Format but never used so point at
    // 0
    writez : 92
    writet : 90
    codewrch : 126
    writeu : 91
    writez : 92
    get_text : 93
    writee : 180
    endstream : 62
    sawritef : 95
    randseed : 127
    pathfindinput : 53
    findappend : 130
    compch : 97
    writeflt : 73
    findstream : 52
    deplete : 43

$)
