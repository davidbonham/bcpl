; ModuleID = 'BLIB'
source_filename = "BLIB"
target triple = "x86_64-unknown-linux-gnu"

@__bcpl_global_vector = external global [1024 x i64], section "BCPLGVEC"
@lstr.global = private global [14 x i8] c"\0D<<mess:%-%n>>", section ".data.BLIB", align 8
@itemn.global = internal global [16 x i64] [i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70], section ".data.BLIB"
@lstr.global.23 = private global [51 x i8] c"2Error: rdargs format specified too many arguments\0A", section ".data.BLIB", align 8
@lstr.global.24 = private global [10 x i8] c"\09 (yes/no)", section ".data.BLIB", align 8
@lstr.global.25 = private global [4 x i8] c"\03 > ", section ".data.BLIB", align 8
@lstr.global.26 = private global [4 x i8] c"\03yes", section ".data.BLIB", align 8
@lstr.global.27 = private global [2 x i8] c"\01y", section ".data.BLIB", align 8
@lstr.global.32 = private global [3 x i8] c"\02: ", section ".data.BLIB", align 8
@itemn.global.44 = internal global [13 x i64] [i64 0, i64 31, i64 59, i64 90, i64 120, i64 151, i64 181, i64 212, i64 243, i64 273, i64 304, i64 334, i64 365], section ".data.BLIB"
@itemn.global.45 = internal global [13 x i64] [i64 0, i64 31, i64 60, i64 91, i64 121, i64 152, i64 182, i64 213, i64 244, i64 274, i64 305, i64 335, i64 366], section ".data.BLIB"
@lstr.global.46 = private unnamed_addr constant [37 x i8] c"$JanFebMarAprMayJunJulAugSepOctNovDec", section ".data.BLIB", align 8
@lstr.global.51 = private global [7 x i8] c"\06Sunday", section ".data.BLIB", align 8
@lstr.global.52 = private global [7 x i8] c"\06Monday", section ".data.BLIB", align 8
@lstr.global.53 = private global [8 x i8] c"\07Tuesday", section ".data.BLIB", align 8
@lstr.global.54 = private global [10 x i8] c"\09Wednesday", section ".data.BLIB", align 8
@lstr.global.55 = private global [9 x i8] c"\08Thursday", section ".data.BLIB", align 8
@lstr.global.56 = private global [7 x i8] c"\06Friday", section ".data.BLIB", align 8
@lstr.global.57 = private global [9 x i8] c"\08Saturday", section ".data.BLIB", align 8
@lstr.global.59 = private global [35 x i8] c"\22readflt: reading exponent ch='%c'\0A", section ".data.BLIB", align 8
@lstr.global.63 = private global [56 x i8] c"7ERROR sys_flt operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".data.BLIB", align 8
@lstr.global.65 = private global [63 x i8] c">ERROR sys package=%n operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".data.BLIB", align 8
@lstr.global.71 = private global [14 x i8] c"\0D\0A**Aborted**\0A", section ".data.BLIB", align 8
@itemn.global.82 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.83 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.84 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.85 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.86 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.87 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.88 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.89 = internal unnamed_addr global i64 0, section ".data.BLIB"
@lstr.global.91 = private global [84 x i8] c"S\0A-- HEAP SPACE ------------------------------------------------------------------\0A\0A", section ".data.BLIB", align 8
@lstr.global.92 = private global [20 x i8] c"\13Heap not allocated\0A", section ".data.BLIB", align 8
@lstr.global.93 = private global [74 x i8] c"IHeap of %N words allocated at range %16X..%16X (byte address %16X..%16X)\0A", section ".data.BLIB", align 8
@lstr.global.94 = private global [27 x i8] c"\1A\0ABlocks on the free list:\0A", section ".data.BLIB", align 8
@lstr.global.95 = private global [73 x i8] c"HNo.  Size (words)      At BCPL address   To BCPL address    Contents...\0A", section ".data.BLIB", align 8
@lstr.global.96 = private global [24 x i8] c"\17%4X: %16X %16X..%16X   ", section ".data.BLIB", align 8
@lstr.global.97 = private global [14 x i8] c"\0D\0AStatistics:\0A", section ".data.BLIB", align 8
@lstr.global.98 = private global [76 x i8] c"KFree list contains %N words of space in %N blocks. The largest is %N words\0A", section ".data.BLIB", align 8
@lstr.global.99 = private global [62 x i8] c"=getvecs=%n (largest %n) freevecs=%n current use %n (hwm %n)\0A\0A", section ".data.BLIB", align 8
@itemn.global.115 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.116 = internal global [16 x i64] zeroinitializer, section ".data.BLIB"
@itemn.global.120 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.121 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.122 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.123 = internal unnamed_addr global i64 0, section ".data.BLIB"
@lstr.global.151 = private global [82 x i8] c"Q\0A-- GLOBAL VECTOR (%4I ENTRIES) ------------------------------------------------\0A", section ".data.BLIB", align 8
@lstr.global.152 = private global [7 x i8] c"\06\0A%4I: ", section ".data.BLIB", align 8
@lstr.global.153 = private global [83 x i8] c"R\0A-- STREAMS (BUFFER SIZE %4I)) -------------------------------------------------\0A\0A", section ".data.BLIB", align 8
@lstr.global.154 = private global [57 x i8] c"8%cDCB %16X: FD %2i ACCESS %c%c POS %4i LAST %4i EOF %n \0A", section ".data.BLIB", align 8
@lstr.global.155 = private global [84 x i8] c"S\0A-- LEVEL() STATES --------------------------------------------------------------\0A\0A", section ".data.BLIB", align 8
@lstr.global.156 = private global [64 x i8] c"?RSP=%16X RBP=%16X RBX=%16X R12=%16X R13=%16X R14=%16X R15=%16X\0A", section ".data.BLIB", align 8
@lstr.global.157 = private global [84 x i8] c"S\0A--------------------------------------------------------------------------------\0A\0A", section ".data.BLIB", align 8
@lstr.global.160 = private global [2 x i8] c"\01 ", section ".data.BLIB", align 8
@lstr.global.161 = private global [29 x i8] c"\1Cfatal: start is not defined\0A", section ".data.BLIB", align 8

@__bcpl_gv64 = alias ptr, ptr @mapstore
@__bcpl_gv4 = alias ptr, ptr @rewind
@__bcpl_gv61 = alias ptr, ptr @endwrite
@__bcpl_gv60 = alias ptr, ptr @endread
@__bcpl_gv41 = alias ptr, ptr @wrch
@__bcpl_gv40 = alias ptr, ptr @unrdch
@__bcpl_gv38 = alias ptr, ptr @rdch
@__bcpl_gv57 = alias ptr, ptr @selectoutput
@__bcpl_gv56 = alias ptr, ptr @selectinput
@__bcpl_gv49 = alias ptr, ptr @findoutput
@__bcpl_gv48 = alias ptr, ptr @findinput
@__bcpl_gv2 = alias ptr, ptr @stop
@__bcpl_gv11 = alias ptr, ptr @stacksize
@__bcpl_gv52 = alias ptr, ptr @date
@__bcpl_gv54 = alias ptr, ptr @timeofday
@__bcpl_gv55 = alias ptr, ptr @time
@__bcpl_gv9 = alias ptr, ptr @maxvec
@__bcpl_gv27 = alias ptr, ptr @freevec
@__bcpl_gv25 = alias ptr, ptr @getvec
@__bcpl_gv44 = alias ptr, ptr @fabs
@__bcpl_gv47 = alias ptr, ptr @fcomp
@__bcpl_gv46 = alias ptr, ptr @ffloat
@__bcpl_gv45 = alias ptr, ptr @ffix
@__bcpl_gv37 = alias ptr, ptr @fneg
@__bcpl_gv42 = alias ptr, ptr @fdiv
@__bcpl_gv39 = alias ptr, ptr @fmult
@__bcpl_gv36 = alias ptr, ptr @fminus
@__bcpl_gv33 = alias ptr, ptr @fplus
@__bcpl_gv28 = alias ptr, ptr @abort
@__bcpl_gv43 = alias ptr, ptr @deplete
@__bcpl_gv51 = alias ptr, ptr @readfp
@__bcpl_gv50 = alias ptr, ptr @writefp
@__bcpl_gv89 = alias ptr, ptr @writes
@__bcpl_gv3 = alias ptr, ptr @sys
@__bcpl_gv94 = alias ptr, ptr @writef
@__bcpl_gv92 = alias ptr, ptr @writez
@__bcpl_gv73 = alias ptr, ptr @writeflt
@__bcpl_gv59 = alias ptr, ptr @output
@__bcpl_gv58 = alias ptr, ptr @input
@__bcpl_gv83 = alias ptr, ptr @readn
@__bcpl_gv103 = alias ptr, ptr @rditem
@__bcpl_gv26 = alias ptr, ptr @rdargs2
@__bcpl_gv102 = alias ptr, ptr @rdargs
@__bcpl_gv97 = alias ptr, ptr @compch
@__bcpl_gv84 = alias ptr, ptr @newline
@__bcpl_gv87 = alias ptr, ptr @writehex
@__bcpl_gv88 = alias ptr, ptr @writeoct
@__bcpl_gv86 = alias ptr, ptr @writen
@__bcpl_gv85 = alias ptr, ptr @writed
@__bcpl_gv96 = alias ptr, ptr @capitalch
@__bcpl_gv30 = alias ptr, ptr @packstring
@__bcpl_gv31 = alias ptr, ptr @unpackstring
@__bcpl_gv34 = alias ptr, ptr @randno

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define range(i64 -3074457345618258601, 3074457345618258604) i64 @randno(i64 %0) #0 section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1016), align 4
  %mul = mul i64 %lg.value, 2147001325
  %add = add i64 %mul, 715136305
  store i64 %add, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1016), align 4
  %div = sdiv i64 %add, 3
  %1 = icmp slt i64 %add, -2
  %2 = sub nsw i64 0, %div
  %abs.result.128 = select i1 %1, i64 %2, i64 %div
  %mod = srem i64 %abs.result.128, %0
  %add22 = add nsw i64 %mod, 1
  ret i64 %add22
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @unpackstring(i64 %0, i64 %1) #1 section ".text.BLIB" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  br label %lab_L044

lab_L044:                                         ; preds = %entry, %lab_L044
  %STK4.0 = phi i64 [ %getbyte.charword, %entry ], [ %add33, %lab_L044 ]
  %getbyte.charptr17 = getelementptr i8, ptr %getbyte.string, i64 %STK4.0
  %getbyte.char18 = load i8, ptr %getbyte.charptr17, align 1
  %getbyte.charword19 = zext i8 %getbyte.char18 to i64
  %add = add i64 %STK4.0, %1
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %getbyte.charword19, ptr %stind.lv, align 8
  %add33 = add nsw i64 %STK4.0, -1
  %ge.not = icmp eq i64 %STK4.0, 0
  br i1 %ge.not, label %jt.then_L045, label %lab_L044

jt.then_L045:                                     ; preds = %lab_L044
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define range(i64 0, 32) i64 @packstring(i64 %0, i64 %1) #1 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 255
  %putbyte.llvmaddr = shl i64 %1, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L048

lab_L048:                                         ; preds = %entry, %lab_L048
  %STK16.0 = phi i64 [ 0, %entry ], [ %add48, %lab_L048 ]
  %add32 = add i64 %STK16.0, %0
  %rv.llvmaddr35 = shl i64 %add32, 3
  %rv.lv36 = inttoptr i64 %rv.llvmaddr35 to ptr
  %rv.rv37 = load i64, ptr %rv.lv36, align 8
  %putbyte.char = trunc i64 %rv.rv37 to i8
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %STK16.0
  store i8 %putbyte.char, ptr %putbyte.charptr, align 1
  %add48 = add nuw nsw i64 %STK16.0, 1
  %le.not.not = icmp samesign ult i64 %STK16.0, %logand
  br i1 %le.not.not, label %lab_L048, label %jt.then_L049

jt.then_L049:                                     ; preds = %lab_L048
  %add73 = and i64 %rv.rv, 248
  %sub = or disjoint i64 %add73, 7
  %gr89.not = icmp samesign ult i64 %logand, %sub
  br i1 %gr89.not, label %lab_L052.preheader, label %jt.then_L053

lab_L052.preheader:                               ; preds = %jt.then_L049
  %2 = getelementptr i8, ptr %putbyte.string, i64 %logand
  %scevgep = getelementptr i8, ptr %2, i64 1
  %3 = add nuw nsw i64 %add73, 8
  %4 = add nuw nsw i64 %logand, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %3, i64 %4)
  %6 = xor i64 %logand, -1
  %7 = add nsw i64 %5, %6
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %7, i1 false)
  br label %jt.then_L053

jt.then_L053:                                     ; preds = %lab_L052.preheader, %jt.then_L049
  %div146 = lshr i64 %logand, 3
  ret i64 %div146
}

define noundef i64 @write_format(i64 %0, i64 %1) local_unnamed_addr section ".text.BLIB" {
entry:
  %stack.vec.i = alloca [21 x i64], align 8
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %le.not = icmp eq i8 %getbyte.char, 0
  br i1 %le.not, label %jf.then_L058, label %lab_L056.preheader

lab_L056.preheader:                               ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %getbyte.string, i64 1
  %rv.llvmaddr = shl i64 %1, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %stack.vecaddr.i = ptrtoint ptr %stack.vec.i to i64
  %stack.bcpladdr.i = ashr exact i64 %stack.vecaddr.i, 3
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global to i64), 3
  br label %lab_L056

lab_L056:                                         ; preds = %lab_L056.preheader, %jump.target_L057
  %STK2.0 = phi i64 [ %STK2.8, %jump.target_L057 ], [ 1, %lab_L056.preheader ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %add = add nsw i64 %STK2.0, 1
  %eq = icmp eq i8 %getbyte.char19, 37
  br i1 %eq, label %jt.then_L062, label %jt.else

jt.else:                                          ; preds = %lab_L056
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value45 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value45 to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  br label %jump.target_L057

jt.then_L062:                                     ; preds = %lab_L056
  %getbyte.charptr55 = getelementptr i8, ptr %getbyte.string, i64 %add
  %getbyte.char56 = load i8, ptr %getbyte.charptr55, align 1
  %getbyte.charword57 = zext i8 %getbyte.char56 to i64
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.llvmaddr64 = shl i64 %rv.rv, 3
  %rv.lv65 = inttoptr i64 %rv.llvmaddr64 to ptr
  %rv.rv66 = load i64, ptr %rv.lv65, align 8
  br label %lab_L059.outer

lab_L059.outer:                                   ; preds = %lab_L081, %jt.then_L062
  %if_cond275.ph = phi i1 [ true, %jt.then_L062 ], [ false, %lab_L081 ]
  %STK25.0.ph = phi i64 [ 0, %jt.then_L062 ], [ %sub225, %lab_L081 ]
  %STK24.0.ph = phi i64 [ 0, %jt.then_L062 ], [ %sub, %lab_L081 ]
  %STK22.0.ph = phi i64 [ %getbyte.charword57, %jt.then_L062 ], [ %getbyte.charword246, %lab_L081 ]
  %STK2.1.ph = phi i64 [ %add, %jt.then_L062 ], [ %add233, %lab_L081 ]
  br label %lab_L059

lab_L059:                                         ; preds = %lab_L059.backedge, %lab_L059.outer
  %if_cond275 = phi i1 [ %if_cond275.ph, %lab_L059.outer ], [ false, %lab_L059.backedge ]
  %STK24.0 = phi i64 [ %STK24.0.ph, %lab_L059.outer ], [ %sub, %lab_L059.backedge ]
  %STK22.0 = phi i64 [ %STK22.0.ph, %lab_L059.outer ], [ %STK22.0.be, %lab_L059.backedge ]
  %STK2.1 = phi i64 [ %STK2.1.ph, %lab_L059.outer ], [ %STK2.1.be, %lab_L059.backedge ]
  %lg.value71 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn74 = inttoptr i64 %lg.value71 to ptr
  %fnap = call i64 %rtap_ep_p_fn74(i64 %STK22.0)
  switch i64 %fnap, label %lab_L065 [
    i64 80, label %lab_L114
    i64 70, label %lab_L111
    i64 69, label %lab_L110
    i64 77, label %lab_L108
    i64 45, label %lab_L107
    i64 43, label %lab_L106
    i64 36, label %lab_L106
    i64 66, label %lf_L061
    i64 90, label %lab_L100
    i64 85, label %lab_L099
    i64 78, label %lf_L060.loopexit1477
    i64 88, label %lab_L097
    i64 79, label %lab_L096
    i64 35, label %lf_L060.loopexit1384
    i64 67, label %lf_L060
    i64 84, label %lab_L093
    i64 83, label %lf_L060.loopexit
    i64 73, label %lab_L091
    i64 68, label %lab_L085
    i64 57, label %lab_L078.preheader
    i64 56, label %lab_L078.preheader
    i64 55, label %lab_L078.preheader
    i64 54, label %lab_L078.preheader
    i64 53, label %lab_L078.preheader
    i64 52, label %lab_L078.preheader
    i64 51, label %lab_L078.preheader
    i64 50, label %lab_L078.preheader
    i64 49, label %lab_L078.preheader
    i64 48, label %lab_L078.preheader
  ]

lab_L078.preheader:                               ; preds = %lab_L059, %lab_L059, %lab_L059, %lab_L059, %lab_L059, %lab_L059, %lab_L059, %lab_L059, %lab_L059, %lab_L059
  br label %lab_L078

lab_L065:                                         ; preds = %lab_L059
  %lg.value79 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn82 = inttoptr i64 %lg.value79 to ptr
  %rtap84 = call i64 %rtap_ep_p_fn82(i64 %STK22.0)
  %add90 = add i64 %STK2.1, 1
  br label %jump.target_L057

lab_L078:                                         ; preds = %lab_L078.preheader, %lab_L078
  %STK24.2 = phi i64 [ %sub, %lab_L078 ], [ %STK24.0, %lab_L078.preheader ]
  %STK22.2 = phi i64 [ %getbyte.charword128, %lab_L078 ], [ %STK22.0, %lab_L078.preheader ]
  %STK2.3 = phi i64 [ %add115, %lab_L078 ], [ %STK2.1, %lab_L078.preheader ]
  %mul = mul i64 %STK24.2, 10
  %add103 = add nsw i64 %STK22.2, -48
  %sub = add i64 %add103, %mul
  %add115 = add i64 %STK2.3, 1
  %getbyte.charptr126 = getelementptr i8, ptr %getbyte.string, i64 %add115
  %getbyte.char127 = load i8, ptr %getbyte.charptr126, align 1
  %getbyte.charword128 = zext i8 %getbyte.char127 to i64
  %2 = add i8 %getbyte.char127, -48
  %or.cond = icmp ult i8 %2, 10
  br i1 %or.cond, label %lab_L078, label %lab_L067

lab_L067:                                         ; preds = %lab_L078
  %eq160.not = icmp eq i8 %getbyte.char127, 46
  br i1 %eq160.not, label %jf.else165, label %lab_L059.backedge

lab_L059.backedge:                                ; preds = %lab_L067, %jf.else165
  %STK22.0.be = phi i64 [ %getbyte.charword128, %lab_L067 ], [ %getbyte.charword184, %jf.else165 ]
  %STK2.1.be = phi i64 [ %add115, %lab_L067 ], [ %add171, %jf.else165 ]
  br label %lab_L059

jf.else165:                                       ; preds = %lab_L067
  %add171 = add i64 %STK2.3, 2
  %getbyte.charptr182 = getelementptr i8, ptr %getbyte.string, i64 %add171
  %getbyte.char183 = load i8, ptr %getbyte.charptr182, align 1
  %getbyte.charword184 = zext i8 %getbyte.char183 to i64
  %3 = add i8 %getbyte.char183, -58
  %or.cond1159 = icmp ult i8 %3, -10
  br i1 %or.cond1159, label %lab_L059.backedge, label %lab_L081

lab_L081:                                         ; preds = %jf.else165, %lab_L081
  %STK25.1 = phi i64 [ %sub225, %lab_L081 ], [ %STK25.0.ph, %jf.else165 ]
  %STK22.3 = phi i64 [ %getbyte.charword246, %lab_L081 ], [ %getbyte.charword184, %jf.else165 ]
  %STK2.4 = phi i64 [ %add233, %lab_L081 ], [ %add171, %jf.else165 ]
  %mul214 = mul i64 %STK25.1, 10
  %add220 = add nsw i64 %STK22.3, -48
  %sub225 = add i64 %add220, %mul214
  %add233 = add i64 %STK2.4, 1
  %getbyte.charptr244 = getelementptr i8, ptr %getbyte.string, i64 %add233
  %getbyte.char245 = load i8, ptr %getbyte.charptr244, align 1
  %getbyte.charword246 = zext i8 %getbyte.char245 to i64
  %4 = add i8 %getbyte.char245, -48
  %or.cond1160 = icmp ult i8 %4, 10
  br i1 %or.cond1160, label %lab_L081, label %lab_L059.outer

lab_L085:                                         ; preds = %lab_L059
  br i1 %if_cond275, label %lab_L091.thread, label %jf.else276

lab_L091.thread:                                  ; preds = %lab_L085
  %lg.value4041383 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), align 4
  br label %jt.else485

jf.else276:                                       ; preds = %lab_L085
  %gr = icmp slt i64 %STK25.0.ph, 1
  br i1 %gr, label %jt.then_L088, label %lab_L087

lab_L087:                                         ; preds = %jf.else276, %lab_L087
  %STK278.0 = phi i64 [ %add305, %lab_L087 ], [ 1, %jf.else276 ]
  %STK277.0 = phi i64 [ %mul297, %lab_L087 ], [ 1, %jf.else276 ]
  %mul297 = mul i64 %STK277.0, 10
  %add305 = add i64 %STK278.0, 1
  %le314.not = icmp sgt i64 %add305, %STK25.0.ph
  br i1 %le314.not, label %jt.then_L088, label %lab_L087

jt.then_L088:                                     ; preds = %lab_L087, %jf.else276
  %STK277.1 = phi i64 [ 1, %jf.else276 ], [ %mul297, %lab_L087 ]
  %rv.rv66.frozen = freeze i64 %rv.rv66
  %STK277.1.frozen = freeze i64 %STK277.1
  %div = sdiv i64 %rv.rv66.frozen, %STK277.1.frozen
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %stack.vec.i)
  %neg.i = sub i64 0, %div
  %if_cond.i = icmp slt i64 %rv.rv66, 0
  %spec.select.i = select i1 %if_cond.i, i64 %div, i64 %neg.i
  br label %lab_L126.i

lab_L126.i:                                       ; preds = %lab_L126.i, %jt.then_L088
  %STK7.1.i = phi i64 [ %spec.select.i, %jt.then_L088 ], [ %div.i, %lab_L126.i ]
  %STK5.0.i = phi i64 [ 0, %jt.then_L088 ], [ %add45.i, %lab_L126.i ]
  %STK7.1.i.frozen = freeze i64 %STK7.1.i
  %div.i = sdiv i64 %STK7.1.i.frozen, 10
  %5 = mul i64 %div.i, 10
  %mod.i.decomposed = sub i64 %STK7.1.i.frozen, %5
  %neg24.i = sub nsw i64 0, %mod.i.decomposed
  %add.i = add i64 %STK5.0.i, %stack.bcpladdr.i
  %stind.llvmaddr.i = shl i64 %add.i, 3
  %stind.lv.i = inttoptr i64 %stind.llvmaddr.i to ptr
  store i64 %neg24.i, ptr %stind.lv.i, align 8
  %add45.i = add i64 %STK5.0.i, 1
  %STK7.1.off.i = add i64 %STK7.1.i, 9
  %if_cond51.not.i = icmp ult i64 %STK7.1.off.i, 19
  br i1 %if_cond51.not.i, label %lab_L127.i, label %lab_L126.i

lab_L127.i:                                       ; preds = %lab_L126.i
  %6 = xor i64 %STK25.0.ph, -1
  %rv.rv66.lobit = ashr i64 %rv.rv66, 63
  %sub338 = add i64 %rv.rv66.lobit, %6
  %spec.select209.i = add i64 %sub338, %STK24.0
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L131.i, label %lab_L130.i

lab_L130.i:                                       ; preds = %lab_L127.i, %lab_L130.i
  %STK71.0.i = phi i64 [ %add104.i, %lab_L130.i ], [ %add70.i, %lab_L127.i ]
  %lg.value93.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96.i = inttoptr i64 %lg.value93.i to ptr
  %rtap98.i = call i64 %rtap_ep_p_fn96.i(i64 32)
  %add104.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add104.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L131.i, label %lab_L130.i

jt.then_L131.i:                                   ; preds = %lab_L130.i, %lab_L127.i
  br i1 %if_cond.i, label %jt.else127.i, label %jf.then_L136.i

jt.else127.i:                                     ; preds = %jt.then_L131.i
  %lg.value129.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn132.i = inttoptr i64 %lg.value129.i to ptr
  %rtap134.i = call i64 %rtap_ep_p_fn132.i(i64 45)
  br label %jf.then_L136.i

jf.then_L136.i:                                   ; preds = %jt.else127.i, %jt.then_L131.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L137.i

lab_L137.i:                                       ; preds = %jf.then_L136.i, %lab_L137.i
  %STK141.0.i = phi i64 [ %add177.i, %lab_L137.i ], [ %STK5.0.i, %jf.then_L136.i ]
  %add158.i = add i64 %STK141.0.i, %stack.bcpladdr.i
  %rv.llvmaddr.i = shl i64 %add158.i, 3
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %add164.i = add i64 %rv.rv.i, 48
  %lg.value166.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn169.i = inttoptr i64 %lg.value166.i to ptr
  %rtap171.i = call i64 %rtap_ep_p_fn169.i(i64 %add164.i)
  %add177.i = add nsw i64 %STK141.0.i, -1
  %ge.not.i = icmp eq i64 %STK141.0.i, 0
  br i1 %ge.not.i, label %writedz.exit, label %lab_L137.i

writedz.exit:                                     ; preds = %lab_L137.i, %jf.then_L136.i
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %stack.vec.i)
  %lg.value358 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn361 = inttoptr i64 %lg.value358 to ptr
  %rtap363 = call i64 %rtap_ep_p_fn361(i64 46)
  %7 = mul i64 %div, %STK277.1.frozen
  %mod.decomposed = sub i64 %rv.rv66.frozen, %7
  %abs.result.128 = call i64 @llvm.abs.i64(i64 %mod.decomposed, i1 true)
  %lg.value375 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 736), align 4
  %rtap_ep_p_fn378 = inttoptr i64 %lg.value375 to ptr
  %rtap381 = call i64 %rtap_ep_p_fn378(i64 %abs.result.128, i64 %STK25.0.ph)
  %rv.rv387 = load i64, ptr %rv.lv, align 8
  %add392 = add i64 %rv.rv387, 1
  store i64 %add392, ptr %rv.lv, align 8
  %add401 = add i64 %STK2.1, 1
  br label %jump.target_L057

lab_L091:                                         ; preds = %lab_L059
  %lg.value404 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L102

lab_L093:                                         ; preds = %lab_L059
  %lg.value418 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 720), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L102

lab_L096:                                         ; preds = %lab_L059
  %lg.value439 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L102

lab_L097:                                         ; preds = %lab_L059
  %lg.value446 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L102

lab_L099:                                         ; preds = %lab_L059
  %lg.value460 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 728), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L102

lab_L100:                                         ; preds = %lab_L059
  %lg.value467 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 736), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L102

lf_L061:                                          ; preds = %lab_L059
  br i1 %if_cond275, label %jt.else485, label %jt.then_L102

jt.else485:                                       ; preds = %lab_L091.thread, %lab_L091, %lab_L093, %lab_L096, %lab_L097, %lab_L099, %lab_L100, %lf_L061
  %STK23.1.ph1381 = phi i64 [ %lg.value467, %lab_L100 ], [ ptrtoint (ptr @writebin to i64), %lf_L061 ], [ %lg.value460, %lab_L099 ], [ %lg.value446, %lab_L097 ], [ %lg.value439, %lab_L096 ], [ %lg.value418, %lab_L093 ], [ %lg.value404, %lab_L091 ], [ %lg.value4041383, %lab_L091.thread ]
  %add491 = add i64 %STK2.1, 1
  %getbyte.charptr502 = getelementptr i8, ptr %getbyte.string, i64 %add491
  %getbyte.char503 = load i8, ptr %getbyte.charptr502, align 1
  %getbyte.charword504 = zext i8 %getbyte.char503 to i64
  %lg.value506 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn509 = inttoptr i64 %lg.value506 to ptr
  %fnap511 = call i64 %rtap_ep_p_fn509(i64 %getbyte.charword504)
  %8 = add i64 %fnap511, -58
  %or.cond1161 = icmp ult i64 %8, -10
  %__res_a.0.v = select i1 %or.cond1161, i64 -55, i64 -48
  %__res_a.0 = add i64 %__res_a.0.v, %fnap511
  br label %jt.then_L102

jt.then_L102:                                     ; preds = %lab_L091, %lab_L093, %lab_L096, %lab_L097, %lab_L099, %lab_L100, %jt.else485, %lf_L061
  %STK23.1.ph1380 = phi i64 [ ptrtoint (ptr @writebin to i64), %lf_L061 ], [ %STK23.1.ph1381, %jt.else485 ], [ %lg.value467, %lab_L100 ], [ %lg.value460, %lab_L099 ], [ %lg.value446, %lab_L097 ], [ %lg.value439, %lab_L096 ], [ %lg.value418, %lab_L093 ], [ %lg.value404, %lab_L091 ]
  %STK24.3 = phi i64 [ %STK24.0, %lf_L061 ], [ %__res_a.0, %jt.else485 ], [ %STK24.0, %lab_L100 ], [ %STK24.0, %lab_L099 ], [ %STK24.0, %lab_L097 ], [ %STK24.0, %lab_L096 ], [ %STK24.0, %lab_L093 ], [ %STK24.0, %lab_L091 ]
  %STK2.6 = phi i64 [ %STK2.1, %lf_L061 ], [ %add491, %jt.else485 ], [ %STK2.1, %lab_L100 ], [ %STK2.1, %lab_L099 ], [ %STK2.1, %lab_L097 ], [ %STK2.1, %lab_L096 ], [ %STK2.1, %lab_L093 ], [ %STK2.1, %lab_L091 ]
  %rtap_ep_p_fn567 = inttoptr i64 %STK23.1.ph1380 to ptr
  %rtap570 = call i64 %rtap_ep_p_fn567(i64 %rv.rv66, i64 %STK24.3)
  %rv.rv576 = load i64, ptr %rv.lv, align 8
  %add581 = add i64 %rv.rv576, 1
  store i64 %add581, ptr %rv.lv, align 8
  %add594 = add i64 %STK2.6, 1
  br label %jump.target_L057

lf_L060.loopexit1384:                             ; preds = %lab_L059
  br label %lf_L060

lf_L060.loopexit1477:                             ; preds = %lab_L059
  br label %lf_L060

lf_L060.loopexit:                                 ; preds = %lab_L059
  br label %lf_L060

lf_L060:                                          ; preds = %lab_L059, %lf_L060.loopexit, %lf_L060.loopexit1477, %lf_L060.loopexit1384
  %STK23.1.ph1174.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1008), %lf_L060.loopexit1384 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 688), %lf_L060.loopexit1477 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), %lf_L060.loopexit ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), %lab_L059 ]
  %STK23.1.ph1174 = load i64, ptr %STK23.1.ph1174.in, align 4
  %rtap_ep_p_fn603 = inttoptr i64 %STK23.1.ph1174 to ptr
  %rtap606 = call i64 %rtap_ep_p_fn603(i64 %rv.rv66, i64 0)
  %rv.rv612 = load i64, ptr %rv.lv, align 8
  %add617 = add i64 %rv.rv612, 1
  store i64 %add617, ptr %rv.lv, align 8
  %add630 = add i64 %STK2.1, 1
  br label %jump.target_L057

lab_L106:                                         ; preds = %lab_L059, %lab_L059
  %rv.rv638 = load i64, ptr %rv.lv, align 8
  %add643 = add i64 %rv.rv638, 1
  store i64 %add643, ptr %rv.lv, align 8
  %add656 = add i64 %STK2.1, 1
  br label %jump.target_L057

lab_L107:                                         ; preds = %lab_L059
  %rv.rv664 = load i64, ptr %rv.lv, align 8
  %sub669 = add i64 %rv.rv664, -1
  store i64 %sub669, ptr %rv.lv, align 8
  %add682 = add i64 %STK2.1, 1
  br label %jump.target_L057

lab_L108:                                         ; preds = %lab_L059
  %stack.vec = alloca [33 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %rv.rv691 = load i64, ptr %rv.lv, align 8
  %add696 = add i64 %rv.rv691, 1
  store i64 %add696, ptr %rv.lv, align 8
  %lg.value709 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 744), align 4
  %rtap_ep_p_fn712 = inttoptr i64 %lg.value709 to ptr
  %fnap716 = call i64 %rtap_ep_p_fn712(i64 %rv.rv66, i64 %stack.bcpladdr, i64 32)
  %if_cond719.not = icmp eq i64 %fnap716, 0
  %spec.select = select i1 %if_cond719.not, i64 %lstr.bcpladdr, i64 %stack.bcpladdr
  %rtap733 = call i64 @write_format(i64 %spec.select, i64 %1)
  %add739 = add i64 %STK2.1, 1
  br label %jump.target_L057

lab_L110:                                         ; preds = %lab_L059
  %rv.rv748 = load i64, ptr %rv.lv, align 8
  %add753 = add i64 %rv.rv748, 1
  store i64 %add753, ptr %rv.lv, align 8
  %lg.value767 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1440), align 4
  %rtap_ep_p_fn770 = inttoptr i64 %lg.value767 to ptr
  %rtap774 = call i64 %rtap_ep_p_fn770(i64 %rv.rv66, i64 %STK24.0, i64 %STK25.0.ph)
  %add780 = add i64 %STK2.1, 1
  br label %jump.target_L057

lab_L111:                                         ; preds = %lab_L059
  %rv.rv788 = load i64, ptr %rv.lv, align 8
  %add793 = add i64 %rv.rv788, 1
  store i64 %add793, ptr %rv.lv, align 8
  br i1 %if_cond275, label %jf.then_L112, label %jf.else805

jf.else805:                                       ; preds = %lab_L111
  %lg.value812 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 584), align 4
  %rtap_ep_p_fn815 = inttoptr i64 %lg.value812 to ptr
  %rtap819 = call i64 %rtap_ep_p_fn815(i64 %rv.rv66, i64 %STK24.0, i64 %STK25.0.ph)
  br label %jump.target_L113

jf.then_L112:                                     ; preds = %lab_L111
  %rtap830 = call i64 @write_format(i64 %rv.rv66, i64 %1)
  br label %jump.target_L113

jump.target_L113:                                 ; preds = %jf.then_L112, %jf.else805
  %add836 = add i64 %STK2.1, 1
  br label %jump.target_L057

lab_L114:                                         ; preds = %lab_L059
  %ne = icmp ne i64 %rv.rv66, 1
  %booltoword844 = sext i1 %ne to i64
  %rv.rv851 = load i64, ptr %rv.lv, align 8
  %add856 = add i64 %rv.rv851, 1
  store i64 %add856, ptr %rv.lv, align 8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK2.1
  %getbyte.char881 = load i8, ptr %gep, align 1
  %getbyte.charword882 = zext i8 %getbyte.char881 to i64
  %add890 = add i64 %STK2.1, 2
  %eq898.not = icmp eq i8 %getbyte.char881, 92
  br i1 %eq898.not, label %jf.else903, label %jf.then_L115

jf.else903:                                       ; preds = %lab_L114
  %getbyte.char916 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword917 = zext i8 %getbyte.char916 to i64
  %gr921 = icmp sgt i64 %add890, %getbyte.charword917
  br i1 %gr921, label %jump.target_L057, label %lab_L117

lab_L117:                                         ; preds = %jf.else903, %lab_L118
  %getbyte.char9981378 = phi i8 [ %getbyte.char998, %lab_L118 ], [ %getbyte.char916, %jf.else903 ]
  %STK905.0 = phi i64 [ %STK905.1, %lab_L118 ], [ %booltoword844, %jf.else903 ]
  %STK2.7 = phi i64 [ %add944, %lab_L118 ], [ %add890, %jf.else903 ]
  %getbyte.charptr935 = getelementptr i8, ptr %getbyte.string, i64 %STK2.7
  %getbyte.char936 = load i8, ptr %getbyte.charptr935, align 1
  %getbyte.charword937 = zext i8 %getbyte.char936 to i64
  %add944 = add nsw i64 %STK2.7, 1
  %eq952.not = icmp eq i8 %getbyte.char936, 92
  br i1 %eq952.not, label %jf.else957, label %jf.then_L120

jf.else957:                                       ; preds = %lab_L117
  %not = xor i64 %STK905.0, -1
  %eq969 = icmp eq i64 %booltoword844, %not
  br i1 %eq969, label %jump.target_L057, label %lab_L118

jf.then_L120:                                     ; preds = %lab_L117
  %if_cond978.not = icmp eq i64 %STK905.0, 0
  br i1 %if_cond978.not, label %jt.else979, label %lab_L118

jt.else979:                                       ; preds = %jf.then_L120
  %lg.value982 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn985 = inttoptr i64 %lg.value982 to ptr
  %rtap987 = call i64 %rtap_ep_p_fn985(i64 %getbyte.charword937)
  %getbyte.char998.pre = load i8, ptr %getbyte.string, align 8
  br label %lab_L118

lab_L118:                                         ; preds = %jf.else957, %jt.else979, %jf.then_L120
  %getbyte.char998 = phi i8 [ %getbyte.char9981378, %jf.then_L120 ], [ %getbyte.char998.pre, %jt.else979 ], [ %getbyte.char9981378, %jf.else957 ]
  %STK905.1 = phi i64 [ -1, %jf.then_L120 ], [ 0, %jt.else979 ], [ %not, %jf.else957 ]
  %getbyte.charword999 = zext i8 %getbyte.char998 to i64
  %gr1003.not.not = icmp slt i64 %STK2.7, %getbyte.charword999
  br i1 %gr1003.not.not, label %lab_L117, label %jump.target_L057

jf.then_L115:                                     ; preds = %lab_L114
  br i1 %ne, label %jf.else1014, label %jump.target_L057

jf.else1014:                                      ; preds = %jf.then_L115
  %lg.value1017 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn1020 = inttoptr i64 %lg.value1017 to ptr
  %rtap1022 = call i64 %rtap_ep_p_fn1020(i64 %getbyte.charword882)
  br label %jump.target_L057

jump.target_L057:                                 ; preds = %lab_L118, %jf.else957, %jf.then_L115, %jf.else1014, %jf.else903, %jump.target_L113, %lab_L110, %lab_L108, %lab_L107, %lab_L106, %lf_L060, %jt.then_L102, %writedz.exit, %lab_L065, %jt.else
  %STK2.8 = phi i64 [ %add90, %lab_L065 ], [ %add594, %jt.then_L102 ], [ %add630, %lf_L060 ], [ %add401, %writedz.exit ], [ %add656, %lab_L106 ], [ %add682, %lab_L107 ], [ %add739, %lab_L108 ], [ %add780, %lab_L110 ], [ %add836, %jump.target_L113 ], [ %add890, %jf.then_L115 ], [ %add890, %jf.else1014 ], [ %add890, %jf.else903 ], [ %add, %jt.else ], [ %add944, %jf.else957 ], [ %add944, %lab_L118 ]
  %getbyte.char1036 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword1037 = zext i8 %getbyte.char1036 to i64
  %le1041.not = icmp sgt i64 %STK2.8, %getbyte.charword1037
  br i1 %le1041.not, label %jf.then_L058, label %lab_L056

jf.then_L058:                                     ; preds = %jump.target_L057, %entry
  store i64 %lg.value, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  ret i64 -4985279381848933680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @capitalch(i64 %0) #2 section ".text.BLIB" {
entry:
  %1 = add i64 %0, -123
  %or.cond = icmp ult i64 %1, -26
  %sub = add nsw i64 %0, -32
  %common.ret.op = select i1 %or.cond, i64 %0, i64 %sub
  ret i64 %common.ret.op
}

define noundef i64 @writedz(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr section ".text.BLIB" {
entry:
  %stack.vec = alloca [21 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %neg = sub i64 0, %0
  %if_cond = icmp eq i64 %3, 0
  %spec.select = select i1 %if_cond, i64 %neg, i64 %0
  %not.if_cond = xor i1 %if_cond, true
  %sub = sext i1 %not.if_cond to i64
  br label %lab_L126

lab_L126:                                         ; preds = %lab_L126, %entry
  %STK7.1 = phi i64 [ %spec.select, %entry ], [ %div, %lab_L126 ]
  %STK5.0 = phi i64 [ 0, %entry ], [ %add45, %lab_L126 ]
  %STK7.1.frozen = freeze i64 %STK7.1
  %div = sdiv i64 %STK7.1.frozen, 10
  %4 = mul i64 %div, 10
  %mod.decomposed = sub i64 %STK7.1.frozen, %4
  %neg24 = sub nsw i64 0, %mod.decomposed
  %add = add i64 %STK5.0, %stack.bcpladdr
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %neg24, ptr %stind.lv, align 8
  %add45 = add i64 %STK5.0, 1
  %STK7.1.off = add i64 %STK7.1, 9
  %if_cond51.not = icmp ult i64 %STK7.1.off, 19
  br i1 %if_cond51.not, label %lab_L127, label %lab_L126

lab_L127:                                         ; preds = %lab_L126
  %spec.select209 = add i64 %1, %sub
  %if_cond60 = icmp eq i64 %2, 0
  %or.cond = select i1 %if_cond, i1 true, i1 %if_cond60
  br i1 %or.cond, label %jf.then_L129, label %jf.else61

jf.else61:                                        ; preds = %lab_L127
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 45)
  br label %jf.then_L129

jf.then_L129:                                     ; preds = %jf.else61, %lab_L127
  %add70 = add i64 %STK5.0, 2
  %gr = icmp sgt i64 %add70, %spec.select209
  br i1 %gr, label %jt.then_L131, label %lab_L130.preheader

lab_L130.preheader:                               ; preds = %jf.then_L129
  %. = select i1 %if_cond60, i64 32, i64 48
  br label %lab_L130

lab_L130:                                         ; preds = %lab_L130.preheader, %lab_L130
  %STK71.0 = phi i64 [ %add104, %lab_L130 ], [ %add70, %lab_L130.preheader ]
  %lg.value93 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96 = inttoptr i64 %lg.value93 to ptr
  %rtap98 = call i64 %rtap_ep_p_fn96(i64 %.)
  %add104 = add i64 %STK71.0, 1
  %le.not = icmp sgt i64 %add104, %spec.select209
  br i1 %le.not, label %jt.then_L131, label %lab_L130

jt.then_L131:                                     ; preds = %lab_L130, %jf.then_L129
  %or.cond210 = select i1 %not.if_cond, i1 %if_cond60, i1 false
  br i1 %or.cond210, label %jt.else127, label %jf.then_L136

jt.else127:                                       ; preds = %jt.then_L131
  %lg.value129 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn132 = inttoptr i64 %lg.value129 to ptr
  %rtap134 = call i64 %rtap_ep_p_fn132(i64 45)
  br label %jf.then_L136

jf.then_L136:                                     ; preds = %jt.else127, %jt.then_L131
  %ls = icmp slt i64 %STK5.0, 0
  br i1 %ls, label %jt.then_L138, label %lab_L137

lab_L137:                                         ; preds = %jf.then_L136, %lab_L137
  %STK141.0 = phi i64 [ %add177, %lab_L137 ], [ %STK5.0, %jf.then_L136 ]
  %add158 = add i64 %STK141.0, %stack.bcpladdr
  %rv.llvmaddr = shl i64 %add158, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %add164 = add i64 %rv.rv, 48
  %lg.value166 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn169 = inttoptr i64 %lg.value166 to ptr
  %rtap171 = call i64 %rtap_ep_p_fn169(i64 %add164)
  %add177 = add nsw i64 %STK141.0, -1
  %ge.not = icmp eq i64 %STK141.0, 0
  br i1 %ge.not, label %jt.then_L138, label %lab_L137

jt.then_L138:                                     ; preds = %lab_L137, %jf.then_L136
  ret i64 -4985279381848933680
}

define noundef i64 @writed(i64 %0, i64 %1) section ".text.BLIB" {
entry:
  %stack.vec.i = alloca [21 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %stack.vec.i)
  %stack.vecaddr.i = ptrtoint ptr %stack.vec.i to i64
  %stack.bcpladdr.i = ashr exact i64 %stack.vecaddr.i, 3
  %2 = call i64 @llvm.abs.i64(i64 %0, i1 false)
  %spec.select.i = sub i64 0, %2
  br label %lab_L126.i

lab_L126.i:                                       ; preds = %lab_L126.i, %entry
  %STK7.1.i = phi i64 [ %spec.select.i, %entry ], [ %div.i, %lab_L126.i ]
  %STK5.0.i = phi i64 [ 0, %entry ], [ %add45.i, %lab_L126.i ]
  %STK7.1.i.frozen = freeze i64 %STK7.1.i
  %div.i = sdiv i64 %STK7.1.i.frozen, 10
  %3 = mul i64 %div.i, 10
  %mod.i.decomposed = sub i64 %STK7.1.i.frozen, %3
  %neg24.i = sub nsw i64 0, %mod.i.decomposed
  %add.i = add i64 %STK5.0.i, %stack.bcpladdr.i
  %stind.llvmaddr.i = shl i64 %add.i, 3
  %stind.lv.i = inttoptr i64 %stind.llvmaddr.i to ptr
  store i64 %neg24.i, ptr %stind.lv.i, align 8
  %add45.i = add i64 %STK5.0.i, 1
  %STK7.1.off.i = add nsw i64 %STK7.1.i, 9
  %if_cond51.not.i = icmp ult i64 %STK7.1.off.i, 19
  br i1 %if_cond51.not.i, label %lab_L127.i, label %lab_L126.i

lab_L127.i:                                       ; preds = %lab_L126.i
  %if_cond.i = icmp slt i64 %0, 0
  %.lobit = ashr i64 %0, 63
  %spec.select209.i = add i64 %1, %.lobit
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L131.i, label %lab_L130.i

lab_L130.i:                                       ; preds = %lab_L127.i, %lab_L130.i
  %STK71.0.i = phi i64 [ %add104.i, %lab_L130.i ], [ %add70.i, %lab_L127.i ]
  %lg.value93.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96.i = inttoptr i64 %lg.value93.i to ptr
  %rtap98.i = call i64 %rtap_ep_p_fn96.i(i64 32)
  %add104.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add104.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L131.i, label %lab_L130.i

jt.then_L131.i:                                   ; preds = %lab_L130.i, %lab_L127.i
  br i1 %if_cond.i, label %jt.else127.i, label %jf.then_L136.i

jt.else127.i:                                     ; preds = %jt.then_L131.i
  %lg.value129.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn132.i = inttoptr i64 %lg.value129.i to ptr
  %rtap134.i = call i64 %rtap_ep_p_fn132.i(i64 45)
  br label %jf.then_L136.i

jf.then_L136.i:                                   ; preds = %jt.else127.i, %jt.then_L131.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L137.i

lab_L137.i:                                       ; preds = %jf.then_L136.i, %lab_L137.i
  %STK141.0.i = phi i64 [ %add177.i, %lab_L137.i ], [ %STK5.0.i, %jf.then_L136.i ]
  %add158.i = add i64 %STK141.0.i, %stack.bcpladdr.i
  %rv.llvmaddr.i = shl i64 %add158.i, 3
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %add164.i = add i64 %rv.rv.i, 48
  %lg.value166.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn169.i = inttoptr i64 %lg.value166.i to ptr
  %rtap171.i = call i64 %rtap_ep_p_fn169.i(i64 %add164.i)
  %add177.i = add nsw i64 %STK141.0.i, -1
  %ge.not.i = icmp eq i64 %STK141.0.i, 0
  br i1 %ge.not.i, label %writedz.exit, label %lab_L137.i

writedz.exit:                                     ; preds = %lab_L137.i, %jf.then_L136.i
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %stack.vec.i)
  ret i64 -4985279381848933680
}

define noundef i64 @writen(i64 %0) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %0, i64 0)
  ret i64 -4985279381848933680
}

define noundef i64 @writeoct(i64 %0, i64 %1) section ".text.BLIB" {
entry:
  %gr = icmp slt i64 %1, 2
  br i1 %gr, label %jf.then_L141, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 3
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then_L141

jf.then_L141:                                     ; preds = %jf.else, %entry
  %logand = and i64 %0, 7
  %add = or disjoint i64 %logand, 48
  %lg.value30 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn33 = inttoptr i64 %lg.value30 to ptr
  %rtap35 = tail call i64 %rtap_ep_p_fn33(i64 %add)
  ret i64 -4985279381848933680
}

define noundef i64 @writehex(i64 %0, i64 %1) section ".text.BLIB" {
entry:
  %gr = icmp slt i64 %1, 2
  br i1 %gr, label %jf.then_L142, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 4
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then_L142

jf.then_L142:                                     ; preds = %jf.else, %entry
  %logand = shl i64 %0, 3
  %add40 = and i64 %logand, 120
  %lll.bcpladdr41 = add i64 %add40, ptrtoint (ptr @itemn.global to i64)
  %rv.lv = inttoptr i64 %lll.bcpladdr41 to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %lg.value31 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn34 = inttoptr i64 %lg.value31 to ptr
  %rtap36 = tail call i64 %rtap_ep_p_fn34(i64 %rv.rv)
  ret i64 -4985279381848933680
}

define noundef i64 @writebin(i64 %0, i64 %1) section ".text.BLIB" {
entry:
  %gr = icmp slt i64 %1, 2
  br i1 %gr, label %jf.then_L144, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 1
  %sub = add nsw i64 %1, -1
  %rtap = tail call i64 @writebin(i64 %shift.result10, i64 %sub)
  br label %jf.then_L144

jf.then_L144:                                     ; preds = %jf.else, %entry
  %logand = and i64 %0, 1
  %add = or disjoint i64 %logand, 48
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn32 = inttoptr i64 %lg.value to ptr
  %rtap34 = tail call i64 %rtap_ep_p_fn32(i64 %add)
  ret i64 -4985279381848933680
}

define noundef i64 @newline() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 10)
  ret i64 -4985279381848933680
}

define i64 @compch(i64 %0, i64 %1) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %0)
  %lg.value7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn10 = inttoptr i64 %lg.value7 to ptr
  %fnap12 = tail call i64 %rtap_ep_p_fn10(i64 %1)
  %sub = sub i64 %fnap, %fnap12
  ret i64 %sub
}

define i64 @compstring(i64 %0, i64 %1) local_unnamed_addr section ".text.BLIB" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.llvmaddr10 = shl i64 %1, 3
  %getbyte.string11 = inttoptr i64 %getbyte.llvmaddr10 to ptr
  %getbyte.char13 = load i8, ptr %getbyte.string11, align 8
  %ls.not = icmp ult i8 %getbyte.char, %getbyte.char13
  %. = select i1 %ls.not, i64 %0, i64 %1
  %getbyte.llvmaddr33 = shl i64 %., 3
  %getbyte.string34 = inttoptr i64 %getbyte.llvmaddr33 to ptr
  %getbyte.char36 = load i8, ptr %getbyte.string34, align 8
  %getbyte.charword37 = zext i8 %getbyte.char36 to i64
  %gr = icmp eq i8 %getbyte.char36, 0
  br i1 %gr, label %jt.then_L148, label %lab_L147

lab_L147:                                         ; preds = %entry, %lab_L150
  %STK27.0 = phi i64 [ %add, %lab_L150 ], [ 1, %entry ]
  %getbyte.charptr57 = getelementptr i8, ptr %getbyte.string, i64 %STK27.0
  %getbyte.char58 = load i8, ptr %getbyte.charptr57, align 1
  %getbyte.charword59 = zext i8 %getbyte.char58 to i64
  %getbyte.charptr69 = getelementptr i8, ptr %getbyte.string11, i64 %STK27.0
  %getbyte.char70 = load i8, ptr %getbyte.charptr69, align 1
  %getbyte.charword71 = zext i8 %getbyte.char70 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword59, i64 %getbyte.charword71)
  %if_cond79 = icmp eq i64 %fnap, 0
  br i1 %if_cond79, label %lab_L150, label %common.ret

common.ret:                                       ; preds = %lab_L147, %jf.then_L152, %jt.then_L148
  %common.ret.op = phi i64 [ 0, %jt.then_L148 ], [ %.146, %jf.then_L152 ], [ %fnap, %lab_L147 ]
  ret i64 %common.ret.op

lab_L150:                                         ; preds = %lab_L147
  %add = add nuw nsw i64 %STK27.0, 1
  %le.not.not = icmp samesign ult i64 %STK27.0, %getbyte.charword37
  br i1 %le.not.not, label %lab_L147, label %jt.then_L148

jt.then_L148:                                     ; preds = %lab_L150, %entry
  %eq.not = icmp eq i8 %getbyte.char13, %getbyte.char
  br i1 %eq.not, label %common.ret, label %jf.then_L152

jf.then_L152:                                     ; preds = %jt.then_L148
  %eq119.not = icmp eq i64 %0, %.
  %.146 = select i1 %eq119.not, i64 -1, i64 1
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @getkeylen(i64 %0, i64 %1, i64 %2, i64 returned %3) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %jt.then_L156, label %lab_L154.preheader

lab_L154.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  br label %lab_L154

lab_L154:                                         ; preds = %lab_L154.preheader, %jf.else
  %STK4.0 = phi i64 [ %add, %jf.else ], [ 1, %lab_L154.preheader ]
  %STK2.0 = phi i64 [ %spec.select, %jf.else ], [ %2, %lab_L154.preheader ]
  %if_cond13 = icmp eq i64 %STK2.0, 0
  br i1 %if_cond13, label %jt.then_L156, label %jf.else

jf.else:                                          ; preds = %lab_L154
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK4.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %eq.not = icmp eq i8 %getbyte.char, 44
  %sub = sext i1 %eq.not to i64
  %spec.select = add i64 %STK2.0, %sub
  %add = add i64 %STK4.0, 1
  %gr46.not = icmp sgt i64 %add, %1
  br i1 %gr46.not, label %jt.then_L156, label %lab_L154

jt.then_L156:                                     ; preds = %jf.else, %lab_L154, %entry
  %STK4.1 = phi i64 [ 1, %entry ], [ %add, %jf.else ], [ %STK4.0, %lab_L154 ]
  %le.not = icmp sgt i64 %STK4.1, %1
  br i1 %le.not, label %jt.then_L156.jf.then_L160_crit_edge, label %lab_L158.preheader

jt.then_L156.jf.then_L160_crit_edge:              ; preds = %jt.then_L156
  %.pre = shl i64 %3, 3
  %.pre207 = inttoptr i64 %.pre to ptr
  br label %jf.then_L160

lab_L158.preheader:                               ; preds = %jt.then_L156
  %getbyte.llvmaddr69 = shl i64 %0, 3
  %getbyte.string70 = inttoptr i64 %getbyte.llvmaddr69 to ptr
  %putbyte.llvmaddr = shl i64 %3, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L158

lab_L158:                                         ; preds = %lab_L158.preheader, %jt.then_L161
  %STK5.0 = phi i64 [ %STK5.1, %jt.then_L161 ], [ 0, %lab_L158.preheader ]
  %STK4.2 = phi i64 [ %add148, %jt.then_L161 ], [ %STK4.1, %lab_L158.preheader ]
  %getbyte.charptr71 = getelementptr i8, ptr %getbyte.string70, i64 %STK4.2
  %getbyte.char72 = load i8, ptr %getbyte.charptr71, align 1
  switch i8 %getbyte.char72, label %jt.else118 [
    i8 47, label %jf.then_L160.loopexit.split.loop.exit204
    i8 61, label %jf.then_L160.loopexit.split.loop.exit204
    i8 44, label %jf.then_L160.loopexit.split.loop.exit204
    i8 10, label %jt.then_L161
  ]

jt.else118:                                       ; preds = %lab_L158
  %add124 = add i64 %STK5.0, 1
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %add124
  store i8 %getbyte.char72, ptr %putbyte.charptr, align 1
  br label %jt.then_L161

jt.then_L161:                                     ; preds = %lab_L158, %jt.else118
  %STK5.1 = phi i64 [ %add124, %jt.else118 ], [ %STK5.0, %lab_L158 ]
  %add148 = add i64 %STK4.2, 1
  %le157.not = icmp sgt i64 %add148, %1
  br i1 %le157.not, label %jf.then_L160.loopexit.split.loop.exit, label %lab_L158

jf.then_L160.loopexit.split.loop.exit:            ; preds = %jt.then_L161
  %extract.t203.le = trunc i64 %STK5.1 to i8
  br label %jf.then_L160

jf.then_L160.loopexit.split.loop.exit204:         ; preds = %lab_L158, %lab_L158, %lab_L158
  %extract.t.le = trunc i64 %STK5.0 to i8
  br label %jf.then_L160

jf.then_L160:                                     ; preds = %jt.then_L156.jf.then_L160_crit_edge, %jf.then_L160.loopexit.split.loop.exit, %jf.then_L160.loopexit.split.loop.exit204
  %putbyte.string173.pre-phi = phi ptr [ %.pre207, %jt.then_L156.jf.then_L160_crit_edge ], [ %putbyte.string, %jf.then_L160.loopexit.split.loop.exit ], [ %putbyte.string, %jf.then_L160.loopexit.split.loop.exit204 ]
  %STK5.2.off0 = phi i8 [ 0, %jt.then_L156.jf.then_L160_crit_edge ], [ %extract.t203.le, %jf.then_L160.loopexit.split.loop.exit ], [ %extract.t.le, %jf.then_L160.loopexit.split.loop.exit204 ]
  store i8 %STK5.2.off0, ptr %putbyte.string173.pre-phi, align 1
  ret i64 %3
}

define i64 @rdargs(i64 %0, i64 %1, i64 %2) section ".text.BLIB" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %fnap = tail call i64 @rdargslen(i64 %0, i64 %getbyte.charword, i64 %1, i64 %2)
  ret i64 %fnap
}

define i64 @rdargs2(i64 %0, i64 %1, i64 %2, i64 %3) section ".text.BLIB" {
entry:
  %stack.vec = alloca [64 x i64], align 8
  %stack.vec165 = ptrtoint ptr %stack.vec to i64
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr = icmp eq i8 %getbyte.char, 0
  br i1 %gr, label %jt.then_L163, label %lab_L162.preheader

lab_L162.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i8 %getbyte.char, 4
  %diff.check = icmp eq i64 %getbyte.llvmaddr, %stack.vec165
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %lab_L162.preheader185, label %vector.ph

vector.ph:                                        ; preds = %lab_L162.preheader
  %n.vec = and i64 %getbyte.charword, 252
  %4 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %5 = or disjoint i64 %index, 1
  %6 = getelementptr i8, ptr %getbyte.string, i64 %offset.idx
  %wide.load = load <4 x i8>, ptr %6, align 1
  %7 = getelementptr i8, ptr %stack.vec, i64 %5
  store <4 x i8> %wide.load, ptr %7, align 1
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !0

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %getbyte.charword
  br i1 %cmp.n, label %jt.then_L163, label %lab_L162.preheader185

lab_L162.preheader185:                            ; preds = %lab_L162.preheader, %middle.block
  %STK6.0.ph = phi i64 [ 1, %lab_L162.preheader ], [ %4, %middle.block ]
  %STK4.0.ph = phi i64 [ 0, %lab_L162.preheader ], [ %n.vec, %middle.block ]
  br label %lab_L162

lab_L162:                                         ; preds = %lab_L162.preheader185, %lab_L162
  %STK6.0 = phi i64 [ %add42, %lab_L162 ], [ %STK6.0.ph, %lab_L162.preheader185 ]
  %STK4.0 = phi i64 [ %add, %lab_L162 ], [ %STK4.0.ph, %lab_L162.preheader185 ]
  %add = add nuw nsw i64 %STK4.0, 1
  %getbyte.charptr29 = getelementptr i8, ptr %getbyte.string, i64 %STK6.0
  %getbyte.char30 = load i8, ptr %getbyte.charptr29, align 1
  %putbyte.charptr = getelementptr i8, ptr %stack.vec, i64 %add
  store i8 %getbyte.char30, ptr %putbyte.charptr, align 1
  %add42 = add nuw nsw i64 %STK6.0, 1
  %le.not.not = icmp samesign ult i64 %STK6.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L162, label %jt.then_L163, !llvm.loop !3

jt.then_L163:                                     ; preds = %lab_L162, %middle.block, %entry
  %STK4.1 = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ], [ %add, %lab_L162 ]
  %getbyte.llvmaddr62 = shl i64 %1, 3
  %getbyte.string63 = inttoptr i64 %getbyte.llvmaddr62 to ptr
  %getbyte.char65 = load i8, ptr %getbyte.string63, align 8
  %getbyte.charword66 = zext i8 %getbyte.char65 to i64
  %gr74 = icmp eq i8 %getbyte.char65, 0
  br i1 %gr74, label %jt.then_L167, label %lab_L166.preheader

lab_L166.preheader:                               ; preds = %jt.then_L163
  %min.iters.check171 = icmp ult i8 %getbyte.char65, 4
  br i1 %min.iters.check171, label %lab_L166.preheader184, label %vector.memcheck167

vector.memcheck167:                               ; preds = %lab_L166.preheader
  %9 = add i64 %STK4.1, %stack.vec165
  %10 = sub i64 %9, %getbyte.llvmaddr62
  %diff.check168 = icmp ult i64 %10, 4
  br i1 %diff.check168, label %lab_L166.preheader184, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck167
  %n.vec174 = and i64 %getbyte.charword66, 252
  %11 = or disjoint i64 %n.vec174, 1
  %12 = add i64 %STK4.1, %n.vec174
  %13 = getelementptr i8, ptr %stack.vec, i64 %STK4.1
  %invariant.gep = getelementptr i8, ptr %13, i64 1
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph172
  %index176 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body175 ]
  %offset.idx177 = or disjoint i64 %index176, 1
  %14 = getelementptr i8, ptr %getbyte.string63, i64 %offset.idx177
  %wide.load179 = load <4 x i8>, ptr %14, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index176
  store <4 x i8> %wide.load179, ptr %gep, align 1
  %index.next180 = add nuw i64 %index176, 4
  %15 = icmp eq i64 %index.next180, %n.vec174
  br i1 %15, label %middle.block169, label %vector.body175, !llvm.loop !4

middle.block169:                                  ; preds = %vector.body175
  %cmp.n181 = icmp eq i64 %n.vec174, %getbyte.charword66
  br i1 %cmp.n181, label %jt.then_L167, label %lab_L166.preheader184

lab_L166.preheader184:                            ; preds = %vector.memcheck167, %lab_L166.preheader, %middle.block169
  %STK56.0.ph = phi i64 [ 1, %lab_L166.preheader ], [ 1, %vector.memcheck167 ], [ %11, %middle.block169 ]
  %STK4.2.ph = phi i64 [ %STK4.1, %lab_L166.preheader ], [ %STK4.1, %vector.memcheck167 ], [ %12, %middle.block169 ]
  br label %lab_L166

lab_L166:                                         ; preds = %lab_L166.preheader184, %lab_L166
  %STK56.0 = phi i64 [ %add116, %lab_L166 ], [ %STK56.0.ph, %lab_L166.preheader184 ]
  %STK4.2 = phi i64 [ %add85, %lab_L166 ], [ %STK4.2.ph, %lab_L166.preheader184 ]
  %add85 = add nuw nsw i64 %STK4.2, 1
  %getbyte.charptr96 = getelementptr i8, ptr %getbyte.string63, i64 %STK56.0
  %getbyte.char97 = load i8, ptr %getbyte.charptr96, align 1
  %putbyte.charptr110 = getelementptr i8, ptr %stack.vec, i64 %add85
  store i8 %getbyte.char97, ptr %putbyte.charptr110, align 1
  %add116 = add nuw nsw i64 %STK56.0, 1
  %le125.not.not = icmp samesign ult i64 %STK56.0, %getbyte.charword66
  br i1 %le125.not.not, label %lab_L166, label %jt.then_L167, !llvm.loop !5

jt.then_L167:                                     ; preds = %lab_L166, %middle.block169, %jt.then_L163
  %STK4.3 = phi i64 [ %STK4.1, %jt.then_L163 ], [ %12, %middle.block169 ], [ %add85, %lab_L166 ]
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %fnap = call i64 @rdargslen(i64 %stack.bcpladdr, i64 %STK4.3, i64 %2, i64 %3)
  ret i64 %fnap
}

define i64 @rdargslen(i64 %0, i64 %1, i64 %2, i64 %3) section ".text.BLIB" {
entry:
  %stack.vec = alloca [31 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %stack.vec8 = alloca [128 x i64], align 8
  %stack.vecaddr9 = ptrtoint ptr %stack.vec8 to i64
  %stack.bcpladdr10 = ashr exact i64 %stack.vecaddr9, 3
  %gr.i = icmp slt i64 %3, 0
  br i1 %gr.i, label %lab_L324.i1863.preheader, label %lab_L324.i

lab_L324.i:                                       ; preds = %entry, %lab_L324.i
  %STK2.0.i = phi i64 [ %add26.i, %lab_L324.i ], [ 0, %entry ]
  %add.i = add i64 %STK2.0.i, %2
  %stind.llvmaddr.i = shl i64 %add.i, 3
  %stind.lv.i = inttoptr i64 %stind.llvmaddr.i to ptr
  store i64 0, ptr %stind.lv.i, align 8
  %add26.i = add i64 %STK2.0.i, 1
  %le.not.i = icmp sgt i64 %add26.i, %3
  br i1 %le.not.i, label %lab_L324.i1863.preheader, label %lab_L324.i

lab_L324.i1863.preheader:                         ; preds = %lab_L324.i, %entry
  br label %lab_L324.i1863

lab_L324.i1863:                                   ; preds = %lab_L324.i1863.preheader, %lab_L324.i1863
  %STK2.0.i1864 = phi i64 [ %add26.i1868, %lab_L324.i1863 ], [ 0, %lab_L324.i1863.preheader ]
  %add.i1865 = add nsw i64 %STK2.0.i1864, %stack.bcpladdr10
  %stind.llvmaddr.i1866 = shl i64 %add.i1865, 3
  %stind.lv.i1867 = inttoptr i64 %stind.llvmaddr.i1866 to ptr
  store i64 0, ptr %stind.lv.i1867, align 8
  %add26.i1868 = add nuw nsw i64 %STK2.0.i1864, 1
  %le.not.i1869 = icmp samesign ugt i64 %STK2.0.i1864, 126
  br i1 %le.not.i1869, label %clear_words.exit1870, label %lab_L324.i1863

clear_words.exit1870:                             ; preds = %lab_L324.i1863
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %lab_L186.preheader, label %lab_L171.preheader

lab_L171.preheader:                               ; preds = %clear_words.exit1870
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  br label %lab_L171

lab_L171:                                         ; preds = %lab_L171.preheader, %lab_L174
  %STK29.0 = phi i64 [ %add261, %lab_L174 ], [ 1, %lab_L171.preheader ]
  %STK5.0 = phi i64 [ %STK5.1, %lab_L174 ], [ 0, %lab_L171.preheader ]
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK29.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  switch i8 %getbyte.char, label %lab_L174 [
    i8 47, label %jf.else
    i8 44, label %jf.else229
  ]

jf.else:                                          ; preds = %lab_L171
  %getbyte.charptr66 = getelementptr i8, ptr %getbyte.charptr, i64 1
  %getbyte.char67 = load i8, ptr %getbyte.charptr66, align 1
  %getbyte.charword68 = zext i8 %getbyte.char67 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn72 = inttoptr i64 %lg.value to ptr
  %fnap = call i64 %rtap_ep_p_fn72(i64 %getbyte.charword68)
  switch i64 %fnap, label %goto.phi.bb [
    i64 80, label %lab_L183
    i64 78, label %lab_L182
    i64 83, label %lab_L181
    i64 75, label %lab_L180
    i64 65, label %lab_L174.sink.split
  ]

lab_L180:                                         ; preds = %jf.else
  br label %lab_L174.sink.split

lab_L181:                                         ; preds = %jf.else
  br label %lab_L174.sink.split

lab_L182:                                         ; preds = %jf.else
  br label %lab_L174.sink.split

lab_L183:                                         ; preds = %jf.else
  br label %lab_L174.sink.split

jf.else229:                                       ; preds = %lab_L171
  %add235 = add i64 %STK5.0, 1
  %gr242 = icmp slt i64 %add235, 128
  br i1 %gr242, label %lab_L174, label %jf.else247

common.ret:                                       ; preds = %lab_L248, %jt.then_L219, %jf.else247
  %common.ret.op = phi i64 [ 0, %jf.else247 ], [ %STK4.41914, %jt.then_L219 ], [ 0, %lab_L248 ]
  ret i64 %common.ret.op

jf.else247:                                       ; preds = %jf.else229
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.23 to i64), 3
  %lg.value249 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 760), align 4
  %rtap_ep_p_fn252 = inttoptr i64 %lg.value249 to ptr
  %rtap254 = call i64 %rtap_ep_p_fn252(i64 %lstr.bcpladdr)
  br label %common.ret

lab_L174.sink.split:                              ; preds = %jf.else, %lab_L180, %lab_L181, %lab_L182, %lab_L183
  %.sink = phi i64 [ 16, %lab_L183 ], [ 8, %lab_L182 ], [ 4, %lab_L181 ], [ 2, %lab_L180 ], [ 1, %jf.else ]
  %add194 = add i64 %STK5.0, %stack.bcpladdr10
  %rv.llvmaddr197 = shl i64 %add194, 3
  %rv.lv198 = inttoptr i64 %rv.llvmaddr197 to ptr
  %rv.rv199 = load i64, ptr %rv.lv198, align 8
  %logor204 = or i64 %rv.rv199, %.sink
  store i64 %logor204, ptr %rv.lv198, align 8
  br label %lab_L174

lab_L174:                                         ; preds = %lab_L174.sink.split, %lab_L171, %jf.else229
  %STK5.1 = phi i64 [ %add235, %jf.else229 ], [ %STK5.0, %lab_L171 ], [ %STK5.0, %lab_L174.sink.split ]
  %add261 = add i64 %STK29.0, 1
  %le.not = icmp sgt i64 %add261, %1
  br i1 %le.not, label %jt.then_L172, label %lab_L171

jt.then_L172:                                     ; preds = %lab_L174
  %gr284 = icmp slt i64 %STK5.1, 0
  br i1 %gr284, label %jt.then_L187, label %lab_L186.preheader

lab_L186.preheader:                               ; preds = %clear_words.exit1870, %jt.then_L172
  %STK5.21970 = phi i64 [ %STK5.1, %jt.then_L172 ], [ 0, %clear_words.exit1870 ]
  br label %lab_L186

lab_L186:                                         ; preds = %lab_L186.preheader, %lab_L189
  %STK275.0 = phi i64 [ %add325, %lab_L189 ], [ 0, %lab_L186.preheader ]
  %add296 = add i64 %STK275.0, %stack.bcpladdr10
  %rv.llvmaddr299 = shl i64 %add296, 3
  %rv.lv300 = inttoptr i64 %rv.llvmaddr299 to ptr
  %rv.rv301 = load i64, ptr %rv.lv300, align 8
  %logand = and i64 %rv.rv301, 12
  %eq310.not = icmp eq i64 %logand, 12
  br i1 %eq310.not, label %goto.phi.bb, label %lab_L189

lab_L189:                                         ; preds = %lab_L186
  %add325 = add i64 %STK275.0, 1
  %le334.not = icmp sgt i64 %add325, %STK5.21970
  br i1 %le334.not, label %jt.then_L187, label %lab_L186

jt.then_L187:                                     ; preds = %lab_L189, %jt.then_L172
  %gr2841974 = phi i1 [ true, %jt.then_L172 ], [ false, %lab_L189 ]
  %STK5.21971 = phi i64 [ %STK5.1, %jt.then_L172 ], [ %STK5.21970, %lab_L189 ]
  %add346 = add i64 %2, 1
  %add351 = add i64 %add346, %STK5.21971
  %getbyte.llvmaddr.i1884 = shl i64 %0, 3
  %getbyte.string.i1885 = inttoptr i64 %getbyte.llvmaddr.i1884 to ptr
  %lstr.bcpladdr1326 = ashr exact i64 ptrtoint (ptr @lstr.global.32 to i64), 3
  br label %lab_L191.outer

lab_L191.outer:                                   ; preds = %lab_L191.outer.backedge, %jt.then_L187
  %STK4.0.ph = phi i64 [ %add351, %jt.then_L187 ], [ %STK4.0.ph.be, %lab_L191.outer.backedge ]
  %sub.neg = sub i64 %2, %STK4.0.ph
  %sub366 = add i64 %sub.neg, %3
  %getbyte.llvmaddr65.i = shl i64 %STK4.0.ph, 3
  %getbyte.string66.i = inttoptr i64 %getbyte.llvmaddr65.i to ptr
  %getbyte.charptr69.i = getelementptr i8, ptr %getbyte.string66.i, i64 1
  br label %lab_L191

lab_L191:                                         ; preds = %lab_L191.backedge, %lab_L191.outer
  %lg.value372 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn375 = inttoptr i64 %lg.value372 to ptr
  %fnap378 = call i64 %rtap_ep_p_fn375(i64 %STK4.0.ph, i64 %sub366)
  br label %lab_L324.i1871

lab_L324.i1871:                                   ; preds = %lab_L324.i1871, %lab_L191
  %STK2.0.i1872 = phi i64 [ %add26.i1876, %lab_L324.i1871 ], [ 0, %lab_L191 ]
  %add.i1873 = add nsw i64 %STK2.0.i1872, %stack.bcpladdr
  %stind.llvmaddr.i1874 = shl i64 %add.i1873, 3
  %stind.lv.i1875 = inttoptr i64 %stind.llvmaddr.i1874 to ptr
  store i64 0, ptr %stind.lv.i1875, align 8
  %add26.i1876 = add nuw nsw i64 %STK2.0.i1872, 1
  %le.not.i1877 = icmp samesign ugt i64 %STK2.0.i1872, 29
  br i1 %le.not.i1877, label %clear_words.exit1878, label %lab_L324.i1871

clear_words.exit1878:                             ; preds = %lab_L324.i1871
  switch i64 %fnap378, label %goto.phi.bb.loopexit2007 [
    i64 2, label %lab_L236
    i64 1, label %lab_L223
    i64 4, label %lab_L196
    i64 3, label %lab_L196
    i64 0, label %lab_L196
  ]

lab_L196:                                         ; preds = %clear_words.exit1878, %clear_words.exit1878, %clear_words.exit1878
  br i1 %gr2841974, label %jt.then_L219, label %lab_L197

lab_L197:                                         ; preds = %lab_L196, %jf.then_L200
  %STK399.0 = phi i64 [ %STK399.2, %jf.then_L200 ], [ %STK5.21971, %lab_L196 ]
  %STK397.0 = phi i64 [ %add962, %jf.then_L200 ], [ 0, %lab_L196 ]
  %STK367.0 = phi i64 [ %STK367.2, %jf.then_L200 ], [ %sub366, %lab_L196 ]
  %STK5.3 = phi i64 [ %STK5.5, %jf.then_L200 ], [ %STK5.21971, %lab_L196 ]
  %STK4.1 = phi i64 [ %STK4.3, %jf.then_L200 ], [ %STK4.0.ph, %lab_L196 ]
  %add418 = add i64 %STK397.0, %stack.bcpladdr10
  %rv.llvmaddr421 = shl i64 %add418, 3
  %rv.lv422 = inttoptr i64 %rv.llvmaddr421 to ptr
  %rv.rv423 = load i64, ptr %rv.lv422, align 8
  %logand441 = and i64 %rv.rv423, 48
  %eq446.not = icmp eq i64 %logand441, 16
  br i1 %eq446.not, label %jf.else451, label %jf.then_L200

jf.else451:                                       ; preds = %lab_L197
  %lg.value453 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  %rv.llvmaddr460 = shl i64 %lg.value453, 3
  %rv.lv461 = inttoptr i64 %rv.llvmaddr460 to ptr
  %rv.rv462 = load i64, ptr %rv.lv461, align 8
  %eq467.not = icmp eq i64 %rv.rv462, -1
  br i1 %eq467.not, label %jf.else472, label %jf.then_L200

jf.else472:                                       ; preds = %jf.else451
  %lg.value474 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %rv.llvmaddr481 = shl i64 %lg.value474, 3
  %rv.lv482 = inttoptr i64 %rv.llvmaddr481 to ptr
  %rv.rv483 = load i64, ptr %rv.lv482, align 8
  %eq488.not = icmp eq i64 %rv.rv483, -1
  br i1 %eq488.not, label %jf.else493, label %jf.then_L200

jf.else493:                                       ; preds = %jf.else472
  br i1 %gr, label %jt.then_L156.i, label %lab_L154.preheader.i

lab_L154.preheader.i:                             ; preds = %jf.else493
  %getbyte.llvmaddr.i = shl i64 %0, 3
  %getbyte.string.i = inttoptr i64 %getbyte.llvmaddr.i to ptr
  br label %lab_L154.i

lab_L154.i:                                       ; preds = %jf.else.i, %lab_L154.preheader.i
  %STK4.0.i = phi i64 [ %add.i1881, %jf.else.i ], [ 1, %lab_L154.preheader.i ]
  %STK2.0.i1880 = phi i64 [ %spec.select.i, %jf.else.i ], [ %STK397.0, %lab_L154.preheader.i ]
  %if_cond13.i = icmp eq i64 %STK2.0.i1880, 0
  br i1 %if_cond13.i, label %jt.then_L156.i, label %jf.else.i

jf.else.i:                                        ; preds = %lab_L154.i
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string.i, i64 %STK4.0.i
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %eq.not.i = icmp eq i8 %getbyte.char.i, 44
  %sub.i = sext i1 %eq.not.i to i64
  %spec.select.i = add i64 %STK2.0.i1880, %sub.i
  %add.i1881 = add i64 %STK4.0.i, 1
  %gr46.not.i = icmp sgt i64 %add.i1881, %1
  br i1 %gr46.not.i, label %jt.then_L156.i, label %lab_L154.i

jt.then_L156.i:                                   ; preds = %jf.else.i, %lab_L154.i, %jf.else493
  %STK4.1.i = phi i64 [ 1, %jf.else493 ], [ %STK4.0.i, %lab_L154.i ], [ %add.i1881, %jf.else.i ]
  %le.not.i1882 = icmp sgt i64 %STK4.1.i, %1
  br i1 %le.not.i1882, label %getkeylen.exit, label %lab_L158.preheader.i

lab_L158.preheader.i:                             ; preds = %jt.then_L156.i
  %getbyte.llvmaddr69.i = shl i64 %0, 3
  %getbyte.string70.i = inttoptr i64 %getbyte.llvmaddr69.i to ptr
  br label %lab_L158.i

lab_L158.i:                                       ; preds = %jt.then_L161.i, %lab_L158.preheader.i
  %STK5.0.i = phi i64 [ %STK5.1.i, %jt.then_L161.i ], [ 0, %lab_L158.preheader.i ]
  %STK4.2.i = phi i64 [ %add148.i, %jt.then_L161.i ], [ %STK4.1.i, %lab_L158.preheader.i ]
  %getbyte.charptr71.i = getelementptr i8, ptr %getbyte.string70.i, i64 %STK4.2.i
  %getbyte.char72.i = load i8, ptr %getbyte.charptr71.i, align 1
  switch i8 %getbyte.char72.i, label %jt.else118.i [
    i8 47, label %jf.then_L160.loopexit.split.loop.exit204.i
    i8 61, label %jf.then_L160.loopexit.split.loop.exit204.i
    i8 44, label %jf.then_L160.loopexit.split.loop.exit204.i
    i8 10, label %jt.then_L161.i
  ]

jt.else118.i:                                     ; preds = %lab_L158.i
  %add124.i = add i64 %STK5.0.i, 1
  %putbyte.charptr.i = getelementptr i8, ptr %stack.vec, i64 %add124.i
  store i8 %getbyte.char72.i, ptr %putbyte.charptr.i, align 1
  br label %jt.then_L161.i

jt.then_L161.i:                                   ; preds = %jt.else118.i, %lab_L158.i
  %STK5.1.i = phi i64 [ %add124.i, %jt.else118.i ], [ %STK5.0.i, %lab_L158.i ]
  %add148.i = add i64 %STK4.2.i, 1
  %le157.not.i = icmp sgt i64 %add148.i, %1
  br i1 %le157.not.i, label %jf.then_L160.loopexit.split.loop.exit.i, label %lab_L158.i

jf.then_L160.loopexit.split.loop.exit.i:          ; preds = %jt.then_L161.i
  %extract.t203.le.i = trunc i64 %STK5.1.i to i8
  br label %getkeylen.exit

jf.then_L160.loopexit.split.loop.exit204.i:       ; preds = %lab_L158.i, %lab_L158.i, %lab_L158.i
  %extract.t.le.i = trunc i64 %STK5.0.i to i8
  br label %getkeylen.exit

getkeylen.exit:                                   ; preds = %jt.then_L156.i, %jf.then_L160.loopexit.split.loop.exit.i, %jf.then_L160.loopexit.split.loop.exit204.i
  %STK5.2.off0.i = phi i8 [ %extract.t203.le.i, %jf.then_L160.loopexit.split.loop.exit.i ], [ %extract.t.le.i, %jf.then_L160.loopexit.split.loop.exit204.i ], [ 0, %jt.then_L156.i ]
  store i8 %STK5.2.off0.i, ptr %stack.vec, align 8
  %lg.value512 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn515 = inttoptr i64 %lg.value512 to ptr
  %rtap517 = call i64 %rtap_ep_p_fn515(i64 %stack.bcpladdr)
  %rv.rv529 = load i64, ptr %rv.lv422, align 8
  %logand534 = and i64 %rv.rv529, 4
  %eq539 = icmp eq i64 %logand534, 0
  br i1 %eq539, label %jt.then_L202, label %jt.else544

jt.else544:                                       ; preds = %getkeylen.exit
  %lstr.bcpladdr545 = ashr exact i64 ptrtoint (ptr @lstr.global.24 to i64), 3
  %lg.value547 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn550 = inttoptr i64 %lg.value547 to ptr
  %rtap552 = call i64 %rtap_ep_p_fn550(i64 %lstr.bcpladdr545)
  br label %jt.then_L202

jt.then_L202:                                     ; preds = %jt.else544, %getkeylen.exit
  %lstr.bcpladdr553 = ashr exact i64 ptrtoint (ptr @lstr.global.25 to i64), 3
  %lg.value555 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn558 = inttoptr i64 %lg.value555 to ptr
  %rtap560 = call i64 %rtap_ep_p_fn558(i64 %lstr.bcpladdr553)
  %lg.value561 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %lg.value563 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 344), align 4
  %rtap_ep_p_fn566 = inttoptr i64 %lg.value563 to ptr
  %rtap568 = call i64 %rtap_ep_p_fn566(i64 %lg.value561)
  %lg.value573 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn576 = inttoptr i64 %lg.value573 to ptr
  %fnap579 = call i64 %rtap_ep_p_fn576(i64 %STK4.1, i64 %STK367.0)
  switch i64 %fnap579, label %goto.phi.bb [
    i64 4, label %jf.then_L200
    i64 3, label %jf.then_L200
    i64 2, label %lab_L212
    i64 1, label %lab_L206
    i64 0, label %jf.then_L200
  ]

lab_L206:                                         ; preds = %jt.then_L202
  %logand590.mask = and i64 %rv.rv423, 4
  %if_cond598 = icmp eq i64 %logand590.mask, 0
  br i1 %if_cond598, label %jf.then_L207, label %jf.else599

jf.else599:                                       ; preds = %lab_L206
  %add607 = add i64 %STK397.0, %2
  %stind.llvmaddr611 = shl i64 %add607, 3
  %stind.lv612 = inttoptr i64 %stind.llvmaddr611 to ptr
  store i64 0, ptr %stind.lv612, align 8
  %lstr.bcpladdr615 = ashr exact i64 ptrtoint (ptr @lstr.global.26 to i64), 3
  %fnap623 = call i64 @compstring(i64 %STK4.1, i64 %lstr.bcpladdr615)
  %eq628 = icmp eq i64 %fnap623, 0
  br i1 %eq628, label %jt.then_L209, label %jt.else633

jt.else633:                                       ; preds = %jf.else599
  %lstr.bcpladdr636 = ashr exact i64 ptrtoint (ptr @lstr.global.27 to i64), 3
  %fnap644 = call i64 @compstring(i64 %STK4.1, i64 %lstr.bcpladdr636)
  %eq649.not = icmp eq i64 %fnap644, 0
  br i1 %eq649.not, label %jt.then_L209, label %jf.then_L208

jt.then_L209:                                     ; preds = %jt.else633, %jf.else599
  store i64 -1, ptr %stind.lv612, align 8
  br label %jf.then_L208

jf.then_L208:                                     ; preds = %jt.then_L209, %jt.else633
  %rv.rv679 = load i64, ptr %rv.lv422, align 8
  %logor684 = or i64 %rv.rv679, 32
  store i64 %logor684, ptr %rv.lv422, align 8
  br label %goto.phi.bb

jf.then_L207:                                     ; preds = %lab_L206
  %logand707.mask = and i64 %rv.rv423, 8
  %if_cond716 = icmp eq i64 %logand707.mask, 0
  br i1 %if_cond716, label %lab_L212, label %jf.else717

jf.else717:                                       ; preds = %jf.then_L207
  %add726 = add i64 %STK397.0, %2
  %stind.llvmaddr730 = shl i64 %add726, 3
  %stind.lv731 = inttoptr i64 %stind.llvmaddr730 to ptr
  store i64 %STK4.1, ptr %stind.lv731, align 8
  %fnap739 = call i64 @string_to_number(i64 %STK4.1)
  %if_cond742.not = icmp eq i64 %fnap739, 0
  br i1 %if_cond742.not, label %goto.phi.bb, label %jt.then_L211

jt.then_L211:                                     ; preds = %jf.else717
  %lg.value748 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %stind.llvmaddr754 = shl i64 %STK4.1, 3
  %stind.lv755 = inttoptr i64 %stind.llvmaddr754 to ptr
  store i64 %lg.value748, ptr %stind.lv755, align 8
  store i64 %STK4.1, ptr %stind.lv731, align 8
  %rv.rv781 = load i64, ptr %rv.lv422, align 8
  %logor786 = or i64 %rv.rv781, 32
  store i64 %logor786, ptr %rv.lv422, align 8
  %add805 = add i64 %STK4.1, 1
  %sub813 = add i64 %STK367.0, -1
  br label %goto.phi.bb

lab_L212:                                         ; preds = %jf.then_L207, %jt.then_L202
  %add828 = add i64 %STK397.0, %2
  %stind.llvmaddr832 = shl i64 %add828, 3
  %stind.lv833 = inttoptr i64 %stind.llvmaddr832 to ptr
  store i64 %STK4.1, ptr %stind.lv833, align 8
  %rv.rv845 = load i64, ptr %rv.lv422, align 8
  %logor850 = or i64 %rv.rv845, 32
  store i64 %logor850, ptr %rv.lv422, align 8
  %getbyte.llvmaddr869 = shl i64 %STK4.1, 3
  %getbyte.string870 = inttoptr i64 %getbyte.llvmaddr869 to ptr
  %getbyte.char872 = load i8, ptr %getbyte.string870, align 8
  %4 = lshr i8 %getbyte.char872, 3
  %div = zext nneg i8 %4 to i64
  %add883 = add i64 %STK4.1, 1
  %add888 = add i64 %add883, %div
  %sub899.neg = add i64 %3, %2
  %sub903 = sub i64 %sub899.neg, %add888
  br label %lf_L201

lf_L201:                                          ; preds = %goto.phi.bb, %lab_L212
  %STK399.1 = phi i64 [ %STK399.4, %goto.phi.bb ], [ %STK399.0, %lab_L212 ]
  %STK397.1 = phi i64 [ %STK397.4, %goto.phi.bb ], [ %STK397.0, %lab_L212 ]
  %STK367.1 = phi i64 [ %STK367.4, %goto.phi.bb ], [ %sub903, %lab_L212 ]
  %STK5.4 = phi i64 [ %STK5.7, %goto.phi.bb ], [ %STK5.3, %lab_L212 ]
  %STK4.2 = phi i64 [ %STK4.5, %goto.phi.bb ], [ %add888, %lab_L212 ]
  %lg.value906 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn909 = inttoptr i64 %lg.value906 to ptr
  %rtap910 = call i64 %rtap_ep_p_fn909()
  br label %lab_L213

lab_L213:                                         ; preds = %lab_L213, %lf_L201
  %lg.value911 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn914 = inttoptr i64 %lg.value911 to ptr
  %fnap915 = call i64 %rtap_ep_p_fn914()
  switch i64 %fnap915, label %lab_L213 [
    i64 10, label %jf.then_L200.loopexit
    i64 59, label %jf.then_L200.loopexit
    i64 -1, label %jf.then_L200.loopexit
  ]

jf.then_L200.loopexit:                            ; preds = %lab_L213, %lab_L213, %lab_L213
  br label %jf.then_L200

jf.then_L200:                                     ; preds = %jf.then_L200.loopexit, %jt.then_L202, %jt.then_L202, %jt.then_L202, %jf.else472, %jf.else451, %lab_L197
  %STK399.2 = phi i64 [ %STK399.0, %lab_L197 ], [ %STK399.0, %jf.else451 ], [ %STK399.0, %jf.else472 ], [ %STK399.0, %jt.then_L202 ], [ %STK399.0, %jt.then_L202 ], [ %STK399.0, %jt.then_L202 ], [ %STK399.1, %jf.then_L200.loopexit ]
  %STK397.2 = phi i64 [ %STK397.0, %lab_L197 ], [ %STK397.0, %jf.else451 ], [ %STK397.0, %jf.else472 ], [ %STK397.0, %jt.then_L202 ], [ %STK397.0, %jt.then_L202 ], [ %STK397.0, %jt.then_L202 ], [ %STK397.1, %jf.then_L200.loopexit ]
  %STK367.2 = phi i64 [ %STK367.0, %lab_L197 ], [ %STK367.0, %jf.else451 ], [ %STK367.0, %jf.else472 ], [ %STK367.0, %jt.then_L202 ], [ %STK367.0, %jt.then_L202 ], [ %STK367.0, %jt.then_L202 ], [ %STK367.1, %jf.then_L200.loopexit ]
  %STK5.5 = phi i64 [ %STK5.3, %lab_L197 ], [ %STK5.3, %jf.else451 ], [ %STK5.3, %jf.else472 ], [ %STK5.3, %jt.then_L202 ], [ %STK5.3, %jt.then_L202 ], [ %STK5.3, %jt.then_L202 ], [ %STK5.4, %jf.then_L200.loopexit ]
  %STK4.3 = phi i64 [ %STK4.1, %lab_L197 ], [ %STK4.1, %jf.else451 ], [ %STK4.1, %jf.else472 ], [ %STK4.1, %jt.then_L202 ], [ %STK4.1, %jt.then_L202 ], [ %STK4.1, %jt.then_L202 ], [ %STK4.2, %jf.then_L200.loopexit ]
  %add962 = add i64 %STK397.2, 1
  %le971.not = icmp sgt i64 %add962, %STK399.2
  br i1 %le971.not, label %jt.then_L198, label %lab_L197

jt.then_L198:                                     ; preds = %jf.then_L200
  %gr986 = icmp slt i64 %STK5.5, 0
  br i1 %gr986, label %jt.then_L219, label %lab_L218

lab_L218:                                         ; preds = %jt.then_L198, %lab_L221
  %STK977.0 = phi i64 [ %add1028, %lab_L221 ], [ 0, %jt.then_L198 ]
  %add998 = add i64 %STK977.0, %stack.bcpladdr10
  %rv.llvmaddr1001 = shl i64 %add998, 3
  %rv.lv1002 = inttoptr i64 %rv.llvmaddr1001 to ptr
  %rv.rv1003 = load i64, ptr %rv.lv1002, align 8
  %logand1008 = and i64 %rv.rv1003, 33
  %eq1013.not = icmp eq i64 %logand1008, 1
  br i1 %eq1013.not, label %goto.phi.bb, label %lab_L221

lab_L221:                                         ; preds = %lab_L218
  %add1028 = add i64 %STK977.0, 1
  %le1037.not = icmp sgt i64 %add1028, %STK5.5
  br i1 %le1037.not, label %jt.then_L219, label %lab_L218

jt.then_L219:                                     ; preds = %lab_L221, %lab_L196, %jt.then_L198
  %STK4.41914 = phi i64 [ %STK4.3, %jt.then_L198 ], [ %STK4.0.ph, %lab_L196 ], [ %STK4.3, %lab_L221 ]
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

lab_L223:                                         ; preds = %clear_words.exit1878
  br i1 %gr, label %jf.else191.i, label %lab_L281.i

lab_L281.i:                                       ; preds = %lab_L223, %jf.then_L285.i
  %STK6.0.i = phi i64 [ %add167.i, %jf.then_L285.i ], [ 1, %lab_L223 ]
  %STK5.0.i1886 = phi i64 [ %STK5.1.i1893, %jf.then_L285.i ], [ 0, %lab_L223 ]
  %STK4.0.i1887 = phi i64 [ %STK4.2.i1892, %jf.then_L285.i ], [ 0, %lab_L223 ]
  %STK3.0.i = phi i64 [ %STK3.2.i, %jf.then_L285.i ], [ 0, %lab_L223 ]
  %getbyte.charptr.i1888 = getelementptr i8, ptr %getbyte.string.i1885, i64 %STK6.0.i
  %getbyte.char.i1889 = load i8, ptr %getbyte.charptr.i1888, align 1
  %getbyte.charword.i = zext i8 %getbyte.char.i1889 to i64
  %eq.not.i1890 = icmp eq i64 %STK3.0.i, 0
  br i1 %eq.not.i1890, label %jf.else.i1895, label %jf.then_L285.i

jf.else.i1895:                                    ; preds = %lab_L281.i
  switch i8 %getbyte.char.i1889, label %jf.then_L286.i [
    i8 61, label %jt.then_L287.i
    i8 47, label %jt.then_L287.i
    i8 44, label %jt.then_L287.i
  ]

jt.then_L287.i:                                   ; preds = %jf.else.i1895, %jf.else.i1895, %jf.else.i1895
  %getbyte.char68.i = load i8, ptr %getbyte.string66.i, align 8
  %getbyte.charword69.i = zext i8 %getbyte.char68.i to i64
  %eq75.not.i = icmp eq i64 %STK4.0.i1887, %getbyte.charword69.i
  br i1 %eq75.not.i, label %findarglen.exit, label %jf.then_L286.i

jf.then_L286.i:                                   ; preds = %jt.then_L287.i, %jf.else.i1895
  %add.i1896 = add i64 %STK4.0.i1887, 1
  %getbyte.charptr99.i = getelementptr i8, ptr %getbyte.string66.i, i64 %add.i1896
  %getbyte.char100.i = load i8, ptr %getbyte.charptr99.i, align 1
  %getbyte.charword101.i = zext i8 %getbyte.char100.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = call i64 %rtap_ep_p_fn.i(i64 %getbyte.charword.i, i64 %getbyte.charword101.i)
  %eq109.i = icmp ne i64 %fnap.i, 0
  %spec.select.i1897 = zext i1 %eq109.i to i64
  br label %jf.then_L285.i

jf.then_L285.i:                                   ; preds = %jf.then_L286.i, %lab_L281.i
  %STK4.1.i1891 = phi i64 [ %STK4.0.i1887, %lab_L281.i ], [ %add.i1896, %jf.then_L286.i ]
  %STK3.1.i = phi i64 [ %STK3.0.i, %lab_L281.i ], [ %spec.select.i1897, %jf.then_L286.i ]
  %eq122.not.i = icmp eq i8 %getbyte.char.i1889, 44
  %eq133.not.i = icmp eq i8 %getbyte.char.i1889, 61
  %or.cond.i = or i1 %eq122.not.i, %eq133.not.i
  %STK4.2.i1892 = select i1 %or.cond.i, i64 0, i64 %STK4.1.i1891
  %STK3.2.i = select i1 %or.cond.i, i64 0, i64 %STK3.1.i
  %add159.i = zext i1 %eq122.not.i to i64
  %STK5.1.i1893 = add i64 %STK5.0.i1886, %add159.i
  %add167.i = add i64 %STK6.0.i, 1
  %le.not.i1894 = icmp sgt i64 %add167.i, %1
  br i1 %le.not.i1894, label %jt.then_L282.i, label %lab_L281.i

jt.then_L282.i:                                   ; preds = %jf.then_L285.i
  %eq186.not.i = icmp eq i64 %STK3.2.i, 0
  br i1 %eq186.not.i, label %jf.else191.i, label %jf.then_L224

jf.else191.i:                                     ; preds = %lab_L223, %jt.then_L282.i
  %STK4.3244.i = phi i64 [ %STK4.2.i1892, %jt.then_L282.i ], [ 0, %lab_L223 ]
  %STK5.2243.i = phi i64 [ %STK5.1.i1893, %jt.then_L282.i ], [ 0, %lab_L223 ]
  %getbyte.char200.i = load i8, ptr %getbyte.string66.i, align 8
  %getbyte.charword201.i = zext i8 %getbyte.char200.i to i64
  %eq207.not.i = icmp eq i64 %STK4.3244.i, %getbyte.charword201.i
  br i1 %eq207.not.i, label %findarglen.exit, label %jf.then_L224

findarglen.exit:                                  ; preds = %jt.then_L287.i, %jf.else191.i
  %common.ret.op.i = phi i64 [ %STK5.2243.i, %jf.else191.i ], [ %STK5.0.i1886, %jt.then_L287.i ]
  %ge = icmp slt i64 %common.ret.op.i, 0
  br i1 %ge, label %jf.then_L224, label %jf.else1072

jf.else1072:                                      ; preds = %findarglen.exit
  %add1079 = add i64 %common.ret.op.i, %stack.bcpladdr10
  %rv.llvmaddr1082 = shl i64 %add1079, 3
  %rv.lv1083 = inttoptr i64 %rv.llvmaddr1082 to ptr
  %rv.rv1084 = load i64, ptr %rv.lv1083, align 8
  %logand1089.mask = and i64 %rv.rv1084, 32
  %if_cond1098 = icmp eq i64 %logand1089.mask, 0
  br i1 %if_cond1098, label %jf.then_L226, label %goto.phi.bb.loopexit2007

jf.then_L226:                                     ; preds = %jf.else1072
  %logand1120.mask = and i64 %rv.rv1084, 4
  %if_cond1129 = icmp eq i64 %logand1120.mask, 0
  br i1 %if_cond1129, label %jf.then_L227, label %jf.else1130

jf.else1130:                                      ; preds = %jf.then_L226
  %add1138 = add i64 %common.ret.op.i, %2
  %stind.llvmaddr1142 = shl i64 %add1138, 3
  %stind.lv1143 = inttoptr i64 %stind.llvmaddr1142 to ptr
  store i64 -1, ptr %stind.lv1143, align 8
  %rv.rv1155 = load i64, ptr %rv.lv1083, align 8
  %logor1160 = or i64 %rv.rv1155, 32
  store i64 %logor1160, ptr %rv.lv1083, align 8
  br label %lab_L191.backedge

lab_L191.backedge:                                ; preds = %jf.else1130, %jt.then_L233
  br label %lab_L191

jf.then_L227:                                     ; preds = %jf.then_L226
  %lg.value1178 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn1181 = inttoptr i64 %lg.value1178 to ptr
  %fnap1184 = call i64 %rtap_ep_p_fn1181(i64 %STK4.0.ph, i64 %sub366)
  %eq1191.not = icmp eq i64 %fnap1184, 5
  br i1 %eq1191.not, label %jf.else1196, label %jf.then_L228

jf.else1196:                                      ; preds = %jf.then_L227
  %lg.value1201 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn1204 = inttoptr i64 %lg.value1201 to ptr
  %fnap1207 = call i64 %rtap_ep_p_fn1204(i64 %STK4.0.ph, i64 %sub366)
  br label %jf.then_L228

jf.then_L228:                                     ; preds = %jf.else1196, %jf.then_L227
  %STK1185.0 = phi i64 [ %fnap1184, %jf.then_L227 ], [ %fnap1207, %jf.else1196 ]
  %STK1185.0.off = add i64 %STK1185.0, -1
  %switch = icmp ult i64 %STK1185.0.off, 2
  br i1 %switch, label %jt.then_L243, label %goto.phi.bb.loopexit2008

jf.then_L224:                                     ; preds = %jf.else191.i, %jt.then_L282.i, %findarglen.exit
  %common.ret.op.i1917 = phi i64 [ %common.ret.op.i, %findarglen.exit ], [ -1, %jt.then_L282.i ], [ -1, %jf.else191.i ]
  %lg.value1237 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn1240 = inttoptr i64 %lg.value1237 to ptr
  %fnap1241 = call i64 %rtap_ep_p_fn1240()
  %eq1246.not = icmp eq i64 %fnap1241, 10
  br i1 %eq1246.not, label %jf.else1251, label %jf.then_L230

jf.else1251:                                      ; preds = %jf.then_L224
  %getbyte.char13.i = load i8, ptr %getbyte.string66.i, align 8
  %cond = icmp eq i8 %getbyte.char13.i, 0
  br i1 %cond, label %jf.then_L230, label %lab_L147.i

lab_L147.i:                                       ; preds = %jf.else1251
  %getbyte.char70.i = load i8, ptr %getbyte.charptr69.i, align 1
  %getbyte.charword71.i = zext i8 %getbyte.char70.i to i64
  %lg.value.i1902 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i1903 = inttoptr i64 %lg.value.i1902 to ptr
  %fnap.i1904 = call i64 %rtap_ep_p_fn.i1903(i64 63, i64 %getbyte.charword71.i)
  %if_cond79.i = icmp eq i64 %fnap.i1904, 0
  %eq.not.i1907 = icmp eq i8 %getbyte.char13.i, 1
  %or.cond = and i1 %if_cond79.i, %eq.not.i1907
  br i1 %or.cond, label %jf.else1272, label %jf.then_L230

jf.else1272:                                      ; preds = %lab_L147.i
  br i1 %gr, label %jt.then_L233, label %lab_L232

lab_L232:                                         ; preds = %jf.else1272, %lab_L232
  %STK1273.0 = phi i64 [ %add1311, %lab_L232 ], [ 1, %jf.else1272 ]
  %getbyte.charptr1296 = getelementptr i8, ptr %getbyte.string.i1885, i64 %STK1273.0
  %getbyte.char1297 = load i8, ptr %getbyte.charptr1296, align 1
  %getbyte.charword1298 = zext i8 %getbyte.char1297 to i64
  %lg.value1300 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn1303 = inttoptr i64 %lg.value1300 to ptr
  %rtap1305 = call i64 %rtap_ep_p_fn1303(i64 %getbyte.charword1298)
  %add1311 = add i64 %STK1273.0, 1
  %le1320.not = icmp sgt i64 %add1311, %1
  br i1 %le1320.not, label %jt.then_L233, label %lab_L232

jt.then_L233:                                     ; preds = %lab_L232, %jf.else1272
  %lg.value1328 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn1331 = inttoptr i64 %lg.value1328 to ptr
  %rtap1333 = call i64 %rtap_ep_p_fn1331(i64 %lstr.bcpladdr1326)
  %lg.value1334 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %lg.value1336 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 344), align 4
  %rtap_ep_p_fn1339 = inttoptr i64 %lg.value1336 to ptr
  %rtap1341 = call i64 %rtap_ep_p_fn1339(i64 %lg.value1334)
  br label %lab_L191.backedge

jf.then_L230:                                     ; preds = %jf.else1251, %jf.then_L224, %lab_L147.i
  %lg.value1342 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn1345 = inttoptr i64 %lg.value1342 to ptr
  %rtap1346 = call i64 %rtap_ep_p_fn1345()
  br label %lab_L236

lab_L236:                                         ; preds = %clear_words.exit1878, %jf.then_L230
  %STK354.0 = phi i64 [ %common.ret.op.i1917, %jf.then_L230 ], [ -1, %clear_words.exit1878 ]
  %if_cond1355 = icmp sgt i64 %STK354.0, -1
  %brmerge = or i1 %gr2841974, %if_cond1355
  br i1 %brmerge, label %jf.then_L237, label %lab_L238

lab_L238:                                         ; preds = %lab_L236, %lab_L241
  %STK1357.0 = phi i64 [ %add1407, %lab_L241 ], [ 0, %lab_L236 ]
  %add1378 = add i64 %STK1357.0, %stack.bcpladdr10
  %rv.llvmaddr1381 = shl i64 %add1378, 3
  %rv.lv1382 = inttoptr i64 %rv.llvmaddr1381 to ptr
  %rv.rv1383 = load i64, ptr %rv.lv1382, align 8
  %logand1388 = and i64 %rv.rv1383, 38
  %eq1393.not = icmp eq i64 %logand1388, 0
  br i1 %eq1393.not, label %jf.then_L237, label %lab_L241

lab_L241:                                         ; preds = %lab_L238
  %add1407 = add i64 %STK1357.0, 1
  %le1416.not = icmp sgt i64 %add1407, %STK5.21971
  br i1 %le1416.not, label %jf.then_L237, label %lab_L238

jf.then_L237:                                     ; preds = %lab_L238, %lab_L241, %lab_L236
  %STK354.1 = phi i64 [ %STK354.0, %lab_L236 ], [ %STK1357.0, %lab_L238 ], [ %STK354.0, %lab_L241 ]
  %ge1427 = icmp sgt i64 %STK354.1, -1
  br i1 %ge1427, label %jf.then_L237.jt.then_L243_crit_edge, label %goto.phi.bb.loopexit2008

jf.then_L237.jt.then_L243_crit_edge:              ; preds = %jf.then_L237
  %.pre = add i64 %STK354.1, %stack.bcpladdr10
  %.pre1966 = shl i64 %.pre, 3
  %.pre1967 = inttoptr i64 %.pre1966 to ptr
  br label %jt.then_L243

jt.then_L243:                                     ; preds = %jf.then_L237.jt.then_L243_crit_edge, %jf.then_L228
  %rv.lv1447.pre-phi = phi ptr [ %.pre1967, %jf.then_L237.jt.then_L243_crit_edge ], [ %rv.lv1083, %jf.then_L228 ]
  %STK354.11925 = phi i64 [ %STK354.1, %jf.then_L237.jt.then_L243_crit_edge ], [ %common.ret.op.i, %jf.then_L228 ]
  %rv.rv1448 = load i64, ptr %rv.lv1447.pre-phi, align 4
  %logand1453.mask = and i64 %rv.rv1448, 32
  %if_cond1462 = icmp eq i64 %logand1453.mask, 0
  br i1 %if_cond1462, label %jf.then_L244, label %goto.phi.bb.loopexit2008

jf.then_L244:                                     ; preds = %jt.then_L243
  %logand1484.mask = and i64 %rv.rv1448, 8
  %if_cond1493 = icmp eq i64 %logand1484.mask, 0
  br i1 %if_cond1493, label %jf.then_L245, label %jf.else1494

jf.else1494:                                      ; preds = %jf.then_L244
  %fnap1502 = call i64 @string_to_number(i64 %STK4.0.ph)
  %if_cond1505.not = icmp eq i64 %fnap1502, 0
  br i1 %if_cond1505.not, label %goto.phi.bb.loopexit2008, label %jt.then_L246

jt.then_L246:                                     ; preds = %jf.else1494
  %lg.value1511 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  store i64 %lg.value1511, ptr %getbyte.string66.i, align 8
  %add1527 = add i64 %STK354.11925, %2
  %stind.llvmaddr1531 = shl i64 %add1527, 3
  %stind.lv1532 = inttoptr i64 %stind.llvmaddr1531 to ptr
  store i64 %STK4.0.ph, ptr %stind.lv1532, align 8
  %rv.rv1544 = load i64, ptr %rv.lv1447.pre-phi, align 4
  %logor1549 = or i64 %rv.rv1544, 32
  store i64 %logor1549, ptr %rv.lv1447.pre-phi, align 4
  %add1568 = add i64 %STK4.0.ph, 1
  br label %lab_L191.outer.backedge

jf.then_L245:                                     ; preds = %jf.then_L244
  %add1579 = add i64 %STK354.11925, %2
  %stind.llvmaddr1583 = shl i64 %add1579, 3
  %stind.lv1584 = inttoptr i64 %stind.llvmaddr1583 to ptr
  store i64 %STK4.0.ph, ptr %stind.lv1584, align 8
  %rv.rv1596 = load i64, ptr %rv.lv1447.pre-phi, align 4
  %logor1601 = or i64 %rv.rv1596, 32
  store i64 %logor1601, ptr %rv.lv1447.pre-phi, align 4
  %getbyte.char1623 = load i8, ptr %getbyte.string66.i, align 8
  %5 = lshr i8 %getbyte.char1623, 3
  %div1629 = zext nneg i8 %5 to i64
  %add1635 = add i64 %STK4.0.ph, 1
  %add1640 = add i64 %add1635, %div1629
  br label %lab_L191.outer.backedge

lab_L191.outer.backedge:                          ; preds = %jf.then_L245, %jt.then_L246
  %STK4.0.ph.be = phi i64 [ %add1568, %jt.then_L246 ], [ %add1640, %jf.then_L245 ]
  br label %lab_L191.outer

lf_L170:                                          ; preds = %goto.phi.bb
  %lg.value1647 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn1650 = inttoptr i64 %lg.value1647 to ptr
  %rtap1651 = call i64 %rtap_ep_p_fn1650()
  br label %lab_L247

lab_L247:                                         ; preds = %lab_L247, %lf_L170
  %lg.value1652 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn1655 = inttoptr i64 %lg.value1652 to ptr
  %fnap1656 = call i64 %rtap_ep_p_fn1655()
  switch i64 %fnap1656, label %lab_L247 [
    i64 10, label %lab_L248
    i64 59, label %lab_L248
    i64 -1, label %lab_L248
  ]

lab_L248:                                         ; preds = %lab_L247, %lab_L247, %lab_L247
  store i64 120, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

goto.phi.bb.loopexit2007:                         ; preds = %clear_words.exit1878, %jf.else1072
  br label %goto.phi.bb

goto.phi.bb.loopexit2008:                         ; preds = %jf.then_L237, %jt.then_L243, %jf.else1494, %jf.then_L228
  br label %goto.phi.bb

goto.phi.bb:                                      ; preds = %jf.else, %lab_L186, %lab_L218, %goto.phi.bb.loopexit2008, %goto.phi.bb.loopexit2007, %jt.then_L202, %jf.else717, %jt.then_L211, %jf.then_L208
  %STK399.4 = phi i64 [ %STK399.0, %jt.then_L211 ], [ %STK399.0, %jf.then_L208 ], [ %STK399.0, %jf.else717 ], [ %STK399.0, %jt.then_L202 ], [ undef, %goto.phi.bb.loopexit2007 ], [ undef, %goto.phi.bb.loopexit2008 ], [ %STK399.2, %lab_L218 ], [ undef, %lab_L186 ], [ undef, %jf.else ]
  %STK397.4 = phi i64 [ %STK397.0, %jt.then_L211 ], [ %STK397.0, %jf.then_L208 ], [ %STK397.0, %jf.else717 ], [ %STK397.0, %jt.then_L202 ], [ undef, %goto.phi.bb.loopexit2007 ], [ undef, %goto.phi.bb.loopexit2008 ], [ %add962, %lab_L218 ], [ undef, %lab_L186 ], [ undef, %jf.else ]
  %STK367.4 = phi i64 [ %sub813, %jt.then_L211 ], [ %STK367.0, %jf.then_L208 ], [ %STK367.0, %jf.else717 ], [ %STK367.0, %jt.then_L202 ], [ %sub366, %goto.phi.bb.loopexit2007 ], [ %sub366, %goto.phi.bb.loopexit2008 ], [ %STK367.2, %lab_L218 ], [ undef, %lab_L186 ], [ undef, %jf.else ]
  %STK5.7 = phi i64 [ %STK5.3, %jt.then_L211 ], [ %STK5.3, %jf.then_L208 ], [ %STK5.3, %jf.else717 ], [ %STK5.3, %jt.then_L202 ], [ %STK5.21971, %goto.phi.bb.loopexit2007 ], [ %STK5.21971, %goto.phi.bb.loopexit2008 ], [ %STK5.5, %lab_L218 ], [ %STK5.21970, %lab_L186 ], [ %STK5.0, %jf.else ]
  %STK4.5 = phi i64 [ %add805, %jt.then_L211 ], [ %STK4.1, %jf.then_L208 ], [ %STK4.1, %jf.else717 ], [ %STK4.1, %jt.then_L202 ], [ %STK4.0.ph, %goto.phi.bb.loopexit2007 ], [ %STK4.0.ph, %goto.phi.bb.loopexit2008 ], [ %STK4.3, %lab_L218 ], [ 0, %lab_L186 ], [ 0, %jf.else ]
  %goto.phi = phi ptr [ blockaddress(@rdargslen, %lf_L201), %jt.then_L211 ], [ blockaddress(@rdargslen, %lf_L201), %jf.then_L208 ], [ blockaddress(@rdargslen, %lf_L170), %jf.else717 ], [ blockaddress(@rdargslen, %lf_L170), %jt.then_L202 ], [ blockaddress(@rdargslen, %lf_L170), %goto.phi.bb.loopexit2007 ], [ blockaddress(@rdargslen, %lf_L170), %goto.phi.bb.loopexit2008 ], [ blockaddress(@rdargslen, %lf_L170), %lab_L218 ], [ blockaddress(@rdargslen, %lf_L170), %lab_L186 ], [ blockaddress(@rdargslen, %lf_L170), %jf.else ]
  indirectbr ptr %goto.phi, [label %lf_L201, label %lf_L170]
}

define range(i64 -1, 6) i64 @rditem(i64 %0, i64 %1) section ".text.BLIB" {
entry:
  %add = shl i64 %1, 3
  %sub = or disjoint i64 %add, 7
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %gr = icmp slt i64 %1, 0
  br i1 %gr, label %jt.then_L252, label %lab_L251

lab_L251:                                         ; preds = %entry, %lab_L251
  %STK17.0 = phi i64 [ %add41, %lab_L251 ], [ 0, %entry ]
  %add34 = add i64 %STK17.0, %0
  %stind.llvmaddr = shl i64 %add34, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 0, ptr %stind.lv, align 8
  %add41 = add i64 %STK17.0, 1
  %le.not = icmp sgt i64 %add41, %1
  br i1 %le.not, label %jt.then_L252, label %lab_L251

jt.then_L252:                                     ; preds = %lab_L251, %entry
  switch i64 %fnap, label %jf.then_L257 [
    i64 32, label %lab_L255.preheader
    i64 9, label %lab_L255.preheader
    i64 13, label %lab_L255.preheader
  ]

lab_L255.preheader:                               ; preds = %jt.then_L252, %jt.then_L252, %jt.then_L252
  br label %lab_L255

lab_L255:                                         ; preds = %lab_L255.backedge, %lab_L255.preheader
  %lg.value85 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn88 = inttoptr i64 %lg.value85 to ptr
  %fnap89 = tail call i64 %rtap_ep_p_fn88()
  switch i64 %fnap89, label %jf.then_L257 [
    i64 32, label %lab_L255.backedge
    i64 9, label %lab_L255.backedge
    i64 13, label %lab_L255.backedge
  ]

lab_L255.backedge:                                ; preds = %lab_L255, %lab_L255, %lab_L255
  br label %lab_L255

jf.then_L257:                                     ; preds = %lab_L255, %jt.then_L252
  %STK15.0 = phi i64 [ %fnap, %jt.then_L252 ], [ %fnap89, %lab_L255 ]
  switch i64 %STK15.0, label %jt.else393 [
    i64 -1, label %common.ret
    i64 10, label %jf.else147
    i64 59, label %jf.else160
    i64 61, label %jf.else173
    i64 34, label %lab_L264.preheader
  ]

lab_L264.preheader:                               ; preds = %jf.then_L257
  %putbyte.llvmaddr = shl i64 %0, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L264.outer

common.ret:                                       ; preds = %jf.then_L268, %lab_L264, %lab_L264, %jt.else524, %lab_L272, %jt.else546, %jf.then_L257, %jf.else239, %jf.else173, %jf.else160, %jf.else147
  %common.ret.op = phi i64 [ 3, %jf.else147 ], [ 4, %jf.else160 ], [ 5, %jf.else173 ], [ 2, %jf.else239 ], [ 0, %jf.then_L257 ], [ 1, %jt.else546 ], [ 1, %jt.else524 ], [ -1, %lab_L272 ], [ -1, %lab_L264 ], [ -1, %lab_L264 ], [ -1, %jf.then_L268 ]
  ret i64 %common.ret.op

jf.else147:                                       ; preds = %jf.then_L257
  br label %common.ret

jf.else160:                                       ; preds = %jf.then_L257
  br label %common.ret

jf.else173:                                       ; preds = %jf.then_L257
  br label %common.ret

lab_L264:                                         ; preds = %lab_L264.outer, %lab_L264
  %lg.value187 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn190 = inttoptr i64 %lg.value187 to ptr
  %fnap191 = tail call i64 %rtap_ep_p_fn190()
  switch i64 %fnap191, label %jf.then_L267 [
    i64 13, label %lab_L264
    i64 10, label %common.ret
    i64 -1, label %common.ret
    i64 34, label %jf.else239
  ]

jf.else239:                                       ; preds = %lab_L264
  br label %common.ret

jf.then_L267:                                     ; preds = %lab_L264
  %eq247.not = icmp eq i64 %fnap191, 42
  %extract.t = trunc i64 %fnap191 to i8
  br i1 %eq247.not, label %jf.else252, label %jf.then_L268

jf.else252:                                       ; preds = %jf.then_L267
  %lg.value253 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn256 = inttoptr i64 %lg.value253 to ptr
  %fnap257 = tail call i64 %rtap_ep_p_fn256()
  %lg.value262 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn265 = inttoptr i64 %lg.value262 to ptr
  %fnap266 = tail call i64 %rtap_ep_p_fn265(i64 %fnap257)
  %eq271.not = icmp eq i64 %fnap266, 78
  %spec.select = select i1 %eq271.not, i64 10, i64 %fnap257
  %lg.value281 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn284 = inttoptr i64 %lg.value281 to ptr
  %fnap286 = tail call i64 %rtap_ep_p_fn284(i64 %spec.select)
  %eq291.not = icmp eq i64 %fnap286, 34
  %extract.t606 = trunc i64 %spec.select to i8
  %spec.select609 = select i1 %eq291.not, i8 34, i8 %extract.t606
  br label %jf.then_L268

jf.then_L268:                                     ; preds = %jf.else252, %jf.then_L267
  %STK15.2.off0 = phi i8 [ %extract.t, %jf.then_L267 ], [ %spec.select609, %jf.else252 ]
  %add304 = add i64 %STK2.0.ph, 1
  %gr313.not = icmp sgt i64 %add304, %sub
  br i1 %gr313.not, label %common.ret, label %jf.then_L271

jf.then_L271:                                     ; preds = %jf.then_L268
  %putbyte.char = trunc i64 %add304 to i8
  store i8 %putbyte.char, ptr %putbyte.string, align 8
  %putbyte.charptr338 = getelementptr i8, ptr %putbyte.string, i64 %add304
  store i8 %STK15.2.off0, ptr %putbyte.charptr338, align 1
  br label %lab_L264.outer

lab_L264.outer:                                   ; preds = %lab_L264.preheader, %jf.then_L271
  %STK2.0.ph = phi i64 [ 0, %lab_L264.preheader ], [ %add304, %jf.then_L271 ]
  br label %lab_L264

jt.else393:                                       ; preds = %jf.then_L257
  %extract.t607 = trunc i64 %STK15.0 to i8
  %putbyte.llvmaddr436 = shl i64 %0, 3
  %putbyte.string437 = inttoptr i64 %putbyte.llvmaddr436 to ptr
  br label %lab_L272

lab_L272:                                         ; preds = %jt.else393, %jt.else524
  %STK15.3.off0 = phi i8 [ %extract.t607, %jt.else393 ], [ %extract.t608, %jt.else524 ]
  %STK2.1 = phi i64 [ 0, %jt.else393 ], [ %add410, %jt.else524 ]
  %add410 = add i64 %STK2.1, 1
  %gr419.not = icmp sgt i64 %add410, %sub
  br i1 %gr419.not, label %common.ret, label %jf.then_L275

jf.then_L275:                                     ; preds = %lab_L272
  %putbyte.char435 = trunc i64 %add410 to i8
  store i8 %putbyte.char435, ptr %putbyte.string437, align 8
  %putbyte.charptr451 = getelementptr i8, ptr %putbyte.string437, i64 %add410
  store i8 %STK15.3.off0, ptr %putbyte.charptr451, align 1
  br label %lab_L276

lab_L276:                                         ; preds = %lab_L276, %jf.then_L275
  %lg.value452 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn455 = inttoptr i64 %lg.value452 to ptr
  %fnap456 = tail call i64 %rtap_ep_p_fn455()
  switch i64 %fnap456, label %jt.else524 [
    i64 13, label %lab_L276
    i64 10, label %jt.else546
    i64 32, label %jt.else546
    i64 9, label %jt.else546
    i64 59, label %jt.else546
    i64 61, label %jt.else546
  ]

jt.else524:                                       ; preds = %lab_L276
  %eq530.not = icmp eq i64 %fnap456, -1
  %extract.t608 = trunc i64 %fnap456 to i8
  br i1 %eq530.not, label %common.ret, label %lab_L272

jt.else546:                                       ; preds = %lab_L276, %lab_L276, %lab_L276, %lab_L276, %lab_L276
  %lg.value547 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn550 = inttoptr i64 %lg.value547 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn550()
  br label %common.ret
}

define i64 @findarg(i64 %0, i64 %1) local_unnamed_addr section ".text.BLIB" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr.i = icmp eq i8 %getbyte.char, 0
  %.pre.i = shl i64 %1, 3
  %.pre247.i = inttoptr i64 %.pre.i to ptr
  br i1 %gr.i, label %jf.else191.i, label %lab_L281.i

lab_L281.i:                                       ; preds = %entry, %jf.then_L285.i
  %STK6.0.i = phi i64 [ %add167.i, %jf.then_L285.i ], [ 1, %entry ]
  %STK5.0.i = phi i64 [ %STK5.1.i, %jf.then_L285.i ], [ 0, %entry ]
  %STK4.0.i = phi i64 [ %STK4.2.i, %jf.then_L285.i ], [ 0, %entry ]
  %STK3.0.i = phi i64 [ %STK3.2.i, %jf.then_L285.i ], [ 0, %entry ]
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string, i64 %STK6.0.i
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %getbyte.charword.i = zext i8 %getbyte.char.i to i64
  %eq.not.i = icmp eq i64 %STK3.0.i, 0
  br i1 %eq.not.i, label %jf.else.i, label %jf.then_L285.i

jf.else.i:                                        ; preds = %lab_L281.i
  switch i8 %getbyte.char.i, label %jf.then_L286.i [
    i8 61, label %jt.then_L287.i
    i8 47, label %jt.then_L287.i
    i8 44, label %jt.then_L287.i
  ]

jt.then_L287.i:                                   ; preds = %jf.else.i, %jf.else.i, %jf.else.i
  %getbyte.char68.i = load i8, ptr %.pre247.i, align 8
  %getbyte.charword69.i = zext i8 %getbyte.char68.i to i64
  %eq75.not.i = icmp eq i64 %STK4.0.i, %getbyte.charword69.i
  br i1 %eq75.not.i, label %findarglen.exit, label %jf.then_L286.i

jf.then_L286.i:                                   ; preds = %jt.then_L287.i, %jf.else.i
  %add.i = add i64 %STK4.0.i, 1
  %getbyte.charptr99.i = getelementptr i8, ptr %.pre247.i, i64 %add.i
  %getbyte.char100.i = load i8, ptr %getbyte.charptr99.i, align 1
  %getbyte.charword101.i = zext i8 %getbyte.char100.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 %getbyte.charword.i, i64 %getbyte.charword101.i)
  %eq109.i = icmp ne i64 %fnap.i, 0
  %spec.select.i = zext i1 %eq109.i to i64
  br label %jf.then_L285.i

jf.then_L285.i:                                   ; preds = %jf.then_L286.i, %lab_L281.i
  %STK4.1.i = phi i64 [ %STK4.0.i, %lab_L281.i ], [ %add.i, %jf.then_L286.i ]
  %STK3.1.i = phi i64 [ %STK3.0.i, %lab_L281.i ], [ %spec.select.i, %jf.then_L286.i ]
  %eq122.not.i = icmp eq i8 %getbyte.char.i, 44
  %eq133.not.i = icmp eq i8 %getbyte.char.i, 61
  %or.cond.i = or i1 %eq122.not.i, %eq133.not.i
  %STK4.2.i = select i1 %or.cond.i, i64 0, i64 %STK4.1.i
  %STK3.2.i = select i1 %or.cond.i, i64 0, i64 %STK3.1.i
  %add159.i = zext i1 %eq122.not.i to i64
  %STK5.1.i = add i64 %STK5.0.i, %add159.i
  %add167.i = add nuw nsw i64 %STK6.0.i, 1
  %le.not.i.not = icmp samesign ult i64 %STK6.0.i, %getbyte.charword
  br i1 %le.not.i.not, label %lab_L281.i, label %jt.then_L282.i

jt.then_L282.i:                                   ; preds = %jf.then_L285.i
  %eq186.not.i = icmp eq i64 %STK3.2.i, 0
  br i1 %eq186.not.i, label %jf.else191.i, label %jf.then_L292.i

jf.else191.i:                                     ; preds = %entry, %jt.then_L282.i
  %STK4.3244.i = phi i64 [ %STK4.2.i, %jt.then_L282.i ], [ 0, %entry ]
  %STK5.2243.i = phi i64 [ %STK5.1.i, %jt.then_L282.i ], [ 0, %entry ]
  %getbyte.char200.i = load i8, ptr %.pre247.i, align 8
  %getbyte.charword201.i = zext i8 %getbyte.char200.i to i64
  %eq207.not.i = icmp eq i64 %STK4.3244.i, %getbyte.charword201.i
  br i1 %eq207.not.i, label %findarglen.exit, label %jf.then_L292.i

jf.then_L292.i:                                   ; preds = %jf.else191.i, %jt.then_L282.i
  br label %findarglen.exit

findarglen.exit:                                  ; preds = %jt.then_L287.i, %jf.else191.i, %jf.then_L292.i
  %common.ret.op.i = phi i64 [ -1, %jf.then_L292.i ], [ %STK5.2243.i, %jf.else191.i ], [ %STK5.0.i, %jt.then_L287.i ]
  ret i64 %common.ret.op.i
}

define i64 @findarglen(i64 %0, i64 %1, i64 %2) local_unnamed_addr section ".text.BLIB" {
entry:
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %entry.jf.else191_crit_edge, label %lab_L281.preheader

entry.jf.else191_crit_edge:                       ; preds = %entry
  %.pre = shl i64 %2, 3
  %.pre247 = inttoptr i64 %.pre to ptr
  br label %jf.else191

lab_L281.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.llvmaddr65 = shl i64 %2, 3
  %getbyte.string66 = inttoptr i64 %getbyte.llvmaddr65 to ptr
  br label %lab_L281

lab_L281:                                         ; preds = %lab_L281.preheader, %jf.then_L285
  %STK6.0 = phi i64 [ %add167, %jf.then_L285 ], [ 1, %lab_L281.preheader ]
  %STK5.0 = phi i64 [ %STK5.1, %jf.then_L285 ], [ 0, %lab_L281.preheader ]
  %STK4.0 = phi i64 [ %STK4.2, %jf.then_L285 ], [ 0, %lab_L281.preheader ]
  %STK3.0 = phi i64 [ %STK3.2, %jf.then_L285 ], [ 0, %lab_L281.preheader ]
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK6.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %getbyte.charword = zext i8 %getbyte.char to i64
  %eq.not = icmp eq i64 %STK3.0, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L285

jf.else:                                          ; preds = %lab_L281
  switch i8 %getbyte.char, label %jf.then_L286 [
    i8 61, label %jt.then_L287
    i8 47, label %jt.then_L287
    i8 44, label %jt.then_L287
  ]

jt.then_L287:                                     ; preds = %jf.else, %jf.else, %jf.else
  %getbyte.char68 = load i8, ptr %getbyte.string66, align 8
  %getbyte.charword69 = zext i8 %getbyte.char68 to i64
  %eq75.not = icmp eq i64 %STK4.0, %getbyte.charword69
  br i1 %eq75.not, label %common.ret, label %jf.then_L286

common.ret:                                       ; preds = %jt.then_L287, %jf.else191, %jf.then_L292
  %common.ret.op = phi i64 [ -1, %jf.then_L292 ], [ %STK5.2243, %jf.else191 ], [ %STK5.0, %jt.then_L287 ]
  ret i64 %common.ret.op

jf.then_L286:                                     ; preds = %jf.else, %jt.then_L287
  %add = add i64 %STK4.0, 1
  %getbyte.charptr99 = getelementptr i8, ptr %getbyte.string66, i64 %add
  %getbyte.char100 = load i8, ptr %getbyte.charptr99, align 1
  %getbyte.charword101 = zext i8 %getbyte.char100 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword, i64 %getbyte.charword101)
  %eq109 = icmp ne i64 %fnap, 0
  %spec.select = zext i1 %eq109 to i64
  br label %jf.then_L285

jf.then_L285:                                     ; preds = %jf.then_L286, %lab_L281
  %STK4.1 = phi i64 [ %STK4.0, %lab_L281 ], [ %add, %jf.then_L286 ]
  %STK3.1 = phi i64 [ %STK3.0, %lab_L281 ], [ %spec.select, %jf.then_L286 ]
  %eq122.not = icmp eq i8 %getbyte.char, 44
  %eq133.not = icmp eq i8 %getbyte.char, 61
  %or.cond = or i1 %eq122.not, %eq133.not
  %STK4.2 = select i1 %or.cond, i64 0, i64 %STK4.1
  %STK3.2 = select i1 %or.cond, i64 0, i64 %STK3.1
  %add159 = zext i1 %eq122.not to i64
  %STK5.1 = add i64 %STK5.0, %add159
  %add167 = add i64 %STK6.0, 1
  %le.not = icmp sgt i64 %add167, %1
  br i1 %le.not, label %jt.then_L282, label %lab_L281

jt.then_L282:                                     ; preds = %jf.then_L285
  %eq186.not = icmp eq i64 %STK3.2, 0
  br i1 %eq186.not, label %jf.else191, label %jf.then_L292

jf.else191:                                       ; preds = %entry.jf.else191_crit_edge, %jt.then_L282
  %getbyte.string198.pre-phi = phi ptr [ %.pre247, %entry.jf.else191_crit_edge ], [ %getbyte.string66, %jt.then_L282 ]
  %STK4.3244 = phi i64 [ 0, %entry.jf.else191_crit_edge ], [ %STK4.2, %jt.then_L282 ]
  %STK5.2243 = phi i64 [ 0, %entry.jf.else191_crit_edge ], [ %STK5.1, %jt.then_L282 ]
  %getbyte.char200 = load i8, ptr %getbyte.string198.pre-phi, align 1
  %getbyte.charword201 = zext i8 %getbyte.char200 to i64
  %eq207.not = icmp eq i64 %STK4.3244, %getbyte.charword201
  br i1 %eq207.not, label %common.ret, label %jf.then_L292

jf.then_L292:                                     ; preds = %jf.else191, %jt.then_L282
  br label %common.ret
}

define range(i64 -1, 1) i64 @string_to_number(i64 %0) local_unnamed_addr section ".text.BLIB" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %if_cond.not = icmp eq i8 %getbyte.char, 0
  br i1 %if_cond.not, label %common.ret, label %jt.then_L293

common.ret.sink.split:                            ; preds = %jf.else62, %jf.else472
  %neg.sink = phi i64 [ %neg, %jf.else472 ], [ %getbyte.charword72, %jf.else62 ]
  store i64 %neg.sink, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

common.ret:                                       ; preds = %jump.target_L306, %common.ret.sink.split, %jt.then_L314, %jf.then_L302, %jf.else159, %jt.then_L296, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ -1, %jt.then_L296 ], [ -1, %jf.else159 ], [ -1, %jf.then_L302 ], [ -1, %jt.then_L314 ], [ -1, %common.ret.sink.split ], [ 0, %jump.target_L306 ]
  ret i64 %common.ret.op

jt.then_L293:                                     ; preds = %entry
  %getbyte.charptr20 = getelementptr i8, ptr %getbyte.string, i64 1
  %getbyte.char21 = load i8, ptr %getbyte.charptr20, align 1
  %getbyte.charword22 = zext i8 %getbyte.char21 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword22)
  %eq.not = icmp eq i64 %fnap, 39
  %eq37.not = icmp eq i8 %getbyte.char, 3
  %or.cond = and i1 %eq37.not, %eq.not
  br i1 %or.cond, label %jf.else42, label %jf.then_L294

jf.else42:                                        ; preds = %jt.then_L293
  %getbyte.charptr50 = getelementptr i8, ptr %getbyte.string, i64 3
  %getbyte.char51 = load i8, ptr %getbyte.charptr50, align 1
  %eq57.not = icmp eq i8 %getbyte.char51, 39
  br i1 %eq57.not, label %jf.else62, label %jf.then_L298

jf.else62:                                        ; preds = %jf.else42
  %getbyte.charptr70 = getelementptr i8, ptr %getbyte.string, i64 2
  %getbyte.char71 = load i8, ptr %getbyte.charptr70, align 2
  %getbyte.charword72 = zext i8 %getbyte.char71 to i64
  br label %common.ret.sink.split

jf.then_L294:                                     ; preds = %jt.then_L293
  switch i64 %fnap, label %jf.then_L295 [
    i64 43, label %jt.then_L296
    i64 45, label %jt.then_L296
  ]

jt.then_L296:                                     ; preds = %jf.then_L294, %jf.then_L294
  %eq114.not = icmp eq i8 %getbyte.char, 1
  br i1 %eq114.not, label %common.ret, label %jf.then_L297

jf.then_L297:                                     ; preds = %jt.then_L296
  %eq104 = icmp ne i64 %fnap, 45
  %getbyte.charptr137 = getelementptr i8, ptr %getbyte.string, i64 2
  %getbyte.char138 = load i8, ptr %getbyte.charptr137, align 2
  %getbyte.charword139 = zext i8 %getbyte.char138 to i64
  %lg.value141 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn144 = inttoptr i64 %lg.value141 to ptr
  %fnap146 = tail call i64 %rtap_ep_p_fn144(i64 %getbyte.charword139)
  br label %jf.then_L295

jf.then_L295:                                     ; preds = %jf.then_L294, %jf.then_L297
  %STK7.0 = phi i64 [ %fnap146, %jf.then_L297 ], [ %fnap, %jf.then_L294 ]
  %STK5.0 = phi i1 [ %eq104, %jf.then_L297 ], [ true, %jf.then_L294 ]
  %STK1.0 = phi i64 [ 2, %jf.then_L297 ], [ 1, %jf.then_L294 ]
  %eq154.not = icmp eq i64 %STK7.0, 35
  br i1 %eq154.not, label %jf.else159, label %jf.then_L298

jf.else159:                                       ; preds = %jf.then_L295
  %eq168.not = icmp eq i64 %STK1.0, %getbyte.charword
  br i1 %eq168.not, label %common.ret, label %jf.then_L299

jf.then_L299:                                     ; preds = %jf.else159
  %add181 = add nuw nsw i64 %STK1.0, 1
  %getbyte.charptr192 = getelementptr i8, ptr %getbyte.string, i64 %add181
  %getbyte.char193 = load i8, ptr %getbyte.charptr192, align 1
  %getbyte.charword194 = zext i8 %getbyte.char193 to i64
  %lg.value196 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn199 = inttoptr i64 %lg.value196 to ptr
  %fnap201 = tail call i64 %rtap_ep_p_fn199(i64 %getbyte.charword194)
  switch i64 %fnap201, label %jf.then_L298 [
    i64 88, label %jf.else247
    i64 66, label %jf.then_L302
    i64 79, label %jf.then_L302
  ]

jf.else247:                                       ; preds = %jf.then_L299
  br label %jf.then_L302

jf.then_L302:                                     ; preds = %jf.then_L299, %jf.then_L299, %jf.else247
  %STK6.0 = phi i64 [ 16, %jf.else247 ], [ 8, %jf.then_L299 ], [ 8, %jf.then_L299 ]
  %eq269.not = icmp eq i64 %add181, %getbyte.charword
  br i1 %eq269.not, label %common.ret, label %jf.then_L304

jf.then_L304:                                     ; preds = %jf.then_L302
  %eq255.not = icmp eq i64 %fnap201, 66
  %spec.select = select i1 %eq255.not, i64 2, i64 %STK6.0
  %add282 = add nuw nsw i64 %STK1.0, 2
  %getbyte.charptr293 = getelementptr i8, ptr %getbyte.string, i64 %add282
  %getbyte.char294 = load i8, ptr %getbyte.charptr293, align 1
  %getbyte.charword295 = zext i8 %getbyte.char294 to i64
  %lg.value297 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn300 = inttoptr i64 %lg.value297 to ptr
  %fnap302 = tail call i64 %rtap_ep_p_fn300(i64 %getbyte.charword295)
  br label %jf.then_L298

jf.then_L298:                                     ; preds = %jf.else42, %jf.then_L299, %jf.then_L304, %jf.then_L295
  %STK5.0534 = phi i1 [ %STK5.0, %jf.then_L295 ], [ %STK5.0, %jf.then_L304 ], [ %STK5.0, %jf.then_L299 ], [ true, %jf.else42 ]
  %STK7.1 = phi i64 [ %STK7.0, %jf.then_L295 ], [ %fnap302, %jf.then_L304 ], [ %fnap201, %jf.then_L299 ], [ 39, %jf.else42 ]
  %STK6.2 = phi i64 [ 10, %jf.then_L295 ], [ %spec.select, %jf.then_L304 ], [ 8, %jf.then_L299 ], [ 10, %jf.else42 ]
  %STK1.1 = phi i64 [ %STK1.0, %jf.then_L295 ], [ %add282, %jf.then_L304 ], [ %add181, %jf.then_L299 ], [ 1, %jf.else42 ]
  br label %lab_L305

lab_L305:                                         ; preds = %jt.else446, %jf.then_L298
  %STK7.2 = phi i64 [ %STK7.1, %jf.then_L298 ], [ %fnap464, %jt.else446 ]
  %STK1.2 = phi i64 [ %STK1.1, %jf.then_L298 ], [ %add433, %jt.else446 ]
  %1 = add i64 %STK7.2, -58
  %or.cond528 = icmp ult i64 %1, -10
  br i1 %or.cond528, label %jf.then_L307, label %jf.else325

jf.else325:                                       ; preds = %lab_L305
  %sub = add nsw i64 %STK7.2, -48
  br label %jump.target_L306

jf.then_L307:                                     ; preds = %lab_L305
  %2 = add i64 %STK7.2, -91
  %or.cond529 = icmp ult i64 %2, -26
  %eq373.not = icmp eq i64 %STK7.2, 95
  %. = select i1 %eq373.not, i64 -1, i64 1000
  %add364 = add nsw i64 %STK7.2, -55
  %__res_a.1 = select i1 %or.cond529, i64 %., i64 %add364
  br label %jump.target_L306

jump.target_L306:                                 ; preds = %jf.then_L307, %jf.else325
  %__res_a.2 = phi i64 [ %__res_a.1, %jf.then_L307 ], [ %sub, %jf.else325 ]
  %ls = icmp slt i64 %__res_a.2, %STK6.2
  br i1 %ls, label %jt.then_L312, label %common.ret

jt.then_L312:                                     ; preds = %jump.target_L306
  %ge = icmp slt i64 %__res_a.2, 0
  br i1 %ge, label %jf.then_L313, label %jf.else413

jf.else413:                                       ; preds = %jt.then_L312
  %lg.value416 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %mul = mul i64 %lg.value416, %STK6.2
  %add425 = add i64 %mul, %__res_a.2
  store i64 %add425, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L313

jf.then_L313:                                     ; preds = %jf.else413, %jt.then_L312
  %gr.not = icmp ult i64 %STK1.2, %getbyte.charword
  br i1 %gr.not, label %jt.else446, label %jt.then_L314

jt.else446:                                       ; preds = %jf.then_L313
  %add433 = add nuw nsw i64 %STK1.2, 1
  %getbyte.charptr455 = getelementptr i8, ptr %getbyte.string, i64 %add433
  %getbyte.char456 = load i8, ptr %getbyte.charptr455, align 1
  %getbyte.charword457 = zext i8 %getbyte.char456 to i64
  %lg.value459 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn462 = inttoptr i64 %lg.value459 to ptr
  %fnap464 = tail call i64 %rtap_ep_p_fn462(i64 %getbyte.charword457)
  br label %lab_L305

jt.then_L314:                                     ; preds = %jf.then_L313
  br i1 %STK5.0534, label %common.ret, label %jf.else472

jf.else472:                                       ; preds = %jt.then_L314
  %lg.value473 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %neg = sub i64 0, %lg.value473
  br label %common.ret.sink.split
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @copystring(i64 %0, i64 %1) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %putbyte.llvmaddr = shl i64 %1, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  %2 = add nuw nsw i64 %getbyte.charword, 1
  %min.iters.check = icmp ult i8 %getbyte.char, 3
  %diff.check = icmp eq i64 %putbyte.llvmaddr, %getbyte.llvmaddr
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %lab_L316.preheader, label %vector.ph

vector.ph:                                        ; preds = %entry
  %n.vec = and i64 %2, 508
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr i8, ptr %getbyte.string, i64 %index
  %wide.load = load <4 x i8>, ptr %3, align 4
  %4 = getelementptr i8, ptr %putbyte.string, i64 %index
  store <4 x i8> %wide.load, ptr %4, align 4
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %jt.then_L317, label %lab_L316.preheader

lab_L316.preheader:                               ; preds = %entry, %middle.block
  %STK2.0.ph = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ]
  br label %lab_L316

lab_L316:                                         ; preds = %lab_L316.preheader, %lab_L316
  %STK2.0 = phi i64 [ %add, %lab_L316 ], [ %STK2.0.ph, %lab_L316.preheader ]
  %getbyte.charptr19 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char20 = load i8, ptr %getbyte.charptr19, align 1
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %STK2.0
  store i8 %getbyte.char20, ptr %putbyte.charptr, align 1
  %add = add nuw nsw i64 %STK2.0, 1
  %le.not.not = icmp samesign ult i64 %STK2.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L316, label %jt.then_L317, !llvm.loop !7

jt.then_L317:                                     ; preds = %lab_L316, %middle.block
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @copy_words(i64 %0, i64 %1, i64 %2) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %sub = add i64 %2, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L321, label %lab_L320

lab_L320:                                         ; preds = %entry, %lab_L320
  %STK3.0 = phi i64 [ %add35, %lab_L320 ], [ 0, %entry ]
  %add = add i64 %STK3.0, %0
  %rv.llvmaddr = shl i64 %add, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %add28 = add i64 %STK3.0, %1
  %stind.llvmaddr = shl i64 %add28, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %rv.rv, ptr %stind.lv, align 8
  %add35 = add i64 %STK3.0, 1
  %le.not = icmp sgt i64 %add35, %sub
  br i1 %le.not, label %jt.then_L321, label %lab_L320

jt.then_L321:                                     ; preds = %lab_L320, %entry
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none)
define noundef i64 @clear_words(i64 %0, i64 %1) local_unnamed_addr #3 section ".text.BLIB" {
entry:
  %sub = add i64 %1, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L325, label %lab_L324

lab_L324:                                         ; preds = %entry, %lab_L324
  %STK2.0 = phi i64 [ %add26, %lab_L324 ], [ 0, %entry ]
  %add = add i64 %STK2.0, %0
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 0, ptr %stind.lv, align 8
  %add26 = add i64 %STK2.0, 1
  %le.not = icmp sgt i64 %add26, %sub
  br i1 %le.not, label %jt.then_L325, label %lab_L324

jt.then_L325:                                     ; preds = %lab_L324, %entry
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @copy_bytes(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %spec.select = tail call i64 @llvm.smin.i64(i64 %0, i64 %3)
  %sub = add i64 %spec.select, -1
  %gr26 = icmp slt i64 %sub, 0
  br i1 %gr26, label %jt.then_L330, label %lab_L329.preheader

lab_L329.preheader:                               ; preds = %entry
  %or.cond = icmp slt i64 %spec.select, 8
  br i1 %or.cond, label %lab_L329.preheader168, label %vector.ph

vector.ph:                                        ; preds = %lab_L329.preheader
  %n.vec = and i64 %spec.select, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %5 = getelementptr i8, ptr null, i64 %index
  %6 = getelementptr i8, ptr %5, i64 %1
  %wide.load = load <4 x i8>, ptr %6, align 1
  %7 = getelementptr i8, ptr %5, i64 %4
  store <4 x i8> %wide.load, ptr %7, align 1
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select, %n.vec
  br i1 %cmp.n, label %jt.then_L330, label %lab_L329.preheader168

lab_L329.preheader168:                            ; preds = %lab_L329.preheader, %middle.block
  %STK13.0.ph = phi i64 [ 0, %lab_L329.preheader ], [ %n.vec, %middle.block ]
  br label %lab_L329

lab_L329:                                         ; preds = %lab_L329.preheader168, %lab_L329
  %STK13.0 = phi i64 [ %add54, %lab_L329 ], [ %STK13.0.ph, %lab_L329.preheader168 ]
  %9 = getelementptr i8, ptr null, i64 %STK13.0
  %getbyte.charptr = getelementptr i8, ptr %9, i64 %1
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %putbyte.charptr = getelementptr i8, ptr %9, i64 %4
  store i8 %getbyte.char, ptr %putbyte.charptr, align 1
  %add54 = add i64 %STK13.0, 1
  %le.not = icmp sgt i64 %add54, %sub
  br i1 %le.not, label %jt.then_L330, label %lab_L329, !llvm.loop !9

jt.then_L330:                                     ; preds = %lab_L329, %middle.block, %entry
  %sub75 = add i64 %3, -1
  %gr83 = icmp sgt i64 %spec.select, %sub75
  br i1 %gr83, label %jt.then_L334, label %lab_L333.preheader

lab_L333.preheader:                               ; preds = %jt.then_L330
  %putbyte.char103 = trunc i64 %2 to i8
  %invariant.gep = getelementptr i8, ptr null, i64 %4
  %10 = sext i64 %sub75 to i128
  %11 = add nsw i128 %10, 1
  %12 = add i64 %spec.select, 1
  %13 = sext i64 %12 to i128
  %smax155 = tail call i128 @llvm.smax.i128(i128 %11, i128 %13)
  %14 = trunc i128 %smax155 to i64
  %15 = sub i64 %14, %spec.select
  %min.iters.check158 = icmp ult i64 %15, 24
  br i1 %min.iters.check158, label %lab_L333.preheader167, label %vector.scevcheck154

vector.scevcheck154:                              ; preds = %lab_L333.preheader
  %16 = sext i64 %sub75 to i128
  %17 = add nsw i128 %16, 1
  %18 = add i64 %spec.select, 1
  %19 = sext i64 %18 to i128
  %smax = tail call i128 @llvm.smax.i128(i128 %17, i128 %19)
  %20 = sub i128 %smax, %19
  %21 = trunc i128 %20 to i64
  %22 = add i64 %18, %21
  %23 = icmp slt i64 %22, %18
  %24 = icmp ugt i128 %20, 18446744073709551615
  %25 = or i1 %23, %24
  br i1 %25, label %lab_L333.preheader167, label %vector.ph159

vector.ph159:                                     ; preds = %vector.scevcheck154
  %n.vec161 = and i64 %15, -4
  %26 = add i64 %spec.select, %n.vec161
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %putbyte.char103, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %27 = getelementptr i8, ptr %invariant.gep, i64 %spec.select
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph159
  %index163 = phi i64 [ 0, %vector.ph159 ], [ %index.next164, %vector.body162 ]
  %28 = getelementptr i8, ptr %27, i64 %index163
  store <4 x i8> %broadcast.splat, ptr %28, align 1
  %index.next164 = add nuw i64 %index163, 4
  %29 = icmp eq i64 %index.next164, %n.vec161
  br i1 %29, label %middle.block156, label %vector.body162, !llvm.loop !10

middle.block156:                                  ; preds = %vector.body162
  %cmp.n165 = icmp eq i64 %15, %n.vec161
  br i1 %cmp.n165, label %jt.then_L334, label %lab_L333.preheader167

lab_L333.preheader167:                            ; preds = %vector.scevcheck154, %lab_L333.preheader, %middle.block156
  %STK69.0.ph = phi i64 [ %spec.select, %lab_L333.preheader ], [ %spec.select, %vector.scevcheck154 ], [ %26, %middle.block156 ]
  br label %lab_L333

lab_L333:                                         ; preds = %lab_L333.preheader167, %lab_L333
  %STK69.0 = phi i64 [ %add112, %lab_L333 ], [ %STK69.0.ph, %lab_L333.preheader167 ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK69.0
  store i8 %putbyte.char103, ptr %gep, align 1
  %add112 = add i64 %STK69.0, 1
  %le121.not = icmp sgt i64 %add112, %sub75
  br i1 %le121.not, label %jt.then_L334, label %lab_L333, !llvm.loop !11

jt.then_L334:                                     ; preds = %lab_L333, %middle.block156, %jt.then_L330
  %sub133 = sub i64 %0, %spec.select
  ret i64 %sub133
}

define i64 @readn() section ".text.BLIB" {
entry:
  %lg.value139 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn140 = inttoptr i64 %lg.value139 to ptr
  %fnap141 = tail call i64 %rtap_ep_p_fn140()
  %0 = add i64 %fnap141, -48
  %or.cond142 = icmp ult i64 %0, 10
  br i1 %or.cond142, label %jt.then_L338, label %jf.then_L339

jf.then_L339:                                     ; preds = %entry, %lab_L344
  %fnap143 = phi i64 [ %fnap, %lab_L344 ], [ %fnap141, %entry ]
  switch i64 %fnap143, label %common.ret [
    i64 43, label %lab_L346.loopexit
    i64 45, label %lab_L346
    i64 10, label %lab_L344
    i64 9, label %lab_L344
    i64 32, label %lab_L344
  ]

common.ret:                                       ; preds = %jf.then_L339, %jf.then_L349
  %storemerge = phi i64 [ 0, %jf.then_L349 ], [ -1, %jf.then_L339 ]
  %common.ret.op = phi i64 [ %spec.select, %jf.then_L349 ], [ 0, %jf.then_L339 ]
  %lg.value112 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn115 = inttoptr i64 %lg.value112 to ptr
  %rtap116 = tail call i64 %rtap_ep_p_fn115()
  store i64 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  ret i64 %common.ret.op

lab_L344:                                         ; preds = %jf.then_L339, %jf.then_L339, %jf.then_L339
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %1 = add i64 %fnap, -48
  %or.cond = icmp ult i64 %1, 10
  br i1 %or.cond, label %jt.then_L338, label %jf.then_L339

lab_L346.loopexit:                                ; preds = %jf.then_L339
  br label %lab_L346

lab_L346:                                         ; preds = %jf.then_L339, %lab_L346.loopexit
  %2 = phi i1 [ true, %lab_L346.loopexit ], [ false, %jf.then_L339 ]
  %lg.value28 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn31 = inttoptr i64 %lg.value28 to ptr
  %fnap32 = tail call i64 %rtap_ep_p_fn31()
  br label %jt.then_L338

jt.then_L338:                                     ; preds = %lab_L344, %entry, %lab_L346
  %STK2.1 = phi i1 [ %2, %lab_L346 ], [ true, %entry ], [ true, %lab_L344 ]
  %STK1.0 = phi i64 [ %fnap32, %lab_L346 ], [ %fnap141, %entry ], [ %fnap, %lab_L344 ]
  %3 = add i64 %STK1.0, -58
  %or.cond134 = icmp ult i64 %3, -10
  br i1 %or.cond134, label %jf.then_L349, label %lab_L347

lab_L347:                                         ; preds = %jt.then_L338, %lab_L347
  %STK1.1 = phi i64 [ %fnap78, %lab_L347 ], [ %STK1.0, %jt.then_L338 ]
  %STK.0 = phi i64 [ %sub, %lab_L347 ], [ 0, %jt.then_L338 ]
  %mul = mul i64 %STK.0, 10
  %add = add nsw i64 %STK1.1, -48
  %sub = add i64 %add, %mul
  %lg.value74 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn77 = inttoptr i64 %lg.value74 to ptr
  %fnap78 = tail call i64 %rtap_ep_p_fn77()
  %4 = add i64 %fnap78, -48
  %or.cond135 = icmp ult i64 %4, 10
  br i1 %or.cond135, label %lab_L347, label %jf.then_L349

jf.then_L349:                                     ; preds = %lab_L347, %jt.then_L338
  %STK.1 = phi i64 [ 0, %jt.then_L338 ], [ %sub, %lab_L347 ]
  %neg = sub i64 0, %STK.1
  %spec.select = select i1 %STK2.1, i64 %STK.1, i64 %neg
  br label %common.ret
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i64 @input() #4 section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  ret i64 %lg.value
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i64 @output() #4 section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  ret i64 %lg.value
}

define noundef i64 @writeflt(i64 %0, i64 %1, i64 %2) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 24), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 63, i64 2, i64 %0)
  %lg.value10 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %stack.vec = alloca [19 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %spec.select = call i64 @llvm.abs.i64(i64 %fnap, i1 false)
  %eq.not = icmp eq i64 %fnap, 0
  %STK2.0 = call i64 @llvm.smax.i64(i64 %2, i64 0)
  br label %lab_L356

lab_L356:                                         ; preds = %lab_L356, %entry
  %STK13.0 = phi i64 [ 0, %entry ], [ %add95, %lab_L356 ]
  %STK9.1 = phi i64 [ %spec.select, %entry ], [ %div, %lab_L356 ]
  %STK9.1.frozen = freeze i64 %STK9.1
  %div = sdiv i64 %STK9.1.frozen, 10
  %3 = mul i64 %div, 10
  %mod.decomposed = sub i64 %STK9.1.frozen, %3
  %add = add i64 %STK13.0, %stack.bcpladdr
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %mod.decomposed, ptr %stind.lv, align 8
  %add95 = add i64 %STK13.0, 1
  %STK9.1.off = add i64 %STK9.1, 9
  %if_cond101.not = icmp ult i64 %STK9.1.off, 19
  br i1 %if_cond101.not, label %lab_L357, label %lab_L356

lab_L357:                                         ; preds = %lab_L356
  %if_cond = icmp sgt i64 %fnap, -1
  %STK11.0 = select i1 %eq.not, i64 0, i64 %lg.value10
  %STK1.0 = call i64 @llvm.smax.i64(i64 %1, i64 4)
  %neg105 = sub i64 0, %STK11.0
  %sub = sub i64 %neg105, %STK2.0
  %le = icmp slt i64 %sub, 1
  %le145.not = icmp sgt i64 %sub, %add95
  %or.cond = or i1 %le, %le145.not
  br i1 %or.cond, label %jf.then_L360, label %jf.else150

jf.else150:                                       ; preds = %lab_L357
  %sub156 = add nuw i64 %sub, 2305843009213693951
  %add162 = add i64 %sub156, %stack.bcpladdr
  %rv.llvmaddr = shl i64 %add162, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %ge = icmp slt i64 %rv.rv, 5
  br i1 %ge, label %jf.then_L360, label %jf.else180

jf.else180:                                       ; preds = %jf.else150
  %ls187.not = icmp slt i64 %sub, %add95
  br i1 %ls187.not, label %lab_L361, label %jf.else268

lab_L361:                                         ; preds = %jf.else180, %jf.else251
  %STK175.0 = phi i64 [ %add244, %jf.else251 ], [ %sub, %jf.else180 ]
  %STK173.0 = phi i64 [ %div236, %jf.else251 ], [ 1, %jf.else180 ]
  %add199 = add i64 %STK175.0, %stack.bcpladdr
  %rv.llvmaddr202 = shl i64 %add199, 3
  %rv.lv203 = inttoptr i64 %rv.llvmaddr202 to ptr
  %rv.rv204 = load i64, ptr %rv.lv203, align 8
  %add210 = add i64 %rv.rv204, %STK173.0
  %add210.frozen = freeze i64 %add210
  %div236 = sdiv i64 %add210.frozen, 10
  %4 = mul i64 %div236, 10
  %mod217.decomposed = sub i64 %add210.frozen, %4
  store i64 %mod217.decomposed, ptr %rv.lv203, align 8
  %add210.off = add i64 %add210, 9
  %if_cond250 = icmp ult i64 %add210.off, 19
  br i1 %if_cond250, label %jf.then_L360, label %jf.else251

jf.else251:                                       ; preds = %lab_L361
  %add244 = add nuw nsw i64 %STK175.0, 1
  %ls258 = icmp slt i64 %add244, %add95
  br i1 %ls258, label %lab_L361, label %jf.else268

jf.else268:                                       ; preds = %jf.else251, %jf.else180
  %add276 = add i64 %add95, %stack.bcpladdr
  %stind.llvmaddr280 = shl i64 %add276, 3
  %stind.lv281 = inttoptr i64 %stind.llvmaddr280 to ptr
  store i64 1, ptr %stind.lv281, align 8
  %add287 = add i64 %STK13.0, 2
  br label %jf.then_L360

jf.then_L360:                                     ; preds = %lab_L361, %jf.else268, %jf.else150, %lab_L357
  %STK13.1 = phi i64 [ %add95, %lab_L357 ], [ %add95, %jf.else150 ], [ %add287, %jf.else268 ], [ %add95, %lab_L361 ]
  %sub295 = add i64 %STK13.1, -1
  %gr.not = icmp sgt i64 %sub295, %neg105
  %add322 = sub i64 1, %STK11.0
  %STK16.0 = select i1 %gr.not, i64 %STK13.1, i64 %add322
  %add331 = add nsw i64 %STK1.0, -1
  %sub336 = add i64 %add331, %sub
  br i1 %if_cond, label %jf.then_L368, label %jf.else343

jf.else343:                                       ; preds = %jf.then_L360
  %sub295.neg105 = call i64 @llvm.smax.i64(i64 %sub295, i64 %neg105)
  %gr371 = icmp sgt i64 %sub, %sub295.neg105
  br i1 %gr371, label %jf.then_L368, label %lab_L369

lab_L369:                                         ; preds = %jf.else343, %lab_L372
  %STK346.0 = phi i64 [ %add423, %lab_L372 ], [ %sub, %jf.else343 ]
  %le382 = icmp sgt i64 %STK346.0, -1
  %ls394.not = icmp slt i64 %STK346.0, %STK13.1
  %or.cond689 = and i1 %le382, %ls394.not
  br i1 %or.cond689, label %jf.else399, label %lab_L372

jf.else399:                                       ; preds = %lab_L369
  %add406 = add i64 %STK346.0, %stack.bcpladdr
  %rv.llvmaddr409 = shl i64 %add406, 3
  %rv.lv410 = inttoptr i64 %rv.llvmaddr409 to ptr
  %rv.rv411 = load i64, ptr %rv.lv410, align 8
  %if_cond414 = icmp eq i64 %rv.rv411, 0
  br i1 %if_cond414, label %lab_L372, label %jf.then_L368

lab_L372:                                         ; preds = %lab_L369, %jf.else399
  %add423 = add i64 %STK346.0, 1
  %le432.not = icmp sgt i64 %add423, %sub295.neg105
  br i1 %le432.not, label %jf.then_L368, label %lab_L369

jf.then_L368:                                     ; preds = %lab_L372, %jf.else399, %jf.else343, %jf.then_L360
  %if_cond495 = phi i64 [ 32, %jf.then_L360 ], [ 32, %jf.else343 ], [ 32, %lab_L372 ], [ 45, %jf.else399 ]
  %add452 = add i64 %STK16.0, 1
  %ls460 = icmp slt i64 %sub336, %add452
  br i1 %ls460, label %jt.then_L378, label %lab_L377

lab_L377:                                         ; preds = %jf.then_L368, %lab_L377
  %STK446.0 = phi i64 [ %add477, %lab_L377 ], [ %sub336, %jf.then_L368 ]
  %lg.value467 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn470 = inttoptr i64 %lg.value467 to ptr
  %rtap = call i64 %rtap_ep_p_fn470(i64 32)
  %add477 = add i64 %STK446.0, -1
  %ge486.not = icmp slt i64 %add477, %add452
  br i1 %ge486.not, label %jt.then_L378, label %lab_L377

jt.then_L378:                                     ; preds = %lab_L377, %jf.then_L368
  %lg.value505 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn508 = inttoptr i64 %lg.value505 to ptr
  %rtap510 = call i64 %rtap_ep_p_fn508(i64 %if_cond495)
  %sub516 = add i64 %STK16.0, -1
  %ls526 = icmp slt i64 %sub516, %sub
  br i1 %ls526, label %jt.then_L384, label %lab_L383

lab_L383:                                         ; preds = %jt.then_L378, %lab_L386
  %STK517.0 = phi i64 [ %add610, %lab_L386 ], [ %sub516, %jt.then_L378 ]
  %le537 = icmp sgt i64 %STK517.0, -1
  %ls549.not = icmp slt i64 %STK517.0, %STK13.1
  %or.cond691 = and i1 %le537, %ls549.not
  br i1 %or.cond691, label %jf.else554, label %jump.target_L388

jf.else554:                                       ; preds = %lab_L383
  %add561 = add i64 %STK517.0, %stack.bcpladdr
  %rv.llvmaddr564 = shl i64 %add561, 3
  %rv.lv565 = inttoptr i64 %rv.llvmaddr564 to ptr
  %rv.rv566 = load i64, ptr %rv.lv565, align 8
  %add571 = add i64 %rv.rv566, 48
  br label %jump.target_L388

jump.target_L388:                                 ; preds = %lab_L383, %jf.else554
  %.sink701 = phi i64 [ %add571, %jf.else554 ], [ 48, %lab_L383 ]
  %lg.value580 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn583 = inttoptr i64 %lg.value580 to ptr
  %rtap585 = call i64 %rtap_ep_p_fn583(i64 %.sink701)
  %eq592.not = icmp eq i64 %STK517.0, %neg105
  br i1 %eq592.not, label %jf.else597, label %lab_L386

jf.else597:                                       ; preds = %jump.target_L388
  %lg.value599 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn602 = inttoptr i64 %lg.value599 to ptr
  %rtap604 = call i64 %rtap_ep_p_fn602(i64 46)
  br label %lab_L386

lab_L386:                                         ; preds = %jump.target_L388, %jf.else597
  %add610 = add i64 %STK517.0, -1
  %ge619.not = icmp slt i64 %add610, %sub
  br i1 %ge619.not, label %jt.then_L384, label %lab_L383

jt.then_L384:                                     ; preds = %lab_L386, %jt.then_L378
  ret i64 -4985279381848933680
}

define noundef i64 @writez(i64 %0, i64 %1) section ".text.BLIB" {
entry:
  %stack.vec.i = alloca [21 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %stack.vec.i)
  %stack.vecaddr.i = ptrtoint ptr %stack.vec.i to i64
  %stack.bcpladdr.i = ashr exact i64 %stack.vecaddr.i, 3
  %2 = call i64 @llvm.abs.i64(i64 %0, i1 false)
  %spec.select.i = sub i64 0, %2
  br label %lab_L126.i

lab_L126.i:                                       ; preds = %lab_L126.i, %entry
  %STK7.1.i = phi i64 [ %spec.select.i, %entry ], [ %div.i, %lab_L126.i ]
  %STK5.0.i = phi i64 [ 0, %entry ], [ %add45.i, %lab_L126.i ]
  %STK7.1.i.frozen = freeze i64 %STK7.1.i
  %div.i = sdiv i64 %STK7.1.i.frozen, 10
  %3 = mul i64 %div.i, 10
  %mod.i.decomposed = sub i64 %STK7.1.i.frozen, %3
  %neg24.i = sub nsw i64 0, %mod.i.decomposed
  %add.i = add i64 %STK5.0.i, %stack.bcpladdr.i
  %stind.llvmaddr.i = shl i64 %add.i, 3
  %stind.lv.i = inttoptr i64 %stind.llvmaddr.i to ptr
  store i64 %neg24.i, ptr %stind.lv.i, align 8
  %add45.i = add i64 %STK5.0.i, 1
  %STK7.1.off.i = add nsw i64 %STK7.1.i, 9
  %if_cond51.not.i = icmp ult i64 %STK7.1.off.i, 19
  br i1 %if_cond51.not.i, label %lab_L127.i, label %lab_L126.i

lab_L127.i:                                       ; preds = %lab_L126.i
  %if_cond.i = icmp slt i64 %0, 0
  %.lobit = ashr i64 %0, 63
  %spec.select209.i = add i64 %1, %.lobit
  br i1 %if_cond.i, label %jf.else61.i, label %jf.then_L129.i

jf.else61.i:                                      ; preds = %lab_L127.i
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %rtap.i = call i64 %rtap_ep_p_fn.i(i64 45)
  br label %jf.then_L129.i

jf.then_L129.i:                                   ; preds = %jf.else61.i, %lab_L127.i
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L131.i, label %lab_L130.i

lab_L130.i:                                       ; preds = %jf.then_L129.i, %lab_L130.i
  %STK71.0.i = phi i64 [ %add104.i, %lab_L130.i ], [ %add70.i, %jf.then_L129.i ]
  %lg.value93.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96.i = inttoptr i64 %lg.value93.i to ptr
  %rtap98.i = call i64 %rtap_ep_p_fn96.i(i64 48)
  %add104.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add104.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L131.i, label %lab_L130.i

jt.then_L131.i:                                   ; preds = %lab_L130.i, %jf.then_L129.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L137.i

lab_L137.i:                                       ; preds = %jt.then_L131.i, %lab_L137.i
  %STK141.0.i = phi i64 [ %add177.i, %lab_L137.i ], [ %STK5.0.i, %jt.then_L131.i ]
  %add158.i = add i64 %STK141.0.i, %stack.bcpladdr.i
  %rv.llvmaddr.i = shl i64 %add158.i, 3
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %add164.i = add i64 %rv.rv.i, 48
  %lg.value166.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn169.i = inttoptr i64 %lg.value166.i to ptr
  %rtap171.i = call i64 %rtap_ep_p_fn169.i(i64 %add164.i)
  %add177.i = add nsw i64 %STK141.0.i, -1
  %ge.not.i = icmp eq i64 %STK141.0.i, 0
  br i1 %ge.not.i, label %writedz.exit, label %lab_L137.i

writedz.exit:                                     ; preds = %lab_L137.i, %jt.then_L131.i
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %stack.vec.i)
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @dat_to_strings(i64 %0, i64 returned %1) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.llvmaddr14 = add i64 %rv.llvmaddr, 8
  %rv.lv15 = inttoptr i64 %rv.llvmaddr14 to ptr
  %rv.rv16 = load i64, ptr %rv.lv15, align 8
  %add25 = add i64 %1, 5
  %add32 = add i64 %1, 10
  %add52 = add i64 %rv.rv, 4
  %mod = srem i64 %add52, 7
  %div = sdiv i64 %rv.rv16, 1000
  %le = icmp sgt i64 %rv.rv, 0
  %putbyte.llvmaddr191 = shl i64 %1, 3
  %putbyte.string192 = inttoptr i64 %putbyte.llvmaddr191 to ptr
  br i1 %le, label %jf.then_L392, label %lab_L393

lab_L393:                                         ; preds = %entry
  %putbyte.llvmaddr137 = shl i64 %add32, 3
  %putbyte.string138 = inttoptr i64 %putbyte.llvmaddr137 to ptr
  %putbyte.llvmaddr124 = shl i64 %add25, 3
  %putbyte.string125 = inttoptr i64 %putbyte.llvmaddr124 to ptr
  store i8 7, ptr %putbyte.string192, align 8
  store i8 7, ptr %putbyte.string125, align 8
  store i8 7, ptr %putbyte.string138, align 8
  %putbyte.charptr.1 = getelementptr i8, ptr %putbyte.string192, i64 1
  store i8 60, ptr %putbyte.charptr.1, align 1
  %putbyte.charptr126.1 = getelementptr i8, ptr %putbyte.string125, i64 1
  store i8 60, ptr %putbyte.charptr126.1, align 1
  %putbyte.charptr139.1 = getelementptr i8, ptr %putbyte.string138, i64 1
  store i8 60, ptr %putbyte.charptr139.1, align 1
  %putbyte.charptr.2 = getelementptr i8, ptr %putbyte.string192, i64 2
  store i8 117, ptr %putbyte.charptr.2, align 2
  %putbyte.charptr126.2 = getelementptr i8, ptr %putbyte.string125, i64 2
  store i8 117, ptr %putbyte.charptr126.2, align 2
  %putbyte.charptr139.2 = getelementptr i8, ptr %putbyte.string138, i64 2
  store i8 117, ptr %putbyte.charptr139.2, align 2
  %putbyte.charptr.3 = getelementptr i8, ptr %putbyte.string192, i64 3
  store i8 110, ptr %putbyte.charptr.3, align 1
  %putbyte.charptr126.3 = getelementptr i8, ptr %putbyte.string125, i64 3
  store i8 110, ptr %putbyte.charptr126.3, align 1
  %putbyte.charptr139.3 = getelementptr i8, ptr %putbyte.string138, i64 3
  store i8 110, ptr %putbyte.charptr139.3, align 1
  %putbyte.charptr.4 = getelementptr i8, ptr %putbyte.string192, i64 4
  store i8 115, ptr %putbyte.charptr.4, align 4
  %putbyte.charptr126.4 = getelementptr i8, ptr %putbyte.string125, i64 4
  store i8 115, ptr %putbyte.charptr126.4, align 4
  %putbyte.charptr139.4 = getelementptr i8, ptr %putbyte.string138, i64 4
  store i8 115, ptr %putbyte.charptr139.4, align 4
  %putbyte.charptr.5 = getelementptr i8, ptr %putbyte.string192, i64 5
  store i8 101, ptr %putbyte.charptr.5, align 1
  %putbyte.charptr126.5 = getelementptr i8, ptr %putbyte.string125, i64 5
  store i8 101, ptr %putbyte.charptr126.5, align 1
  %putbyte.charptr139.5 = getelementptr i8, ptr %putbyte.string138, i64 5
  store i8 101, ptr %putbyte.charptr139.5, align 1
  %putbyte.charptr.6 = getelementptr i8, ptr %putbyte.string192, i64 6
  store i8 116, ptr %putbyte.charptr.6, align 2
  %putbyte.charptr126.6 = getelementptr i8, ptr %putbyte.string125, i64 6
  store i8 116, ptr %putbyte.charptr126.6, align 2
  %putbyte.charptr139.6 = getelementptr i8, ptr %putbyte.string138, i64 6
  store i8 116, ptr %putbyte.charptr139.6, align 2
  %putbyte.charptr.7 = getelementptr i8, ptr %putbyte.string192, i64 7
  store i8 62, ptr %putbyte.charptr.7, align 1
  %putbyte.charptr126.7 = getelementptr i8, ptr %putbyte.string125, i64 7
  store i8 62, ptr %putbyte.charptr126.7, align 1
  %putbyte.charptr139.7 = getelementptr i8, ptr %putbyte.string138, i64 7
  store i8 62, ptr %putbyte.charptr139.7, align 1
  br label %common.ret

common.ret:                                       ; preds = %lab_L426, %lab_L393, %middle.block
  ret i64 %1

jf.then_L392:                                     ; preds = %entry
  store i8 11, ptr %putbyte.string192, align 8
  %putbyte.charptr193.1 = getelementptr i8, ptr %putbyte.string192, i64 1
  store i8 68, ptr %putbyte.charptr193.1, align 1
  %putbyte.charptr193.2 = getelementptr i8, ptr %putbyte.string192, i64 2
  store i8 68, ptr %putbyte.charptr193.2, align 2
  %putbyte.charptr193.3 = getelementptr i8, ptr %putbyte.string192, i64 3
  store i8 45, ptr %putbyte.charptr193.3, align 1
  %putbyte.charptr193.4 = getelementptr i8, ptr %putbyte.string192, i64 4
  store i8 77, ptr %putbyte.charptr193.4, align 4
  %putbyte.charptr193.5 = getelementptr i8, ptr %putbyte.string192, i64 5
  store i8 77, ptr %putbyte.charptr193.5, align 1
  %putbyte.charptr193.6 = getelementptr i8, ptr %putbyte.string192, i64 6
  store i8 77, ptr %putbyte.charptr193.6, align 2
  %putbyte.charptr193.7 = getelementptr i8, ptr %putbyte.string192, i64 7
  store i8 45, ptr %putbyte.charptr193.7, align 1
  %putbyte.charptr193.8 = getelementptr i8, ptr %putbyte.string192, i64 8
  store i8 89, ptr %putbyte.charptr193.8, align 8
  %putbyte.charptr193.9 = getelementptr i8, ptr %putbyte.string192, i64 9
  store i8 89, ptr %putbyte.charptr193.9, align 1
  %putbyte.llvmaddr234 = shl i64 %add25, 3
  %putbyte.string235 = inttoptr i64 %putbyte.llvmaddr234 to ptr
  store i8 8, ptr %putbyte.string235, align 8
  %putbyte.charptr236.1 = getelementptr i8, ptr %putbyte.string235, i64 1
  store i8 72, ptr %putbyte.charptr236.1, align 1
  %putbyte.charptr236.2 = getelementptr i8, ptr %putbyte.string235, i64 2
  store i8 72, ptr %putbyte.charptr236.2, align 2
  %putbyte.charptr236.3 = getelementptr i8, ptr %putbyte.string235, i64 3
  store i8 58, ptr %putbyte.charptr236.3, align 1
  %putbyte.charptr236.4 = getelementptr i8, ptr %putbyte.string235, i64 4
  store i8 77, ptr %putbyte.charptr236.4, align 4
  %putbyte.charptr236.5 = getelementptr i8, ptr %putbyte.string235, i64 5
  store i8 77, ptr %putbyte.charptr236.5, align 1
  %putbyte.charptr236.6 = getelementptr i8, ptr %putbyte.string235, i64 6
  store i8 58, ptr %putbyte.charptr236.6, align 2
  %putbyte.charptr236.7 = getelementptr i8, ptr %putbyte.string235, i64 7
  store i8 83, ptr %putbyte.charptr236.7, align 1
  %putbyte.charptr236.8 = getelementptr i8, ptr %putbyte.string235, i64 8
  store i8 83, ptr %putbyte.charptr236.8, align 8
  %add167 = add nuw i64 %rv.rv, 1
  br label %lab_L405

lab_L405:                                         ; preds = %jf.then_L392, %jt.else278
  %STK34.0 = phi i64 [ %add292, %jt.else278 ], [ 1970, %jf.then_L392 ]
  %STK5.0 = phi i64 [ %sub, %jt.else278 ], [ %add167, %jf.then_L392 ]
  %mod.i = srem i64 %STK34.0, 400
  %eq.not.i = icmp eq i64 %mod.i, 0
  br i1 %eq.not.i, label %isleap.exit.thread963, label %jf.then_L430.i

jf.then_L430.i:                                   ; preds = %lab_L405
  %mod14.i = srem i64 %STK34.0, 100
  %eq19.not.i = icmp ne i64 %mod14.i, 0
  %2 = and i64 %STK34.0, 3
  %eq37.not.i.not = icmp eq i64 %2, 0
  %or.cond = and i1 %eq19.not.i, %eq37.not.i.not
  %spec.select = select i1 %or.cond, i64 366, i64 365
  br label %isleap.exit.thread963

isleap.exit.thread963:                            ; preds = %jf.then_L430.i, %lab_L405
  %3 = phi i64 [ 366, %lab_L405 ], [ %spec.select, %jf.then_L430.i ]
  %le273.not = icmp sgt i64 %STK5.0, %3
  br i1 %le273.not, label %jt.else278, label %jt.then_L408

jt.else278:                                       ; preds = %isleap.exit.thread963
  %sub = sub nuw nsw i64 %STK5.0, %3
  %add292 = add i64 %STK34.0, 1
  br label %lab_L405

jt.then_L408:                                     ; preds = %isleap.exit.thread963
  %div301 = sdiv i64 %STK34.0, 1000
  %mod306 = srem i64 %div301, 10
  %4 = trunc nsw i64 %mod306 to i8
  %putbyte.char319 = add nsw i8 %4, 48
  store i8 %putbyte.char319, ptr %putbyte.charptr193.8, align 8
  %STK34.0.frozen = freeze i64 %STK34.0
  %div328 = sdiv i64 %STK34.0.frozen, 100
  %mod333 = srem i64 %div328, 10
  %5 = trunc nsw i64 %mod333 to i8
  %putbyte.char346 = add nsw i8 %5, 48
  store i8 %putbyte.char346, ptr %putbyte.charptr193.9, align 1
  %STK34.0.frozen990 = freeze i64 %STK34.0
  %div355 = sdiv i64 %STK34.0.frozen990, 10
  %mod360 = srem i64 %div355, 10
  %6 = trunc nsw i64 %mod360 to i8
  %putbyte.char373 = add nsw i8 %6, 48
  %putbyte.charptr376 = getelementptr i8, ptr %putbyte.string192, i64 10
  store i8 %putbyte.char373, ptr %putbyte.charptr376, align 2
  %7 = mul i64 %div355, 10
  %mod382.decomposed = sub i64 %STK34.0.frozen990, %7
  %8 = trunc nsw i64 %mod382.decomposed to i8
  %putbyte.char395 = add nsw i8 %8, 48
  %putbyte.charptr398 = getelementptr i8, ptr %putbyte.string192, i64 11
  store i8 %putbyte.char395, ptr %putbyte.charptr398, align 1
  br i1 %eq.not.i, label %isleap.exit959.thread971, label %jf.then_L430.i952

jf.then_L430.i952:                                ; preds = %jt.then_L408
  %9 = mul i64 %div328, 100
  %mod14.i953.decomposed = sub i64 %STK34.0.frozen, %9
  %eq19.not.i954 = icmp ne i64 %mod14.i953.decomposed, 0
  %10 = and i64 %STK34.0, 3
  %eq37.not.i956.not = icmp eq i64 %10, 0
  %or.cond979 = and i1 %eq19.not.i954, %eq37.not.i956.not
  %spec.select980 = select i1 %or.cond979, i64 ptrtoint (ptr @itemn.global.45 to i64), i64 ptrtoint (ptr @itemn.global.44 to i64)
  br label %isleap.exit959.thread971

isleap.exit959.thread971:                         ; preds = %jf.then_L430.i952, %jt.then_L408
  %11 = phi i64 [ ptrtoint (ptr @itemn.global.45 to i64), %jt.then_L408 ], [ %spec.select980, %jf.then_L430.i952 ]
  %__res_a.1 = ashr exact i64 %11, 3
  %div426 = sdiv i64 %STK5.0, 32
  %add431 = add nsw i64 %div426, 1
  %add442 = add nsw i64 %__res_a.1, %add431
  %rv.llvmaddr445 = shl i64 %add442, 3
  %rv.lv446 = inttoptr i64 %rv.llvmaddr445 to ptr
  %rv.rv447 = load i64, ptr %rv.lv446, align 8
  %gr451.not = icmp sgt i64 %STK5.0, %rv.rv447
  %add462 = add nsw i64 %div426, 2
  %STK35.0 = select i1 %gr451.not, i64 %add462, i64 %add431
  %mul = mul nsw i64 %STK35.0, 3
  %invariant.gep = getelementptr i8, ptr @lstr.global.46, i64 %mul
  %invariant.gep982 = getelementptr i8, ptr %invariant.gep, i64 -2
  %getbyte.char493 = load i8, ptr %invariant.gep982, align 1
  store i8 %getbyte.char493, ptr %putbyte.charptr193.4, align 4
  %gep983.1 = getelementptr i8, ptr %invariant.gep, i64 -1
  %getbyte.char493.1 = load i8, ptr %gep983.1, align 1
  %gep.1 = getelementptr i8, ptr %putbyte.string192, i64 5
  store i8 %getbyte.char493.1, ptr %gep.1, align 1
  %getbyte.char493.2 = load i8, ptr %invariant.gep, align 1
  %gep.2 = getelementptr i8, ptr %putbyte.string192, i64 6
  store i8 %getbyte.char493.2, ptr %gep.2, align 2
  %sub538 = add nsw i64 %__res_a.1, 2305843009213693951
  %add544 = add nsw i64 %sub538, %STK35.0
  %rv.llvmaddr547 = shl i64 %add544, 3
  %rv.lv548 = inttoptr i64 %rv.llvmaddr547 to ptr
  %rv.rv549 = load i64, ptr %rv.lv548, align 8
  %sub553 = sub i64 %STK5.0, %rv.rv549
  %sub553.frozen = freeze i64 %sub553
  %div561 = sdiv i64 %sub553.frozen, 10
  %12 = trunc i64 %div561 to i8
  %putbyte.char574 = add i8 %12, 48
  store i8 %putbyte.char574, ptr %putbyte.charptr193.1, align 1
  %13 = mul i64 %div561, 10
  %mod583.decomposed = sub i64 %sub553.frozen, %13
  %14 = trunc nsw i64 %mod583.decomposed to i8
  %putbyte.char596 = add nsw i8 %14, 48
  store i8 %putbyte.char596, ptr %putbyte.charptr193.2, align 2
  %div605 = sdiv i64 %rv.rv16, 60000
  %div613 = sdiv i64 %rv.rv16, 3600000
  %mod621 = srem i64 %div605, 60
  %mod629 = srem i64 %div, 60
  %div637 = sdiv i64 %rv.rv16, 36000000
  %15 = trunc i64 %div637 to i8
  %putbyte.char650 = add i8 %15, 48
  store i8 %putbyte.char650, ptr %putbyte.charptr236.1, align 1
  %mod659 = srem i64 %div613, 10
  %16 = trunc nsw i64 %mod659 to i8
  %putbyte.char672 = add nsw i8 %16, 48
  store i8 %putbyte.char672, ptr %putbyte.charptr236.2, align 2
  %div681.lhs.trunc = trunc nsw i64 %mod621 to i8
  %div681.lhs.trunc.frozen = freeze i8 %div681.lhs.trunc
  %div681975 = sdiv i8 %div681.lhs.trunc.frozen, 10
  %putbyte.char694 = add nsw i8 %div681975, 48
  store i8 %putbyte.char694, ptr %putbyte.charptr236.4, align 4
  %17 = mul i8 %div681975, 10
  %mod703976.decomposed = sub i8 %div681.lhs.trunc.frozen, %17
  %putbyte.char716 = add nsw i8 %mod703976.decomposed, 48
  store i8 %putbyte.char716, ptr %putbyte.charptr236.5, align 1
  %div725.lhs.trunc = trunc nsw i64 %mod629 to i8
  %div725.lhs.trunc.frozen = freeze i8 %div725.lhs.trunc
  %div725977 = sdiv i8 %div725.lhs.trunc.frozen, 10
  %putbyte.char743 = add nsw i8 %div725977, 48
  store i8 %putbyte.char743, ptr %putbyte.charptr236.7, align 1
  %18 = mul i8 %div725977, 10
  %mod752978.decomposed = sub i8 %div725.lhs.trunc.frozen, %18
  %putbyte.char765 = add nsw i8 %mod752978.decomposed, 48
  store i8 %putbyte.char765, ptr %putbyte.charptr236.8, align 8
  switch i64 %mod, label %jump.target_L416 [
    i64 6, label %lab_L425
    i64 5, label %lab_L424
    i64 4, label %lab_L423
    i64 3, label %lab_L422
    i64 2, label %lab_L421
    i64 1, label %lab_L420
    i64 0, label %lab_L419
  ]

lab_L419:                                         ; preds = %isleap.exit959.thread971
  %lstr.bcpladdr772 = ashr exact i64 ptrtoint (ptr @lstr.global.51 to i64), 3
  br label %jump.target_L416

lab_L420:                                         ; preds = %isleap.exit959.thread971
  %lstr.bcpladdr775 = ashr exact i64 ptrtoint (ptr @lstr.global.52 to i64), 3
  br label %jump.target_L416

lab_L421:                                         ; preds = %isleap.exit959.thread971
  %lstr.bcpladdr778 = ashr exact i64 ptrtoint (ptr @lstr.global.53 to i64), 3
  br label %jump.target_L416

lab_L422:                                         ; preds = %isleap.exit959.thread971
  %lstr.bcpladdr781 = ashr exact i64 ptrtoint (ptr @lstr.global.54 to i64), 3
  br label %jump.target_L416

lab_L423:                                         ; preds = %isleap.exit959.thread971
  %lstr.bcpladdr784 = ashr exact i64 ptrtoint (ptr @lstr.global.55 to i64), 3
  br label %jump.target_L416

lab_L424:                                         ; preds = %isleap.exit959.thread971
  %lstr.bcpladdr787 = ashr exact i64 ptrtoint (ptr @lstr.global.56 to i64), 3
  br label %jump.target_L416

lab_L425:                                         ; preds = %isleap.exit959.thread971
  %lstr.bcpladdr790 = ashr exact i64 ptrtoint (ptr @lstr.global.57 to i64), 3
  br label %jump.target_L416

jump.target_L416:                                 ; preds = %isleap.exit959.thread971, %lab_L425, %lab_L424, %lab_L423, %lab_L422, %lab_L421, %lab_L420, %lab_L419
  %__res_a.2 = phi i64 [ %mod, %isleap.exit959.thread971 ], [ %lstr.bcpladdr772, %lab_L419 ], [ %lstr.bcpladdr775, %lab_L420 ], [ %lstr.bcpladdr778, %lab_L421 ], [ %lstr.bcpladdr781, %lab_L422 ], [ %lstr.bcpladdr784, %lab_L423 ], [ %lstr.bcpladdr787, %lab_L424 ], [ %lstr.bcpladdr790, %lab_L425 ]
  %getbyte.llvmaddr804 = shl nsw i64 %__res_a.2, 3
  %getbyte.string805 = inttoptr i64 %getbyte.llvmaddr804 to ptr
  %getbyte.char807 = load i8, ptr %getbyte.string805, align 8
  %getbyte.charword808 = zext i8 %getbyte.char807 to i64
  %putbyte.llvmaddr842 = shl i64 %add32, 3
  %putbyte.string843 = inttoptr i64 %putbyte.llvmaddr842 to ptr
  %19 = add nuw nsw i64 %getbyte.charword808, 1
  %min.iters.check = icmp ult i8 %getbyte.char807, 3
  %diff.check = icmp eq i64 %putbyte.llvmaddr842, %getbyte.llvmaddr804
  %or.cond988 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond988, label %lab_L426.preheader, label %vector.ph

vector.ph:                                        ; preds = %jump.target_L416
  %n.vec = and i64 %19, 508
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %20 = getelementptr i8, ptr %getbyte.string805, i64 %index
  %wide.load = load <4 x i8>, ptr %20, align 4
  %21 = getelementptr i8, ptr %putbyte.string843, i64 %index
  store <4 x i8> %wide.load, ptr %21, align 4
  %index.next = add nuw i64 %index, 4
  %22 = icmp eq i64 %index.next, %n.vec
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %19, %n.vec
  br i1 %cmp.n, label %common.ret, label %lab_L426.preheader

lab_L426.preheader:                               ; preds = %jump.target_L416, %middle.block
  %STK798.0.ph = phi i64 [ 0, %jump.target_L416 ], [ %n.vec, %middle.block ]
  br label %lab_L426

lab_L426:                                         ; preds = %lab_L426.preheader, %lab_L426
  %STK798.0 = phi i64 [ %add850, %lab_L426 ], [ %STK798.0.ph, %lab_L426.preheader ]
  %getbyte.charptr830 = getelementptr i8, ptr %getbyte.string805, i64 %STK798.0
  %getbyte.char831 = load i8, ptr %getbyte.charptr830, align 1
  %putbyte.charptr844 = getelementptr i8, ptr %putbyte.string843, i64 %STK798.0
  store i8 %getbyte.char831, ptr %putbyte.charptr844, align 1
  %add850 = add nuw nsw i64 %STK798.0, 1
  %le859.not.not = icmp samesign ult i64 %STK798.0, %getbyte.charword808
  br i1 %le859.not.not, label %lab_L426, label %common.ret, !llvm.loop !13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i64 -1, 1) i64 @isleap(i64 %0) local_unnamed_addr #2 section ".text.BLIB" {
entry:
  %mod = srem i64 %0, 400
  %eq.not = icmp eq i64 %mod, 0
  br i1 %eq.not, label %common.ret, label %jf.then_L430

common.ret:                                       ; preds = %jf.then_L431, %jf.then_L430, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ 0, %jf.then_L430 ], [ %., %jf.then_L431 ]
  ret i64 %common.ret.op

jf.then_L430:                                     ; preds = %entry
  %mod14 = srem i64 %0, 100
  %eq19.not = icmp eq i64 %mod14, 0
  br i1 %eq19.not, label %common.ret, label %jf.then_L431

jf.then_L431:                                     ; preds = %jf.then_L430
  %1 = and i64 %0, 3
  %eq37.not = icmp eq i64 %1, 0
  %. = sext i1 %eq37.not to i64
  br label %common.ret
}

define i64 @readflt() local_unnamed_addr section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  switch i64 %fnap, label %jf.then_L436 [
    i64 32, label %lab_L434.preheader
    i64 9, label %lab_L434.preheader
    i64 10, label %lab_L434.preheader
    i64 12, label %lab_L434.preheader
  ]

lab_L434.preheader:                               ; preds = %entry, %entry, %entry, %entry
  br label %lab_L434

lab_L434:                                         ; preds = %lab_L434.backedge, %lab_L434.preheader
  %lg.value45 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn48 = inttoptr i64 %lg.value45 to ptr
  %fnap49 = tail call i64 %rtap_ep_p_fn48()
  switch i64 %fnap49, label %jf.then_L436 [
    i64 32, label %lab_L434.backedge
    i64 9, label %lab_L434.backedge
    i64 10, label %lab_L434.backedge
    i64 12, label %lab_L434.backedge
  ]

lab_L434.backedge:                                ; preds = %lab_L434, %lab_L434, %lab_L434, %lab_L434
  br label %lab_L434

jf.then_L436:                                     ; preds = %lab_L434, %entry
  %STK1.0 = phi i64 [ %fnap, %entry ], [ %fnap49, %lab_L434 ]
  switch i64 %STK1.0, label %jf.then_L438 [
    i64 45, label %jt.then_L439
    i64 43, label %jt.then_L439
  ]

jt.then_L439:                                     ; preds = %jf.then_L436, %jf.then_L436
  %eq100.not = icmp ne i64 %STK1.0, 45
  %lg.value130 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn133 = inttoptr i64 %lg.value130 to ptr
  %fnap134 = tail call i64 %rtap_ep_p_fn133()
  %0 = freeze i64 %fnap134
  br label %jf.then_L438

jf.then_L438:                                     ; preds = %jf.then_L436, %jt.then_L439
  %STK3.1 = phi i1 [ %eq100.not, %jt.then_L439 ], [ true, %jf.then_L436 ]
  %STK1.1 = phi i64 [ %0, %jt.then_L439 ], [ %STK1.0, %jf.then_L436 ]
  %1 = add i64 %STK1.1, -48
  %or.cond731 = icmp ult i64 %1, 10
  br i1 %or.cond731, label %lab_L441.preheader, label %switch.early.test

switch.early.test:                                ; preds = %jf.then_L438
  switch i64 %STK1.1, label %jf.then_L443 [
    i64 95, label %lab_L441.preheader
    i64 46, label %lab_L441.preheader
  ]

lab_L441.preheader:                               ; preds = %jf.then_L438, %switch.early.test, %switch.early.test
  br label %lab_L441

lab_L441:                                         ; preds = %lab_L441.backedge, %lab_L441.preheader
  %STK8.0 = phi i64 [ 0, %lab_L441.preheader ], [ %STK8.2, %lab_L441.backedge ]
  %STK7.0 = phi i64 [ -1, %lab_L441.preheader ], [ %STK7.1, %lab_L441.backedge ]
  %STK6.0 = phi i64 [ -1, %lab_L441.preheader ], [ %STK6.3, %lab_L441.backedge ]
  %STK2.0 = phi i64 [ 0, %lab_L441.preheader ], [ %STK2.2, %lab_L441.backedge ]
  %STK1.2 = phi i64 [ %STK1.1, %lab_L441.preheader ], [ %STK1.3, %lab_L441.backedge ]
  switch i64 %STK1.2, label %jf.then_L447 [
    i64 95, label %jf.else190
    i64 46, label %jf.else208
  ]

jf.else190:                                       ; preds = %lab_L441
  %lg.value191 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn194 = inttoptr i64 %lg.value191 to ptr
  %fnap195 = tail call i64 %rtap_ep_p_fn194()
  br label %jump.target_L442

jf.else208:                                       ; preds = %lab_L441
  %ge.inv = icmp sgt i64 %STK7.0, -1
  %spec.select = select i1 %ge.inv, i64 -1, i64 %STK2.0
  %lg.value223 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn226 = inttoptr i64 %lg.value223 to ptr
  %fnap227 = tail call i64 %rtap_ep_p_fn226()
  br label %jump.target_L442

jf.then_L447:                                     ; preds = %lab_L441
  %gr = icmp samesign ult i64 %STK1.2, 49
  %if_cond250 = icmp sgt i64 %STK6.0, -1
  %or.cond734 = select i1 %gr, i1 true, i1 %if_cond250
  %STK6.1 = select i1 %or.cond734, i64 %STK6.0, i64 0
  %ge259 = icmp sgt i64 %STK6.1, -1
  %add = zext i1 %ge259 to i64
  %STK6.2 = add nuw i64 %STK6.1, %add
  %le278 = icmp sgt i64 %STK6.2, 17
  %mul = mul i64 %STK8.0, 10
  %add294 = add i64 %mul, -48
  %sub = add i64 %add294, %STK1.2
  %STK8.1 = select i1 %le278, i64 %STK8.0, i64 %sub
  %lg.value301 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn304 = inttoptr i64 %lg.value301 to ptr
  %fnap305 = tail call i64 %rtap_ep_p_fn304()
  %ge313 = icmp sgt i64 %STK7.0, -1
  %add324 = zext i1 %ge313 to i64
  %spec.select743 = add nuw i64 %STK7.0, %add324
  br label %jump.target_L442

jump.target_L442:                                 ; preds = %jf.then_L447, %jf.else208, %jf.else190
  %STK8.2 = phi i64 [ %STK8.0, %jf.else208 ], [ %STK8.0, %jf.else190 ], [ %STK8.1, %jf.then_L447 ]
  %STK7.1 = phi i64 [ 0, %jf.else208 ], [ %STK7.0, %jf.else190 ], [ %spec.select743, %jf.then_L447 ]
  %STK6.3 = phi i64 [ %STK6.0, %jf.else208 ], [ %STK6.0, %jf.else190 ], [ %STK6.2, %jf.then_L447 ]
  %STK2.2 = phi i64 [ %spec.select, %jf.else208 ], [ %STK2.0, %jf.else190 ], [ %STK2.0, %jf.then_L447 ]
  %STK1.3 = phi i64 [ %fnap227, %jf.else208 ], [ %fnap195, %jf.else190 ], [ %fnap305, %jf.then_L447 ]
  %2 = add i64 %STK1.3, -48
  %or.cond735 = icmp ult i64 %2, 10
  br i1 %or.cond735, label %lab_L441.backedge, label %jf.then_L453

jf.then_L453:                                     ; preds = %jump.target_L442
  switch i64 %STK1.3, label %jf.then_L443.loopexit [
    i64 95, label %lab_L441.backedge
    i64 46, label %lab_L441.backedge
  ]

lab_L441.backedge:                                ; preds = %jump.target_L442, %jf.then_L453, %jf.then_L453
  br label %lab_L441

jf.then_L443.loopexit:                            ; preds = %jf.then_L453
  %3 = icmp eq i64 %STK2.2, 0
  br label %jf.then_L443

jf.then_L443:                                     ; preds = %jf.then_L443.loopexit, %switch.early.test
  %STK8.3 = phi i64 [ 0, %switch.early.test ], [ %STK8.2, %jf.then_L443.loopexit ]
  %STK7.2 = phi i64 [ -1, %switch.early.test ], [ %STK7.1, %jf.then_L443.loopexit ]
  %STK6.4 = phi i64 [ -1, %switch.early.test ], [ %STK6.3, %jf.then_L443.loopexit ]
  %STK2.3 = phi i1 [ true, %switch.early.test ], [ %3, %jf.then_L443.loopexit ]
  %STK1.4 = phi i64 [ %STK1.1, %switch.early.test ], [ %STK1.3, %jf.then_L443.loopexit ]
  %neg = sub i64 0, %STK8.3
  %spec.select736 = select i1 %STK3.1, i64 %STK8.3, i64 %neg
  switch i64 %STK1.4, label %jf.then_L455 [
    i64 101, label %jt.then_L456
    i64 69, label %jt.then_L456
  ]

jt.then_L456:                                     ; preds = %jf.then_L443, %jf.then_L443
  %lg.value404 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn407 = inttoptr i64 %lg.value404 to ptr
  %fnap408 = tail call i64 %rtap_ep_p_fn407()
  switch i64 %fnap408, label %jf.then_L457 [
    i64 45, label %jt.then_L458
    i64 43, label %jt.then_L458
  ]

jt.then_L458:                                     ; preds = %jt.then_L456, %jt.then_L456
  %eq416.not = icmp ne i64 %fnap408, 45
  %lg.value446 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn449 = inttoptr i64 %lg.value446 to ptr
  %fnap450 = tail call i64 %rtap_ep_p_fn449()
  br label %jf.then_L457

jf.then_L457:                                     ; preds = %jt.then_L456, %jt.then_L458
  %STK3.3 = phi i1 [ %eq416.not, %jt.then_L458 ], [ true, %jt.then_L456 ]
  %STK1.5 = phi i64 [ %fnap450, %jt.then_L458 ], [ %fnap408, %jt.then_L456 ]
  %4 = add i64 %STK1.5, -48
  %or.cond738 = icmp ult i64 %4, 10
  %eq480.not = icmp eq i64 %STK1.5, 95
  %or.cond739 = or i1 %eq480.not, %or.cond738
  br i1 %or.cond739, label %lab_L460.preheader, label %jf.then_L462

lab_L460.preheader:                               ; preds = %jf.then_L457
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.59 to i64), 3
  br label %lab_L460

lab_L460:                                         ; preds = %lab_L460, %lab_L460.preheader
  %STK9.0 = phi i64 [ 0, %lab_L460.preheader ], [ %STK9.1, %lab_L460 ]
  %STK1.6 = phi i64 [ %STK1.5, %lab_L460.preheader ], [ %fnap529, %lab_L460 ]
  %lg.value489 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 760), align 4
  %rtap_ep_p_fn492 = inttoptr i64 %lg.value489 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn492(i64 %lstr.bcpladdr, i64 %STK1.6)
  %eq500 = icmp eq i64 %STK1.6, 95
  %mul511 = mul i64 %STK9.0, 10
  %add517 = add nsw i64 %STK1.6, -48
  %sub522 = add i64 %add517, %mul511
  %STK9.1 = select i1 %eq500, i64 %STK9.0, i64 %sub522
  %lg.value525 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn528 = inttoptr i64 %lg.value525 to ptr
  %fnap529 = tail call i64 %rtap_ep_p_fn528()
  %5 = add i64 %fnap529, -48
  %or.cond740 = icmp ult i64 %5, 10
  %eq559 = icmp eq i64 %fnap529, 95
  %or.cond = or i1 %or.cond740, %eq559
  br i1 %or.cond, label %lab_L460, label %jf.then_L462

jf.then_L462:                                     ; preds = %lab_L460, %jf.then_L457
  %STK9.2 = phi i64 [ 0, %jf.then_L457 ], [ %STK9.1, %lab_L460 ]
  %neg573 = sub i64 0, %STK9.2
  %spec.select741 = select i1 %STK3.3, i64 %STK9.2, i64 %neg573
  br label %jf.then_L455

jf.then_L455:                                     ; preds = %jf.then_L462, %jf.then_L443
  %STK9.3 = phi i64 [ 0, %jf.then_L443 ], [ %spec.select741, %jf.then_L462 ]
  %lg.value576 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn579 = inttoptr i64 %lg.value576 to ptr
  %rtap580 = tail call i64 %rtap_ep_p_fn579()
  br i1 %STK2.3, label %jf.then_L471, label %common.ret

common.ret:                                       ; preds = %jf.then_L455, %jf.then_L471
  %storemerge = phi i64 [ 0, %jf.then_L471 ], [ -1, %jf.then_L455 ]
  %common.ret.op = phi i64 [ %fnap664, %jf.then_L471 ], [ 0, %jf.then_L455 ]
  store i64 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  ret i64 %common.ret.op

jf.then_L471:                                     ; preds = %jf.then_L455
  %if_cond590 = icmp sgt i64 %STK6.4, -1
  %spec.select742 = select i1 %if_cond590, i64 %STK6.4, i64 1
  %STK4.0 = tail call i64 @llvm.umin.i64(i64 %spec.select742, i64 17)
  %STK7.3 = tail call i64 @llvm.smax.i64(i64 %STK7.2, i64 0)
  %6 = add nuw i64 %STK7.3, %STK4.0
  %add628 = sub i64 %spec.select742, %6
  %sub640 = add i64 %add628, %STK9.3
  %lg.value656 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 24), align 4
  %rtap_ep_p_fn659 = inttoptr i64 %lg.value656 to ptr
  %fnap664 = tail call i64 %rtap_ep_p_fn659(i64 63, i64 1, i64 %spec.select736, i64 %sub640)
  br label %common.ret
}

define noundef i64 @writef(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10) section ".text.BLIB" {
entry:
  %stack.vec = alloca [10 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %STK11 = alloca i64, align 8
  store i64 %stack.bcpladdr, ptr %STK11, align 8
  store i64 %1, ptr %stack.vec, align 8
  %stind.llvmaddr28 = add i64 %stack.vecaddr, 8
  %stind.lv29 = inttoptr i64 %stind.llvmaddr28 to ptr
  store i64 %2, ptr %stind.lv29, align 8
  %stind.llvmaddr41 = add i64 %stack.vecaddr, 16
  %stind.lv42 = inttoptr i64 %stind.llvmaddr41 to ptr
  store i64 %3, ptr %stind.lv42, align 8
  %stind.llvmaddr54 = add i64 %stack.vecaddr, 24
  %stind.lv55 = inttoptr i64 %stind.llvmaddr54 to ptr
  store i64 %4, ptr %stind.lv55, align 8
  %stind.llvmaddr67 = add i64 %stack.vecaddr, 32
  %stind.lv68 = inttoptr i64 %stind.llvmaddr67 to ptr
  store i64 %5, ptr %stind.lv68, align 8
  %stind.llvmaddr80 = add i64 %stack.vecaddr, 40
  %stind.lv81 = inttoptr i64 %stind.llvmaddr80 to ptr
  store i64 %6, ptr %stind.lv81, align 8
  %stind.llvmaddr93 = add i64 %stack.vecaddr, 48
  %stind.lv94 = inttoptr i64 %stind.llvmaddr93 to ptr
  store i64 %7, ptr %stind.lv94, align 8
  %stind.llvmaddr106 = add i64 %stack.vecaddr, 56
  %stind.lv107 = inttoptr i64 %stind.llvmaddr106 to ptr
  store i64 %8, ptr %stind.lv107, align 8
  %stind.llvmaddr119 = add i64 %stack.vecaddr, 64
  %stind.lv120 = inttoptr i64 %stind.llvmaddr119 to ptr
  store i64 %9, ptr %stind.lv120, align 8
  %stind.llvmaddr132 = add i64 %stack.vecaddr, 72
  %stind.lv133 = inttoptr i64 %stind.llvmaddr132 to ptr
  store i64 %10, ptr %stind.lv133, align 8
  %llp.address = ptrtoint ptr %STK11 to i64
  %llp.bcpladdr = ashr exact i64 %llp.address, 3
  %rtap = call i64 @write_format(i64 %0, i64 %llp.bcpladdr)
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none)
define range(i64 -922337203685477580, 922337203685477581) i64 @fl_unmk64(i64 %0) local_unnamed_addr #5 section ".text.BLIB" {
entry:
  %frhs = bitcast i64 %0 to double
  %comparison = fcmp une double %frhs, 0.000000e+00
  br i1 %comparison, label %jf.then_L474, label %jf.else

common.ret:                                       ; preds = %jf.then_L501.thread, %jf.else525, %jf.else312, %jf.else168, %jf.else
  %common.ret.op = phi i64 [ 0, %jf.else ], [ 1, %jf.else168 ], [ 0, %jf.else312 ], [ %neg, %jf.else525 ], [ %STK1.4595, %jf.then_L501.thread ]
  ret i64 %common.ret.op

jf.else:                                          ; preds = %entry
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

jf.then_L474:                                     ; preds = %entry
  %comparison18 = fcmp uge double %frhs, 0.000000e+00
  %fresult = fneg double %frhs
  %fneg = bitcast double %fresult to i64
  %STK3.0 = select i1 %comparison18, i64 %0, i64 %fneg
  %flhs37 = bitcast i64 %STK3.0 to double
  %comparison38 = fcmp ult double %flhs37, 1.000000e+05
  br i1 %comparison38, label %jf.then_L478, label %lab_L476

lab_L476:                                         ; preds = %jf.then_L474, %lab_L476
  %STK3.1 = phi double [ %fresult59, %lab_L476 ], [ %flhs37, %jf.then_L474 ]
  %STK2.0 = phi i64 [ %add, %lab_L476 ], [ 0, %jf.then_L474 ]
  %fresult59 = fdiv double %STK3.1, 1.000000e+05
  %add = add nuw nsw i64 %STK2.0, 5
  %comparison76 = fcmp oge double %fresult59, 1.000000e+05
  %ls87 = icmp samesign ult i64 %STK2.0, 95
  %or.cond = select i1 %comparison76, i1 %ls87, i1 false
  br i1 %or.cond, label %lab_L476, label %jf.then_L478.loopexit

jf.then_L478.loopexit:                            ; preds = %lab_L476
  %fdiv.le = bitcast double %fresult59 to i64
  br label %jf.then_L478

jf.then_L478:                                     ; preds = %jf.then_L478.loopexit, %jf.then_L474
  %flhs98.pre-phi = phi double [ %fresult59, %jf.then_L478.loopexit ], [ %flhs37, %jf.then_L474 ]
  %STK3.2 = phi i64 [ %fdiv.le, %jf.then_L478.loopexit ], [ %STK3.0, %jf.then_L474 ]
  %STK2.1 = phi i64 [ %add, %jf.then_L478.loopexit ], [ 0, %jf.then_L474 ]
  %comparison99 = fcmp ult double %flhs98.pre-phi, 1.000000e+01
  %ls110 = icmp samesign ugt i64 %STK2.1, 99
  %or.cond584 = select i1 %comparison99, i1 true, i1 %ls110
  br i1 %or.cond584, label %jf.then_L482, label %lab_L480.preheader

lab_L480.preheader:                               ; preds = %jf.then_L478
  %1 = bitcast i64 %STK3.2 to double
  br label %lab_L480

lab_L480:                                         ; preds = %lab_L480.preheader, %lab_L480
  %STK3.3 = phi double [ %fresult123, %lab_L480 ], [ %1, %lab_L480.preheader ]
  %STK2.2 = phi i64 [ %add132, %lab_L480 ], [ %STK2.1, %lab_L480.preheader ]
  %fresult123 = fdiv double %STK3.3, 1.000000e+01
  %add132 = add nuw nsw i64 %STK2.2, 1
  %comparison142 = fcmp oge double %fresult123, 1.000000e+01
  %ls153 = icmp samesign ult i64 %STK2.2, 99
  %or.cond585 = select i1 %comparison142, i1 %ls153, i1 false
  br i1 %or.cond585, label %lab_L480, label %jf.then_L482.loopexit

jf.then_L482.loopexit:                            ; preds = %lab_L480
  %fdiv124 = bitcast double %fresult123 to i64
  br label %jf.then_L482

jf.then_L482:                                     ; preds = %jf.then_L482.loopexit, %jf.then_L478
  %STK3.4 = phi i64 [ %STK3.2, %jf.then_L478 ], [ %fdiv124, %jf.then_L482.loopexit ]
  %STK2.3 = phi i64 [ %STK2.1, %jf.then_L478 ], [ %add132, %jf.then_L482.loopexit ]
  %ge = icmp samesign ult i64 %STK2.3, 100
  br i1 %ge, label %jf.then_L484, label %jf.else168

jf.else168:                                       ; preds = %jf.then_L482
  store i64 100, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

jf.then_L484:                                     ; preds = %jf.then_L482
  %flhs179 = bitcast i64 %STK3.4 to double
  %comparison180 = fcmp ugt double %flhs179, 1.000000e-05
  br i1 %comparison180, label %jf.then_L487, label %lab_L485.preheader

lab_L485.preheader:                               ; preds = %jf.then_L484
  %2 = bitcast i64 %STK3.4 to double
  br label %lab_L485

lab_L485:                                         ; preds = %lab_L485.preheader, %lab_L485
  %STK3.5 = phi double [ %fresult202, %lab_L485 ], [ %2, %lab_L485.preheader ]
  %STK2.4 = phi i64 [ %sub, %lab_L485 ], [ %STK2.3, %lab_L485.preheader ]
  %fresult202 = fmul double %STK3.5, 1.000000e+05
  %sub = add nsw i64 %STK2.4, -5
  %comparison219 = fcmp ole double %fresult202, 1.000000e-05
  %gr230 = icmp sgt i64 %STK2.4, -95
  %or.cond587 = select i1 %comparison219, i1 %gr230, i1 false
  br i1 %or.cond587, label %lab_L485, label %jf.then_L487.loopexit

jf.then_L487.loopexit:                            ; preds = %lab_L485
  %fmul = bitcast double %fresult202 to i64
  br label %jf.then_L487

jf.then_L487:                                     ; preds = %jf.then_L487.loopexit, %jf.then_L484
  %flhs242.pre-phi = phi double [ %fresult202, %jf.then_L487.loopexit ], [ %flhs179, %jf.then_L484 ]
  %STK3.6 = phi i64 [ %fmul, %jf.then_L487.loopexit ], [ %STK3.4, %jf.then_L484 ]
  %STK2.5 = phi i64 [ %sub, %jf.then_L487.loopexit ], [ %STK2.3, %jf.then_L484 ]
  %comparison243 = fcmp uge double %flhs242.pre-phi, 1.000000e+00
  %gr254 = icmp slt i64 %STK2.5, -99
  %or.cond588 = select i1 %comparison243, i1 true, i1 %gr254
  br i1 %or.cond588, label %jf.then_L491, label %lab_L489.preheader

lab_L489.preheader:                               ; preds = %jf.then_L487
  %3 = bitcast i64 %STK3.6 to double
  br label %lab_L489

lab_L489:                                         ; preds = %lab_L489.preheader, %lab_L489
  %STK3.7 = phi double [ %fresult267, %lab_L489 ], [ %3, %lab_L489.preheader ]
  %STK2.6 = phi i64 [ %sub276, %lab_L489 ], [ %STK2.5, %lab_L489.preheader ]
  %fresult267 = fmul double %STK3.7, 1.000000e+01
  %sub276 = add nsw i64 %STK2.6, -1
  %comparison286 = fcmp olt double %fresult267, 1.000000e+00
  %gr297 = icmp sgt i64 %STK2.6, -99
  %or.cond589 = select i1 %comparison286, i1 %gr297, i1 false
  br i1 %or.cond589, label %lab_L489, label %jf.then_L491.loopexit

jf.then_L491.loopexit:                            ; preds = %lab_L489
  %fmul268 = bitcast double %fresult267 to i64
  br label %jf.then_L491

jf.then_L491:                                     ; preds = %jf.then_L491.loopexit, %jf.then_L487
  %STK3.8 = phi i64 [ %STK3.6, %jf.then_L487 ], [ %fmul268, %jf.then_L491.loopexit ]
  %STK2.7 = phi i64 [ %STK2.5, %jf.then_L487 ], [ %sub276, %jf.then_L491.loopexit ]
  %le = icmp sgt i64 %STK2.7, -100
  br i1 %le, label %jf.then_L494, label %jf.else312

jf.else312:                                       ; preds = %jf.then_L491
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

jf.then_L494:                                     ; preds = %jf.then_L491
  %frhs322 = bitcast i64 %STK3.8 to double
  %fresult324 = fmul double %frhs322, 1.000000e+16
  %fix327 = fptosi double %fresult324 to i64
  %add422 = add i64 %fix327, 5
  %div427 = sdiv i64 %add422, 10
  %add435 = add nsw i64 %STK2.7, -15
  %mod = srem i64 %div427, 10
  %eq.not = icmp ne i64 %mod, 0
  %4 = add i64 %fix327, 14
  %ne = icmp ult i64 %4, 19
  %or.cond590 = or i1 %ne, %eq.not
  br i1 %or.cond590, label %jf.then_L501, label %lab_L499

lab_L499:                                         ; preds = %jf.then_L494, %jf.else493
  %STK2.11 = phi i64 [ %add475, %jf.else493 ], [ %add435, %jf.then_L494 ]
  %STK1.3 = phi i64 [ %div467, %jf.else493 ], [ %div427, %jf.then_L494 ]
  %div467 = sdiv i64 %STK1.3, 10
  %add475 = add i64 %STK2.11, 1
  %mod483 = srem i64 %div467, 10
  %eq488.not = icmp eq i64 %mod483, 0
  br i1 %eq488.not, label %jf.else493, label %jf.then_L501

jf.else493:                                       ; preds = %lab_L499
  %STK1.3.off = add nsw i64 %STK1.3, 9
  %ne499.not = icmp ult i64 %STK1.3.off, 19
  br i1 %ne499.not, label %jf.then_L501.thread, label %lab_L499

jf.then_L501:                                     ; preds = %lab_L499, %jf.then_L494
  %STK2.12 = phi i64 [ %add435, %jf.then_L494 ], [ %add475, %lab_L499 ]
  %STK1.4 = phi i64 [ %div427, %jf.then_L494 ], [ %div467, %lab_L499 ]
  %STK1.4.fr = freeze i64 %STK1.4
  %eq510.not = icmp eq i64 %STK1.4.fr, 0
  %spec.select = select i1 %eq510.not, i64 0, i64 %STK2.12
  br label %jf.then_L501.thread

jf.then_L501.thread:                              ; preds = %jf.else493, %jf.then_L501
  %STK1.4595 = phi i64 [ %STK1.4.fr, %jf.then_L501 ], [ 0, %jf.else493 ]
  %5 = phi i64 [ %spec.select, %jf.then_L501 ], [ 0, %jf.else493 ]
  store i64 %5, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br i1 %comparison18, label %common.ret, label %jf.else525

jf.else525:                                       ; preds = %jf.then_L501.thread
  %neg = sub nsw i64 0, %STK1.4595
  br label %common.ret
}

define i64 @sys_flt(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr section ".text.BLIB" {
entry:
  switch i64 %0, label %lab_L534 [
    i64 17, label %lab_L533
    i64 15, label %lab_L532
    i64 18, label %lab_L531
    i64 16, label %lab_L530
    i64 14, label %lab_L529
    i64 13, label %lab_L528
    i64 12, label %lab_L527
    i64 11, label %lab_L526
    i64 10, label %lab_L525
    i64 9, label %lab_L524
    i64 7, label %lab_L523
    i64 6, label %lab_L522
    i64 5, label %lab_L519
    i64 4, label %lab_L518
    i64 3, label %lab_L517
    i64 2, label %lab_L516
    i64 1, label %lab_L509
    i64 0, label %jump.target_L507
  ]

lab_L509:                                         ; preds = %entry
  %float.itof = sitofp i64 %1 to double
  %gr = icmp slt i64 %2, 1
  br i1 %gr, label %jf.then_L512, label %lab_L510

lab_L510:                                         ; preds = %lab_L509, %lab_L510
  %frhs = phi double [ %fresult, %lab_L510 ], [ %float.itof, %lab_L509 ]
  %STK2.0 = phi i64 [ %sub, %lab_L510 ], [ %2, %lab_L509 ]
  %fresult = fmul double %frhs, 1.000000e+01
  %sub = add nsw i64 %STK2.0, -1
  %gr36 = icmp samesign ugt i64 %STK2.0, 1
  br i1 %gr36, label %lab_L510, label %jf.then_L512.thread

jf.then_L512.thread:                              ; preds = %lab_L510
  %STK5.1318 = bitcast double %fresult to i64
  br label %jump.target_L507

jf.then_L512:                                     ; preds = %lab_L509
  %STK5.1 = bitcast double %float.itof to i64
  %if_cond49 = icmp sgt i64 %2, -1
  br i1 %if_cond49, label %jump.target_L507, label %lab_L513

lab_L513:                                         ; preds = %jf.then_L512, %lab_L513
  %flhs57 = phi double [ %fresult58, %lab_L513 ], [ %float.itof, %jf.then_L512 ]
  %STK2.2 = phi i64 [ %add, %lab_L513 ], [ %2, %jf.then_L512 ]
  %fresult58 = fdiv double %flhs57, 1.000000e+01
  %add = add nuw nsw i64 %STK2.2, 1
  %ls73.not = icmp eq i64 %STK2.2, -1
  br i1 %ls73.not, label %jump.target_L507.loopexit, label %lab_L513

lab_L516:                                         ; preds = %entry
  %fnap = tail call i64 @fl_unmk64(i64 %1)
  br label %jump.target_L507

lab_L517:                                         ; preds = %entry
  %float.itof87 = sitofp i64 %1 to double
  %float88 = bitcast double %float.itof87 to i64
  br label %jump.target_L507

lab_L518:                                         ; preds = %entry
  %fix.ftoi = bitcast i64 %1 to double
  %fix93 = fptosi double %fix.ftoi to i64
  br label %jump.target_L507

lab_L519:                                         ; preds = %entry
  %flhs102 = bitcast i64 %1 to double
  %comparison = fcmp ult double %flhs102, 0.000000e+00
  %fresult114 = fneg double %flhs102
  %fneg = bitcast double %fresult114 to i64
  %__res_a.0 = select i1 %comparison, i64 %fneg, i64 %1
  br label %jump.target_L507

lab_L522:                                         ; preds = %entry
  %frhs125 = bitcast i64 %1 to double
  %flhs126 = bitcast i64 %2 to double
  %fresult127 = fmul double %frhs125, %flhs126
  %fmul128 = bitcast double %fresult127 to i64
  br label %jump.target_L507

lab_L523:                                         ; preds = %entry
  %frhs137 = bitcast i64 %2 to double
  %flhs138 = bitcast i64 %1 to double
  %fresult139 = fdiv double %flhs138, %frhs137
  %fdiv140 = bitcast double %fresult139 to i64
  br label %jump.target_L507

lab_L524:                                         ; preds = %entry
  %frhs149 = bitcast i64 %1 to double
  %flhs150 = bitcast i64 %2 to double
  %fresult151 = fadd double %frhs149, %flhs150
  %fadd = bitcast double %fresult151 to i64
  br label %jump.target_L507

lab_L525:                                         ; preds = %entry
  %frhs160 = bitcast i64 %2 to double
  %flhs161 = bitcast i64 %1 to double
  %fresult162 = fsub double %flhs161, %frhs160
  %fsub = bitcast double %fresult162 to i64
  br label %jump.target_L507

lab_L526:                                         ; preds = %entry
  br label %jump.target_L507

lab_L527:                                         ; preds = %entry
  %flhs171 = bitcast i64 %1 to double
  %fresult172 = fneg double %flhs171
  %fneg173 = bitcast double %fresult172 to i64
  br label %jump.target_L507

lab_L528:                                         ; preds = %entry
  %frhs182 = bitcast i64 %1 to double
  %flhs183 = bitcast i64 %2 to double
  %comparison184 = fcmp oeq double %flhs183, %frhs182
  %feq = sext i1 %comparison184 to i64
  br label %jump.target_L507

lab_L529:                                         ; preds = %entry
  %frhs193 = bitcast i64 %1 to double
  %flhs194 = bitcast i64 %2 to double
  %comparison195 = fcmp one double %flhs194, %frhs193
  %fne = sext i1 %comparison195 to i64
  br label %jump.target_L507

lab_L530:                                         ; preds = %entry
  %frhs204 = bitcast i64 %2 to double
  %flhs205 = bitcast i64 %1 to double
  %comparison206 = fcmp ogt double %flhs205, %frhs204
  %fgr = sext i1 %comparison206 to i64
  br label %jump.target_L507

lab_L531:                                         ; preds = %entry
  %frhs215 = bitcast i64 %2 to double
  %flhs216 = bitcast i64 %1 to double
  %comparison217 = fcmp oge double %flhs216, %frhs215
  %fge218 = sext i1 %comparison217 to i64
  br label %jump.target_L507

lab_L532:                                         ; preds = %entry
  %frhs227 = bitcast i64 %2 to double
  %flhs228 = bitcast i64 %1 to double
  %comparison229 = fcmp olt double %flhs228, %frhs227
  %fls = sext i1 %comparison229 to i64
  br label %jump.target_L507

lab_L533:                                         ; preds = %entry
  %frhs238 = bitcast i64 %2 to double
  %flhs239 = bitcast i64 %1 to double
  %comparison240 = fcmp ole double %flhs239, %frhs238
  %fle = sext i1 %comparison240 to i64
  br label %jump.target_L507

lab_L534:                                         ; preds = %entry
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.63 to i64), 3
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn256 = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn256(i64 %lstr.bcpladdr, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  %lg.value264 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn267 = inttoptr i64 %lg.value264 to ptr
  %rtap269 = tail call i64 %rtap_ep_p_fn267(i64 1)
  br label %jump.target_L507

jump.target_L507.loopexit:                        ; preds = %lab_L513
  %fdiv.le = bitcast double %fresult58 to i64
  br label %jump.target_L507

jump.target_L507:                                 ; preds = %jump.target_L507.loopexit, %jf.then_L512.thread, %entry, %jf.then_L512, %lab_L534, %lab_L533, %lab_L532, %lab_L531, %lab_L530, %lab_L529, %lab_L528, %lab_L527, %lab_L526, %lab_L525, %lab_L524, %lab_L523, %lab_L522, %lab_L519, %lab_L518, %lab_L517, %lab_L516
  %STK5.3 = phi i64 [ -4985279381848933680, %lab_L534 ], [ %STK5.1, %jf.then_L512 ], [ %fnap, %lab_L516 ], [ %float88, %lab_L517 ], [ %fix93, %lab_L518 ], [ %__res_a.0, %lab_L519 ], [ %fmul128, %lab_L522 ], [ %fdiv140, %lab_L523 ], [ %fadd, %lab_L524 ], [ %fsub, %lab_L525 ], [ %1, %lab_L526 ], [ %fneg173, %lab_L527 ], [ %feq, %lab_L528 ], [ %fne, %lab_L529 ], [ %fgr, %lab_L530 ], [ %fge218, %lab_L531 ], [ %fls, %lab_L532 ], [ %fle, %lab_L533 ], [ -1, %entry ], [ %STK5.1318, %jf.then_L512.thread ], [ %fdiv.le, %jump.target_L507.loopexit ]
  ret i64 %STK5.3
}

define i64 @sys(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) section ".text.BLIB" {
entry:
  switch i64 %0, label %lab_L542 [
    i64 63, label %lab_L541
    i64 11, label %lab_L540
    i64 10, label %lab_L539
  ]

lab_L539:                                         ; preds = %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  br label %jump.target_L538

lab_L540:                                         ; preds = %entry
  %lg.value12 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn15 = inttoptr i64 %lg.value12 to ptr
  %fnap16 = tail call i64 %rtap_ep_p_fn15(i64 %1)
  br label %jump.target_L538

lab_L541:                                         ; preds = %entry
  %fnap37 = tail call i64 @sys_flt(i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  br label %jump.target_L538

lab_L542:                                         ; preds = %entry
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.65 to i64), 3
  %lg.value53 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn56 = inttoptr i64 %lg.value53 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn56(i64 %lstr.bcpladdr, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  %lg.value65 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn68 = inttoptr i64 %lg.value65 to ptr
  %rtap70 = tail call i64 %rtap_ep_p_fn68(i64 1)
  br label %jump.target_L538

jump.target_L538:                                 ; preds = %lab_L542, %lab_L541, %lab_L540, %lab_L539
  %STK6.0 = phi i64 [ -4985279381848933680, %lab_L542 ], [ %fnap, %lab_L539 ], [ %fnap16, %lab_L540 ], [ %fnap37, %lab_L541 ]
  ret i64 %STK6.0
}

define noundef i64 @writes(i64 %0) section ".text.BLIB" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr = icmp eq i8 %getbyte.char, 0
  br i1 %gr, label %jt.then_L544, label %lab_L543

lab_L543:                                         ; preds = %entry, %lab_L543
  %STK1.0 = phi i64 [ %add, %lab_L543 ], [ 1, %entry ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK1.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  %add = add nuw nsw i64 %STK1.0, 1
  %le.not.not = icmp samesign ult i64 %STK1.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L543, label %jt.then_L544

jt.then_L544:                                     ; preds = %lab_L543, %entry
  ret i64 -4985279381848933680
}

define noundef i64 @writefp(i64 %0, i64 %1, i64 %2) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 584), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %0, i64 %1, i64 %2)
  ret i64 -4985279381848933680
}

define i64 @readfp(i64 %0) section ".text.BLIB" {
entry:
  %fnap = tail call i64 @readflt()
  ret i64 %fnap
}

define noundef i64 @deplete(i64 %0) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 1)
  ret i64 -4985279381848933680
}

define noundef i64 @abort(i64 %0) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 1, i64 2, i64 add (i64 ptrtoint (ptr @lstr.global.71 to i64), i64 1), i64 13)
  %lg.value18 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn21 = inttoptr i64 %lg.value18 to ptr
  %rtap24 = tail call i64 %rtap_ep_p_fn21(i64 60, i64 %0)
  ret i64 -4985279381848933680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @fplus(i64 %0, i64 %1, i64 returned %2) #6 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv21 = load double, ptr %rv.lv, align 8
  %rv.llvmaddr8 = shl i64 %1, 3
  %rv.lv9 = inttoptr i64 %rv.llvmaddr8 to ptr
  %rv.rv1022 = load double, ptr %rv.lv9, align 8
  %fresult = fadd double %rv.rv21, %rv.rv1022
  %stind.llvmaddr = shl i64 %2, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store double %fresult, ptr %stind.lv, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @fminus(i64 %0, i64 %1, i64 returned %2) #6 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv21 = load double, ptr %rv.lv, align 8
  %rv.llvmaddr8 = shl i64 %1, 3
  %rv.lv9 = inttoptr i64 %rv.llvmaddr8 to ptr
  %rv.rv1022 = load double, ptr %rv.lv9, align 8
  %fresult = fsub double %rv.rv21, %rv.rv1022
  %stind.llvmaddr = shl i64 %2, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store double %fresult, ptr %stind.lv, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @fmult(i64 %0, i64 %1, i64 returned %2) #6 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv21 = load double, ptr %rv.lv, align 8
  %rv.llvmaddr8 = shl i64 %1, 3
  %rv.lv9 = inttoptr i64 %rv.llvmaddr8 to ptr
  %rv.rv1022 = load double, ptr %rv.lv9, align 8
  %fresult = fmul double %rv.rv21, %rv.rv1022
  %stind.llvmaddr = shl i64 %2, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store double %fresult, ptr %stind.lv, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @fdiv(i64 %0, i64 %1, i64 returned %2) #6 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv21 = load double, ptr %rv.lv, align 8
  %rv.llvmaddr8 = shl i64 %1, 3
  %rv.lv9 = inttoptr i64 %rv.llvmaddr8 to ptr
  %rv.rv1022 = load double, ptr %rv.lv9, align 8
  %fresult = fdiv double %rv.rv21, %rv.rv1022
  %stind.llvmaddr = shl i64 %2, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store double %fresult, ptr %stind.lv, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @fneg(i64 %0, i64 returned %1) #6 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv13 = load double, ptr %rv.lv, align 8
  %fresult = fneg double %rv.rv13
  %stind.llvmaddr = shl i64 %1, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store double %fresult, ptr %stind.lv, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define i64 @ffix(i64 %0) #7 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv8 = load double, ptr %rv.lv, align 8
  %fix3 = fptosi double %rv.rv8 to i64
  ret i64 %fix3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @ffloat(i64 %0, i64 returned %1) #6 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %float.itof = sitofp i64 %rv.rv to double
  %stind.llvmaddr = shl i64 %1, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store double %float.itof, ptr %stind.lv, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define range(i64 -1, 2) i64 @fcomp(i64 %0, i64 %1) #7 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.llvmaddr7 = shl i64 %1, 3
  %rv.lv8 = inttoptr i64 %rv.llvmaddr7 to ptr
  %rv.rv9 = load i64, ptr %rv.lv8, align 8
  %common.ret.op = tail call i64 @llvm.scmp.i64.i64(i64 %rv.rv, i64 %rv.rv9)
  ret i64 %common.ret.op
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @fabs(i64 %0, i64 returned %1) #6 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv13 = load double, ptr %rv.lv, align 8
  %fnap = tail call double @llvm.fabs.f64(double %rv.rv13)
  %stind.llvmaddr = shl i64 %1, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store double %fnap, ptr %stind.lv, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

define noundef i64 @blib.dumpheap() local_unnamed_addr section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.84, align 8
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.91 to i64), 3
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lstr.bcpladdr)
  %ll.static.value7 = load i64, ptr @itemn.global.82, align 8
  %eq.not = icmp eq i64 %ll.static.value7, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L572

common.ret:                                       ; preds = %lab_L574, %jf.else
  ret i64 -4985279381848933680

jf.else:                                          ; preds = %entry
  %lstr.bcpladdr10 = ashr exact i64 ptrtoint (ptr @lstr.global.92 to i64), 3
  %lg.value12 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn15 = inttoptr i64 %lg.value12 to ptr
  %rtap17 = tail call i64 %rtap_ep_p_fn15(i64 %lstr.bcpladdr10)
  br label %common.ret

jf.then_L572:                                     ; preds = %entry
  %lstr.bcpladdr18 = ashr exact i64 ptrtoint (ptr @lstr.global.93 to i64), 3
  %ll.static.value23 = load i64, ptr @itemn.global.83, align 8
  %shift.result30 = shl i64 %ll.static.value7, 3
  %shift.result41 = shl i64 %ll.static.value23, 3
  %lg.value45 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn48 = inttoptr i64 %lg.value45 to ptr
  %rtap55 = tail call i64 %rtap_ep_p_fn48(i64 %lstr.bcpladdr18, i64 1048576, i64 %ll.static.value7, i64 %ll.static.value23, i64 %shift.result30, i64 %shift.result41)
  %lstr.bcpladdr56 = ashr exact i64 ptrtoint (ptr @lstr.global.94 to i64), 3
  %lg.value58 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn61 = inttoptr i64 %lg.value58 to ptr
  %rtap63 = tail call i64 %rtap_ep_p_fn61(i64 %lstr.bcpladdr56)
  %lstr.bcpladdr64 = ashr exact i64 ptrtoint (ptr @lstr.global.95 to i64), 3
  %lg.value66 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn69 = inttoptr i64 %lg.value66 to ptr
  %rtap71 = tail call i64 %rtap_ep_p_fn69(i64 %lstr.bcpladdr64)
  %lstr.bcpladdr125 = ashr exact i64 ptrtoint (ptr @lstr.global.96 to i64), 3
  br label %lab_L573

lab_L573:                                         ; preds = %lab_L580.4, %jf.then_L572
  %STK3.0 = phi i64 [ 0, %jf.then_L572 ], [ %add88, %lab_L580.4 ]
  %STK2.0 = phi i64 [ 0, %jf.then_L572 ], [ %add, %lab_L580.4 ]
  %STK1.0 = phi i64 [ 0, %jf.then_L572 ], [ %spec.select, %lab_L580.4 ]
  %STK.0 = phi i64 [ %ll.static.value, %jf.then_L572 ], [ %rv.rv249, %lab_L580.4 ]
  %add = add i64 %STK2.0, 1
  %rv.llvmaddr = shl i64 %STK.0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 9223372036854775807
  %add88 = add i64 %logand, %STK3.0
  %add159 = add i64 %logand, %STK.0
  %lg.value161 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn164 = inttoptr i64 %lg.value161 to ptr
  %rtap170 = tail call i64 %rtap_ep_p_fn164(i64 %lstr.bcpladdr125, i64 %add, i64 %logand, i64 %STK.0, i64 %add159)
  %ll.static.value180 = load i64, ptr @itemn.global.83, align 8
  %ls.not = icmp slt i64 %STK.0, %ll.static.value180
  br i1 %ls.not, label %jf.else188, label %lab_L580

jf.else188:                                       ; preds = %lab_L573
  %rv.rv200 = load i64, ptr %rv.lv, align 8
  %lg.value203 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn206 = inttoptr i64 %lg.value203 to ptr
  %rtap209 = tail call i64 %rtap_ep_p_fn206(i64 %rv.rv200, i64 16)
  %lg.value211 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn214 = inttoptr i64 %lg.value211 to ptr
  %rtap216 = tail call i64 %rtap_ep_p_fn214(i64 32)
  %ll.static.value180.1.pre = load i64, ptr @itemn.global.83, align 8
  br label %lab_L580

lab_L580:                                         ; preds = %lab_L573, %jf.else188
  %ll.static.value180.1 = phi i64 [ %ll.static.value180, %lab_L573 ], [ %ll.static.value180.1.pre, %jf.else188 ]
  %add178.1 = add i64 %STK.0, 1
  %ls.not.1 = icmp slt i64 %add178.1, %ll.static.value180.1
  br i1 %ls.not.1, label %jf.else188.1, label %lab_L580.1

jf.else188.1:                                     ; preds = %lab_L580
  %rv.llvmaddr198.1 = shl i64 %add178.1, 3
  %rv.lv199.1 = inttoptr i64 %rv.llvmaddr198.1 to ptr
  %rv.rv200.1 = load i64, ptr %rv.lv199.1, align 8
  %lg.value203.1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn206.1 = inttoptr i64 %lg.value203.1 to ptr
  %rtap209.1 = tail call i64 %rtap_ep_p_fn206.1(i64 %rv.rv200.1, i64 16)
  %lg.value211.1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn214.1 = inttoptr i64 %lg.value211.1 to ptr
  %rtap216.1 = tail call i64 %rtap_ep_p_fn214.1(i64 32)
  %ll.static.value180.2.pre = load i64, ptr @itemn.global.83, align 8
  br label %lab_L580.1

lab_L580.1:                                       ; preds = %jf.else188.1, %lab_L580
  %ll.static.value180.2 = phi i64 [ %ll.static.value180.2.pre, %jf.else188.1 ], [ %ll.static.value180.1, %lab_L580 ]
  %add178.2 = add i64 %STK.0, 2
  %ls.not.2 = icmp slt i64 %add178.2, %ll.static.value180.2
  br i1 %ls.not.2, label %jf.else188.2, label %lab_L580.2

jf.else188.2:                                     ; preds = %lab_L580.1
  %rv.llvmaddr198.2 = shl i64 %add178.2, 3
  %rv.lv199.2 = inttoptr i64 %rv.llvmaddr198.2 to ptr
  %rv.rv200.2 = load i64, ptr %rv.lv199.2, align 8
  %lg.value203.2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn206.2 = inttoptr i64 %lg.value203.2 to ptr
  %rtap209.2 = tail call i64 %rtap_ep_p_fn206.2(i64 %rv.rv200.2, i64 16)
  %lg.value211.2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn214.2 = inttoptr i64 %lg.value211.2 to ptr
  %rtap216.2 = tail call i64 %rtap_ep_p_fn214.2(i64 32)
  %ll.static.value180.3.pre = load i64, ptr @itemn.global.83, align 8
  br label %lab_L580.2

lab_L580.2:                                       ; preds = %jf.else188.2, %lab_L580.1
  %ll.static.value180.3 = phi i64 [ %ll.static.value180.3.pre, %jf.else188.2 ], [ %ll.static.value180.2, %lab_L580.1 ]
  %add178.3 = add i64 %STK.0, 3
  %ls.not.3 = icmp slt i64 %add178.3, %ll.static.value180.3
  br i1 %ls.not.3, label %jf.else188.3, label %lab_L580.3

jf.else188.3:                                     ; preds = %lab_L580.2
  %rv.llvmaddr198.3 = shl i64 %add178.3, 3
  %rv.lv199.3 = inttoptr i64 %rv.llvmaddr198.3 to ptr
  %rv.rv200.3 = load i64, ptr %rv.lv199.3, align 8
  %lg.value203.3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn206.3 = inttoptr i64 %lg.value203.3 to ptr
  %rtap209.3 = tail call i64 %rtap_ep_p_fn206.3(i64 %rv.rv200.3, i64 16)
  %lg.value211.3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn214.3 = inttoptr i64 %lg.value211.3 to ptr
  %rtap216.3 = tail call i64 %rtap_ep_p_fn214.3(i64 32)
  %ll.static.value180.4.pre = load i64, ptr @itemn.global.83, align 8
  br label %lab_L580.3

lab_L580.3:                                       ; preds = %jf.else188.3, %lab_L580.2
  %ll.static.value180.4 = phi i64 [ %ll.static.value180.4.pre, %jf.else188.3 ], [ %ll.static.value180.3, %lab_L580.2 ]
  %add178.4 = add i64 %STK.0, 4
  %ls.not.4 = icmp slt i64 %add178.4, %ll.static.value180.4
  br i1 %ls.not.4, label %jf.else188.4, label %lab_L580.4

jf.else188.4:                                     ; preds = %lab_L580.3
  %rv.llvmaddr198.4 = shl i64 %add178.4, 3
  %rv.lv199.4 = inttoptr i64 %rv.llvmaddr198.4 to ptr
  %rv.rv200.4 = load i64, ptr %rv.lv199.4, align 8
  %lg.value203.4 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn206.4 = inttoptr i64 %lg.value203.4 to ptr
  %rtap209.4 = tail call i64 %rtap_ep_p_fn206.4(i64 %rv.rv200.4, i64 16)
  %lg.value211.4 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn214.4 = inttoptr i64 %lg.value211.4 to ptr
  %rtap216.4 = tail call i64 %rtap_ep_p_fn214.4(i64 32)
  br label %lab_L580.4

lab_L580.4:                                       ; preds = %jf.else188.4, %lab_L580.3
  %spec.select = tail call i64 @llvm.umax.i64(i64 %logand, i64 %STK1.0)
  %lg.value234 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 672), align 4
  %rtap_ep_p_fn237 = inttoptr i64 %lg.value234 to ptr
  %rtap238 = tail call i64 %rtap_ep_p_fn237()
  %rv.llvmaddr247 = add i64 %rv.llvmaddr, 8
  %rv.lv248 = inttoptr i64 %rv.llvmaddr247 to ptr
  %rv.rv249 = load i64, ptr %rv.lv248, align 8
  %eq257.not = icmp eq i64 %rv.rv249, 0
  br i1 %eq257.not, label %lab_L574, label %lab_L573

lab_L574:                                         ; preds = %lab_L580.4
  %lstr.bcpladdr263 = ashr exact i64 ptrtoint (ptr @lstr.global.97 to i64), 3
  %lg.value265 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn268 = inttoptr i64 %lg.value265 to ptr
  %rtap270 = tail call i64 %rtap_ep_p_fn268(i64 %lstr.bcpladdr263)
  %lstr.bcpladdr271 = ashr exact i64 ptrtoint (ptr @lstr.global.98 to i64), 3
  %lg.value279 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn282 = inttoptr i64 %lg.value279 to ptr
  %rtap287 = tail call i64 %rtap_ep_p_fn282(i64 %lstr.bcpladdr271, i64 %add88, i64 %add, i64 %spec.select)
  %lstr.bcpladdr288 = ashr exact i64 ptrtoint (ptr @lstr.global.99 to i64), 3
  %ll.static.value290 = load i64, ptr @itemn.global.85, align 8
  %ll.static.value292 = load i64, ptr @itemn.global.87, align 8
  %ll.static.value294 = load i64, ptr @itemn.global.86, align 8
  %ll.static.value296 = load i64, ptr @itemn.global.89, align 8
  %ll.static.value298 = load i64, ptr @itemn.global.88, align 8
  %lg.value300 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn303 = inttoptr i64 %lg.value300 to ptr
  %rtap310 = tail call i64 %rtap_ep_p_fn303(i64 %lstr.bcpladdr288, i64 %ll.static.value290, i64 %ll.static.value292, i64 %ll.static.value294, i64 %ll.static.value296, i64 %ll.static.value298)
  br label %common.ret
}

define noundef i64 @blib.init_heap() local_unnamed_addr section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.82, align 8
  %eq.not = icmp eq i64 %ll.static.value, 0
  br i1 %eq.not, label %jf.else, label %common.ret

jf.else:                                          ; preds = %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 9, i64 0, i64 8388608, i64 3, i64 34, i64 0, i64 0)
  store i64 %fnap, ptr @itemn.global.82, align 8
  %if_cond26 = icmp sgt i64 %fnap, -1
  br i1 %if_cond26, label %jf.then_L584, label %jf.else27

jf.else27:                                        ; preds = %jf.else
  %neg = sub i64 0, %fnap
  %lg.value33 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn36 = inttoptr i64 %lg.value33 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn36(i64 60, i64 %neg)
  %ll.static.value39.pre = load i64, ptr @itemn.global.82, align 8
  br label %jf.then_L584

jf.then_L584:                                     ; preds = %jf.else27, %jf.else
  %ll.static.value39 = phi i64 [ %ll.static.value39.pre, %jf.else27 ], [ %fnap, %jf.else ]
  %shift.result44 = lshr i64 %ll.static.value39, 3
  store i64 %shift.result44, ptr @itemn.global.82, align 8
  %add = add nuw nsw i64 %shift.result44, 1048576
  store i64 %add, ptr @itemn.global.83, align 8
  store i64 %shift.result44, ptr @itemn.global.84, align 8
  %rv.llvmaddr = and i64 %ll.static.value39, -8
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %0 = and i64 %rv.rv, -9223372036854775808
  %xor77 = or disjoint i64 %0, 1048576
  store i64 %xor77, ptr %rv.lv, align 8
  %ll.static.value93 = load i64, ptr @itemn.global.84, align 8
  %rv.llvmaddr96 = shl i64 %ll.static.value93, 3
  %rv.lv97 = inttoptr i64 %rv.llvmaddr96 to ptr
  %rv.rv98 = load i64, ptr %rv.lv97, align 8
  %xor118 = or i64 %rv.rv98, -9223372036854775808
  store i64 %xor118, ptr %rv.lv97, align 8
  %ll.static.value127 = load i64, ptr @itemn.global.84, align 8
  %add132 = shl i64 %ll.static.value127, 3
  %stind.llvmaddr136 = add i64 %add132, 8
  %stind.lv137 = inttoptr i64 %stind.llvmaddr136 to ptr
  store i64 0, ptr %stind.lv137, align 8
  %ll.static.value139 = load i64, ptr @itemn.global.84, align 8
  %add144 = shl i64 %ll.static.value139, 3
  %stind.llvmaddr148 = add i64 %add144, 16
  %stind.lv149 = inttoptr i64 %stind.llvmaddr148 to ptr
  store i64 0, ptr %stind.lv149, align 8
  store i64 0, ptr @itemn.global.85, align 8
  store i64 0, ptr @itemn.global.86, align 8
  store i64 0, ptr @itemn.global.87, align 8
  store i64 0, ptr @itemn.global.88, align 8
  store i64 0, ptr @itemn.global.89, align 8
  br label %common.ret

common.ret:                                       ; preds = %entry, %jf.then_L584
  ret i64 -4985279381848933680
}

define noundef i64 @blib.finish_heap() local_unnamed_addr section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.82, align 8
  %shift.result3 = shl i64 %ll.static.value, 3
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 11, i64 %shift.result3, i64 8388608)
  store i64 0, ptr @itemn.global.82, align 8
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @blib.add_to_free_list(i64 %0) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %xor23 = or i64 %rv.rv, -9223372036854775808
  store i64 %xor23, ptr %rv.lv, align 8
  %ll.static.value = load i64, ptr @itemn.global.84, align 8
  %eq.not = icmp eq i64 %ll.static.value, 0
  br i1 %eq.not, label %jf.else, label %jf.else69

common.ret:                                       ; preds = %jf.then_L594, %jf.then_L593, %jf.else
  ret i64 -4985279381848933680

jf.else:                                          ; preds = %entry
  store i64 %0, ptr @itemn.global.84, align 8
  %stind.llvmaddr43 = add i64 %rv.llvmaddr, 8
  %stind.lv44 = inttoptr i64 %stind.llvmaddr43 to ptr
  store i64 0, ptr %stind.lv44, align 8
  %stind.llvmaddr55 = add i64 %rv.llvmaddr, 16
  %stind.lv56 = inttoptr i64 %stind.llvmaddr55 to ptr
  store i64 0, ptr %stind.lv56, align 8
  br label %common.ret

jf.else69:                                        ; preds = %entry
  %ls.not = icmp slt i64 %ll.static.value, %0
  br i1 %ls.not, label %lab_L588, label %jf.else128

lab_L588:                                         ; preds = %jf.else69, %lab_L588
  %STK58.0 = phi i64 [ %rv.rv93, %lab_L588 ], [ %ll.static.value, %jf.else69 ]
  %add88 = shl i64 %STK58.0, 3
  %rv.llvmaddr91 = add i64 %add88, 8
  %rv.lv92 = inttoptr i64 %rv.llvmaddr91 to ptr
  %rv.rv93 = load i64, ptr %rv.lv92, align 8
  %ne101.not = icmp ne i64 %rv.rv93, 0
  %ls113 = icmp slt i64 %rv.rv93, %0
  %or.cond = and i1 %ne101.not, %ls113
  br i1 %or.cond, label %lab_L588, label %jf.then_L590

jf.then_L590:                                     ; preds = %lab_L588
  %eq123.not = icmp eq i64 %STK58.0, 0
  br i1 %eq123.not, label %jf.else128, label %jf.then_L592

jf.else128:                                       ; preds = %jf.else69, %jf.then_L590
  %stind.llvmaddr140 = add i64 %rv.llvmaddr, 8
  %stind.lv141 = inttoptr i64 %stind.llvmaddr140 to ptr
  store i64 %ll.static.value, ptr %stind.lv141, align 8
  %stind.llvmaddr152 = add i64 %rv.llvmaddr, 16
  %stind.lv153 = inttoptr i64 %stind.llvmaddr152 to ptr
  store i64 0, ptr %stind.lv153, align 8
  %ll.static.value155 = load i64, ptr @itemn.global.84, align 8
  %ne159.not = icmp eq i64 %ll.static.value155, 0
  br i1 %ne159.not, label %jf.then_L593, label %jf.else164

jf.else164:                                       ; preds = %jf.else128
  %add172 = shl i64 %ll.static.value155, 3
  %stind.llvmaddr176 = add i64 %add172, 16
  %stind.lv177 = inttoptr i64 %stind.llvmaddr176 to ptr
  store i64 %0, ptr %stind.lv177, align 8
  br label %jf.then_L593

jf.then_L593:                                     ; preds = %jf.else164, %jf.else128
  store i64 %0, ptr @itemn.global.84, align 8
  br label %common.ret

jf.then_L592:                                     ; preds = %jf.then_L590
  %stind.llvmaddr202 = add i64 %rv.llvmaddr, 8
  %stind.lv203 = inttoptr i64 %stind.llvmaddr202 to ptr
  store i64 %rv.rv93, ptr %stind.lv203, align 8
  %stind.llvmaddr215 = add i64 %rv.llvmaddr, 16
  %stind.lv216 = inttoptr i64 %stind.llvmaddr215 to ptr
  store i64 %STK58.0, ptr %stind.lv216, align 8
  %rv.rv227 = load i64, ptr %rv.lv92, align 4
  %ne232.not = icmp eq i64 %rv.rv227, 0
  br i1 %ne232.not, label %jf.then_L594, label %jf.else237

jf.else237:                                       ; preds = %jf.then_L592
  %add255 = shl i64 %rv.rv227, 3
  %stind.llvmaddr259 = add i64 %add255, 16
  %stind.lv260 = inttoptr i64 %stind.llvmaddr259 to ptr
  store i64 %0, ptr %stind.lv260, align 8
  br label %jf.then_L594

jf.then_L594:                                     ; preds = %jf.else237, %jf.then_L592
  store i64 %0, ptr %rv.lv92, align 4
  br label %common.ret
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noundef i64 @blib.remove_from_free_list(i64 %0) local_unnamed_addr #6 section ".text.BLIB" {
entry:
  %add = shl i64 %0, 3
  %rv.llvmaddr = add i64 %add, 16
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %ne.not = icmp eq i64 %rv.rv, 0
  %rv.llvmaddr46 = add i64 %add, 8
  %rv.lv47 = inttoptr i64 %rv.llvmaddr46 to ptr
  %rv.rv48 = load i64, ptr %rv.lv47, align 8
  %add36 = shl i64 %rv.rv, 3
  %stind.llvmaddr = add i64 %add36, 8
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  %itemn.global.84.sink = select i1 %ne.not, ptr @itemn.global.84, ptr %stind.lv
  store i64 %rv.rv48, ptr %itemn.global.84.sink, align 8
  %rv.rv60 = load i64, ptr %rv.lv47, align 8
  %ne65.not = icmp eq i64 %rv.rv60, 0
  br i1 %ne65.not, label %jf.then_L598, label %jf.else70

jf.else70:                                        ; preds = %entry
  %rv.rv81 = load i64, ptr %rv.lv, align 8
  %add98 = shl i64 %rv.rv60, 3
  %stind.llvmaddr102 = add i64 %add98, 16
  %stind.lv103 = inttoptr i64 %stind.llvmaddr102 to ptr
  store i64 %rv.rv81, ptr %stind.lv103, align 8
  br label %jf.then_L598

jf.then_L598:                                     ; preds = %jf.else70, %entry
  store i64 0, ptr %rv.lv47, align 8
  store i64 0, ptr %rv.lv, align 8
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @blib.coalesce(i64 %0) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 9223372036854775807
  %add = add i64 %logand, %0
  %ll.static.value = load i64, ptr @itemn.global.83, align 8
  %ls.not = icmp slt i64 %add, %ll.static.value
  br i1 %ls.not, label %jf.else, label %jf.then_L600

jf.else:                                          ; preds = %entry
  %rv.llvmaddr21 = shl i64 %add, 3
  %rv.lv22 = inttoptr i64 %rv.llvmaddr21 to ptr
  %rv.rv23 = load i64, ptr %rv.lv22, align 8
  %if_cond31 = icmp sgt i64 %rv.rv23, -1
  br i1 %if_cond31, label %jf.then_L600, label %jf.else32

jf.else32:                                        ; preds = %jf.else
  %rv.llvmaddr.i = add i64 %rv.llvmaddr21, 16
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %ne.not.i = icmp eq i64 %rv.rv.i, 0
  %rv.llvmaddr46.i = add i64 %rv.llvmaddr21, 8
  %rv.lv47.i = inttoptr i64 %rv.llvmaddr46.i to ptr
  %rv.rv48.i = load i64, ptr %rv.lv47.i, align 8
  %add36.i = shl i64 %rv.rv.i, 3
  %stind.llvmaddr.i = add i64 %add36.i, 8
  %stind.lv.i = inttoptr i64 %stind.llvmaddr.i to ptr
  %itemn.global.84.sink.i = select i1 %ne.not.i, ptr @itemn.global.84, ptr %stind.lv.i
  store i64 %rv.rv48.i, ptr %itemn.global.84.sink.i, align 8
  %rv.rv60.i = load i64, ptr %rv.lv47.i, align 8
  %ne65.not.i = icmp eq i64 %rv.rv60.i, 0
  br i1 %ne65.not.i, label %blib.remove_from_free_list.exit, label %jf.else70.i

jf.else70.i:                                      ; preds = %jf.else32
  %rv.rv81.i = load i64, ptr %rv.lv.i, align 8
  %add98.i = shl i64 %rv.rv60.i, 3
  %stind.llvmaddr102.i = add i64 %add98.i, 16
  %stind.lv103.i = inttoptr i64 %stind.llvmaddr102.i to ptr
  store i64 %rv.rv81.i, ptr %stind.lv103.i, align 8
  br label %blib.remove_from_free_list.exit

blib.remove_from_free_list.exit:                  ; preds = %jf.else32, %jf.else70.i
  store i64 0, ptr %rv.lv47.i, align 8
  store i64 0, ptr %rv.lv.i, align 8
  %rv.rv41 = load i64, ptr %rv.lv, align 8
  %rv.rv53 = load i64, ptr %rv.lv22, align 8
  %add62 = add i64 %rv.rv53, %rv.rv41
  %1 = and i64 %add62, 9223372036854775807
  %2 = and i64 %rv.rv41, -9223372036854775808
  %xor88 = or disjoint i64 %1, %2
  store i64 %xor88, ptr %rv.lv, align 8
  br label %jf.then_L600

jf.then_L600:                                     ; preds = %jf.else, %blib.remove_from_free_list.exit, %entry
  %rv.llvmaddr100 = add i64 %rv.llvmaddr, 16
  %rv.lv101 = inttoptr i64 %rv.llvmaddr100 to ptr
  %rv.rv102 = load i64, ptr %rv.lv101, align 8
  %ne.not = icmp eq i64 %rv.rv102, 0
  br i1 %ne.not, label %common.ret, label %jf.else111

jf.else111:                                       ; preds = %jf.then_L600
  %rv.llvmaddr137 = shl i64 %rv.rv102, 3
  %rv.lv138 = inttoptr i64 %rv.llvmaddr137 to ptr
  %rv.rv139 = load i64, ptr %rv.lv138, align 8
  %logand144 = and i64 %rv.rv139, 9223372036854775807
  %add148 = add i64 %logand144, %rv.rv102
  %eq.not = icmp eq i64 %add148, %0
  br i1 %eq.not, label %jf.else158, label %common.ret

common.ret:                                       ; preds = %jf.then_L600, %jf.else111, %blib.remove_from_free_list.exit326
  %common.ret.op = phi i64 [ %rv.rv102, %blib.remove_from_free_list.exit326 ], [ %0, %jf.else111 ], [ %0, %jf.then_L600 ]
  ret i64 %common.ret.op

jf.else158:                                       ; preds = %jf.else111
  %rv.llvmaddr46.i292 = add i64 %rv.llvmaddr, 8
  %rv.lv47.i293 = inttoptr i64 %rv.llvmaddr46.i292 to ptr
  %rv.rv48.i294 = load i64, ptr %rv.lv47.i293, align 8
  %stind.llvmaddr.i296 = add i64 %rv.llvmaddr137, 8
  %stind.lv.i297 = inttoptr i64 %stind.llvmaddr.i296 to ptr
  store i64 %rv.rv48.i294, ptr %stind.lv.i297, align 8
  %rv.rv60.i299 = load i64, ptr %rv.lv47.i293, align 8
  %ne65.not.i300 = icmp eq i64 %rv.rv60.i299, 0
  br i1 %ne65.not.i300, label %blib.remove_from_free_list.exit306, label %jf.else70.i301

jf.else70.i301:                                   ; preds = %jf.else158
  %rv.rv81.i302 = load i64, ptr %rv.lv101, align 8
  %add98.i303 = shl i64 %rv.rv60.i299, 3
  %stind.llvmaddr102.i304 = add i64 %add98.i303, 16
  %stind.lv103.i305 = inttoptr i64 %stind.llvmaddr102.i304 to ptr
  store i64 %rv.rv81.i302, ptr %stind.lv103.i305, align 8
  br label %blib.remove_from_free_list.exit306

blib.remove_from_free_list.exit306:               ; preds = %jf.else158, %jf.else70.i301
  store i64 0, ptr %rv.lv47.i293, align 8
  store i64 0, ptr %rv.lv101, align 8
  %rv.llvmaddr.i308 = add i64 %rv.llvmaddr137, 16
  %rv.lv.i309 = inttoptr i64 %rv.llvmaddr.i308 to ptr
  %rv.rv.i310 = load i64, ptr %rv.lv.i309, align 8
  %ne.not.i311 = icmp eq i64 %rv.rv.i310, 0
  %rv.rv48.i314 = load i64, ptr %stind.lv.i297, align 8
  %add36.i315 = shl i64 %rv.rv.i310, 3
  %stind.llvmaddr.i316 = add i64 %add36.i315, 8
  %stind.lv.i317 = inttoptr i64 %stind.llvmaddr.i316 to ptr
  %itemn.global.84.sink.i318 = select i1 %ne.not.i311, ptr @itemn.global.84, ptr %stind.lv.i317
  store i64 %rv.rv48.i314, ptr %itemn.global.84.sink.i318, align 8
  %rv.rv60.i319 = load i64, ptr %stind.lv.i297, align 8
  %ne65.not.i320 = icmp eq i64 %rv.rv60.i319, 0
  br i1 %ne65.not.i320, label %blib.remove_from_free_list.exit326, label %jf.else70.i321

jf.else70.i321:                                   ; preds = %blib.remove_from_free_list.exit306
  %rv.rv81.i322 = load i64, ptr %rv.lv.i309, align 8
  %add98.i323 = shl i64 %rv.rv60.i319, 3
  %stind.llvmaddr102.i324 = add i64 %add98.i323, 16
  %stind.lv103.i325 = inttoptr i64 %stind.llvmaddr102.i324 to ptr
  store i64 %rv.rv81.i322, ptr %stind.lv103.i325, align 8
  br label %blib.remove_from_free_list.exit326

blib.remove_from_free_list.exit326:               ; preds = %blib.remove_from_free_list.exit306, %jf.else70.i321
  store i64 0, ptr %stind.lv.i297, align 8
  store i64 0, ptr %rv.lv.i309, align 8
  %rv.rv192 = load i64, ptr %rv.lv138, align 8
  %rv.rv204 = load i64, ptr %rv.lv, align 8
  %add213 = add i64 %rv.rv204, %rv.rv192
  %3 = and i64 %add213, 9223372036854775807
  %4 = and i64 %rv.rv192, -9223372036854775808
  %xor240 = or disjoint i64 %3, %4
  store i64 %xor240, ptr %rv.lv138, align 8
  %rtap255 = tail call i64 @blib.add_to_free_list(i64 %rv.rv102)
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @blib.split_block(i64 %0, i64 %1) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 9223372036854775807
  %add = add i64 %1, 1
  %ge.not = icmp slt i64 %logand, %add
  br i1 %ge.not, label %common.ret, label %jf.else

jf.else:                                          ; preds = %entry
  %add21 = add i64 %1, %0
  %sub = sub i64 %rv.rv, %1
  %rv.llvmaddr43 = shl i64 %add21, 3
  %rv.lv44 = inttoptr i64 %rv.llvmaddr43 to ptr
  %xor99 = or i64 %sub, -9223372036854775808
  store i64 %xor99, ptr %rv.lv44, align 8
  %rv.rv114 = load i64, ptr %rv.lv, align 8
  %2 = and i64 %1, 9223372036854775807
  %3 = and i64 %rv.rv114, -9223372036854775808
  %xor134 = or disjoint i64 %3, %2
  store i64 %xor134, ptr %rv.lv, align 8
  %rtap = tail call i64 @blib.add_to_free_list(i64 %add21)
  br label %common.ret

common.ret:                                       ; preds = %entry, %jf.else
  ret i64 -4985279381848933680
}

define range(i64 3, 2) i64 @getvec(i64 %0) section ".text.BLIB" {
entry:
  %add = add i64 %0, 1
  %add7 = add i64 %0, 3
  %add12 = add i64 %0, 4
  %rtap = tail call i64 @blib.init_heap()
  %ll.static.value = load i64, ptr @itemn.global.84, align 8
  %ne.not = icmp eq i64 %ll.static.value, 0
  br i1 %ne.not, label %common.ret, label %lab_L606

lab_L606:                                         ; preds = %entry, %jf.then_L609
  %STK14.0 = phi i64 [ %rv.rv197, %jf.then_L609 ], [ %ll.static.value, %entry ]
  %rv.llvmaddr = shl i64 %STK14.0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 9223372036854775807
  %ge.not = icmp slt i64 %logand, %add12
  br i1 %ge.not, label %jf.then_L609, label %jf.else38

jf.else38:                                        ; preds = %lab_L606
  %rv.llvmaddr.i = add i64 %rv.llvmaddr, 16
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %ne.not.i = icmp eq i64 %rv.rv.i, 0
  %rv.llvmaddr46.i = add i64 %rv.llvmaddr, 8
  %rv.lv47.i = inttoptr i64 %rv.llvmaddr46.i to ptr
  %rv.rv48.i = load i64, ptr %rv.lv47.i, align 8
  %add36.i = shl i64 %rv.rv.i, 3
  %stind.llvmaddr.i = add i64 %add36.i, 8
  %stind.lv.i = inttoptr i64 %stind.llvmaddr.i to ptr
  %itemn.global.84.sink.i = select i1 %ne.not.i, ptr @itemn.global.84, ptr %stind.lv.i
  store i64 %rv.rv48.i, ptr %itemn.global.84.sink.i, align 8
  %rv.rv60.i = load i64, ptr %rv.lv47.i, align 8
  %ne65.not.i = icmp eq i64 %rv.rv60.i, 0
  br i1 %ne65.not.i, label %blib.remove_from_free_list.exit, label %jf.else70.i

jf.else70.i:                                      ; preds = %jf.else38
  %rv.rv81.i = load i64, ptr %rv.lv.i, align 8
  %add98.i = shl i64 %rv.rv60.i, 3
  %stind.llvmaddr102.i = add i64 %add98.i, 16
  %stind.lv103.i = inttoptr i64 %stind.llvmaddr102.i to ptr
  store i64 %rv.rv81.i, ptr %stind.lv103.i, align 8
  br label %blib.remove_from_free_list.exit

blib.remove_from_free_list.exit:                  ; preds = %jf.else38, %jf.else70.i
  store i64 0, ptr %rv.lv47.i, align 8
  store i64 0, ptr %rv.lv.i, align 8
  %rv.rv.i233 = load i64, ptr %rv.lv, align 4
  %logand.i = and i64 %rv.rv.i233, 9223372036854775807
  %add.i234 = add i64 %0, 5
  %ge.not.i = icmp slt i64 %logand.i, %add.i234
  br i1 %ge.not.i, label %blib.split_block.exit, label %jf.else.i

jf.else.i:                                        ; preds = %blib.remove_from_free_list.exit
  %add21.i = add i64 %STK14.0, %add12
  %sub.i = sub i64 %rv.rv.i233, %add12
  %rv.llvmaddr43.i = shl i64 %add21.i, 3
  %rv.lv44.i = inttoptr i64 %rv.llvmaddr43.i to ptr
  %xor99.i = or i64 %sub.i, -9223372036854775808
  store i64 %xor99.i, ptr %rv.lv44.i, align 8
  %rv.rv114.i = load i64, ptr %rv.lv, align 4
  %1 = and i64 %add12, 9223372036854775807
  %2 = and i64 %rv.rv114.i, -9223372036854775808
  %xor134.i = or disjoint i64 %2, %1
  store i64 %xor134.i, ptr %rv.lv, align 4
  %rtap.i = tail call i64 @blib.add_to_free_list(i64 %add21.i)
  %rv.rv68.pre = load i64, ptr %rv.lv, align 4
  %.pre = and i64 %rv.rv68.pre, 9223372036854775807
  br label %blib.split_block.exit

blib.split_block.exit:                            ; preds = %blib.remove_from_free_list.exit, %jf.else.i
  %.pre-phi = phi i64 [ %logand.i, %blib.remove_from_free_list.exit ], [ %.pre, %jf.else.i ]
  store i64 %.pre-phi, ptr %rv.lv, align 4
  store i64 3286577140387536, ptr %rv.lv47.i, align 8
  %add114 = add i64 %add7, %STK14.0
  %stind.llvmaddr118 = shl i64 %add114, 3
  %stind.lv119 = inttoptr i64 %stind.llvmaddr118 to ptr
  store i64 3286577140387536, ptr %stind.lv119, align 8
  %ll.static.value121 = load i64, ptr @itemn.global.85, align 8
  %add125 = add i64 %ll.static.value121, 1
  store i64 %add125, ptr @itemn.global.85, align 8
  %ll.static.value134 = load i64, ptr @itemn.global.89, align 8
  %add138 = add i64 %ll.static.value134, %add
  store i64 %add138, ptr @itemn.global.89, align 8
  %ll.static.value143 = load i64, ptr @itemn.global.88, align 8
  %gr.not = icmp sgt i64 %add138, %ll.static.value143
  br i1 %gr.not, label %jf.else151, label %jf.then_L610

jf.else151:                                       ; preds = %blib.split_block.exit
  store i64 %add138, ptr @itemn.global.88, align 8
  br label %jf.then_L610

jf.then_L610:                                     ; preds = %jf.else151, %blib.split_block.exit
  %ll.static.value162 = load i64, ptr @itemn.global.87, align 8
  %gr166.not = icmp sgt i64 %add, %ll.static.value162
  br i1 %gr166.not, label %jf.else171, label %jf.then_L611

jf.else171:                                       ; preds = %jf.then_L610
  store i64 %add, ptr @itemn.global.87, align 8
  br label %jf.then_L611

common.ret:                                       ; preds = %jf.then_L609, %entry, %jf.then_L611
  %common.ret.op = phi i64 [ %add185, %jf.then_L611 ], [ 0, %entry ], [ 0, %jf.then_L609 ]
  ret i64 %common.ret.op

jf.then_L611:                                     ; preds = %jf.else171, %jf.then_L610
  %add185 = add i64 %STK14.0, 2
  br label %common.ret

jf.then_L609:                                     ; preds = %lab_L606
  %rv.llvmaddr195 = add i64 %rv.llvmaddr, 8
  %rv.lv196 = inttoptr i64 %rv.llvmaddr195 to ptr
  %rv.rv197 = load i64, ptr %rv.lv196, align 8
  %ne205.not = icmp eq i64 %rv.rv197, 0
  br i1 %ne205.not, label %common.ret, label %lab_L606
}

define noundef i64 @freevec(i64 %0) section ".text.BLIB" {
entry:
  %ne.not = icmp eq i64 %0, 0
  br i1 %ne.not, label %common.ret, label %jf.else

jf.else:                                          ; preds = %entry
  %sub = add i64 %0, -2
  %rv.llvmaddr = shl i64 %sub, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 9223372036854775807
  %add = shl i64 %0, 3
  %rv.llvmaddr24 = add i64 %add, -8
  %rv.lv25 = inttoptr i64 %rv.llvmaddr24 to ptr
  %rv.rv26 = load i64, ptr %rv.lv25, align 8
  %ne31.not = icmp eq i64 %rv.rv26, 3286577140387536
  br i1 %ne31.not, label %jt.else, label %jt.then_L615

jt.else:                                          ; preds = %jf.else
  %sub41 = add i64 %0, 2305843009213693949
  %add47 = add i64 %sub41, %rv.rv
  %rv.llvmaddr50 = shl i64 %add47, 3
  %rv.lv51 = inttoptr i64 %rv.llvmaddr50 to ptr
  %rv.rv52 = load i64, ptr %rv.lv51, align 8
  %ne57.not = icmp eq i64 %rv.rv52, 3286577140387536
  br i1 %ne57.not, label %jf.then_L614, label %jt.then_L615

jt.then_L615:                                     ; preds = %jt.else, %jf.else
  %rtap = tail call i64 @blib.dumpheap()
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn72 = inttoptr i64 %lg.value to ptr
  %rtap75 = tail call i64 %rtap_ep_p_fn72(i64 60, i64 42)
  br label %jf.then_L614

jf.then_L614:                                     ; preds = %jt.then_L615, %jt.else
  %ll.static.value = load i64, ptr @itemn.global.82, align 8
  %ls = icmp sge i64 %sub, %ll.static.value
  %ll.static.value88 = load i64, ptr @itemn.global.83, align 8
  %ge.not = icmp slt i64 %sub, %ll.static.value88
  %or.cond = select i1 %ls, i1 %ge.not, i1 false
  br i1 %or.cond, label %jf.then_L616, label %jt.then_L617

jt.then_L617:                                     ; preds = %jf.then_L614
  %rtap107 = tail call i64 @blib.dumpheap()
  %lg.value110 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn113 = inttoptr i64 %lg.value110 to ptr
  %rtap116 = tail call i64 %rtap_ep_p_fn113(i64 60, i64 42)
  br label %jf.then_L616

jf.then_L616:                                     ; preds = %jf.then_L614, %jt.then_L617
  %rv.rv122 = load i64, ptr %rv.lv, align 8
  %eq.not.not = icmp sgt i64 %rv.rv122, -1
  br i1 %eq.not.not, label %jf.then_L618, label %jf.else136

jf.else136:                                       ; preds = %jf.then_L616
  %rtap147 = tail call i64 @blib.dumpheap()
  %lg.value150 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn153 = inttoptr i64 %lg.value150 to ptr
  %rtap156 = tail call i64 %rtap_ep_p_fn153(i64 60, i64 42)
  br label %jf.then_L618

common.ret:                                       ; preds = %entry, %jf.then_L618
  ret i64 -4985279381848933680

jf.then_L618:                                     ; preds = %jf.else136, %jf.then_L616
  %rtap164 = tail call i64 @blib.add_to_free_list(i64 %sub)
  %rtap172 = tail call i64 @blib.coalesce(i64 %sub)
  %ll.static.value174 = load i64, ptr @itemn.global.86, align 8
  %add178 = add i64 %ll.static.value174, 1
  store i64 %add178, ptr @itemn.global.86, align 8
  %ll.static.value180 = load i64, ptr @itemn.global.89, align 8
  %reass.sub = sub i64 %ll.static.value180, %logand
  %sub191 = add i64 %reass.sub, 3
  store i64 %sub191, ptr @itemn.global.89, align 8
  br label %common.ret
}

define range(i64 0, 9223372036854775805) i64 @maxvec() section ".text.BLIB" {
entry:
  %rtap = tail call i64 @blib.init_heap()
  %ll.static.value = load i64, ptr @itemn.global.84, align 8
  %eq = icmp eq i64 %ll.static.value, 0
  br i1 %eq, label %jt.then_L622, label %lab_L620

lab_L620:                                         ; preds = %entry, %lab_L620
  %STK1.0 = phi i64 [ %rv.rv40, %lab_L620 ], [ %ll.static.value, %entry ]
  %STK.0 = phi i64 [ %spec.select, %lab_L620 ], [ 0, %entry ]
  %rv.llvmaddr = shl i64 %STK1.0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 9223372036854775807
  %sub = add nsw i64 %logand, -3
  %spec.select = tail call i64 @llvm.smax.i64(i64 %sub, i64 %STK.0)
  %rv.llvmaddr38 = add i64 %rv.llvmaddr, 8
  %rv.lv39 = inttoptr i64 %rv.llvmaddr38 to ptr
  %rv.rv40 = load i64, ptr %rv.lv39, align 8
  %eq48.not = icmp eq i64 %rv.rv40, 0
  br i1 %eq48.not, label %jt.then_L622, label %lab_L620

jt.then_L622:                                     ; preds = %lab_L620, %entry
  %STK.2 = phi i64 [ 0, %entry ], [ %spec.select, %lab_L620 ]
  ret i64 %STK.2
}

define i64 @time() section ".text.BLIB" {
entry:
  %stack.vec = alloca [2 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = call i64 %rtap_ep_p_fn(i64 228, i64 0, i64 %stack.vecaddr)
  store i64 %fnap, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %jf.else, label %common.ret

common.ret:                                       ; preds = %entry, %jf.else
  %common.ret.op = phi i64 [ %add42, %jf.else ], [ 0, %entry ]
  ret i64 %common.ret.op

jf.else:                                          ; preds = %entry
  %rv.rv = load i64, ptr %stack.vec, align 8
  %mul = mul i64 %rv.rv, 1000000000
  %rv.llvmaddr36 = add i64 %stack.vecaddr, 8
  %rv.lv37 = inttoptr i64 %rv.llvmaddr36 to ptr
  %rv.rv38 = load i64, ptr %rv.lv37, align 8
  %add42 = add i64 %mul, %rv.rv38
  br label %common.ret
}

define range(i64 -1, 1) i64 @datstamp(i64 %0) local_unnamed_addr section ".text.BLIB" {
entry:
  %stack.vec = alloca [2 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = call i64 %rtap_ep_p_fn(i64 228, i64 0, i64 %stack.vecaddr)
  store i64 %fnap, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %rv.rv = load i64, ptr %stack.vec, align 8
  %div31 = sdiv i64 %rv.rv, 86400
  %stind.llvmaddr = shl i64 %0, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %div31, ptr %stind.lv, align 8
  %rv.rv50 = load i64, ptr %stack.vec, align 8
  %mod = srem i64 %rv.rv50, 86400
  %mul = mul nsw i64 %mod, 1000
  %rv.llvmaddr68 = add i64 %stack.vecaddr, 8
  %rv.lv69 = inttoptr i64 %rv.llvmaddr68 to ptr
  %rv.rv70 = load i64, ptr %rv.lv69, align 8
  %div75 = sdiv i64 %rv.rv70, 1000000
  %add79 = add nsw i64 %mul, %div75
  %stind.llvmaddr90 = add i64 %stind.llvmaddr, 8
  %stind.lv91 = inttoptr i64 %stind.llvmaddr90 to ptr
  store i64 %add79, ptr %stind.lv91, align 8
  %lg.value93 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %eq = icmp eq i64 %lg.value93, 0
  %booltoword = sext i1 %eq to i64
  ret i64 %booltoword
}

define range(i64 -1152921504606846976, 1152921504606846976) i64 @timeofday() section ".text.BLIB" {
entry:
  %stack.vec.i = alloca [2 x i64], align 8
  %stack.vec = alloca [2 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %lll.bcpladdr = ashr exact i64 ptrtoint (ptr @itemn.global.116 to i64), 3
  store i64 %lll.bcpladdr, ptr @itemn.global.115, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stack.vec.i)
  %stack.vecaddr.i = ptrtoint ptr %stack.vec.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = call i64 %rtap_ep_p_fn.i(i64 228, i64 0, i64 %stack.vecaddr.i)
  store i64 %fnap.i, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %rv.rv.i = load i64, ptr %stack.vec.i, align 8
  %rv.rv.i.frozen = freeze i64 %rv.rv.i
  %div31.i = sdiv i64 %rv.rv.i.frozen, 86400
  store i64 %div31.i, ptr %stack.vec, align 8
  %0 = mul i64 %div31.i, 86400
  %mod.i.decomposed = sub i64 %rv.rv.i.frozen, %0
  %mul.i = mul nsw i64 %mod.i.decomposed, 1000
  %rv.llvmaddr68.i = add i64 %stack.vecaddr.i, 8
  %rv.lv69.i = inttoptr i64 %rv.llvmaddr68.i to ptr
  %rv.rv70.i = load i64, ptr %rv.lv69.i, align 8
  %div75.i = sdiv i64 %rv.rv70.i, 1000000
  %add79.i = add nsw i64 %div75.i, %mul.i
  %stind.llvmaddr90.i = add i64 %stack.vecaddr, 8
  %stind.lv91.i = inttoptr i64 %stind.llvmaddr90.i to ptr
  store i64 %add79.i, ptr %stind.lv91.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stack.vec.i)
  %ll.static.value = load i64, ptr @itemn.global.115, align 8
  %rtap13 = call i64 @dat_to_strings(i64 %stack.bcpladdr, i64 %ll.static.value)
  %ll.static.value14 = load i64, ptr @itemn.global.115, align 8
  ret i64 %ll.static.value14
}

define i64 @date() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 432), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %add = add i64 %fnap, 5
  ret i64 %add
}

define range(i64 0, 2305843009213693952) i64 @stacksize() section ".text.BLIB" {
entry:
  %stack.vec = alloca [2 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = call i64 %rtap_ep_p_fn(i64 97, i64 3, i64 %stack.vecaddr)
  store i64 %fnap, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %eq.not = icmp eq i64 %fnap, 0
  %rv.rv = load i64, ptr %stack.vec, align 8
  %shift.result31 = lshr i64 %rv.rv, 3
  %common.ret.op = select i1 %eq.not, i64 %shift.result31, i64 0
  ret i64 %common.ret.op
}

define noundef i64 @stop(i64 %0) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 60, i64 %0)
  ret i64 -4985279381848933680
}

define i64 @blib.allocate_dcb(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 127)
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %common.ret, label %jf.then_L639

common.ret:                                       ; preds = %entry, %jf.then_L640, %jf.else31
  %common.ret.op = phi i64 [ 0, %jf.else31 ], [ %fnap19, %jf.then_L640 ], [ 0, %entry ]
  ret i64 %common.ret.op

jf.then_L639:                                     ; preds = %entry
  %lg.value14 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn17 = inttoptr i64 %lg.value14 to ptr
  %fnap19 = tail call i64 %rtap_ep_p_fn17(i64 5)
  %eq26.not = icmp eq i64 %fnap19, 0
  br i1 %eq26.not, label %jf.else31, label %jf.then_L640

jf.else31:                                        ; preds = %jf.then_L639
  %lg.value34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn37 = inttoptr i64 %lg.value34 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn37(i64 %fnap)
  br label %common.ret

jf.then_L640:                                     ; preds = %jf.then_L639
  %shift.result46 = shl i64 %1, 1
  %rv.llvmaddr = shl i64 %fnap19, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %5 = and i64 %shift.result46, 6
  %6 = and i64 %rv.rv, 4294967281
  %shift.result80 = shl i64 %2, 3
  %7 = and i64 %shift.result80, 8
  %shift.result126 = shl i64 %0, 32
  %xor109 = or disjoint i64 %5, %shift.result126
  %xor67 = or disjoint i64 %xor109, %7
  %xor155 = or disjoint i64 %xor67, %6
  store i64 %xor155, ptr %rv.lv, align 8
  %stind.llvmaddr173 = add i64 %rv.llvmaddr, 8
  %stind.lv174 = inttoptr i64 %stind.llvmaddr173 to ptr
  store i64 %fnap, ptr %stind.lv174, align 8
  %rv.llvmaddr184 = add i64 %rv.llvmaddr, 16
  %rv.lv185 = inttoptr i64 %rv.llvmaddr184 to ptr
  %eq229.not = icmp eq i64 %1, 2
  %__res_a.0 = select i1 %eq229.not, i64 4398046511104, i64 0
  store i64 %__res_a.0, ptr %rv.lv185, align 8
  %rv.rv304 = load i64, ptr %rv.lv, align 8
  %xor324 = and i64 %rv.rv304, -2
  store i64 %xor324, ptr %rv.lv, align 8
  %stind.llvmaddr343 = add i64 %rv.llvmaddr, 32
  %stind.lv344 = inttoptr i64 %stind.llvmaddr343 to ptr
  store i64 %4, ptr %stind.lv344, align 8
  %stind.llvmaddr356 = add i64 %rv.llvmaddr, 24
  %stind.lv357 = inttoptr i64 %stind.llvmaddr356 to ptr
  store i64 %3, ptr %stind.lv357, align 8
  %ll.static.value = load i64, ptr @itemn.global.123, align 8
  %stind.llvmaddr368 = add i64 %rv.llvmaddr, 40
  %stind.lv369 = inttoptr i64 %stind.llvmaddr368 to ptr
  store i64 %ll.static.value, ptr %stind.lv369, align 8
  store i64 %fnap19, ptr @itemn.global.123, align 8
  br label %common.ret
}

define noundef i64 @blib.block_flush(i64 %0) local_unnamed_addr section ".text.BLIB" {
entry:
  %add = shl i64 %0, 3
  %rv.llvmaddr = add i64 %add, 16
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 4294967295
  %gr.not = icmp eq i64 %logand, 0
  br i1 %gr.not, label %common.ret, label %jf.else

jf.else:                                          ; preds = %entry
  %rv.lv18 = inttoptr i64 %add to ptr
  %rv.rv19 = load i64, ptr %rv.lv18, align 8
  %shift.result24 = lshr i64 %rv.rv19, 32
  %rv.llvmaddr34 = add i64 %add, 8
  %rv.lv35 = inttoptr i64 %rv.llvmaddr34 to ptr
  %rv.rv36 = load i64, ptr %rv.lv35, align 8
  %shift.result45 = shl i64 %rv.rv36, 3
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 1, i64 %shift.result24, i64 %shift.result45, i64 %logand)
  %rv.rv82 = load i64, ptr %rv.lv, align 8
  %xor106 = and i64 %rv.rv82, -4294967296
  store i64 %xor106, ptr %rv.lv, align 8
  %le = icmp sgt i64 %fnap, 0
  br i1 %le, label %common.ret, label %jf.else124

common.ret:                                       ; preds = %entry, %jf.else, %jf.else124
  ret i64 -4985279381848933680

jf.else124:                                       ; preds = %jf.else
  %neg = sub i64 0, %fnap
  store i64 %neg, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret
}

define noundef i64 @blib.block_write(i64 %0) section ".text.BLIB" {
entry:
  %add.i = shl i64 %0, 3
  %rv.llvmaddr.i = add i64 %add.i, 16
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %logand.i = and i64 %rv.rv.i, 4294967295
  %gr.not.i = icmp eq i64 %logand.i, 0
  br i1 %gr.not.i, label %blib.block_flush.exit, label %jf.else.i

jf.else.i:                                        ; preds = %entry
  %rv.lv18.i = inttoptr i64 %add.i to ptr
  %rv.rv19.i = load i64, ptr %rv.lv18.i, align 8
  %shift.result24.i = lshr i64 %rv.rv19.i, 32
  %rv.llvmaddr34.i = add i64 %add.i, 8
  %rv.lv35.i = inttoptr i64 %rv.llvmaddr34.i to ptr
  %rv.rv36.i = load i64, ptr %rv.lv35.i, align 8
  %shift.result45.i = shl i64 %rv.rv36.i, 3
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 1, i64 %shift.result24.i, i64 %shift.result45.i, i64 %logand.i)
  %rv.rv82.i = load i64, ptr %rv.lv.i, align 8
  %xor106.i = and i64 %rv.rv82.i, -4294967296
  store i64 %xor106.i, ptr %rv.lv.i, align 8
  %le.i = icmp sgt i64 %fnap.i, 0
  br i1 %le.i, label %blib.block_flush.exit, label %jf.else124.i

jf.else124.i:                                     ; preds = %jf.else.i
  %neg.i = sub i64 0, %fnap.i
  store i64 %neg.i, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %blib.block_flush.exit

blib.block_flush.exit:                            ; preds = %entry, %jf.else.i, %jf.else124.i
  ret i64 -4985279381848933680
}

define noundef i64 @xx(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 472), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %ll.static.value = load i64, ptr @itemn.global.122, align 8
  %lg.value8 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 456), align 4
  %rtap_ep_p_fn11 = inttoptr i64 %lg.value8 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn11(i64 %ll.static.value)
  %lg.value21 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn24 = inttoptr i64 %lg.value21 to ptr
  %rtap30 = tail call i64 %rtap_ep_p_fn24(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  %lg.value31 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %add.i = shl i64 %lg.value31, 3
  %rv.llvmaddr.i = add i64 %add.i, 16
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %logand.i = and i64 %rv.rv.i, 4294967295
  %gr.not.i = icmp eq i64 %logand.i, 0
  br i1 %gr.not.i, label %blib.block_flush.exit, label %jf.else.i

jf.else.i:                                        ; preds = %entry
  %rv.lv18.i = inttoptr i64 %add.i to ptr
  %rv.rv19.i = load i64, ptr %rv.lv18.i, align 8
  %shift.result24.i = lshr i64 %rv.rv19.i, 32
  %rv.llvmaddr34.i = add i64 %add.i, 8
  %rv.lv35.i = inttoptr i64 %rv.llvmaddr34.i to ptr
  %rv.rv36.i = load i64, ptr %rv.lv35.i, align 8
  %shift.result45.i = shl i64 %rv.rv36.i, 3
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 1, i64 %shift.result24.i, i64 %shift.result45.i, i64 %logand.i)
  %rv.rv82.i = load i64, ptr %rv.lv.i, align 8
  %xor106.i = and i64 %rv.rv82.i, -4294967296
  store i64 %xor106.i, ptr %rv.lv.i, align 8
  %le.i = icmp sgt i64 %fnap.i, 0
  br i1 %le.i, label %blib.block_flush.exit, label %jf.else124.i

jf.else124.i:                                     ; preds = %jf.else.i
  %neg.i = sub i64 0, %fnap.i
  store i64 %neg.i, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %blib.block_flush.exit

blib.block_flush.exit:                            ; preds = %entry, %jf.else.i, %jf.else124.i
  %lg.value40 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 456), align 4
  %rtap_ep_p_fn43 = inttoptr i64 %lg.value40 to ptr
  %rtap45 = tail call i64 %rtap_ep_p_fn43(i64 %fnap)
  ret i64 -4985279381848933680
}

define noundef i64 @blib.block_close(i64 %0) section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %1 = and i64 %rv.rv, 6
  %if_cond = icmp eq i64 %1, 0
  br i1 %if_cond, label %jf.then_L649, label %jf.else13

jf.else13:                                        ; preds = %entry
  %rv.llvmaddr.i = add i64 %rv.llvmaddr, 16
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %logand.i = and i64 %rv.rv.i, 4294967295
  %gr.not.i = icmp eq i64 %logand.i, 0
  br i1 %gr.not.i, label %jf.then_L649, label %jf.else.i

jf.else.i:                                        ; preds = %jf.else13
  %shift.result24.i = lshr i64 %rv.rv, 32
  %rv.llvmaddr34.i = add i64 %rv.llvmaddr, 8
  %rv.lv35.i = inttoptr i64 %rv.llvmaddr34.i to ptr
  %rv.rv36.i = load i64, ptr %rv.lv35.i, align 8
  %shift.result45.i = shl i64 %rv.rv36.i, 3
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 1, i64 %shift.result24.i, i64 %shift.result45.i, i64 %logand.i)
  %rv.rv82.i = load i64, ptr %rv.lv.i, align 8
  %xor106.i = and i64 %rv.rv82.i, -4294967296
  store i64 %xor106.i, ptr %rv.lv.i, align 8
  %le.i = icmp sgt i64 %fnap.i, 0
  br i1 %le.i, label %jf.then_L649, label %jf.else124.i

jf.else124.i:                                     ; preds = %jf.else.i
  %neg.i = sub i64 0, %fnap.i
  store i64 %neg.i, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L649

jf.then_L649:                                     ; preds = %jf.else124.i, %jf.else.i, %jf.else13, %entry
  %rv.rv22 = load i64, ptr %rv.lv, align 8
  %2 = and i64 %rv.rv22, 8
  %if_cond41.not = icmp eq i64 %2, 0
  br i1 %if_cond41.not, label %jt.else, label %common.ret

jt.else:                                          ; preds = %jf.then_L649
  %ll.static.value = load i64, ptr @itemn.global.123, align 8
  %ne.not = icmp eq i64 %ll.static.value, 0
  br i1 %ne.not, label %common.ret.sink.split, label %lab_L651.preheader

lab_L651.preheader:                               ; preds = %jt.else
  %eq.not191 = icmp eq i64 %0, %ll.static.value
  br i1 %eq.not191, label %jf.else74, label %jf.then_L654

lab_L651:                                         ; preds = %jf.then_L654
  %eq.not = icmp eq i64 %0, %rv.rv154
  br i1 %eq.not, label %jf.then_L655, label %jf.then_L654

jf.else74:                                        ; preds = %lab_L651.preheader
  %rv.llvmaddr82 = add i64 %rv.llvmaddr, 40
  %rv.lv83 = inttoptr i64 %rv.llvmaddr82 to ptr
  %rv.rv84 = load i64, ptr %rv.lv83, align 8
  store i64 %rv.rv84, ptr @itemn.global.123, align 8
  br label %jump.target_L656

jf.then_L655:                                     ; preds = %lab_L651
  %rv.llvmaddr94 = add i64 %rv.llvmaddr, 40
  %rv.lv95 = inttoptr i64 %rv.llvmaddr94 to ptr
  %rv.rv96 = load i64, ptr %rv.lv95, align 8
  %add103 = shl i64 %STK42.0192, 3
  %stind.llvmaddr = add i64 %add103, 40
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %rv.rv96, ptr %stind.lv, align 8
  br label %jump.target_L656

common.ret.sink.split:                            ; preds = %jf.then_L654, %jt.else, %jump.target_L656
  %lg.value169.sink.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), %jump.target_L656 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), %jt.else ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), %jf.then_L654 ]
  %.sink = phi i64 [ %0, %jump.target_L656 ], [ 100, %jt.else ], [ 100, %jf.then_L654 ]
  %lg.value169.sink = load i64, ptr %lg.value169.sink.in, align 4
  %rtap_ep_p_fn172 = inttoptr i64 %lg.value169.sink to ptr
  %rtap174 = tail call i64 %rtap_ep_p_fn172(i64 %.sink)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %jf.then_L649
  ret i64 -4985279381848933680

jump.target_L656:                                 ; preds = %jf.then_L655, %jf.else74
  %rv.llvmaddr113 = add i64 %rv.llvmaddr, 8
  %rv.lv114 = inttoptr i64 %rv.llvmaddr113 to ptr
  %rv.rv115 = load i64, ptr %rv.lv114, align 8
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn119 = inttoptr i64 %lg.value to ptr
  %rtap121 = tail call i64 %rtap_ep_p_fn119(i64 %rv.rv115)
  store i64 0, ptr %rv.lv114, align 8
  br label %common.ret.sink.split

jf.then_L654:                                     ; preds = %lab_L651.preheader, %lab_L651
  %STK42.0192 = phi i64 [ %rv.rv154, %lab_L651 ], [ %ll.static.value, %lab_L651.preheader ]
  %add149 = shl i64 %STK42.0192, 3
  %rv.llvmaddr152 = add i64 %add149, 40
  %rv.lv153 = inttoptr i64 %rv.llvmaddr152 to ptr
  %rv.rv154 = load i64, ptr %rv.lv153, align 8
  %ne162.not = icmp eq i64 %rv.rv154, 0
  br i1 %ne162.not, label %common.ret.sink.split, label %lab_L651
}

define noundef i64 @blib.block_read(i64 %0) section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %shift.result5 = lshr i64 %rv.rv, 32
  %rv.llvmaddr14 = add i64 %rv.llvmaddr, 8
  %rv.lv15 = inttoptr i64 %rv.llvmaddr14 to ptr
  %rv.rv16 = load i64, ptr %rv.lv15, align 8
  %shift.result25 = shl i64 %rv.rv16, 3
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 0, i64 %shift.result5, i64 %shift.result25, i64 1024)
  %rv.llvmaddr44 = add i64 %rv.llvmaddr, 16
  %rv.lv45 = inttoptr i64 %rv.llvmaddr44 to ptr
  %rv.rv46 = load i64, ptr %rv.lv45, align 8
  %xor69 = and i64 %rv.rv46, -4294967296
  store i64 %xor69, ptr %rv.lv45, align 8
  %le = icmp sgt i64 %fnap, 0
  br i1 %le, label %jf.then_L658, label %jf.else

jf.else:                                          ; preds = %entry
  %ls.not = icmp eq i64 %fnap, 0
  br i1 %ls.not, label %jf.then_L659, label %jf.else93

jf.else93:                                        ; preds = %jf.else
  %neg = sub i64 0, %fnap
  store i64 %neg, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L659

common.ret:                                       ; preds = %jf.then_L658, %jf.then_L659
  ret i64 -4985279381848933680

jf.then_L659:                                     ; preds = %jf.else93, %jf.else
  %rv.rv104 = load i64, ptr %rv.lv, align 8
  %xor124 = or i64 %rv.rv104, 1
  store i64 %xor124, ptr %rv.lv, align 8
  br label %common.ret

jf.then_L658:                                     ; preds = %entry
  %shift.result141 = shl i64 %fnap, 32
  store i64 %shift.result141, ptr %rv.lv45, align 8
  br label %common.ret
}

define noundef i64 @blib.tty_write(i64 %0) local_unnamed_addr section ".text.BLIB" {
entry:
  %add.i.i = shl i64 %0, 3
  %rv.llvmaddr.i.i = add i64 %add.i.i, 16
  %rv.lv.i.i = inttoptr i64 %rv.llvmaddr.i.i to ptr
  %rv.rv.i.i = load i64, ptr %rv.lv.i.i, align 8
  %logand.i.i = and i64 %rv.rv.i.i, 4294967295
  %gr.not.i.i = icmp eq i64 %logand.i.i, 0
  br i1 %gr.not.i.i, label %blib.block_write.exit, label %jf.else.i.i

jf.else.i.i:                                      ; preds = %entry
  %rv.lv18.i.i = inttoptr i64 %add.i.i to ptr
  %rv.rv19.i.i = load i64, ptr %rv.lv18.i.i, align 8
  %shift.result24.i.i = lshr i64 %rv.rv19.i.i, 32
  %rv.llvmaddr34.i.i = add i64 %add.i.i, 8
  %rv.lv35.i.i = inttoptr i64 %rv.llvmaddr34.i.i to ptr
  %rv.rv36.i.i = load i64, ptr %rv.lv35.i.i, align 8
  %shift.result45.i.i = shl i64 %rv.rv36.i.i, 3
  %lg.value.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn.i.i = inttoptr i64 %lg.value.i.i to ptr
  %fnap.i.i = tail call i64 %rtap_ep_p_fn.i.i(i64 1, i64 %shift.result24.i.i, i64 %shift.result45.i.i, i64 %logand.i.i)
  %rv.rv82.i.i = load i64, ptr %rv.lv.i.i, align 8
  %xor106.i.i = and i64 %rv.rv82.i.i, -4294967296
  store i64 %xor106.i.i, ptr %rv.lv.i.i, align 8
  %le.i.i = icmp sgt i64 %fnap.i.i, 0
  br i1 %le.i.i, label %blib.block_write.exit, label %jf.else124.i.i

jf.else124.i.i:                                   ; preds = %jf.else.i.i
  %neg.i.i = sub i64 0, %fnap.i.i
  store i64 %neg.i.i, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %blib.block_write.exit

blib.block_write.exit:                            ; preds = %entry, %jf.else.i.i, %jf.else124.i.i
  ret i64 -4985279381848933680
}

define noundef i64 @blib.tty_read(i64 %0) section ".text.BLIB" {
entry:
  %rv.llvmaddr.i = shl i64 %0, 3
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %shift.result5.i = lshr i64 %rv.rv.i, 32
  %rv.llvmaddr14.i = add i64 %rv.llvmaddr.i, 8
  %rv.lv15.i = inttoptr i64 %rv.llvmaddr14.i to ptr
  %rv.rv16.i = load i64, ptr %rv.lv15.i, align 8
  %shift.result25.i = shl i64 %rv.rv16.i, 3
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 0, i64 %shift.result5.i, i64 %shift.result25.i, i64 1024)
  %rv.llvmaddr44.i = add i64 %rv.llvmaddr.i, 16
  %rv.lv45.i = inttoptr i64 %rv.llvmaddr44.i to ptr
  %rv.rv46.i = load i64, ptr %rv.lv45.i, align 8
  %xor69.i = and i64 %rv.rv46.i, -4294967296
  store i64 %xor69.i, ptr %rv.lv45.i, align 8
  %le.i = icmp sgt i64 %fnap.i, 0
  br i1 %le.i, label %jf.then_L658.i, label %jf.else.i

jf.else.i:                                        ; preds = %entry
  %ls.not.i = icmp eq i64 %fnap.i, 0
  br i1 %ls.not.i, label %jf.then_L659.i, label %jf.else93.i

jf.else93.i:                                      ; preds = %jf.else.i
  %neg.i = sub i64 0, %fnap.i
  store i64 %neg.i, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L659.i

jf.then_L659.i:                                   ; preds = %jf.else93.i, %jf.else.i
  %rv.rv104.i = load i64, ptr %rv.lv.i, align 8
  %xor124.i = or i64 %rv.rv104.i, 1
  store i64 %xor124.i, ptr %rv.lv.i, align 8
  br label %blib.block_read.exit

jf.then_L658.i:                                   ; preds = %entry
  %shift.result141.i = shl i64 %fnap.i, 32
  store i64 %shift.result141.i, ptr %rv.lv45.i, align 8
  br label %blib.block_read.exit

blib.block_read.exit:                             ; preds = %jf.then_L659.i, %jf.then_L658.i
  ret i64 -4985279381848933680
}

define noundef i64 @blib.tty_write.132(i64 %0) section ".text.BLIB" {
entry:
  %add.i.i = shl i64 %0, 3
  %rv.llvmaddr.i.i = add i64 %add.i.i, 16
  %rv.lv.i.i = inttoptr i64 %rv.llvmaddr.i.i to ptr
  %rv.rv.i.i = load i64, ptr %rv.lv.i.i, align 8
  %logand.i.i = and i64 %rv.rv.i.i, 4294967295
  %gr.not.i.i = icmp eq i64 %logand.i.i, 0
  br i1 %gr.not.i.i, label %blib.block_write.exit, label %jf.else.i.i

jf.else.i.i:                                      ; preds = %entry
  %rv.lv18.i.i = inttoptr i64 %add.i.i to ptr
  %rv.rv19.i.i = load i64, ptr %rv.lv18.i.i, align 8
  %shift.result24.i.i = lshr i64 %rv.rv19.i.i, 32
  %rv.llvmaddr34.i.i = add i64 %add.i.i, 8
  %rv.lv35.i.i = inttoptr i64 %rv.llvmaddr34.i.i to ptr
  %rv.rv36.i.i = load i64, ptr %rv.lv35.i.i, align 8
  %shift.result45.i.i = shl i64 %rv.rv36.i.i, 3
  %lg.value.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn.i.i = inttoptr i64 %lg.value.i.i to ptr
  %fnap.i.i = tail call i64 %rtap_ep_p_fn.i.i(i64 1, i64 %shift.result24.i.i, i64 %shift.result45.i.i, i64 %logand.i.i)
  %rv.rv82.i.i = load i64, ptr %rv.lv.i.i, align 8
  %xor106.i.i = and i64 %rv.rv82.i.i, -4294967296
  store i64 %xor106.i.i, ptr %rv.lv.i.i, align 8
  %le.i.i = icmp sgt i64 %fnap.i.i, 0
  br i1 %le.i.i, label %blib.block_write.exit, label %jf.else124.i.i

jf.else124.i.i:                                   ; preds = %jf.else.i.i
  %neg.i.i = sub i64 0, %fnap.i.i
  store i64 %neg.i.i, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %blib.block_write.exit

blib.block_write.exit:                            ; preds = %entry, %jf.else.i.i, %jf.else124.i.i
  ret i64 -4985279381848933680
}

define noundef i64 @blib.tty_close(i64 %0) section ".text.BLIB" {
entry:
  %fnap = tail call i64 @blib.block_close(i64 %0)
  ret i64 %fnap
}

define i64 @blib.findfile(i64 %0, i64 %1) local_unnamed_addr section ".text.BLIB" {
entry:
  %stack.vec = alloca [32 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 1
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  switch i8 %getbyte.char, label %jf.then_L667 [
    i8 42, label %jf.else
    i8 33, label %jf.else44
  ]

jf.else:                                          ; preds = %entry
  %eq15.not = icmp eq i64 %1, 1
  br i1 %eq15.not, label %jf.else20, label %jf.then_L666

common.ret:                                       ; preds = %jf.then_L640.i, %jf.else31.i, %jf.else179, %jf.else44, %jf.then_L679, %lab_L678, %jf.then_L666, %jf.else20
  %common.ret.op = phi i64 [ %ll.static.value, %jf.else20 ], [ %ll.static.value22, %jf.then_L666 ], [ 0, %lab_L678 ], [ 0, %jf.then_L679 ], [ %spec.select, %jf.else44 ], [ 0, %jf.else31.i ], [ %fnap19.i, %jf.then_L640.i ], [ 0, %jf.else179 ]
  ret i64 %common.ret.op

jf.else20:                                        ; preds = %jf.else
  %ll.static.value = load i64, ptr @itemn.global.120, align 8
  br label %common.ret

jf.then_L666:                                     ; preds = %jf.else
  %ll.static.value22 = load i64, ptr @itemn.global.121, align 8
  br label %common.ret

jf.else44:                                        ; preds = %entry
  %eq50.not = icmp eq i64 %1, 1
  %ll.static.value58 = load i64, ptr @itemn.global.122, align 8
  %spec.select = select i1 %eq50.not, i64 0, i64 %ll.static.value58
  br label %common.ret

jf.then_L667:                                     ; preds = %entry
  %getbyte.char70 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword71 = zext i8 %getbyte.char70 to i64
  %gr = icmp eq i8 %getbyte.char70, 0
  br i1 %gr, label %jt.then_L670, label %lab_L669.preheader

lab_L669.preheader:                               ; preds = %jf.then_L667
  %invariant.gep = getelementptr i8, ptr %stack.vec, i64 -1
  %min.iters.check = icmp ult i8 %getbyte.char70, 8
  br i1 %min.iters.check, label %lab_L669.preheader251, label %vector.ph

vector.ph:                                        ; preds = %lab_L669.preheader
  %n.vec = and i64 %getbyte.charword71, 252
  %2 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %3 = getelementptr i8, ptr %getbyte.string, i64 %offset.idx
  %wide.load = load <4 x i8>, ptr %3, align 1
  %4 = getelementptr i8, ptr %stack.vec, i64 %index
  store <4 x i8> %wide.load, ptr %4, align 4
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %getbyte.charword71
  br i1 %cmp.n, label %jt.then_L670.loopexit, label %lab_L669.preheader251

lab_L669.preheader251:                            ; preds = %lab_L669.preheader, %middle.block
  %STK61.0.ph = phi i64 [ 1, %lab_L669.preheader ], [ %2, %middle.block ]
  br label %lab_L669

lab_L669:                                         ; preds = %lab_L669.preheader251, %lab_L669
  %STK61.0 = phi i64 [ %add, %lab_L669 ], [ %STK61.0.ph, %lab_L669.preheader251 ]
  %getbyte.charptr91 = getelementptr i8, ptr %getbyte.string, i64 %STK61.0
  %getbyte.char92 = load i8, ptr %getbyte.charptr91, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK61.0
  store i8 %getbyte.char92, ptr %gep, align 1
  %add = add nuw nsw i64 %STK61.0, 1
  %le.not.not = icmp samesign ult i64 %STK61.0, %getbyte.charword71
  br i1 %le.not.not, label %lab_L669, label %jt.then_L670.loopexit, !llvm.loop !15

jt.then_L670.loopexit:                            ; preds = %lab_L669, %middle.block
  %getbyte.char131.pre = load i8, ptr %getbyte.string, align 8
  br label %jt.then_L670

jt.then_L670:                                     ; preds = %jt.then_L670.loopexit, %jf.then_L667
  %getbyte.char131 = phi i8 [ %getbyte.char131.pre, %jt.then_L670.loopexit ], [ 0, %jf.then_L667 ]
  %getbyte.charword132 = zext i8 %getbyte.char131 to i64
  %putbyte.charptr140 = getelementptr i8, ptr %stack.vec, i64 %getbyte.charword132
  store i8 0, ptr %putbyte.charptr140, align 1
  switch i64 %1, label %lab_L678 [
    i64 3, label %lab_L677
    i64 2, label %lab_L676
    i64 1, label %jump.target_L674
  ]

lab_L676:                                         ; preds = %jt.then_L670
  br label %jump.target_L674

lab_L677:                                         ; preds = %jt.then_L670
  br label %jump.target_L674

lab_L678:                                         ; preds = %jt.then_L670
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

jump.target_L674:                                 ; preds = %jt.then_L670, %lab_L677, %lab_L676
  %STK2.0 = phi i64 [ 577, %lab_L676 ], [ 2, %lab_L677 ], [ 0, %jt.then_L670 ]
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = call i64 %rtap_ep_p_fn(i64 2, i64 %stack.vecaddr, i64 %STK2.0, i64 438)
  %ge = icmp slt i64 %fnap, 0
  br i1 %ge, label %jf.then_L679, label %jf.else179

jf.else179:                                       ; preds = %jump.target_L674
  %eq185.not = icmp eq i64 %1, 1
  %. = select i1 %eq185.not, i64 ptrtoint (ptr @blib.block_read to i64), i64 ptrtoint (ptr @blib.block_write to i64)
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = call i64 %rtap_ep_p_fn.i(i64 127)
  %eq.not.i = icmp eq i64 %fnap.i, 0
  br i1 %eq.not.i, label %common.ret, label %jf.then_L639.i

jf.then_L639.i:                                   ; preds = %jf.else179
  %lg.value14.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn17.i = inttoptr i64 %lg.value14.i to ptr
  %fnap19.i = call i64 %rtap_ep_p_fn17.i(i64 5)
  %eq26.not.i = icmp eq i64 %fnap19.i, 0
  br i1 %eq26.not.i, label %jf.else31.i, label %jf.then_L640.i

jf.else31.i:                                      ; preds = %jf.then_L639.i
  %lg.value34.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn37.i = inttoptr i64 %lg.value34.i to ptr
  %rtap.i = call i64 %rtap_ep_p_fn37.i(i64 %fnap.i)
  br label %common.ret

jf.then_L640.i:                                   ; preds = %jf.then_L639.i
  %shift.result46.i = shl nuw nsw i64 %1, 1
  %rv.llvmaddr.i = shl i64 %fnap19.i, 3
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %6 = and i64 %shift.result46.i, 6
  %7 = and i64 %rv.rv.i, 4294967281
  %shift.result126.i = shl i64 %fnap, 32
  %xor109.i = or disjoint i64 %shift.result126.i, %6
  %xor155.i = or disjoint i64 %7, %xor109.i
  store i64 %xor155.i, ptr %rv.lv.i, align 8
  %stind.llvmaddr173.i = add i64 %rv.llvmaddr.i, 8
  %stind.lv174.i = inttoptr i64 %stind.llvmaddr173.i to ptr
  store i64 %fnap.i, ptr %stind.lv174.i, align 8
  %rv.llvmaddr184.i = add i64 %rv.llvmaddr.i, 16
  %rv.lv185.i = inttoptr i64 %rv.llvmaddr184.i to ptr
  %eq229.not.i = icmp eq i64 %1, 2
  %__res_a.0.i = select i1 %eq229.not.i, i64 4398046511104, i64 0
  store i64 %__res_a.0.i, ptr %rv.lv185.i, align 8
  %rv.rv304.i = load i64, ptr %rv.lv.i, align 8
  %xor324.i = and i64 %rv.rv304.i, -2
  store i64 %xor324.i, ptr %rv.lv.i, align 8
  %stind.llvmaddr343.i = add i64 %rv.llvmaddr.i, 32
  %stind.lv344.i = inttoptr i64 %stind.llvmaddr343.i to ptr
  store i64 %., ptr %stind.lv344.i, align 8
  %stind.llvmaddr356.i = add i64 %rv.llvmaddr.i, 24
  %stind.lv357.i = inttoptr i64 %stind.llvmaddr356.i to ptr
  store i64 ptrtoint (ptr @blib.block_close to i64), ptr %stind.lv357.i, align 8
  %ll.static.value.i = load i64, ptr @itemn.global.123, align 8
  %stind.llvmaddr368.i = add i64 %rv.llvmaddr.i, 40
  %stind.lv369.i = inttoptr i64 %stind.llvmaddr368.i to ptr
  store i64 %ll.static.value.i, ptr %stind.lv369.i, align 8
  store i64 %fnap19.i, ptr @itemn.global.123, align 8
  br label %common.ret

jf.then_L679:                                     ; preds = %jump.target_L674
  %neg = sub i64 0, %fnap
  store i64 %neg, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @blib.rditem_add(i64 %0) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.120, align 8
  %add = shl i64 %ll.static.value, 3
  %rv.llvmaddr = add i64 %add, 16
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %ls = icmp ugt i64 %rv.rv, 4398046511103
  br i1 %ls, label %common.ret, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = and i64 %0, -8
  %logand = and i64 %0, 7
  %getbyte.string = inttoptr i64 %shift.result10 to ptr
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %logand
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %ne.not = icmp eq i8 %getbyte.char, 0
  br i1 %ne.not, label %common.ret, label %jt.then_L683.preheader

jt.then_L683.preheader:                           ; preds = %jf.else
  %rv.llvmaddr66 = add i64 %add, 8
  %rv.lv67 = inttoptr i64 %rv.llvmaddr66 to ptr
  br label %jt.then_L683

common.ret:                                       ; preds = %jt.then_L683, %jf.else213, %entry, %jf.else
  ret i64 -4985279381848933680

jt.then_L683:                                     ; preds = %jt.then_L683.preheader, %jf.else213
  %rv.rv80 = phi i64 [ %xor173, %jf.else213 ], [ %rv.rv, %jt.then_L683.preheader ]
  %getbyte.char55 = phi i8 [ %getbyte.char223, %jf.else213 ], [ %getbyte.char, %jt.then_L683.preheader ]
  %STK4.0 = phi i64 [ %add98, %jf.else213 ], [ %logand, %jt.then_L683.preheader ]
  %rv.rv68 = load i64, ptr %rv.lv67, align 8
  %shift.result89 = lshr i64 %rv.rv80, 32
  %putbyte.llvmaddr = shl i64 %rv.rv68, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %shift.result89
  store i8 %getbyte.char55, ptr %putbyte.charptr, align 1
  %rv.rv110 = load i64, ptr %rv.lv, align 8
  %shift.result119 = and i64 %rv.rv110, -4294967296
  %shift.result135 = add i64 %shift.result119, 4294967296
  %1 = and i64 %rv.rv110, 4294967295
  %xor173 = or disjoint i64 %shift.result135, %1
  store i64 %xor173, ptr %rv.lv, align 8
  %ls208 = icmp ugt i64 %shift.result135, 4393751543808
  br i1 %ls208, label %common.ret, label %jf.else213

jf.else213:                                       ; preds = %jt.then_L683
  %add98 = add i64 %STK4.0, 1
  %getbyte.charptr222 = getelementptr i8, ptr %getbyte.string, i64 %add98
  %getbyte.char223 = load i8, ptr %getbyte.charptr222, align 1
  %ne229.not = icmp eq i8 %getbyte.char223, 0
  br i1 %ne229.not, label %common.ret, label %jt.then_L683
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noundef i64 @blib.rditem_end() local_unnamed_addr #6 section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.120, align 8
  %add = shl i64 %ll.static.value, 3
  %rv.llvmaddr = add i64 %add, 8
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.llvmaddr14 = add i64 %add, 16
  %rv.lv15 = inttoptr i64 %rv.llvmaddr14 to ptr
  %rv.rv16 = load i64, ptr %rv.lv15, align 8
  %shift.result21 = lshr i64 %rv.rv16, 32
  %putbyte.llvmaddr = shl i64 %rv.rv, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %shift.result21
  store i8 10, ptr %putbyte.charptr, align 1
  %rv.rv34 = load i64, ptr %rv.lv, align 8
  %rv.rv46 = load i64, ptr %rv.lv15, align 8
  %shift.result55 = lshr i64 %rv.rv46, 32
  %putbyte.llvmaddr68 = shl i64 %rv.rv34, 3
  %putbyte.string69 = inttoptr i64 %putbyte.llvmaddr68 to ptr
  %0 = getelementptr i8, ptr %putbyte.string69, i64 %shift.result55
  %putbyte.charptr70 = getelementptr i8, ptr %0, i64 1
  store i8 -1, ptr %putbyte.charptr70, align 1
  %rv.rv81 = load i64, ptr %rv.lv15, align 8
  %1 = and i64 %rv.rv81, -4294967296
  %2 = add i64 %1, 8589934592
  %3 = and i64 %rv.rv81, 4294967295
  %xor143 = or disjoint i64 %2, %3
  store i64 %xor143, ptr %rv.lv15, align 8
  %rv.lv168 = inttoptr i64 %add to ptr
  %rv.rv169 = load i64, ptr %rv.lv168, align 8
  %xor189 = or i64 %rv.rv169, 16
  store i64 %xor189, ptr %rv.lv168, align 8
  ret i64 -4985279381848933680
}

define i64 @findinput(i64 %0) section ".text.BLIB" {
entry:
  %fnap = tail call i64 @blib.findfile(i64 %0, i64 1)
  ret i64 %fnap
}

define i64 @findoutput(i64 %0) section ".text.BLIB" {
entry:
  %fnap = tail call i64 @blib.findfile(i64 %0, i64 2)
  ret i64 %fnap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define noundef i64 @selectinput(i64 %0) #9 section ".text.BLIB" {
entry:
  store i64 %0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  ret i64 -4985279381848933680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define noundef i64 @selectoutput(i64 %0) #9 section ".text.BLIB" {
entry:
  store i64 %0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  ret i64 -4985279381848933680
}

define range(i64 -1, 256) i64 @rdch() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 464), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L693

jf.else:                                          ; preds = %entry
  %lg.value7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn10 = inttoptr i64 %lg.value7 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn10(i64 101)
  br label %jf.then_L693

jf.then_L693:                                     ; preds = %jf.else, %entry
  %rv.llvmaddr = shl i64 %fnap, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 1
  %if_cond19 = icmp eq i64 %logand, 0
  br i1 %if_cond19, label %jf.then_L694, label %common.ret

common.ret:                                       ; preds = %jf.then_L696, %jf.else203, %jf.else229, %jf.then_L695, %jf.then_L693
  %common.ret.op = phi i64 [ -1, %jf.then_L693 ], [ -1, %jf.then_L695 ], [ %getbyte.charword, %jf.then_L696 ], [ 255, %jf.else203 ], [ -1, %jf.else229 ]
  ret i64 %common.ret.op

jf.then_L694:                                     ; preds = %jf.then_L693
  %rv.llvmaddr29 = add i64 %rv.llvmaddr, 16
  %rv.lv30 = inttoptr i64 %rv.llvmaddr29 to ptr
  %rv.rv31 = load i64, ptr %rv.lv30, align 8
  %logand36 = and i64 %rv.rv31, 4294967295
  %shift.result53 = lshr i64 %rv.rv31, 32
  %eq57.not = icmp eq i64 %logand36, %shift.result53
  br i1 %eq57.not, label %jf.else62, label %jf.then_L695

jf.else62:                                        ; preds = %jf.then_L694
  %rv.llvmaddr73 = add i64 %rv.llvmaddr, 32
  %rv.lv74 = inttoptr i64 %rv.llvmaddr73 to ptr
  %rv.rv75 = load i64, ptr %rv.lv74, align 8
  %rtap_ep_p_fn78 = inttoptr i64 %rv.rv75 to ptr
  %rtap80 = tail call i64 %rtap_ep_p_fn78(i64 %fnap)
  %rv.rv86.pre = load i64, ptr %rv.lv, align 8
  br label %jf.then_L695

jf.then_L695:                                     ; preds = %jf.else62, %jf.then_L694
  %rv.rv86 = phi i64 [ %rv.rv86.pre, %jf.else62 ], [ %rv.rv, %jf.then_L694 ]
  %logand91 = and i64 %rv.rv86, 1
  %if_cond94 = icmp eq i64 %logand91, 0
  br i1 %if_cond94, label %jf.then_L696, label %common.ret

jf.then_L696:                                     ; preds = %jf.then_L695
  %rv.llvmaddr106 = add i64 %rv.llvmaddr, 8
  %rv.lv107 = inttoptr i64 %rv.llvmaddr106 to ptr
  %rv.rv108 = load i64, ptr %rv.lv107, align 8
  %rv.rv120 = load i64, ptr %rv.lv30, align 8
  %logand125 = and i64 %rv.rv120, 4294967295
  %getbyte.llvmaddr = shl i64 %rv.rv108, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %logand125
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %getbyte.charword = zext i8 %getbyte.char to i64
  %add148 = add i64 %rv.rv120, 1
  %0 = and i64 %add148, 4294967295
  %1 = and i64 %rv.rv120, -4294967296
  %xor184 = or disjoint i64 %0, %1
  store i64 %xor184, ptr %rv.lv30, align 8
  %eq198.not = icmp eq i8 %getbyte.char, -1
  br i1 %eq198.not, label %jf.else203, label %common.ret

jf.else203:                                       ; preds = %jf.then_L696
  %rv.rv209 = load i64, ptr %rv.lv, align 8
  %2 = and i64 %rv.rv209, 16
  %if_cond228 = icmp eq i64 %2, 0
  br i1 %if_cond228, label %common.ret, label %jf.else229

jf.else229:                                       ; preds = %jf.else203
  %3 = and i64 %rv.rv209, -17
  store i64 %3, ptr %rv.lv, align 8
  br label %common.ret
}

define noundef i64 @unrdch() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 464), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L699

jf.else:                                          ; preds = %entry
  %lg.value6 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn9 = inttoptr i64 %lg.value6 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn9(i64 101)
  br label %jf.then_L699

jf.then_L699:                                     ; preds = %jf.else, %entry
  %add = shl i64 %fnap, 3
  %rv.llvmaddr = add i64 %add, 16
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 4294967295
  %gr.not = icmp eq i64 %logand, 0
  br i1 %gr.not, label %common.ret, label %jf.else28

common.ret:                                       ; preds = %jf.then_L699, %jf.else28
  ret i64 -4985279381848933680

jf.else28:                                        ; preds = %jf.then_L699
  %sub = add i64 %rv.rv, 4294967295
  %0 = and i64 %sub, 4294967295
  %1 = and i64 %rv.rv, -4294967296
  %xor84 = or disjoint i64 %0, %1
  store i64 %xor84, ptr %rv.lv, align 8
  br label %common.ret
}

define noundef i64 @wrch(i64 %0) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 472), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L702

jf.else:                                          ; preds = %entry
  %lg.value7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn10 = inttoptr i64 %lg.value7 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn10(i64 102)
  br label %jf.then_L702

jf.then_L702:                                     ; preds = %jf.else, %entry
  %add = shl i64 %fnap, 3
  %rv.llvmaddr = add i64 %add, 16
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 4294967295
  %shift.result37 = lshr i64 %rv.rv, 32
  %eq41 = icmp eq i64 %logand, %shift.result37
  br i1 %eq41, label %jt.then_L704, label %jt.else

jt.else:                                          ; preds = %jf.then_L702
  %eq51.not = icmp eq i64 %0, 10
  br i1 %eq51.not, label %jf.else56, label %jf.then_L703

jf.else56:                                        ; preds = %jt.else
  %ll.static.value = load i64, ptr @itemn.global.121, align 8
  %eq62 = icmp eq i64 %ll.static.value, %fnap
  %ll.static.value68 = load i64, ptr @itemn.global.122, align 8
  %eq74.not = icmp eq i64 %ll.static.value68, %fnap
  %or.cond = select i1 %eq62, i1 true, i1 %eq74.not
  br i1 %or.cond, label %jt.then_L704, label %jf.then_L703

jt.then_L704:                                     ; preds = %jf.else56, %jf.then_L702
  %rv.llvmaddr90 = add i64 %add, 32
  %rv.lv91 = inttoptr i64 %rv.llvmaddr90 to ptr
  %rv.rv92 = load i64, ptr %rv.lv91, align 8
  %rtap_ep_p_fn95 = inttoptr i64 %rv.rv92 to ptr
  %rtap97 = tail call i64 %rtap_ep_p_fn95(i64 %fnap)
  %rv.rv122.pre = load i64, ptr %rv.lv, align 8
  %.pre = and i64 %rv.rv122.pre, 4294967295
  br label %jf.then_L703

jf.then_L703:                                     ; preds = %jf.else56, %jt.then_L704, %jt.else
  %logand127.pre-phi = phi i64 [ %logand, %jf.else56 ], [ %.pre, %jt.then_L704 ], [ %logand, %jt.else ]
  %rv.llvmaddr108 = add i64 %add, 8
  %rv.lv109 = inttoptr i64 %rv.llvmaddr108 to ptr
  %rv.rv110 = load i64, ptr %rv.lv109, align 8
  %putbyte.char = trunc i64 %0 to i8
  %putbyte.llvmaddr = shl i64 %rv.rv110, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %logand127.pre-phi
  store i8 %putbyte.char, ptr %putbyte.charptr, align 1
  %rv.rv139 = load i64, ptr %rv.lv, align 8
  %add149 = add i64 %rv.rv139, 1
  %1 = and i64 %add149, 4294967295
  %2 = and i64 %rv.rv139, -4294967296
  %xor185 = or disjoint i64 %1, %2
  store i64 %xor185, ptr %rv.lv, align 8
  ret i64 -4985279381848933680
}

define noundef i64 @endread() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 464), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L707

jf.else:                                          ; preds = %entry
  %lg.value6 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn9 = inttoptr i64 %lg.value6 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn9(i64 101)
  br label %jf.then_L707

jf.then_L707:                                     ; preds = %jf.else, %entry
  %lg.value10 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 464), align 4
  %rtap_ep_p_fn13 = inttoptr i64 %lg.value10 to ptr
  %fnap14 = tail call i64 %rtap_ep_p_fn13()
  %rtap20 = tail call i64 @blib.block_close(i64 %fnap14)
  %lg.value22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 448), align 4
  %rtap_ep_p_fn25 = inttoptr i64 %lg.value22 to ptr
  %rtap27 = tail call i64 %rtap_ep_p_fn25(i64 0)
  ret i64 -4985279381848933680
}

define noundef i64 @endwrite() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 472), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L709

jf.else:                                          ; preds = %entry
  %lg.value6 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn9 = inttoptr i64 %lg.value6 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn9(i64 102)
  br label %jf.then_L709

jf.then_L709:                                     ; preds = %jf.else, %entry
  %lg.value10 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 472), align 4
  %rtap_ep_p_fn13 = inttoptr i64 %lg.value10 to ptr
  %fnap14 = tail call i64 %rtap_ep_p_fn13()
  %rtap20 = tail call i64 @blib.block_close(i64 %fnap14)
  %lg.value22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 456), align 4
  %rtap_ep_p_fn25 = inttoptr i64 %lg.value22 to ptr
  %rtap27 = tail call i64 %rtap_ep_p_fn25(i64 0)
  ret i64 -4985279381848933680
}

define noundef i64 @blib.ioinit(i64 %0, i64 %1, i64 %2) local_unnamed_addr section ".text.BLIB" {
entry:
  store i64 0, ptr @itemn.global.123, align 8
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 127)
  %eq.not.i = icmp eq i64 %fnap.i, 0
  br i1 %eq.not.i, label %blib.allocate_dcb.exit, label %jf.then_L639.i

jf.then_L639.i:                                   ; preds = %entry
  %lg.value14.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn17.i = inttoptr i64 %lg.value14.i to ptr
  %fnap19.i = tail call i64 %rtap_ep_p_fn17.i(i64 5)
  %eq26.not.i = icmp eq i64 %fnap19.i, 0
  br i1 %eq26.not.i, label %jf.else31.i, label %jf.then_L640.i

jf.else31.i:                                      ; preds = %jf.then_L639.i
  %lg.value34.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn37.i = inttoptr i64 %lg.value34.i to ptr
  %rtap.i = tail call i64 %rtap_ep_p_fn37.i(i64 %fnap.i)
  br label %blib.allocate_dcb.exit

jf.then_L640.i:                                   ; preds = %jf.then_L639.i
  %rv.llvmaddr.i = shl i64 %fnap19.i, 3
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %3 = and i64 %rv.rv.i, 4294967281
  %shift.result126.i = shl i64 %0, 32
  %xor67.i = or disjoint i64 %3, %shift.result126.i
  %xor155.i = or disjoint i64 %xor67.i, 10
  store i64 %xor155.i, ptr %rv.lv.i, align 8
  %stind.llvmaddr173.i = add i64 %rv.llvmaddr.i, 8
  %stind.lv174.i = inttoptr i64 %stind.llvmaddr173.i to ptr
  store i64 %fnap.i, ptr %stind.lv174.i, align 8
  %rv.llvmaddr184.i = add i64 %rv.llvmaddr.i, 16
  %rv.lv185.i = inttoptr i64 %rv.llvmaddr184.i to ptr
  store i64 0, ptr %rv.lv185.i, align 8
  %rv.rv304.i = load i64, ptr %rv.lv.i, align 8
  %xor324.i = and i64 %rv.rv304.i, -2
  store i64 %xor324.i, ptr %rv.lv.i, align 8
  %stind.llvmaddr343.i = add i64 %rv.llvmaddr.i, 32
  %stind.lv344.i = inttoptr i64 %stind.llvmaddr343.i to ptr
  store i64 ptrtoint (ptr @blib.tty_read to i64), ptr %stind.lv344.i, align 8
  %stind.llvmaddr356.i = add i64 %rv.llvmaddr.i, 24
  %stind.lv357.i = inttoptr i64 %stind.llvmaddr356.i to ptr
  store i64 ptrtoint (ptr @blib.tty_close to i64), ptr %stind.lv357.i, align 8
  %ll.static.value.i = load i64, ptr @itemn.global.123, align 8
  %stind.llvmaddr368.i = add i64 %rv.llvmaddr.i, 40
  %stind.lv369.i = inttoptr i64 %stind.llvmaddr368.i to ptr
  store i64 %ll.static.value.i, ptr %stind.lv369.i, align 8
  store i64 %fnap19.i, ptr @itemn.global.123, align 8
  br label %blib.allocate_dcb.exit

blib.allocate_dcb.exit:                           ; preds = %entry, %jf.else31.i, %jf.then_L640.i
  %common.ret.op.i = phi i64 [ 0, %jf.else31.i ], [ %fnap19.i, %jf.then_L640.i ], [ 0, %entry ]
  store i64 %common.ret.op.i, ptr @itemn.global.120, align 8
  %lg.value.i72 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn.i73 = inttoptr i64 %lg.value.i72 to ptr
  %fnap.i74 = tail call i64 %rtap_ep_p_fn.i73(i64 127)
  %eq.not.i75 = icmp eq i64 %fnap.i74, 0
  br i1 %eq.not.i75, label %blib.allocate_dcb.exit107, label %jf.then_L639.i76

jf.then_L639.i76:                                 ; preds = %blib.allocate_dcb.exit
  %lg.value14.i77 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn17.i78 = inttoptr i64 %lg.value14.i77 to ptr
  %fnap19.i79 = tail call i64 %rtap_ep_p_fn17.i78(i64 5)
  %eq26.not.i80 = icmp eq i64 %fnap19.i79, 0
  br i1 %eq26.not.i80, label %jf.else31.i103, label %jf.then_L640.i81

jf.else31.i103:                                   ; preds = %jf.then_L639.i76
  %lg.value34.i104 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn37.i105 = inttoptr i64 %lg.value34.i104 to ptr
  %rtap.i106 = tail call i64 %rtap_ep_p_fn37.i105(i64 %fnap.i74)
  br label %blib.allocate_dcb.exit107

jf.then_L640.i81:                                 ; preds = %jf.then_L639.i76
  %rv.llvmaddr.i82 = shl i64 %fnap19.i79, 3
  %rv.lv.i83 = inttoptr i64 %rv.llvmaddr.i82 to ptr
  %rv.rv.i84 = load i64, ptr %rv.lv.i83, align 8
  %4 = and i64 %rv.rv.i84, 4294967281
  %shift.result126.i85 = shl i64 %1, 32
  %xor67.i87 = or disjoint i64 %4, %shift.result126.i85
  %xor155.i88 = or disjoint i64 %xor67.i87, 12
  store i64 %xor155.i88, ptr %rv.lv.i83, align 8
  %stind.llvmaddr173.i89 = add i64 %rv.llvmaddr.i82, 8
  %stind.lv174.i90 = inttoptr i64 %stind.llvmaddr173.i89 to ptr
  store i64 %fnap.i74, ptr %stind.lv174.i90, align 8
  %rv.llvmaddr184.i91 = add i64 %rv.llvmaddr.i82, 16
  %rv.lv185.i92 = inttoptr i64 %rv.llvmaddr184.i91 to ptr
  store i64 4398046511104, ptr %rv.lv185.i92, align 8
  %rv.rv304.i93 = load i64, ptr %rv.lv.i83, align 8
  %xor324.i94 = and i64 %rv.rv304.i93, -2
  store i64 %xor324.i94, ptr %rv.lv.i83, align 8
  %stind.llvmaddr343.i95 = add i64 %rv.llvmaddr.i82, 32
  %stind.lv344.i96 = inttoptr i64 %stind.llvmaddr343.i95 to ptr
  store i64 ptrtoint (ptr @blib.tty_write.132 to i64), ptr %stind.lv344.i96, align 8
  %stind.llvmaddr356.i97 = add i64 %rv.llvmaddr.i82, 24
  %stind.lv357.i98 = inttoptr i64 %stind.llvmaddr356.i97 to ptr
  store i64 ptrtoint (ptr @blib.tty_close to i64), ptr %stind.lv357.i98, align 8
  %ll.static.value.i99 = load i64, ptr @itemn.global.123, align 8
  %stind.llvmaddr368.i100 = add i64 %rv.llvmaddr.i82, 40
  %stind.lv369.i101 = inttoptr i64 %stind.llvmaddr368.i100 to ptr
  store i64 %ll.static.value.i99, ptr %stind.lv369.i101, align 8
  store i64 %fnap19.i79, ptr @itemn.global.123, align 8
  br label %blib.allocate_dcb.exit107

blib.allocate_dcb.exit107:                        ; preds = %blib.allocate_dcb.exit, %jf.else31.i103, %jf.then_L640.i81
  %common.ret.op.i102 = phi i64 [ 0, %jf.else31.i103 ], [ %fnap19.i79, %jf.then_L640.i81 ], [ 0, %blib.allocate_dcb.exit ]
  store i64 %common.ret.op.i102, ptr @itemn.global.121, align 8
  %lg.value.i108 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn.i109 = inttoptr i64 %lg.value.i108 to ptr
  %fnap.i110 = tail call i64 %rtap_ep_p_fn.i109(i64 127)
  %eq.not.i111 = icmp eq i64 %fnap.i110, 0
  br i1 %eq.not.i111, label %blib.allocate_dcb.exit143, label %jf.then_L639.i112

jf.then_L639.i112:                                ; preds = %blib.allocate_dcb.exit107
  %lg.value14.i113 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn17.i114 = inttoptr i64 %lg.value14.i113 to ptr
  %fnap19.i115 = tail call i64 %rtap_ep_p_fn17.i114(i64 5)
  %eq26.not.i116 = icmp eq i64 %fnap19.i115, 0
  br i1 %eq26.not.i116, label %jf.else31.i139, label %jf.then_L640.i117

jf.else31.i139:                                   ; preds = %jf.then_L639.i112
  %lg.value34.i140 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn37.i141 = inttoptr i64 %lg.value34.i140 to ptr
  %rtap.i142 = tail call i64 %rtap_ep_p_fn37.i141(i64 %fnap.i110)
  br label %blib.allocate_dcb.exit143

jf.then_L640.i117:                                ; preds = %jf.then_L639.i112
  %rv.llvmaddr.i118 = shl i64 %fnap19.i115, 3
  %rv.lv.i119 = inttoptr i64 %rv.llvmaddr.i118 to ptr
  %rv.rv.i120 = load i64, ptr %rv.lv.i119, align 8
  %5 = and i64 %rv.rv.i120, 4294967281
  %shift.result126.i121 = shl i64 %2, 32
  %xor67.i123 = or disjoint i64 %5, %shift.result126.i121
  %xor155.i124 = or disjoint i64 %xor67.i123, 12
  store i64 %xor155.i124, ptr %rv.lv.i119, align 8
  %stind.llvmaddr173.i125 = add i64 %rv.llvmaddr.i118, 8
  %stind.lv174.i126 = inttoptr i64 %stind.llvmaddr173.i125 to ptr
  store i64 %fnap.i110, ptr %stind.lv174.i126, align 8
  %rv.llvmaddr184.i127 = add i64 %rv.llvmaddr.i118, 16
  %rv.lv185.i128 = inttoptr i64 %rv.llvmaddr184.i127 to ptr
  store i64 4398046511104, ptr %rv.lv185.i128, align 8
  %rv.rv304.i129 = load i64, ptr %rv.lv.i119, align 8
  %xor324.i130 = and i64 %rv.rv304.i129, -2
  store i64 %xor324.i130, ptr %rv.lv.i119, align 8
  %stind.llvmaddr343.i131 = add i64 %rv.llvmaddr.i118, 32
  %stind.lv344.i132 = inttoptr i64 %stind.llvmaddr343.i131 to ptr
  store i64 ptrtoint (ptr @blib.tty_write.132 to i64), ptr %stind.lv344.i132, align 8
  %stind.llvmaddr356.i133 = add i64 %rv.llvmaddr.i118, 24
  %stind.lv357.i134 = inttoptr i64 %stind.llvmaddr356.i133 to ptr
  store i64 ptrtoint (ptr @blib.tty_close to i64), ptr %stind.lv357.i134, align 8
  %ll.static.value.i135 = load i64, ptr @itemn.global.123, align 8
  %stind.llvmaddr368.i136 = add i64 %rv.llvmaddr.i118, 40
  %stind.lv369.i137 = inttoptr i64 %stind.llvmaddr368.i136 to ptr
  store i64 %ll.static.value.i135, ptr %stind.lv369.i137, align 8
  store i64 %fnap19.i115, ptr @itemn.global.123, align 8
  br label %blib.allocate_dcb.exit143

blib.allocate_dcb.exit143:                        ; preds = %blib.allocate_dcb.exit107, %jf.else31.i139, %jf.then_L640.i117
  %common.ret.op.i138 = phi i64 [ 0, %jf.else31.i139 ], [ %fnap19.i115, %jf.then_L640.i117 ], [ 0, %blib.allocate_dcb.exit107 ]
  store i64 %common.ret.op.i138, ptr @itemn.global.122, align 8
  %ll.static.value = load i64, ptr @itemn.global.120, align 8
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 448), align 4
  %rtap_ep_p_fn61 = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn61(i64 %ll.static.value)
  %ll.static.value63 = load i64, ptr @itemn.global.121, align 8
  %lg.value65 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 456), align 4
  %rtap_ep_p_fn68 = inttoptr i64 %lg.value65 to ptr
  %rtap70 = tail call i64 %rtap_ep_p_fn68(i64 %ll.static.value63)
  ret i64 -4985279381848933680
}

define noundef i64 @blib.ioterm() local_unnamed_addr section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.123, align 8
  %ll.static.value2 = load i64, ptr @itemn.global.122, align 8
  store i64 %ll.static.value2, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %ne.not = icmp eq i64 %ll.static.value, 0
  br i1 %ne.not, label %common.ret, label %jt.then_L712

common.ret:                                       ; preds = %jump.target_L715, %entry
  ret i64 -4985279381848933680

jt.then_L712:                                     ; preds = %entry, %jump.target_L715
  %STK1.0 = phi i64 [ %rv.rv, %jump.target_L715 ], [ %ll.static.value, %entry ]
  %add = shl i64 %STK1.0, 3
  %rv.llvmaddr = add i64 %add, 40
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.lv18 = inttoptr i64 %add to ptr
  %rv.rv19 = load i64, ptr %rv.lv18, align 8
  %0 = and i64 %rv.rv19, 8
  %if_cond31 = icmp eq i64 %0, 0
  br i1 %if_cond31, label %jump.target_L715, label %jf.else

jf.else:                                          ; preds = %jt.then_L712
  %1 = and i64 %rv.rv19, -9
  store i64 %1, ptr %rv.lv18, align 8
  br label %jump.target_L715

jump.target_L715:                                 ; preds = %jt.then_L712, %jf.else
  %rtap = tail call i64 @blib.block_close(i64 %STK1.0)
  %ne82.not = icmp eq i64 %rv.rv, 0
  br i1 %ne82.not, label %common.ret, label %jt.then_L712
}

define noundef i64 @rewind() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 464), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L717

jf.else:                                          ; preds = %entry
  %lg.value7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn10 = inttoptr i64 %lg.value7 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn10(i64 101)
  br label %jf.then_L717

jf.then_L717:                                     ; preds = %jf.else, %entry
  %rv.llvmaddr = shl i64 %fnap, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %shift.result18 = lshr i64 %rv.rv, 32
  %lg.value22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn25 = inttoptr i64 %lg.value22 to ptr
  %fnap30 = tail call i64 %rtap_ep_p_fn25(i64 8, i64 %shift.result18, i64 0, i64 0)
  %if_cond40 = icmp sgt i64 %fnap30, -1
  br i1 %if_cond40, label %jf.then_L718, label %jf.else41

jf.else41:                                        ; preds = %jf.then_L717
  %neg = sub i64 0, %fnap30
  store i64 %neg, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L718

jf.then_L718:                                     ; preds = %jf.else41, %jf.then_L717
  %rv.llvmaddr54 = add i64 %rv.llvmaddr, 16
  %rv.lv55 = inttoptr i64 %rv.llvmaddr54 to ptr
  store i64 0, ptr %rv.lv55, align 8
  %rv.rv154 = load i64, ptr %rv.lv, align 8
  %xor174 = and i64 %rv.rv154, -2
  store i64 %xor174, ptr %rv.lv, align 8
  ret i64 -4985279381848933680
}

define noundef i64 @mapstore() section ".text.BLIB" {
entry:
  %llg.bcpladdr = ashr i64 ptrtoint (ptr @__bcpl_global_vector to i64), 3
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.151 to i64), 3
  %lg.value = load i64, ptr @__bcpl_global_vector, align 4
  %lg.value5 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value5 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lstr.bcpladdr, i64 %lg.value)
  %lg.value9 = load i64, ptr @__bcpl_global_vector, align 4
  %sub = add i64 %lg.value9, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L721, label %lab_L720.preheader

lab_L720.preheader:                               ; preds = %entry
  %lstr.bcpladdr32 = ashr exact i64 ptrtoint (ptr @lstr.global.152 to i64), 3
  br label %lab_L720

lab_L720:                                         ; preds = %lab_L720.preheader, %jf.then_L724
  %STK8.0 = phi i64 [ %add71, %jf.then_L724 ], [ 0, %lab_L720.preheader ]
  %0 = and i64 %STK8.0, 3
  %eq.not = icmp eq i64 %0, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L724

jf.else:                                          ; preds = %lab_L720
  %lg.value36 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn39 = inttoptr i64 %lg.value36 to ptr
  %rtap42 = tail call i64 %rtap_ep_p_fn39(i64 %lstr.bcpladdr32, i64 %STK8.0)
  br label %jf.then_L724

jf.then_L724:                                     ; preds = %jf.else, %lab_L720
  %add = add i64 %STK8.0, %llg.bcpladdr
  %rv.llvmaddr = shl i64 %add, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %lg.value52 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn55 = inttoptr i64 %lg.value52 to ptr
  %rtap58 = tail call i64 %rtap_ep_p_fn55(i64 %rv.rv, i64 16)
  %lg.value60 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn63 = inttoptr i64 %lg.value60 to ptr
  %rtap65 = tail call i64 %rtap_ep_p_fn63(i64 32)
  %add71 = add i64 %STK8.0, 1
  %le.not = icmp sgt i64 %add71, %sub
  br i1 %le.not, label %jt.then_L721, label %lab_L720

jt.then_L721:                                     ; preds = %jf.then_L724, %entry
  %lg.value84 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 672), align 4
  %rtap_ep_p_fn87 = inttoptr i64 %lg.value84 to ptr
  %rtap88 = tail call i64 %rtap_ep_p_fn87()
  %lstr.bcpladdr89 = ashr exact i64 ptrtoint (ptr @lstr.global.153 to i64), 3
  %lg.value92 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn95 = inttoptr i64 %lg.value92 to ptr
  %rtap98 = tail call i64 %rtap_ep_p_fn95(i64 %lstr.bcpladdr89, i64 1024)
  %ll.static.value = load i64, ptr @itemn.global.123, align 8
  %ne.not = icmp eq i64 %ll.static.value, 0
  br i1 %ne.not, label %jf.then_L727, label %lab_L725.preheader

lab_L725.preheader:                               ; preds = %jt.then_L721
  %lstr.bcpladdr220 = ashr exact i64 ptrtoint (ptr @lstr.global.154 to i64), 3
  br label %lab_L725

lab_L725:                                         ; preds = %lab_L725.preheader, %lab_L725
  %STK.0 = phi i64 [ %rv.rv324, %lab_L725 ], [ %ll.static.value, %lab_L725.preheader ]
  %lg.value111 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  %eq117 = icmp eq i64 %lg.value111, %STK.0
  %lg.value123 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %eq129.not = icmp eq i64 %lg.value123, %STK.0
  %or.cond = select i1 %eq117, i1 true, i1 %eq129.not
  %__res_a.0 = select i1 %or.cond, i64 42, i64 32
  %rv.llvmaddr142 = shl i64 %STK.0, 3
  %rv.lv143 = inttoptr i64 %rv.llvmaddr142 to ptr
  %rv.rv144 = load i64, ptr %rv.lv143, align 8
  %1 = and i64 %rv.rv144, 2
  %if_cond167 = icmp eq i64 %1, 0
  %__res_a.1 = select i1 %if_cond167, i64 32, i64 82
  %2 = and i64 %rv.rv144, 4
  %if_cond211 = icmp eq i64 %2, 0
  %__res_a.2 = select i1 %if_cond211, i64 32, i64 87
  %shift.result240 = lshr i64 %rv.rv144, 32
  %rv.llvmaddr256 = add i64 %rv.llvmaddr142, 16
  %rv.lv257 = inttoptr i64 %rv.llvmaddr256 to ptr
  %rv.rv258 = load i64, ptr %rv.lv257, align 8
  %logand263 = and i64 %rv.rv258, 4294967295
  %shift.result284 = lshr i64 %rv.rv258, 32
  %logand298 = and i64 %rv.rv144, 1
  %lg.value300 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn303 = inttoptr i64 %lg.value300 to ptr
  %rtap313 = tail call i64 %rtap_ep_p_fn303(i64 %lstr.bcpladdr220, i64 %__res_a.0, i64 %STK.0, i64 %shift.result240, i64 %__res_a.1, i64 %__res_a.2, i64 %logand263, i64 %shift.result284, i64 %logand298)
  %rv.llvmaddr322 = add i64 %rv.llvmaddr142, 40
  %rv.lv323 = inttoptr i64 %rv.llvmaddr322 to ptr
  %rv.rv324 = load i64, ptr %rv.lv323, align 8
  %ne332.not = icmp eq i64 %rv.rv324, 0
  br i1 %ne332.not, label %jf.then_L727, label %lab_L725

jf.then_L727:                                     ; preds = %lab_L725, %jt.then_L721
  %rtap341 = tail call i64 @blib.dumpheap()
  %lstr.bcpladdr342 = ashr exact i64 ptrtoint (ptr @lstr.global.155 to i64), 3
  %lg.value345 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn348 = inttoptr i64 %lg.value345 to ptr
  %rtap351 = tail call i64 %rtap_ep_p_fn348(i64 %lstr.bcpladdr342, i64 1024)
  %lg.value352 = load i64, ptr @__bcpl_global_vector, align 4
  %add358 = add i64 %lg.value352, %llg.bcpladdr
  %lstr.bcpladdr361 = ashr exact i64 ptrtoint (ptr @lstr.global.156 to i64), 3
  br label %lab_L735

lab_L735:                                         ; preds = %lab_L735, %jf.then_L727
  %STK1.0 = phi i64 [ %add358, %jf.then_L727 ], [ %add465, %lab_L735 ]
  %rv.llvmaddr371 = shl i64 %STK1.0, 3
  %rv.lv372 = inttoptr i64 %rv.llvmaddr371 to ptr
  %rv.rv373 = load i64, ptr %rv.lv372, align 8
  %rv.llvmaddr383 = add i64 %rv.llvmaddr371, 8
  %rv.lv384 = inttoptr i64 %rv.llvmaddr383 to ptr
  %rv.rv385 = load i64, ptr %rv.lv384, align 8
  %rv.llvmaddr395 = add i64 %rv.llvmaddr371, 16
  %rv.lv396 = inttoptr i64 %rv.llvmaddr395 to ptr
  %rv.rv397 = load i64, ptr %rv.lv396, align 8
  %rv.llvmaddr407 = add i64 %rv.llvmaddr371, 24
  %rv.lv408 = inttoptr i64 %rv.llvmaddr407 to ptr
  %rv.rv409 = load i64, ptr %rv.lv408, align 8
  %rv.llvmaddr419 = add i64 %rv.llvmaddr371, 32
  %rv.lv420 = inttoptr i64 %rv.llvmaddr419 to ptr
  %rv.rv421 = load i64, ptr %rv.lv420, align 8
  %rv.llvmaddr431 = add i64 %rv.llvmaddr371, 40
  %rv.lv432 = inttoptr i64 %rv.llvmaddr431 to ptr
  %rv.rv433 = load i64, ptr %rv.lv432, align 8
  %rv.llvmaddr443 = add i64 %rv.llvmaddr371, 48
  %rv.lv444 = inttoptr i64 %rv.llvmaddr443 to ptr
  %rv.rv445 = load i64, ptr %rv.lv444, align 8
  %lg.value447 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn450 = inttoptr i64 %lg.value447 to ptr
  %rtap459 = tail call i64 %rtap_ep_p_fn450(i64 %lstr.bcpladdr361, i64 %rv.rv373, i64 %rv.rv385, i64 %rv.rv397, i64 %rv.rv409, i64 %rv.rv421, i64 %rv.rv433, i64 %rv.rv445)
  %add465 = add i64 %STK1.0, 7
  %rv.llvmaddr476 = shl i64 %add465, 3
  %rv.lv477 = inttoptr i64 %rv.llvmaddr476 to ptr
  %rv.rv478 = load i64, ptr %rv.lv477, align 8
  %eq483.not = icmp eq i64 %rv.rv478, 0
  br i1 %eq483.not, label %lab_L736, label %lab_L735

lab_L736:                                         ; preds = %lab_L735
  %lstr.bcpladdr489 = ashr exact i64 ptrtoint (ptr @lstr.global.157 to i64), 3
  %lg.value491 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn494 = inttoptr i64 %lg.value491 to ptr
  %rtap496 = tail call i64 %rtap_ep_p_fn494(i64 %lstr.bcpladdr489)
  ret i64 -4985279381848933680
}

define noundef i64 @blib.undefined() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 103)
  ret i64 -4985279381848933680
}

define noundef i64 @blib.bcplmain(i64 %0, i64 %1, i64 %2) local_unnamed_addr section ".text.BLIB" {
entry:
  %rtap = tail call i64 @blib.ioinit(i64 0, i64 1, i64 2)
  %gr = icmp slt i64 %0, 2
  br i1 %gr, label %jf.then_L740, label %lab_L741.preheader

lab_L741.preheader:                               ; preds = %entry
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.160 to i64), 3
  %shift.result10.i = and i64 %lstr.bcpladdr, -8
  %logand.i = and i64 %lstr.bcpladdr, 7
  %getbyte.string.i = inttoptr i64 %shift.result10.i to ptr
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string.i, i64 %logand.i
  br label %lab_L741

lab_L741:                                         ; preds = %lab_L741.preheader, %blib.rditem_add.exit267
  %STK14.0 = phi i64 [ %add69, %blib.rditem_add.exit267 ], [ 1, %lab_L741.preheader ]
  %gr37 = icmp samesign ult i64 %STK14.0, 2
  %ll.static.value.i232.pre284 = load i64, ptr @itemn.global.120, align 8
  br i1 %gr37, label %jf.then_L745, label %jf.else42

jf.else42:                                        ; preds = %lab_L741
  %add.i = shl i64 %ll.static.value.i232.pre284, 3
  %rv.llvmaddr.i = add i64 %add.i, 16
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %ls.i = icmp ugt i64 %rv.rv.i, 4398046511103
  br i1 %ls.i, label %jf.then_L745, label %jf.else.i

jf.else.i:                                        ; preds = %jf.else42
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %ne.not.i = icmp eq i8 %getbyte.char.i, 0
  br i1 %ne.not.i, label %jf.then_L745, label %jt.then_L683.preheader.i

jt.then_L683.preheader.i:                         ; preds = %jf.else.i
  %rv.llvmaddr66.i = add i64 %add.i, 8
  %rv.lv67.i = inttoptr i64 %rv.llvmaddr66.i to ptr
  br label %jt.then_L683.i

jt.then_L683.i:                                   ; preds = %jf.else213.i, %jt.then_L683.preheader.i
  %rv.rv80.i = phi i64 [ %xor173.i, %jf.else213.i ], [ %rv.rv.i, %jt.then_L683.preheader.i ]
  %getbyte.char55.i = phi i8 [ %getbyte.char223.i, %jf.else213.i ], [ %getbyte.char.i, %jt.then_L683.preheader.i ]
  %STK4.0.i = phi i64 [ %add98.i, %jf.else213.i ], [ %logand.i, %jt.then_L683.preheader.i ]
  %rv.rv68.i = load i64, ptr %rv.lv67.i, align 8
  %shift.result89.i = lshr i64 %rv.rv80.i, 32
  %putbyte.llvmaddr.i = shl i64 %rv.rv68.i, 3
  %putbyte.string.i = inttoptr i64 %putbyte.llvmaddr.i to ptr
  %putbyte.charptr.i = getelementptr i8, ptr %putbyte.string.i, i64 %shift.result89.i
  store i8 %getbyte.char55.i, ptr %putbyte.charptr.i, align 1
  %rv.rv110.i = load i64, ptr %rv.lv.i, align 8
  %shift.result119.i = and i64 %rv.rv110.i, -4294967296
  %shift.result135.i = add i64 %shift.result119.i, 4294967296
  %3 = and i64 %rv.rv110.i, 4294967295
  %xor173.i = or disjoint i64 %shift.result135.i, %3
  store i64 %xor173.i, ptr %rv.lv.i, align 8
  %ls208.i = icmp ugt i64 %shift.result135.i, 4393751543808
  br i1 %ls208.i, label %jf.then_L745.loopexit, label %jf.else213.i

jf.else213.i:                                     ; preds = %jt.then_L683.i
  %add98.i = add i64 %STK4.0.i, 1
  %getbyte.charptr222.i = getelementptr i8, ptr %getbyte.string.i, i64 %add98.i
  %getbyte.char223.i = load i8, ptr %getbyte.charptr222.i, align 1
  %ne229.not.i = icmp eq i8 %getbyte.char223.i, 0
  br i1 %ne229.not.i, label %jf.then_L745.loopexit, label %jt.then_L683.i

jf.then_L745.loopexit:                            ; preds = %jt.then_L683.i, %jf.else213.i
  %ll.static.value.i232.pre = load i64, ptr @itemn.global.120, align 8
  br label %jf.then_L745

jf.then_L745:                                     ; preds = %jf.then_L745.loopexit, %jf.else.i, %jf.else42, %lab_L741
  %ll.static.value.i232 = phi i64 [ %ll.static.value.i232.pre, %jf.then_L745.loopexit ], [ %ll.static.value.i232.pre284, %jf.else.i ], [ %ll.static.value.i232.pre284, %jf.else42 ], [ %ll.static.value.i232.pre284, %lab_L741 ]
  %add.i233 = shl i64 %ll.static.value.i232, 3
  %rv.llvmaddr.i234 = add i64 %add.i233, 16
  %rv.lv.i235 = inttoptr i64 %rv.llvmaddr.i234 to ptr
  %rv.rv.i236 = load i64, ptr %rv.lv.i235, align 8
  %ls.i237 = icmp ugt i64 %rv.rv.i236, 4398046511103
  br i1 %ls.i237, label %blib.rditem_add.exit267, label %jf.else.i238

jf.else.i238:                                     ; preds = %jf.then_L745
  %add = add i64 %STK14.0, %1
  %rv.llvmaddr = shl i64 %add, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %shift.result10.i239 = and i64 %rv.rv, -8
  %logand.i240 = and i64 %rv.rv, 7
  %getbyte.string.i241 = inttoptr i64 %shift.result10.i239 to ptr
  %getbyte.charptr.i242 = getelementptr i8, ptr %getbyte.string.i241, i64 %logand.i240
  %getbyte.char.i243 = load i8, ptr %getbyte.charptr.i242, align 1
  %ne.not.i244 = icmp eq i8 %getbyte.char.i243, 0
  br i1 %ne.not.i244, label %blib.rditem_add.exit267, label %jt.then_L683.preheader.i245

jt.then_L683.preheader.i245:                      ; preds = %jf.else.i238
  %rv.llvmaddr66.i246 = add i64 %add.i233, 8
  %rv.lv67.i247 = inttoptr i64 %rv.llvmaddr66.i246 to ptr
  br label %jt.then_L683.i248

jt.then_L683.i248:                                ; preds = %jf.else213.i262, %jt.then_L683.preheader.i245
  %rv.rv80.i249 = phi i64 [ %xor173.i260, %jf.else213.i262 ], [ %rv.rv.i236, %jt.then_L683.preheader.i245 ]
  %getbyte.char55.i250 = phi i8 [ %getbyte.char223.i265, %jf.else213.i262 ], [ %getbyte.char.i243, %jt.then_L683.preheader.i245 ]
  %STK4.0.i251 = phi i64 [ %add98.i263, %jf.else213.i262 ], [ %logand.i240, %jt.then_L683.preheader.i245 ]
  %rv.rv68.i252 = load i64, ptr %rv.lv67.i247, align 8
  %shift.result89.i253 = lshr i64 %rv.rv80.i249, 32
  %putbyte.llvmaddr.i254 = shl i64 %rv.rv68.i252, 3
  %putbyte.string.i255 = inttoptr i64 %putbyte.llvmaddr.i254 to ptr
  %putbyte.charptr.i256 = getelementptr i8, ptr %putbyte.string.i255, i64 %shift.result89.i253
  store i8 %getbyte.char55.i250, ptr %putbyte.charptr.i256, align 1
  %rv.rv110.i257 = load i64, ptr %rv.lv.i235, align 8
  %shift.result119.i258 = and i64 %rv.rv110.i257, -4294967296
  %shift.result135.i259 = add i64 %shift.result119.i258, 4294967296
  %4 = and i64 %rv.rv110.i257, 4294967295
  %xor173.i260 = or disjoint i64 %shift.result135.i259, %4
  store i64 %xor173.i260, ptr %rv.lv.i235, align 8
  %ls208.i261 = icmp ugt i64 %shift.result135.i259, 4393751543808
  br i1 %ls208.i261, label %blib.rditem_add.exit267, label %jf.else213.i262

jf.else213.i262:                                  ; preds = %jt.then_L683.i248
  %add98.i263 = add i64 %STK4.0.i251, 1
  %getbyte.charptr222.i264 = getelementptr i8, ptr %getbyte.string.i241, i64 %add98.i263
  %getbyte.char223.i265 = load i8, ptr %getbyte.charptr222.i264, align 1
  %ne229.not.i266 = icmp eq i8 %getbyte.char223.i265, 0
  br i1 %ne229.not.i266, label %blib.rditem_add.exit267, label %jt.then_L683.i248

blib.rditem_add.exit267:                          ; preds = %jt.then_L683.i248, %jf.else213.i262, %jf.then_L745, %jf.else.i238
  %add69 = add nuw nsw i64 %STK14.0, 1
  %le.not.not = icmp slt i64 %add69, %0
  br i1 %le.not.not, label %lab_L741, label %jt.then_L742

jt.then_L742:                                     ; preds = %blib.rditem_add.exit267
  %ll.static.value.i268 = load i64, ptr @itemn.global.120, align 8
  %add.i269 = shl i64 %ll.static.value.i268, 3
  %rv.llvmaddr.i270 = add i64 %add.i269, 8
  %rv.lv.i271 = inttoptr i64 %rv.llvmaddr.i270 to ptr
  %rv.rv.i272 = load i64, ptr %rv.lv.i271, align 8
  %rv.llvmaddr14.i = add i64 %add.i269, 16
  %rv.lv15.i = inttoptr i64 %rv.llvmaddr14.i to ptr
  %rv.rv16.i = load i64, ptr %rv.lv15.i, align 8
  %shift.result21.i = lshr i64 %rv.rv16.i, 32
  %putbyte.llvmaddr.i273 = shl i64 %rv.rv.i272, 3
  %putbyte.string.i274 = inttoptr i64 %putbyte.llvmaddr.i273 to ptr
  %putbyte.charptr.i275 = getelementptr i8, ptr %putbyte.string.i274, i64 %shift.result21.i
  store i8 10, ptr %putbyte.charptr.i275, align 1
  %rv.rv34.i = load i64, ptr %rv.lv.i271, align 8
  %rv.rv46.i = load i64, ptr %rv.lv15.i, align 8
  %shift.result55.i = lshr i64 %rv.rv46.i, 32
  %putbyte.llvmaddr68.i = shl i64 %rv.rv34.i, 3
  %putbyte.string69.i = inttoptr i64 %putbyte.llvmaddr68.i to ptr
  %5 = getelementptr i8, ptr %putbyte.string69.i, i64 %shift.result55.i
  %putbyte.charptr70.i = getelementptr i8, ptr %5, i64 1
  store i8 -1, ptr %putbyte.charptr70.i, align 1
  %rv.rv81.i = load i64, ptr %rv.lv15.i, align 8
  %6 = and i64 %rv.rv81.i, -4294967296
  %7 = add i64 %6, 8589934592
  %8 = and i64 %rv.rv81.i, 4294967295
  %xor143.i = or disjoint i64 %7, %8
  store i64 %xor143.i, ptr %rv.lv15.i, align 8
  %rv.lv168.i = inttoptr i64 %add.i269 to ptr
  %rv.rv169.i = load i64, ptr %rv.lv168.i, align 8
  %xor189.i = or i64 %rv.rv169.i, 16
  store i64 %xor189.i, ptr %rv.lv168.i, align 8
  br label %jf.then_L740

jf.then_L740:                                     ; preds = %jt.then_L742, %entry
  %lg.value = load i64, ptr @__bcpl_global_vector, align 4
  %sub92 = add i64 %lg.value, -1
  %gr100 = icmp slt i64 %sub92, 0
  br i1 %gr100, label %jt.then_L747, label %lab_L746.preheader

lab_L746.preheader:                               ; preds = %jf.then_L740
  %add111 = and i64 ptrtoint (ptr @__bcpl_global_vector to i64), -8
  %rv.llvmaddr114 = add i64 %add111, 8
  %rv.lv115 = inttoptr i64 %rv.llvmaddr114 to ptr
  br label %lab_L746

lab_L746:                                         ; preds = %lab_L746.preheader, %lab_L749
  %STK87.0 = phi i64 [ %add141, %lab_L749 ], [ 0, %lab_L746.preheader ]
  %rv.rv116 = load i64, ptr %rv.lv115, align 8
  %eq.not = icmp eq i64 %rv.rv116, 0
  br i1 %eq.not, label %jf.else125, label %lab_L749

jf.else125:                                       ; preds = %lab_L746
  %add134230 = shl i64 %STK87.0, 3
  %llg.bcpladdr231 = add i64 %add134230, ptrtoint (ptr @__bcpl_global_vector to i64)
  %stind.llvmaddr = and i64 %llg.bcpladdr231, -8
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 ptrtoint (ptr @blib.undefined to i64), ptr %stind.lv, align 8
  br label %lab_L749

lab_L749:                                         ; preds = %lab_L746, %jf.else125
  %add141 = add i64 %STK87.0, 1
  %le150.not = icmp sgt i64 %add141, %sub92
  br i1 %le150.not, label %jt.then_L747, label %lab_L746

jt.then_L747:                                     ; preds = %lab_L749, %jf.then_L740
  store i64 %2, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 232), align 4
  %lg.value160 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 8), align 4
  %eq164.not = icmp eq i64 %lg.value160, ptrtoint (ptr @blib.undefined to i64)
  br i1 %eq164.not, label %jf.else169, label %jf.then_L751

common.ret:                                       ; preds = %blib.ioterm.exit, %jf.else169
  %lg.value212.sink.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), %blib.ioterm.exit ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), %jf.else169 ]
  %fnap.sink = phi i64 [ %fnap, %blib.ioterm.exit ], [ 104, %jf.else169 ]
  %lg.value212.sink = load i64, ptr %lg.value212.sink.in, align 4
  %rtap_ep_p_fn215 = inttoptr i64 %lg.value212.sink to ptr
  %rtap217 = tail call i64 %rtap_ep_p_fn215(i64 %fnap.sink)
  ret i64 -4985279381848933680

jf.else169:                                       ; preds = %jt.then_L747
  %ll.static.value = load i64, ptr @itemn.global.122, align 8
  %lg.value171 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 456), align 4
  %rtap_ep_p_fn174 = inttoptr i64 %lg.value171 to ptr
  %rtap176 = tail call i64 %rtap_ep_p_fn174(i64 %ll.static.value)
  %lstr.bcpladdr177 = ashr exact i64 ptrtoint (ptr @lstr.global.161 to i64), 3
  %lg.value179 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn182 = inttoptr i64 %lg.value179 to ptr
  %rtap184 = tail call i64 %rtap_ep_p_fn182(i64 %lstr.bcpladdr177)
  br label %common.ret

jf.then_L751:                                     ; preds = %jt.then_L747
  %rtap_ep_p_fn196 = inttoptr i64 %lg.value160 to ptr
  %fnap = tail call i64 %rtap_ep_p_fn196(i64 0)
  %ll.static.value.i276 = load i64, ptr @itemn.global.123, align 8
  %ll.static.value2.i = load i64, ptr @itemn.global.122, align 8
  store i64 %ll.static.value2.i, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %ne.not.i277 = icmp eq i64 %ll.static.value.i276, 0
  br i1 %ne.not.i277, label %blib.ioterm.exit, label %jt.then_L712.i

jt.then_L712.i:                                   ; preds = %jf.then_L751, %jump.target_L715.i
  %STK1.0.i = phi i64 [ %rv.rv.i281, %jump.target_L715.i ], [ %ll.static.value.i276, %jf.then_L751 ]
  %add.i278 = shl i64 %STK1.0.i, 3
  %rv.llvmaddr.i279 = add i64 %add.i278, 40
  %rv.lv.i280 = inttoptr i64 %rv.llvmaddr.i279 to ptr
  %rv.rv.i281 = load i64, ptr %rv.lv.i280, align 8
  %rv.lv18.i = inttoptr i64 %add.i278 to ptr
  %rv.rv19.i = load i64, ptr %rv.lv18.i, align 8
  %9 = and i64 %rv.rv19.i, 8
  %if_cond31.i = icmp eq i64 %9, 0
  br i1 %if_cond31.i, label %jump.target_L715.i, label %jf.else.i282

jf.else.i282:                                     ; preds = %jt.then_L712.i
  %10 = and i64 %rv.rv19.i, -9
  store i64 %10, ptr %rv.lv18.i, align 8
  br label %jump.target_L715.i

jump.target_L715.i:                               ; preds = %jf.else.i282, %jt.then_L712.i
  %rtap.i = tail call i64 @blib.block_close(i64 %STK1.0.i)
  %ne82.not.i = icmp eq i64 %rv.rv.i281, 0
  br i1 %ne82.not.i, label %blib.ioterm.exit, label %jt.then_L712.i

blib.ioterm.exit:                                 ; preds = %jump.target_L715.i, %jf.then_L751
  %ll.static.value.i283 = load i64, ptr @itemn.global.82, align 8
  %shift.result3.i = shl i64 %ll.static.value.i283, 3
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 11, i64 %shift.result3.i, i64 8388608)
  store i64 0, ptr @itemn.global.82, align 8
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.scmp.i64.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.smax.i128(i128, i128) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) }
attributes #5 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !1}
!4 = distinct !{!4, !1, !2}
!5 = distinct !{!5, !1}
!6 = distinct !{!6, !1, !2}
!7 = distinct !{!7, !1}
!8 = distinct !{!8, !1, !2}
!9 = distinct !{!9, !1}
!10 = distinct !{!10, !1, !2}
!11 = distinct !{!11, !1}
!12 = distinct !{!12, !1, !2}
!13 = distinct !{!13, !1}
!14 = distinct !{!14, !1, !2}
!15 = distinct !{!15, !1}
