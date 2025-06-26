; ModuleID = 'BLIB'
source_filename = "BLIB"
target triple = "x86_64-unknown-linux-gnu"

@__bcpl_global_vector = external global [1024 x i64], section "BCPLGVEC"
@lstr.global = private global [14 x i8] c"\0D<<mess:%-%n>>", section ".rodata.BLIB", align 8
@itemn.global = internal global [16 x i64] [i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70], section ".rodata.BLIB"
@lstr.global.23 = private global [51 x i8] c"2Error: rdargs format specified too many arguments\0A", section ".rodata.BLIB", align 8
@lstr.global.24 = private global [10 x i8] c"\09 (yes/no)", section ".rodata.BLIB", align 8
@lstr.global.25 = private global [4 x i8] c"\03 > ", section ".rodata.BLIB", align 8
@lstr.global.26 = private global [4 x i8] c"\03yes", section ".rodata.BLIB", align 8
@lstr.global.27 = private global [2 x i8] c"\01y", section ".rodata.BLIB", align 8
@lstr.global.32 = private global [3 x i8] c"\02: ", section ".rodata.BLIB", align 8
@lstr.global.53 = private global [11 x i8] c"\0A%10.5f %n\0A", section ".rodata.BLIB", align 8
@lstr.global.54 = private global [11 x i8] c"\0A%10.5f %n\0A", section ".rodata.BLIB", align 8
@lstr.global.55 = private global [56 x i8] c"7ERROR sys_flt operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".rodata.BLIB", align 8
@lstr.global.57 = private global [63 x i8] c">ERROR sys package=%n operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".rodata.BLIB", align 8
@itemn.global.71 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.72 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.73 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.74 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.75 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.76 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.77 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.78 = internal unnamed_addr global i64 0, section ".data.BLIB"
@lstr.global.80 = private global [84 x i8] c"S\0A-- HEAP SPACE ------------------------------------------------------------------\0A\0A", section ".rodata.BLIB", align 8
@lstr.global.81 = private global [20 x i8] c"\13Heap not allocated\0A", section ".rodata.BLIB", align 8
@lstr.global.82 = private global [74 x i8] c"IHeap of %N words allocated at range %16X..%16X (byte address %16X..%16X)\0A", section ".rodata.BLIB", align 8
@lstr.global.83 = private global [27 x i8] c"\1A\0ABlocks on the free list:\0A", section ".rodata.BLIB", align 8
@lstr.global.84 = private global [73 x i8] c"HNo.  Size (words)      At BCPL address   To BCPL address    Contents...\0A", section ".rodata.BLIB", align 8
@lstr.global.85 = private global [24 x i8] c"\17%4X: %16X %16X..%16X   ", section ".rodata.BLIB", align 8
@lstr.global.86 = private global [14 x i8] c"\0D\0AStatistics:\0A", section ".rodata.BLIB", align 8
@lstr.global.87 = private global [76 x i8] c"KFree list contains %N words of space in %N blocks. The largest is %N words\0A", section ".rodata.BLIB", align 8
@lstr.global.88 = private global [62 x i8] c"=getvecs=%n (largest %n) freevecs=%n current use %n (hwm %n)\0A\0A", section ".rodata.BLIB", align 8
@itemn.global.104 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.105 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.106 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.107 = internal unnamed_addr global i64 0, section ".data.BLIB"
@lstr.global.139 = private global [82 x i8] c"Q\0A-- GLOBAL VECTOR (%4I ENTRIES) ------------------------------------------------\0A", section ".rodata.BLIB", align 8
@lstr.global.140 = private global [7 x i8] c"\06\0A%4I: ", section ".rodata.BLIB", align 8
@lstr.global.141 = private global [83 x i8] c"R\0A-- STREAMS (BUFFER SIZE %4I)) -------------------------------------------------\0A\0A", section ".rodata.BLIB", align 8
@lstr.global.142 = private global [57 x i8] c"8%cDCB %16X: FD %2i ACCESS %c%c POS %4i LAST %4i EOF %n \0A", section ".rodata.BLIB", align 8
@lstr.global.143 = private global [84 x i8] c"S\0A--------------------------------------------------------------------------------\0A\0A", section ".rodata.BLIB", align 8

@__bcpl_gv65 = alias ptr, ptr @mapstore
@__bcpl_gv4 = alias ptr, ptr @rewind
@__bcpl_gv61 = alias ptr, ptr @endwrite.133
@__bcpl_gv60 = alias ptr, ptr @endread.131
@__bcpl_gv41 = alias ptr, ptr @wrch
@__bcpl_gv40 = alias ptr, ptr @unrdch
@__bcpl_gv38 = alias ptr, ptr @rdch
@__bcpl_gv57 = alias ptr, ptr @selectoutput
@__bcpl_gv56 = alias ptr, ptr @selectinput
@__bcpl_gv49 = alias ptr, ptr @findoutput.124
@__bcpl_gv48 = alias ptr, ptr @findinput.122
@__bcpl_gv2 = alias ptr, ptr @stop
@__bcpl_gv11 = alias ptr, ptr @stacksize
@__bcpl_gv63 = alias ptr, ptr @time
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
@__bcpl_gv89 = alias ptr, ptr @writes
@__bcpl_gv3 = alias ptr, ptr @sys
@__bcpl_gv94 = alias ptr, ptr @writef
@__bcpl_gv92 = alias ptr, ptr @writez
@__bcpl_gv73 = alias ptr, ptr @writeflt
@__bcpl_gv59 = alias ptr, ptr @output
@__bcpl_gv58 = alias ptr, ptr @input
@__bcpl_gv61.145 = alias ptr, ptr @endwrite
@__bcpl_gv60.146 = alias ptr, ptr @endread
@__bcpl_gv130 = alias ptr, ptr @findappend
@__bcpl_gv49.147 = alias ptr, ptr @findoutput
@__bcpl_gv53 = alias ptr, ptr @pathfindinput
@__bcpl_gv48.148 = alias ptr, ptr @findinput
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
  br label %lab_L049

lab_L049:                                         ; preds = %entry, %lab_L049
  %STK4.0 = phi i64 [ %getbyte.charword, %entry ], [ %add33, %lab_L049 ]
  %getbyte.charptr17 = getelementptr i8, ptr %getbyte.string, i64 %STK4.0
  %getbyte.char18 = load i8, ptr %getbyte.charptr17, align 1
  %getbyte.charword19 = zext i8 %getbyte.char18 to i64
  %add = add i64 %STK4.0, %1
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %getbyte.charword19, ptr %stind.lv, align 8
  %add33 = add nsw i64 %STK4.0, -1
  %ge.not = icmp eq i64 %STK4.0, 0
  br i1 %ge.not, label %jt.then_L050, label %lab_L049

jt.then_L050:                                     ; preds = %lab_L049
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
  br label %lab_L053

lab_L053:                                         ; preds = %entry, %lab_L053
  %STK16.0 = phi i64 [ 0, %entry ], [ %add48, %lab_L053 ]
  %add32 = add i64 %STK16.0, %0
  %rv.llvmaddr35 = shl i64 %add32, 3
  %rv.lv36 = inttoptr i64 %rv.llvmaddr35 to ptr
  %rv.rv37 = load i64, ptr %rv.lv36, align 8
  %putbyte.char = trunc i64 %rv.rv37 to i8
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %STK16.0
  store i8 %putbyte.char, ptr %putbyte.charptr, align 1
  %add48 = add nuw nsw i64 %STK16.0, 1
  %le.not.not = icmp samesign ult i64 %STK16.0, %logand
  br i1 %le.not.not, label %lab_L053, label %jt.then_L054

jt.then_L054:                                     ; preds = %lab_L053
  %add73 = and i64 %rv.rv, 248
  %sub = or disjoint i64 %add73, 7
  %gr89.not = icmp samesign ult i64 %logand, %sub
  br i1 %gr89.not, label %lab_L057.preheader, label %jt.then_L058

lab_L057.preheader:                               ; preds = %jt.then_L054
  %2 = getelementptr i8, ptr %putbyte.string, i64 %logand
  %scevgep = getelementptr i8, ptr %2, i64 1
  %3 = add nuw nsw i64 %add73, 8
  %4 = add nuw nsw i64 %logand, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %3, i64 %4)
  %6 = xor i64 %logand, -1
  %7 = add nsw i64 %5, %6
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %7, i1 false)
  br label %jt.then_L058

jt.then_L058:                                     ; preds = %lab_L057.preheader, %jt.then_L054
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
  br i1 %le.not, label %jf.then_L063, label %lab_L061.preheader

lab_L061.preheader:                               ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %getbyte.string, i64 1
  %rv.llvmaddr = shl i64 %1, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %stack.vecaddr.i = ptrtoint ptr %stack.vec.i to i64
  %stack.bcpladdr.i = ashr exact i64 %stack.vecaddr.i, 3
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global to i64), 3
  br label %lab_L061

lab_L061:                                         ; preds = %lab_L061.preheader, %jump.target_L062
  %STK2.0 = phi i64 [ %STK2.8, %jump.target_L062 ], [ 1, %lab_L061.preheader ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %add = add nsw i64 %STK2.0, 1
  %eq = icmp eq i8 %getbyte.char19, 37
  br i1 %eq, label %jt.then_L067, label %jt.else

jt.else:                                          ; preds = %lab_L061
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value45 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value45 to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  br label %jump.target_L062

jt.then_L067:                                     ; preds = %lab_L061
  %getbyte.charptr55 = getelementptr i8, ptr %getbyte.string, i64 %add
  %getbyte.char56 = load i8, ptr %getbyte.charptr55, align 1
  %getbyte.charword57 = zext i8 %getbyte.char56 to i64
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.llvmaddr64 = shl i64 %rv.rv, 3
  %rv.lv65 = inttoptr i64 %rv.llvmaddr64 to ptr
  %rv.rv66 = load i64, ptr %rv.lv65, align 8
  br label %lab_L064.outer

lab_L064.outer:                                   ; preds = %lab_L086, %jt.then_L067
  %if_cond275.ph = phi i1 [ true, %jt.then_L067 ], [ false, %lab_L086 ]
  %STK25.0.ph = phi i64 [ 0, %jt.then_L067 ], [ %sub225, %lab_L086 ]
  %STK24.0.ph = phi i64 [ 0, %jt.then_L067 ], [ %sub, %lab_L086 ]
  %STK22.0.ph = phi i64 [ %getbyte.charword57, %jt.then_L067 ], [ %getbyte.charword246, %lab_L086 ]
  %STK2.1.ph = phi i64 [ %add, %jt.then_L067 ], [ %add233, %lab_L086 ]
  br label %lab_L064

lab_L064:                                         ; preds = %lab_L064.backedge, %lab_L064.outer
  %if_cond275 = phi i1 [ %if_cond275.ph, %lab_L064.outer ], [ false, %lab_L064.backedge ]
  %STK24.0 = phi i64 [ %STK24.0.ph, %lab_L064.outer ], [ %sub, %lab_L064.backedge ]
  %STK22.0 = phi i64 [ %STK22.0.ph, %lab_L064.outer ], [ %STK22.0.be, %lab_L064.backedge ]
  %STK2.1 = phi i64 [ %STK2.1.ph, %lab_L064.outer ], [ %STK2.1.be, %lab_L064.backedge ]
  %lg.value71 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn74 = inttoptr i64 %lg.value71 to ptr
  %fnap = call i64 %rtap_ep_p_fn74(i64 %STK22.0)
  switch i64 %fnap, label %lab_L070 [
    i64 80, label %lab_L119
    i64 70, label %lab_L116
    i64 69, label %lab_L115
    i64 77, label %lab_L113
    i64 45, label %lab_L112
    i64 43, label %lab_L111
    i64 36, label %lab_L111
    i64 66, label %lf_L066
    i64 90, label %lab_L105
    i64 85, label %lab_L104
    i64 78, label %lf_L065.loopexit1477
    i64 88, label %lab_L102
    i64 79, label %lab_L101
    i64 35, label %lf_L065.loopexit1384
    i64 67, label %lf_L065
    i64 84, label %lab_L098
    i64 83, label %lf_L065.loopexit
    i64 73, label %lab_L096
    i64 68, label %lab_L090
    i64 57, label %lab_L083.preheader
    i64 56, label %lab_L083.preheader
    i64 55, label %lab_L083.preheader
    i64 54, label %lab_L083.preheader
    i64 53, label %lab_L083.preheader
    i64 52, label %lab_L083.preheader
    i64 51, label %lab_L083.preheader
    i64 50, label %lab_L083.preheader
    i64 49, label %lab_L083.preheader
    i64 48, label %lab_L083.preheader
  ]

lab_L083.preheader:                               ; preds = %lab_L064, %lab_L064, %lab_L064, %lab_L064, %lab_L064, %lab_L064, %lab_L064, %lab_L064, %lab_L064, %lab_L064
  br label %lab_L083

lab_L070:                                         ; preds = %lab_L064
  %lg.value79 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn82 = inttoptr i64 %lg.value79 to ptr
  %rtap84 = call i64 %rtap_ep_p_fn82(i64 %STK22.0)
  %add90 = add i64 %STK2.1, 1
  br label %jump.target_L062

lab_L083:                                         ; preds = %lab_L083.preheader, %lab_L083
  %STK24.2 = phi i64 [ %sub, %lab_L083 ], [ %STK24.0, %lab_L083.preheader ]
  %STK22.2 = phi i64 [ %getbyte.charword128, %lab_L083 ], [ %STK22.0, %lab_L083.preheader ]
  %STK2.3 = phi i64 [ %add115, %lab_L083 ], [ %STK2.1, %lab_L083.preheader ]
  %mul = mul i64 %STK24.2, 10
  %add103 = add nsw i64 %STK22.2, -48
  %sub = add i64 %add103, %mul
  %add115 = add i64 %STK2.3, 1
  %getbyte.charptr126 = getelementptr i8, ptr %getbyte.string, i64 %add115
  %getbyte.char127 = load i8, ptr %getbyte.charptr126, align 1
  %getbyte.charword128 = zext i8 %getbyte.char127 to i64
  %2 = add i8 %getbyte.char127, -48
  %or.cond = icmp ult i8 %2, 10
  br i1 %or.cond, label %lab_L083, label %lab_L072

lab_L072:                                         ; preds = %lab_L083
  %eq160.not = icmp eq i8 %getbyte.char127, 46
  br i1 %eq160.not, label %jf.else165, label %lab_L064.backedge

lab_L064.backedge:                                ; preds = %lab_L072, %jf.else165
  %STK22.0.be = phi i64 [ %getbyte.charword128, %lab_L072 ], [ %getbyte.charword184, %jf.else165 ]
  %STK2.1.be = phi i64 [ %add115, %lab_L072 ], [ %add171, %jf.else165 ]
  br label %lab_L064

jf.else165:                                       ; preds = %lab_L072
  %add171 = add i64 %STK2.3, 2
  %getbyte.charptr182 = getelementptr i8, ptr %getbyte.string, i64 %add171
  %getbyte.char183 = load i8, ptr %getbyte.charptr182, align 1
  %getbyte.charword184 = zext i8 %getbyte.char183 to i64
  %3 = add i8 %getbyte.char183, -58
  %or.cond1159 = icmp ult i8 %3, -10
  br i1 %or.cond1159, label %lab_L064.backedge, label %lab_L086

lab_L086:                                         ; preds = %jf.else165, %lab_L086
  %STK25.1 = phi i64 [ %sub225, %lab_L086 ], [ %STK25.0.ph, %jf.else165 ]
  %STK22.3 = phi i64 [ %getbyte.charword246, %lab_L086 ], [ %getbyte.charword184, %jf.else165 ]
  %STK2.4 = phi i64 [ %add233, %lab_L086 ], [ %add171, %jf.else165 ]
  %mul214 = mul i64 %STK25.1, 10
  %add220 = add nsw i64 %STK22.3, -48
  %sub225 = add i64 %add220, %mul214
  %add233 = add i64 %STK2.4, 1
  %getbyte.charptr244 = getelementptr i8, ptr %getbyte.string, i64 %add233
  %getbyte.char245 = load i8, ptr %getbyte.charptr244, align 1
  %getbyte.charword246 = zext i8 %getbyte.char245 to i64
  %4 = add i8 %getbyte.char245, -48
  %or.cond1160 = icmp ult i8 %4, 10
  br i1 %or.cond1160, label %lab_L086, label %lab_L064.outer

lab_L090:                                         ; preds = %lab_L064
  br i1 %if_cond275, label %lab_L096.thread, label %jf.else276

lab_L096.thread:                                  ; preds = %lab_L090
  %lg.value4041383 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), align 4
  br label %jt.else485

jf.else276:                                       ; preds = %lab_L090
  %gr = icmp slt i64 %STK25.0.ph, 1
  br i1 %gr, label %jt.then_L093, label %lab_L092

lab_L092:                                         ; preds = %jf.else276, %lab_L092
  %STK278.0 = phi i64 [ %add305, %lab_L092 ], [ 1, %jf.else276 ]
  %STK277.0 = phi i64 [ %mul297, %lab_L092 ], [ 1, %jf.else276 ]
  %mul297 = mul i64 %STK277.0, 10
  %add305 = add i64 %STK278.0, 1
  %le314.not = icmp sgt i64 %add305, %STK25.0.ph
  br i1 %le314.not, label %jt.then_L093, label %lab_L092

jt.then_L093:                                     ; preds = %lab_L092, %jf.else276
  %STK277.1 = phi i64 [ 1, %jf.else276 ], [ %mul297, %lab_L092 ]
  %rv.rv66.frozen = freeze i64 %rv.rv66
  %STK277.1.frozen = freeze i64 %STK277.1
  %div = sdiv i64 %rv.rv66.frozen, %STK277.1.frozen
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %stack.vec.i)
  %neg.i = sub i64 0, %div
  %if_cond.i = icmp slt i64 %rv.rv66, 0
  %spec.select.i = select i1 %if_cond.i, i64 %div, i64 %neg.i
  br label %lab_L131.i

lab_L131.i:                                       ; preds = %lab_L131.i, %jt.then_L093
  %STK7.1.i = phi i64 [ %spec.select.i, %jt.then_L093 ], [ %div.i, %lab_L131.i ]
  %STK5.0.i = phi i64 [ 0, %jt.then_L093 ], [ %add45.i, %lab_L131.i ]
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
  br i1 %if_cond51.not.i, label %lab_L132.i, label %lab_L131.i

lab_L132.i:                                       ; preds = %lab_L131.i
  %6 = xor i64 %STK25.0.ph, -1
  %rv.rv66.lobit = ashr i64 %rv.rv66, 63
  %sub338 = add i64 %rv.rv66.lobit, %6
  %spec.select209.i = add i64 %sub338, %STK24.0
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L136.i, label %lab_L135.i

lab_L135.i:                                       ; preds = %lab_L132.i, %lab_L135.i
  %STK71.0.i = phi i64 [ %add104.i, %lab_L135.i ], [ %add70.i, %lab_L132.i ]
  %lg.value93.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96.i = inttoptr i64 %lg.value93.i to ptr
  %rtap98.i = call i64 %rtap_ep_p_fn96.i(i64 32)
  %add104.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add104.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L136.i, label %lab_L135.i

jt.then_L136.i:                                   ; preds = %lab_L135.i, %lab_L132.i
  br i1 %if_cond.i, label %jt.else127.i, label %jf.then_L141.i

jt.else127.i:                                     ; preds = %jt.then_L136.i
  %lg.value129.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn132.i = inttoptr i64 %lg.value129.i to ptr
  %rtap134.i = call i64 %rtap_ep_p_fn132.i(i64 45)
  br label %jf.then_L141.i

jf.then_L141.i:                                   ; preds = %jt.else127.i, %jt.then_L136.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L142.i

lab_L142.i:                                       ; preds = %jf.then_L141.i, %lab_L142.i
  %STK141.0.i = phi i64 [ %add177.i, %lab_L142.i ], [ %STK5.0.i, %jf.then_L141.i ]
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
  br i1 %ge.not.i, label %writedz.exit, label %lab_L142.i

writedz.exit:                                     ; preds = %lab_L142.i, %jf.then_L141.i
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
  br label %jump.target_L062

lab_L096:                                         ; preds = %lab_L064
  %lg.value404 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L107

lab_L098:                                         ; preds = %lab_L064
  %lg.value418 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 720), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L107

lab_L101:                                         ; preds = %lab_L064
  %lg.value439 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L107

lab_L102:                                         ; preds = %lab_L064
  %lg.value446 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L107

lab_L104:                                         ; preds = %lab_L064
  %lg.value460 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 728), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L107

lab_L105:                                         ; preds = %lab_L064
  %lg.value467 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 736), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L107

lf_L066:                                          ; preds = %lab_L064
  br i1 %if_cond275, label %jt.else485, label %jt.then_L107

jt.else485:                                       ; preds = %lab_L096.thread, %lab_L096, %lab_L098, %lab_L101, %lab_L102, %lab_L104, %lab_L105, %lf_L066
  %STK23.1.ph1381 = phi i64 [ %lg.value467, %lab_L105 ], [ ptrtoint (ptr @writebin to i64), %lf_L066 ], [ %lg.value460, %lab_L104 ], [ %lg.value446, %lab_L102 ], [ %lg.value439, %lab_L101 ], [ %lg.value418, %lab_L098 ], [ %lg.value404, %lab_L096 ], [ %lg.value4041383, %lab_L096.thread ]
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
  br label %jt.then_L107

jt.then_L107:                                     ; preds = %lab_L096, %lab_L098, %lab_L101, %lab_L102, %lab_L104, %lab_L105, %jt.else485, %lf_L066
  %STK23.1.ph1380 = phi i64 [ ptrtoint (ptr @writebin to i64), %lf_L066 ], [ %STK23.1.ph1381, %jt.else485 ], [ %lg.value467, %lab_L105 ], [ %lg.value460, %lab_L104 ], [ %lg.value446, %lab_L102 ], [ %lg.value439, %lab_L101 ], [ %lg.value418, %lab_L098 ], [ %lg.value404, %lab_L096 ]
  %STK24.3 = phi i64 [ %STK24.0, %lf_L066 ], [ %__res_a.0, %jt.else485 ], [ %STK24.0, %lab_L105 ], [ %STK24.0, %lab_L104 ], [ %STK24.0, %lab_L102 ], [ %STK24.0, %lab_L101 ], [ %STK24.0, %lab_L098 ], [ %STK24.0, %lab_L096 ]
  %STK2.6 = phi i64 [ %STK2.1, %lf_L066 ], [ %add491, %jt.else485 ], [ %STK2.1, %lab_L105 ], [ %STK2.1, %lab_L104 ], [ %STK2.1, %lab_L102 ], [ %STK2.1, %lab_L101 ], [ %STK2.1, %lab_L098 ], [ %STK2.1, %lab_L096 ]
  %rtap_ep_p_fn567 = inttoptr i64 %STK23.1.ph1380 to ptr
  %rtap570 = call i64 %rtap_ep_p_fn567(i64 %rv.rv66, i64 %STK24.3)
  %rv.rv576 = load i64, ptr %rv.lv, align 8
  %add581 = add i64 %rv.rv576, 1
  store i64 %add581, ptr %rv.lv, align 8
  %add594 = add i64 %STK2.6, 1
  br label %jump.target_L062

lf_L065.loopexit1384:                             ; preds = %lab_L064
  br label %lf_L065

lf_L065.loopexit1477:                             ; preds = %lab_L064
  br label %lf_L065

lf_L065.loopexit:                                 ; preds = %lab_L064
  br label %lf_L065

lf_L065:                                          ; preds = %lab_L064, %lf_L065.loopexit, %lf_L065.loopexit1477, %lf_L065.loopexit1384
  %STK23.1.ph1174.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1008), %lf_L065.loopexit1384 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 688), %lf_L065.loopexit1477 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), %lf_L065.loopexit ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), %lab_L064 ]
  %STK23.1.ph1174 = load i64, ptr %STK23.1.ph1174.in, align 4
  %rtap_ep_p_fn603 = inttoptr i64 %STK23.1.ph1174 to ptr
  %rtap606 = call i64 %rtap_ep_p_fn603(i64 %rv.rv66, i64 0)
  %rv.rv612 = load i64, ptr %rv.lv, align 8
  %add617 = add i64 %rv.rv612, 1
  store i64 %add617, ptr %rv.lv, align 8
  %add630 = add i64 %STK2.1, 1
  br label %jump.target_L062

lab_L111:                                         ; preds = %lab_L064, %lab_L064
  %rv.rv638 = load i64, ptr %rv.lv, align 8
  %add643 = add i64 %rv.rv638, 1
  store i64 %add643, ptr %rv.lv, align 8
  %add656 = add i64 %STK2.1, 1
  br label %jump.target_L062

lab_L112:                                         ; preds = %lab_L064
  %rv.rv664 = load i64, ptr %rv.lv, align 8
  %sub669 = add i64 %rv.rv664, -1
  store i64 %sub669, ptr %rv.lv, align 8
  %add682 = add i64 %STK2.1, 1
  br label %jump.target_L062

lab_L113:                                         ; preds = %lab_L064
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
  br label %jump.target_L062

lab_L115:                                         ; preds = %lab_L064
  %rv.rv748 = load i64, ptr %rv.lv, align 8
  %add753 = add i64 %rv.rv748, 1
  store i64 %add753, ptr %rv.lv, align 8
  %lg.value767 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1440), align 4
  %rtap_ep_p_fn770 = inttoptr i64 %lg.value767 to ptr
  %rtap774 = call i64 %rtap_ep_p_fn770(i64 %rv.rv66, i64 %STK24.0, i64 %STK25.0.ph)
  %add780 = add i64 %STK2.1, 1
  br label %jump.target_L062

lab_L116:                                         ; preds = %lab_L064
  %rv.rv788 = load i64, ptr %rv.lv, align 8
  %add793 = add i64 %rv.rv788, 1
  store i64 %add793, ptr %rv.lv, align 8
  br i1 %if_cond275, label %jf.then_L117, label %jf.else805

jf.else805:                                       ; preds = %lab_L116
  %lg.value812 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 584), align 4
  %rtap_ep_p_fn815 = inttoptr i64 %lg.value812 to ptr
  %rtap819 = call i64 %rtap_ep_p_fn815(i64 %rv.rv66, i64 %STK24.0, i64 %STK25.0.ph)
  br label %jump.target_L118

jf.then_L117:                                     ; preds = %lab_L116
  %rtap830 = call i64 @write_format(i64 %rv.rv66, i64 %1)
  br label %jump.target_L118

jump.target_L118:                                 ; preds = %jf.then_L117, %jf.else805
  %add836 = add i64 %STK2.1, 1
  br label %jump.target_L062

lab_L119:                                         ; preds = %lab_L064
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
  br i1 %eq898.not, label %jf.else903, label %jf.then_L120

jf.else903:                                       ; preds = %lab_L119
  %getbyte.char916 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword917 = zext i8 %getbyte.char916 to i64
  %gr921 = icmp sgt i64 %add890, %getbyte.charword917
  br i1 %gr921, label %jump.target_L062, label %lab_L122

lab_L122:                                         ; preds = %jf.else903, %lab_L123
  %getbyte.char9981378 = phi i8 [ %getbyte.char998, %lab_L123 ], [ %getbyte.char916, %jf.else903 ]
  %STK905.0 = phi i64 [ %STK905.1, %lab_L123 ], [ %booltoword844, %jf.else903 ]
  %STK2.7 = phi i64 [ %add944, %lab_L123 ], [ %add890, %jf.else903 ]
  %getbyte.charptr935 = getelementptr i8, ptr %getbyte.string, i64 %STK2.7
  %getbyte.char936 = load i8, ptr %getbyte.charptr935, align 1
  %getbyte.charword937 = zext i8 %getbyte.char936 to i64
  %add944 = add nsw i64 %STK2.7, 1
  %eq952.not = icmp eq i8 %getbyte.char936, 92
  br i1 %eq952.not, label %jf.else957, label %jf.then_L125

jf.else957:                                       ; preds = %lab_L122
  %not = xor i64 %STK905.0, -1
  %eq969 = icmp eq i64 %booltoword844, %not
  br i1 %eq969, label %jump.target_L062, label %lab_L123

jf.then_L125:                                     ; preds = %lab_L122
  %if_cond978.not = icmp eq i64 %STK905.0, 0
  br i1 %if_cond978.not, label %jt.else979, label %lab_L123

jt.else979:                                       ; preds = %jf.then_L125
  %lg.value982 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn985 = inttoptr i64 %lg.value982 to ptr
  %rtap987 = call i64 %rtap_ep_p_fn985(i64 %getbyte.charword937)
  %getbyte.char998.pre = load i8, ptr %getbyte.string, align 8
  br label %lab_L123

lab_L123:                                         ; preds = %jf.else957, %jt.else979, %jf.then_L125
  %getbyte.char998 = phi i8 [ %getbyte.char9981378, %jf.then_L125 ], [ %getbyte.char998.pre, %jt.else979 ], [ %getbyte.char9981378, %jf.else957 ]
  %STK905.1 = phi i64 [ -1, %jf.then_L125 ], [ 0, %jt.else979 ], [ %not, %jf.else957 ]
  %getbyte.charword999 = zext i8 %getbyte.char998 to i64
  %gr1003.not.not = icmp slt i64 %STK2.7, %getbyte.charword999
  br i1 %gr1003.not.not, label %lab_L122, label %jump.target_L062

jf.then_L120:                                     ; preds = %lab_L119
  br i1 %ne, label %jf.else1014, label %jump.target_L062

jf.else1014:                                      ; preds = %jf.then_L120
  %lg.value1017 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn1020 = inttoptr i64 %lg.value1017 to ptr
  %rtap1022 = call i64 %rtap_ep_p_fn1020(i64 %getbyte.charword882)
  br label %jump.target_L062

jump.target_L062:                                 ; preds = %lab_L123, %jf.else957, %jf.then_L120, %jf.else1014, %jf.else903, %jump.target_L118, %lab_L115, %lab_L113, %lab_L112, %lab_L111, %lf_L065, %jt.then_L107, %writedz.exit, %lab_L070, %jt.else
  %STK2.8 = phi i64 [ %add90, %lab_L070 ], [ %add594, %jt.then_L107 ], [ %add630, %lf_L065 ], [ %add401, %writedz.exit ], [ %add656, %lab_L111 ], [ %add682, %lab_L112 ], [ %add739, %lab_L113 ], [ %add780, %lab_L115 ], [ %add836, %jump.target_L118 ], [ %add890, %jf.then_L120 ], [ %add890, %jf.else1014 ], [ %add890, %jf.else903 ], [ %add, %jt.else ], [ %add944, %jf.else957 ], [ %add944, %lab_L123 ]
  %getbyte.char1036 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword1037 = zext i8 %getbyte.char1036 to i64
  %le1041.not = icmp sgt i64 %STK2.8, %getbyte.charword1037
  br i1 %le1041.not, label %jf.then_L063, label %lab_L061

jf.then_L063:                                     ; preds = %jump.target_L062, %entry
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
  br label %lab_L131

lab_L131:                                         ; preds = %lab_L131, %entry
  %STK7.1 = phi i64 [ %spec.select, %entry ], [ %div, %lab_L131 ]
  %STK5.0 = phi i64 [ 0, %entry ], [ %add45, %lab_L131 ]
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
  br i1 %if_cond51.not, label %lab_L132, label %lab_L131

lab_L132:                                         ; preds = %lab_L131
  %spec.select209 = add i64 %1, %sub
  %if_cond60 = icmp eq i64 %2, 0
  %or.cond = select i1 %if_cond, i1 true, i1 %if_cond60
  br i1 %or.cond, label %jf.then_L134, label %jf.else61

jf.else61:                                        ; preds = %lab_L132
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 45)
  br label %jf.then_L134

jf.then_L134:                                     ; preds = %jf.else61, %lab_L132
  %add70 = add i64 %STK5.0, 2
  %gr = icmp sgt i64 %add70, %spec.select209
  br i1 %gr, label %jt.then_L136, label %lab_L135.preheader

lab_L135.preheader:                               ; preds = %jf.then_L134
  %. = select i1 %if_cond60, i64 32, i64 48
  br label %lab_L135

lab_L135:                                         ; preds = %lab_L135.preheader, %lab_L135
  %STK71.0 = phi i64 [ %add104, %lab_L135 ], [ %add70, %lab_L135.preheader ]
  %lg.value93 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96 = inttoptr i64 %lg.value93 to ptr
  %rtap98 = call i64 %rtap_ep_p_fn96(i64 %.)
  %add104 = add i64 %STK71.0, 1
  %le.not = icmp sgt i64 %add104, %spec.select209
  br i1 %le.not, label %jt.then_L136, label %lab_L135

jt.then_L136:                                     ; preds = %lab_L135, %jf.then_L134
  %or.cond210 = select i1 %not.if_cond, i1 %if_cond60, i1 false
  br i1 %or.cond210, label %jt.else127, label %jf.then_L141

jt.else127:                                       ; preds = %jt.then_L136
  %lg.value129 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn132 = inttoptr i64 %lg.value129 to ptr
  %rtap134 = call i64 %rtap_ep_p_fn132(i64 45)
  br label %jf.then_L141

jf.then_L141:                                     ; preds = %jt.else127, %jt.then_L136
  %ls = icmp slt i64 %STK5.0, 0
  br i1 %ls, label %jt.then_L143, label %lab_L142

lab_L142:                                         ; preds = %jf.then_L141, %lab_L142
  %STK141.0 = phi i64 [ %add177, %lab_L142 ], [ %STK5.0, %jf.then_L141 ]
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
  br i1 %ge.not, label %jt.then_L143, label %lab_L142

jt.then_L143:                                     ; preds = %lab_L142, %jf.then_L141
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
  br label %lab_L131.i

lab_L131.i:                                       ; preds = %lab_L131.i, %entry
  %STK7.1.i = phi i64 [ %spec.select.i, %entry ], [ %div.i, %lab_L131.i ]
  %STK5.0.i = phi i64 [ 0, %entry ], [ %add45.i, %lab_L131.i ]
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
  br i1 %if_cond51.not.i, label %lab_L132.i, label %lab_L131.i

lab_L132.i:                                       ; preds = %lab_L131.i
  %if_cond.i = icmp slt i64 %0, 0
  %.lobit = ashr i64 %0, 63
  %spec.select209.i = add i64 %1, %.lobit
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L136.i, label %lab_L135.i

lab_L135.i:                                       ; preds = %lab_L132.i, %lab_L135.i
  %STK71.0.i = phi i64 [ %add104.i, %lab_L135.i ], [ %add70.i, %lab_L132.i ]
  %lg.value93.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96.i = inttoptr i64 %lg.value93.i to ptr
  %rtap98.i = call i64 %rtap_ep_p_fn96.i(i64 32)
  %add104.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add104.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L136.i, label %lab_L135.i

jt.then_L136.i:                                   ; preds = %lab_L135.i, %lab_L132.i
  br i1 %if_cond.i, label %jt.else127.i, label %jf.then_L141.i

jt.else127.i:                                     ; preds = %jt.then_L136.i
  %lg.value129.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn132.i = inttoptr i64 %lg.value129.i to ptr
  %rtap134.i = call i64 %rtap_ep_p_fn132.i(i64 45)
  br label %jf.then_L141.i

jf.then_L141.i:                                   ; preds = %jt.else127.i, %jt.then_L136.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L142.i

lab_L142.i:                                       ; preds = %jf.then_L141.i, %lab_L142.i
  %STK141.0.i = phi i64 [ %add177.i, %lab_L142.i ], [ %STK5.0.i, %jf.then_L141.i ]
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
  br i1 %ge.not.i, label %writedz.exit, label %lab_L142.i

writedz.exit:                                     ; preds = %lab_L142.i, %jf.then_L141.i
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
  br i1 %gr, label %jf.then_L146, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 3
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then_L146

jf.then_L146:                                     ; preds = %jf.else, %entry
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
  br i1 %gr, label %jf.then_L147, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 4
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then_L147

jf.then_L147:                                     ; preds = %jf.else, %entry
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
  br i1 %gr, label %jf.then_L149, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 1
  %sub = add nsw i64 %1, -1
  %rtap = tail call i64 @writebin(i64 %shift.result10, i64 %sub)
  br label %jf.then_L149

jf.then_L149:                                     ; preds = %jf.else, %entry
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
  br i1 %gr, label %jt.then_L153, label %lab_L152

lab_L152:                                         ; preds = %entry, %lab_L155
  %STK27.0 = phi i64 [ %add, %lab_L155 ], [ 1, %entry ]
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
  br i1 %if_cond79, label %lab_L155, label %common.ret

common.ret:                                       ; preds = %lab_L152, %jf.then_L157, %jt.then_L153
  %common.ret.op = phi i64 [ 0, %jt.then_L153 ], [ %.146, %jf.then_L157 ], [ %fnap, %lab_L152 ]
  ret i64 %common.ret.op

lab_L155:                                         ; preds = %lab_L152
  %add = add nuw nsw i64 %STK27.0, 1
  %le.not.not = icmp samesign ult i64 %STK27.0, %getbyte.charword37
  br i1 %le.not.not, label %lab_L152, label %jt.then_L153

jt.then_L153:                                     ; preds = %lab_L155, %entry
  %eq.not = icmp eq i8 %getbyte.char13, %getbyte.char
  br i1 %eq.not, label %common.ret, label %jf.then_L157

jf.then_L157:                                     ; preds = %jt.then_L153
  %eq119.not = icmp eq i64 %0, %.
  %.146 = select i1 %eq119.not, i64 -1, i64 1
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @getkeylen(i64 %0, i64 %1, i64 %2, i64 returned %3) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %jt.then_L161, label %lab_L159.preheader

lab_L159.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  br label %lab_L159

lab_L159:                                         ; preds = %lab_L159.preheader, %jf.else
  %STK4.0 = phi i64 [ %add, %jf.else ], [ 1, %lab_L159.preheader ]
  %STK2.0 = phi i64 [ %spec.select, %jf.else ], [ %2, %lab_L159.preheader ]
  %if_cond13 = icmp eq i64 %STK2.0, 0
  br i1 %if_cond13, label %jt.then_L161, label %jf.else

jf.else:                                          ; preds = %lab_L159
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK4.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %eq.not = icmp eq i8 %getbyte.char, 44
  %sub = sext i1 %eq.not to i64
  %spec.select = add i64 %STK2.0, %sub
  %add = add i64 %STK4.0, 1
  %gr46.not = icmp sgt i64 %add, %1
  br i1 %gr46.not, label %jt.then_L161, label %lab_L159

jt.then_L161:                                     ; preds = %jf.else, %lab_L159, %entry
  %STK4.1 = phi i64 [ 1, %entry ], [ %add, %jf.else ], [ %STK4.0, %lab_L159 ]
  %le.not = icmp sgt i64 %STK4.1, %1
  br i1 %le.not, label %jt.then_L161.jf.then_L165_crit_edge, label %lab_L163.preheader

jt.then_L161.jf.then_L165_crit_edge:              ; preds = %jt.then_L161
  %.pre = shl i64 %3, 3
  %.pre207 = inttoptr i64 %.pre to ptr
  br label %jf.then_L165

lab_L163.preheader:                               ; preds = %jt.then_L161
  %getbyte.llvmaddr69 = shl i64 %0, 3
  %getbyte.string70 = inttoptr i64 %getbyte.llvmaddr69 to ptr
  %putbyte.llvmaddr = shl i64 %3, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L163

lab_L163:                                         ; preds = %lab_L163.preheader, %jt.then_L166
  %STK5.0 = phi i64 [ %STK5.1, %jt.then_L166 ], [ 0, %lab_L163.preheader ]
  %STK4.2 = phi i64 [ %add148, %jt.then_L166 ], [ %STK4.1, %lab_L163.preheader ]
  %getbyte.charptr71 = getelementptr i8, ptr %getbyte.string70, i64 %STK4.2
  %getbyte.char72 = load i8, ptr %getbyte.charptr71, align 1
  switch i8 %getbyte.char72, label %jt.else118 [
    i8 47, label %jf.then_L165.loopexit.split.loop.exit204
    i8 61, label %jf.then_L165.loopexit.split.loop.exit204
    i8 44, label %jf.then_L165.loopexit.split.loop.exit204
    i8 10, label %jt.then_L166
  ]

jt.else118:                                       ; preds = %lab_L163
  %add124 = add i64 %STK5.0, 1
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %add124
  store i8 %getbyte.char72, ptr %putbyte.charptr, align 1
  br label %jt.then_L166

jt.then_L166:                                     ; preds = %lab_L163, %jt.else118
  %STK5.1 = phi i64 [ %add124, %jt.else118 ], [ %STK5.0, %lab_L163 ]
  %add148 = add i64 %STK4.2, 1
  %le157.not = icmp sgt i64 %add148, %1
  br i1 %le157.not, label %jf.then_L165.loopexit.split.loop.exit, label %lab_L163

jf.then_L165.loopexit.split.loop.exit:            ; preds = %jt.then_L166
  %extract.t203.le = trunc i64 %STK5.1 to i8
  br label %jf.then_L165

jf.then_L165.loopexit.split.loop.exit204:         ; preds = %lab_L163, %lab_L163, %lab_L163
  %extract.t.le = trunc i64 %STK5.0 to i8
  br label %jf.then_L165

jf.then_L165:                                     ; preds = %jt.then_L161.jf.then_L165_crit_edge, %jf.then_L165.loopexit.split.loop.exit, %jf.then_L165.loopexit.split.loop.exit204
  %putbyte.string173.pre-phi = phi ptr [ %.pre207, %jt.then_L161.jf.then_L165_crit_edge ], [ %putbyte.string, %jf.then_L165.loopexit.split.loop.exit ], [ %putbyte.string, %jf.then_L165.loopexit.split.loop.exit204 ]
  %STK5.2.off0 = phi i8 [ 0, %jt.then_L161.jf.then_L165_crit_edge ], [ %extract.t203.le, %jf.then_L165.loopexit.split.loop.exit ], [ %extract.t.le, %jf.then_L165.loopexit.split.loop.exit204 ]
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
  br i1 %gr, label %jt.then_L168, label %lab_L167.preheader

lab_L167.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i8 %getbyte.char, 4
  %diff.check = icmp eq i64 %getbyte.llvmaddr, %stack.vec165
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %lab_L167.preheader185, label %vector.ph

vector.ph:                                        ; preds = %lab_L167.preheader
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
  br i1 %cmp.n, label %jt.then_L168, label %lab_L167.preheader185

lab_L167.preheader185:                            ; preds = %lab_L167.preheader, %middle.block
  %STK6.0.ph = phi i64 [ 1, %lab_L167.preheader ], [ %4, %middle.block ]
  %STK4.0.ph = phi i64 [ 0, %lab_L167.preheader ], [ %n.vec, %middle.block ]
  br label %lab_L167

lab_L167:                                         ; preds = %lab_L167.preheader185, %lab_L167
  %STK6.0 = phi i64 [ %add42, %lab_L167 ], [ %STK6.0.ph, %lab_L167.preheader185 ]
  %STK4.0 = phi i64 [ %add, %lab_L167 ], [ %STK4.0.ph, %lab_L167.preheader185 ]
  %add = add nuw nsw i64 %STK4.0, 1
  %getbyte.charptr29 = getelementptr i8, ptr %getbyte.string, i64 %STK6.0
  %getbyte.char30 = load i8, ptr %getbyte.charptr29, align 1
  %putbyte.charptr = getelementptr i8, ptr %stack.vec, i64 %add
  store i8 %getbyte.char30, ptr %putbyte.charptr, align 1
  %add42 = add nuw nsw i64 %STK6.0, 1
  %le.not.not = icmp samesign ult i64 %STK6.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L167, label %jt.then_L168, !llvm.loop !3

jt.then_L168:                                     ; preds = %lab_L167, %middle.block, %entry
  %STK4.1 = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ], [ %add, %lab_L167 ]
  %getbyte.llvmaddr62 = shl i64 %1, 3
  %getbyte.string63 = inttoptr i64 %getbyte.llvmaddr62 to ptr
  %getbyte.char65 = load i8, ptr %getbyte.string63, align 8
  %getbyte.charword66 = zext i8 %getbyte.char65 to i64
  %gr74 = icmp eq i8 %getbyte.char65, 0
  br i1 %gr74, label %jt.then_L172, label %lab_L171.preheader

lab_L171.preheader:                               ; preds = %jt.then_L168
  %min.iters.check171 = icmp ult i8 %getbyte.char65, 4
  br i1 %min.iters.check171, label %lab_L171.preheader184, label %vector.memcheck167

vector.memcheck167:                               ; preds = %lab_L171.preheader
  %9 = add i64 %STK4.1, %stack.vec165
  %10 = sub i64 %9, %getbyte.llvmaddr62
  %diff.check168 = icmp ult i64 %10, 4
  br i1 %diff.check168, label %lab_L171.preheader184, label %vector.ph172

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
  br i1 %cmp.n181, label %jt.then_L172, label %lab_L171.preheader184

lab_L171.preheader184:                            ; preds = %vector.memcheck167, %lab_L171.preheader, %middle.block169
  %STK56.0.ph = phi i64 [ 1, %lab_L171.preheader ], [ 1, %vector.memcheck167 ], [ %11, %middle.block169 ]
  %STK4.2.ph = phi i64 [ %STK4.1, %lab_L171.preheader ], [ %STK4.1, %vector.memcheck167 ], [ %12, %middle.block169 ]
  br label %lab_L171

lab_L171:                                         ; preds = %lab_L171.preheader184, %lab_L171
  %STK56.0 = phi i64 [ %add116, %lab_L171 ], [ %STK56.0.ph, %lab_L171.preheader184 ]
  %STK4.2 = phi i64 [ %add85, %lab_L171 ], [ %STK4.2.ph, %lab_L171.preheader184 ]
  %add85 = add nuw nsw i64 %STK4.2, 1
  %getbyte.charptr96 = getelementptr i8, ptr %getbyte.string63, i64 %STK56.0
  %getbyte.char97 = load i8, ptr %getbyte.charptr96, align 1
  %putbyte.charptr110 = getelementptr i8, ptr %stack.vec, i64 %add85
  store i8 %getbyte.char97, ptr %putbyte.charptr110, align 1
  %add116 = add nuw nsw i64 %STK56.0, 1
  %le125.not.not = icmp samesign ult i64 %STK56.0, %getbyte.charword66
  br i1 %le125.not.not, label %lab_L171, label %jt.then_L172, !llvm.loop !5

jt.then_L172:                                     ; preds = %lab_L171, %middle.block169, %jt.then_L168
  %STK4.3 = phi i64 [ %STK4.1, %jt.then_L168 ], [ %12, %middle.block169 ], [ %add85, %lab_L171 ]
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
  br i1 %gr.i, label %lab_L329.i1863.preheader, label %lab_L329.i

lab_L329.i:                                       ; preds = %entry, %lab_L329.i
  %STK2.0.i = phi i64 [ %add26.i, %lab_L329.i ], [ 0, %entry ]
  %add.i = add i64 %STK2.0.i, %2
  %stind.llvmaddr.i = shl i64 %add.i, 3
  %stind.lv.i = inttoptr i64 %stind.llvmaddr.i to ptr
  store i64 0, ptr %stind.lv.i, align 8
  %add26.i = add i64 %STK2.0.i, 1
  %le.not.i = icmp sgt i64 %add26.i, %3
  br i1 %le.not.i, label %lab_L329.i1863.preheader, label %lab_L329.i

lab_L329.i1863.preheader:                         ; preds = %lab_L329.i, %entry
  br label %lab_L329.i1863

lab_L329.i1863:                                   ; preds = %lab_L329.i1863.preheader, %lab_L329.i1863
  %STK2.0.i1864 = phi i64 [ %add26.i1868, %lab_L329.i1863 ], [ 0, %lab_L329.i1863.preheader ]
  %add.i1865 = add nsw i64 %STK2.0.i1864, %stack.bcpladdr10
  %stind.llvmaddr.i1866 = shl i64 %add.i1865, 3
  %stind.lv.i1867 = inttoptr i64 %stind.llvmaddr.i1866 to ptr
  store i64 0, ptr %stind.lv.i1867, align 8
  %add26.i1868 = add nuw nsw i64 %STK2.0.i1864, 1
  %le.not.i1869 = icmp samesign ugt i64 %STK2.0.i1864, 126
  br i1 %le.not.i1869, label %clear_words.exit1870, label %lab_L329.i1863

clear_words.exit1870:                             ; preds = %lab_L329.i1863
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %lab_L191.preheader, label %lab_L176.preheader

lab_L176.preheader:                               ; preds = %clear_words.exit1870
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  br label %lab_L176

lab_L176:                                         ; preds = %lab_L176.preheader, %lab_L179
  %STK29.0 = phi i64 [ %add261, %lab_L179 ], [ 1, %lab_L176.preheader ]
  %STK5.0 = phi i64 [ %STK5.1, %lab_L179 ], [ 0, %lab_L176.preheader ]
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK29.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  switch i8 %getbyte.char, label %lab_L179 [
    i8 47, label %jf.else
    i8 44, label %jf.else229
  ]

jf.else:                                          ; preds = %lab_L176
  %getbyte.charptr66 = getelementptr i8, ptr %getbyte.charptr, i64 1
  %getbyte.char67 = load i8, ptr %getbyte.charptr66, align 1
  %getbyte.charword68 = zext i8 %getbyte.char67 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn72 = inttoptr i64 %lg.value to ptr
  %fnap = call i64 %rtap_ep_p_fn72(i64 %getbyte.charword68)
  switch i64 %fnap, label %goto.phi.bb [
    i64 80, label %lab_L188
    i64 78, label %lab_L187
    i64 83, label %lab_L186
    i64 75, label %lab_L185
    i64 65, label %lab_L179.sink.split
  ]

lab_L185:                                         ; preds = %jf.else
  br label %lab_L179.sink.split

lab_L186:                                         ; preds = %jf.else
  br label %lab_L179.sink.split

lab_L187:                                         ; preds = %jf.else
  br label %lab_L179.sink.split

lab_L188:                                         ; preds = %jf.else
  br label %lab_L179.sink.split

jf.else229:                                       ; preds = %lab_L176
  %add235 = add i64 %STK5.0, 1
  %gr242 = icmp slt i64 %add235, 128
  br i1 %gr242, label %lab_L179, label %jf.else247

common.ret:                                       ; preds = %lab_L253, %jt.then_L224, %jf.else247
  %common.ret.op = phi i64 [ 0, %jf.else247 ], [ %STK4.41914, %jt.then_L224 ], [ 0, %lab_L253 ]
  ret i64 %common.ret.op

jf.else247:                                       ; preds = %jf.else229
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.23 to i64), 3
  %lg.value249 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 760), align 4
  %rtap_ep_p_fn252 = inttoptr i64 %lg.value249 to ptr
  %rtap254 = call i64 %rtap_ep_p_fn252(i64 %lstr.bcpladdr)
  br label %common.ret

lab_L179.sink.split:                              ; preds = %jf.else, %lab_L185, %lab_L186, %lab_L187, %lab_L188
  %.sink = phi i64 [ 16, %lab_L188 ], [ 8, %lab_L187 ], [ 4, %lab_L186 ], [ 2, %lab_L185 ], [ 1, %jf.else ]
  %add194 = add i64 %STK5.0, %stack.bcpladdr10
  %rv.llvmaddr197 = shl i64 %add194, 3
  %rv.lv198 = inttoptr i64 %rv.llvmaddr197 to ptr
  %rv.rv199 = load i64, ptr %rv.lv198, align 8
  %logor204 = or i64 %rv.rv199, %.sink
  store i64 %logor204, ptr %rv.lv198, align 8
  br label %lab_L179

lab_L179:                                         ; preds = %lab_L179.sink.split, %lab_L176, %jf.else229
  %STK5.1 = phi i64 [ %add235, %jf.else229 ], [ %STK5.0, %lab_L176 ], [ %STK5.0, %lab_L179.sink.split ]
  %add261 = add i64 %STK29.0, 1
  %le.not = icmp sgt i64 %add261, %1
  br i1 %le.not, label %jt.then_L177, label %lab_L176

jt.then_L177:                                     ; preds = %lab_L179
  %gr284 = icmp slt i64 %STK5.1, 0
  br i1 %gr284, label %jt.then_L192, label %lab_L191.preheader

lab_L191.preheader:                               ; preds = %clear_words.exit1870, %jt.then_L177
  %STK5.21970 = phi i64 [ %STK5.1, %jt.then_L177 ], [ 0, %clear_words.exit1870 ]
  br label %lab_L191

lab_L191:                                         ; preds = %lab_L191.preheader, %lab_L194
  %STK275.0 = phi i64 [ %add325, %lab_L194 ], [ 0, %lab_L191.preheader ]
  %add296 = add i64 %STK275.0, %stack.bcpladdr10
  %rv.llvmaddr299 = shl i64 %add296, 3
  %rv.lv300 = inttoptr i64 %rv.llvmaddr299 to ptr
  %rv.rv301 = load i64, ptr %rv.lv300, align 8
  %logand = and i64 %rv.rv301, 12
  %eq310.not = icmp eq i64 %logand, 12
  br i1 %eq310.not, label %goto.phi.bb, label %lab_L194

lab_L194:                                         ; preds = %lab_L191
  %add325 = add i64 %STK275.0, 1
  %le334.not = icmp sgt i64 %add325, %STK5.21970
  br i1 %le334.not, label %jt.then_L192, label %lab_L191

jt.then_L192:                                     ; preds = %lab_L194, %jt.then_L177
  %gr2841974 = phi i1 [ true, %jt.then_L177 ], [ false, %lab_L194 ]
  %STK5.21971 = phi i64 [ %STK5.1, %jt.then_L177 ], [ %STK5.21970, %lab_L194 ]
  %add346 = add i64 %2, 1
  %add351 = add i64 %add346, %STK5.21971
  %getbyte.llvmaddr.i1884 = shl i64 %0, 3
  %getbyte.string.i1885 = inttoptr i64 %getbyte.llvmaddr.i1884 to ptr
  %lstr.bcpladdr1326 = ashr exact i64 ptrtoint (ptr @lstr.global.32 to i64), 3
  br label %lab_L196.outer

lab_L196.outer:                                   ; preds = %lab_L196.outer.backedge, %jt.then_L192
  %STK4.0.ph = phi i64 [ %add351, %jt.then_L192 ], [ %STK4.0.ph.be, %lab_L196.outer.backedge ]
  %sub.neg = sub i64 %2, %STK4.0.ph
  %sub366 = add i64 %sub.neg, %3
  %getbyte.llvmaddr65.i = shl i64 %STK4.0.ph, 3
  %getbyte.string66.i = inttoptr i64 %getbyte.llvmaddr65.i to ptr
  %getbyte.charptr69.i = getelementptr i8, ptr %getbyte.string66.i, i64 1
  br label %lab_L196

lab_L196:                                         ; preds = %lab_L196.backedge, %lab_L196.outer
  %lg.value372 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn375 = inttoptr i64 %lg.value372 to ptr
  %fnap378 = call i64 %rtap_ep_p_fn375(i64 %STK4.0.ph, i64 %sub366)
  br label %lab_L329.i1871

lab_L329.i1871:                                   ; preds = %lab_L329.i1871, %lab_L196
  %STK2.0.i1872 = phi i64 [ %add26.i1876, %lab_L329.i1871 ], [ 0, %lab_L196 ]
  %add.i1873 = add nsw i64 %STK2.0.i1872, %stack.bcpladdr
  %stind.llvmaddr.i1874 = shl i64 %add.i1873, 3
  %stind.lv.i1875 = inttoptr i64 %stind.llvmaddr.i1874 to ptr
  store i64 0, ptr %stind.lv.i1875, align 8
  %add26.i1876 = add nuw nsw i64 %STK2.0.i1872, 1
  %le.not.i1877 = icmp samesign ugt i64 %STK2.0.i1872, 29
  br i1 %le.not.i1877, label %clear_words.exit1878, label %lab_L329.i1871

clear_words.exit1878:                             ; preds = %lab_L329.i1871
  switch i64 %fnap378, label %goto.phi.bb.loopexit2007 [
    i64 2, label %lab_L241
    i64 1, label %lab_L228
    i64 4, label %lab_L201
    i64 3, label %lab_L201
    i64 0, label %lab_L201
  ]

lab_L201:                                         ; preds = %clear_words.exit1878, %clear_words.exit1878, %clear_words.exit1878
  br i1 %gr2841974, label %jt.then_L224, label %lab_L202

lab_L202:                                         ; preds = %lab_L201, %jf.then_L205
  %STK399.0 = phi i64 [ %STK399.2, %jf.then_L205 ], [ %STK5.21971, %lab_L201 ]
  %STK397.0 = phi i64 [ %add962, %jf.then_L205 ], [ 0, %lab_L201 ]
  %STK367.0 = phi i64 [ %STK367.2, %jf.then_L205 ], [ %sub366, %lab_L201 ]
  %STK5.3 = phi i64 [ %STK5.5, %jf.then_L205 ], [ %STK5.21971, %lab_L201 ]
  %STK4.1 = phi i64 [ %STK4.3, %jf.then_L205 ], [ %STK4.0.ph, %lab_L201 ]
  %add418 = add i64 %STK397.0, %stack.bcpladdr10
  %rv.llvmaddr421 = shl i64 %add418, 3
  %rv.lv422 = inttoptr i64 %rv.llvmaddr421 to ptr
  %rv.rv423 = load i64, ptr %rv.lv422, align 8
  %logand441 = and i64 %rv.rv423, 48
  %eq446.not = icmp eq i64 %logand441, 16
  br i1 %eq446.not, label %jf.else451, label %jf.then_L205

jf.else451:                                       ; preds = %lab_L202
  %lg.value453 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  %rv.llvmaddr460 = shl i64 %lg.value453, 3
  %rv.lv461 = inttoptr i64 %rv.llvmaddr460 to ptr
  %rv.rv462 = load i64, ptr %rv.lv461, align 8
  %eq467.not = icmp eq i64 %rv.rv462, -1
  br i1 %eq467.not, label %jf.else472, label %jf.then_L205

jf.else472:                                       ; preds = %jf.else451
  %lg.value474 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %rv.llvmaddr481 = shl i64 %lg.value474, 3
  %rv.lv482 = inttoptr i64 %rv.llvmaddr481 to ptr
  %rv.rv483 = load i64, ptr %rv.lv482, align 8
  %eq488.not = icmp eq i64 %rv.rv483, -1
  br i1 %eq488.not, label %jf.else493, label %jf.then_L205

jf.else493:                                       ; preds = %jf.else472
  br i1 %gr, label %jt.then_L161.i, label %lab_L159.preheader.i

lab_L159.preheader.i:                             ; preds = %jf.else493
  %getbyte.llvmaddr.i = shl i64 %0, 3
  %getbyte.string.i = inttoptr i64 %getbyte.llvmaddr.i to ptr
  br label %lab_L159.i

lab_L159.i:                                       ; preds = %jf.else.i, %lab_L159.preheader.i
  %STK4.0.i = phi i64 [ %add.i1881, %jf.else.i ], [ 1, %lab_L159.preheader.i ]
  %STK2.0.i1880 = phi i64 [ %spec.select.i, %jf.else.i ], [ %STK397.0, %lab_L159.preheader.i ]
  %if_cond13.i = icmp eq i64 %STK2.0.i1880, 0
  br i1 %if_cond13.i, label %jt.then_L161.i, label %jf.else.i

jf.else.i:                                        ; preds = %lab_L159.i
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string.i, i64 %STK4.0.i
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %eq.not.i = icmp eq i8 %getbyte.char.i, 44
  %sub.i = sext i1 %eq.not.i to i64
  %spec.select.i = add i64 %STK2.0.i1880, %sub.i
  %add.i1881 = add i64 %STK4.0.i, 1
  %gr46.not.i = icmp sgt i64 %add.i1881, %1
  br i1 %gr46.not.i, label %jt.then_L161.i, label %lab_L159.i

jt.then_L161.i:                                   ; preds = %jf.else.i, %lab_L159.i, %jf.else493
  %STK4.1.i = phi i64 [ 1, %jf.else493 ], [ %STK4.0.i, %lab_L159.i ], [ %add.i1881, %jf.else.i ]
  %le.not.i1882 = icmp sgt i64 %STK4.1.i, %1
  br i1 %le.not.i1882, label %getkeylen.exit, label %lab_L163.preheader.i

lab_L163.preheader.i:                             ; preds = %jt.then_L161.i
  %getbyte.llvmaddr69.i = shl i64 %0, 3
  %getbyte.string70.i = inttoptr i64 %getbyte.llvmaddr69.i to ptr
  br label %lab_L163.i

lab_L163.i:                                       ; preds = %jt.then_L166.i, %lab_L163.preheader.i
  %STK5.0.i = phi i64 [ %STK5.1.i, %jt.then_L166.i ], [ 0, %lab_L163.preheader.i ]
  %STK4.2.i = phi i64 [ %add148.i, %jt.then_L166.i ], [ %STK4.1.i, %lab_L163.preheader.i ]
  %getbyte.charptr71.i = getelementptr i8, ptr %getbyte.string70.i, i64 %STK4.2.i
  %getbyte.char72.i = load i8, ptr %getbyte.charptr71.i, align 1
  switch i8 %getbyte.char72.i, label %jt.else118.i [
    i8 47, label %jf.then_L165.loopexit.split.loop.exit204.i
    i8 61, label %jf.then_L165.loopexit.split.loop.exit204.i
    i8 44, label %jf.then_L165.loopexit.split.loop.exit204.i
    i8 10, label %jt.then_L166.i
  ]

jt.else118.i:                                     ; preds = %lab_L163.i
  %add124.i = add i64 %STK5.0.i, 1
  %putbyte.charptr.i = getelementptr i8, ptr %stack.vec, i64 %add124.i
  store i8 %getbyte.char72.i, ptr %putbyte.charptr.i, align 1
  br label %jt.then_L166.i

jt.then_L166.i:                                   ; preds = %jt.else118.i, %lab_L163.i
  %STK5.1.i = phi i64 [ %add124.i, %jt.else118.i ], [ %STK5.0.i, %lab_L163.i ]
  %add148.i = add i64 %STK4.2.i, 1
  %le157.not.i = icmp sgt i64 %add148.i, %1
  br i1 %le157.not.i, label %jf.then_L165.loopexit.split.loop.exit.i, label %lab_L163.i

jf.then_L165.loopexit.split.loop.exit.i:          ; preds = %jt.then_L166.i
  %extract.t203.le.i = trunc i64 %STK5.1.i to i8
  br label %getkeylen.exit

jf.then_L165.loopexit.split.loop.exit204.i:       ; preds = %lab_L163.i, %lab_L163.i, %lab_L163.i
  %extract.t.le.i = trunc i64 %STK5.0.i to i8
  br label %getkeylen.exit

getkeylen.exit:                                   ; preds = %jt.then_L161.i, %jf.then_L165.loopexit.split.loop.exit.i, %jf.then_L165.loopexit.split.loop.exit204.i
  %STK5.2.off0.i = phi i8 [ %extract.t203.le.i, %jf.then_L165.loopexit.split.loop.exit.i ], [ %extract.t.le.i, %jf.then_L165.loopexit.split.loop.exit204.i ], [ 0, %jt.then_L161.i ]
  store i8 %STK5.2.off0.i, ptr %stack.vec, align 8
  %lg.value512 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn515 = inttoptr i64 %lg.value512 to ptr
  %rtap517 = call i64 %rtap_ep_p_fn515(i64 %stack.bcpladdr)
  %rv.rv529 = load i64, ptr %rv.lv422, align 8
  %logand534 = and i64 %rv.rv529, 4
  %eq539 = icmp eq i64 %logand534, 0
  br i1 %eq539, label %jt.then_L207, label %jt.else544

jt.else544:                                       ; preds = %getkeylen.exit
  %lstr.bcpladdr545 = ashr exact i64 ptrtoint (ptr @lstr.global.24 to i64), 3
  %lg.value547 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn550 = inttoptr i64 %lg.value547 to ptr
  %rtap552 = call i64 %rtap_ep_p_fn550(i64 %lstr.bcpladdr545)
  br label %jt.then_L207

jt.then_L207:                                     ; preds = %jt.else544, %getkeylen.exit
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
    i64 4, label %jf.then_L205
    i64 3, label %jf.then_L205
    i64 2, label %lab_L217
    i64 1, label %lab_L211
    i64 0, label %jf.then_L205
  ]

lab_L211:                                         ; preds = %jt.then_L207
  %logand590.mask = and i64 %rv.rv423, 4
  %if_cond598 = icmp eq i64 %logand590.mask, 0
  br i1 %if_cond598, label %jf.then_L212, label %jf.else599

jf.else599:                                       ; preds = %lab_L211
  %add607 = add i64 %STK397.0, %2
  %stind.llvmaddr611 = shl i64 %add607, 3
  %stind.lv612 = inttoptr i64 %stind.llvmaddr611 to ptr
  store i64 0, ptr %stind.lv612, align 8
  %lstr.bcpladdr615 = ashr exact i64 ptrtoint (ptr @lstr.global.26 to i64), 3
  %fnap623 = call i64 @compstring(i64 %STK4.1, i64 %lstr.bcpladdr615)
  %eq628 = icmp eq i64 %fnap623, 0
  br i1 %eq628, label %jt.then_L214, label %jt.else633

jt.else633:                                       ; preds = %jf.else599
  %lstr.bcpladdr636 = ashr exact i64 ptrtoint (ptr @lstr.global.27 to i64), 3
  %fnap644 = call i64 @compstring(i64 %STK4.1, i64 %lstr.bcpladdr636)
  %eq649.not = icmp eq i64 %fnap644, 0
  br i1 %eq649.not, label %jt.then_L214, label %jf.then_L213

jt.then_L214:                                     ; preds = %jt.else633, %jf.else599
  store i64 -1, ptr %stind.lv612, align 8
  br label %jf.then_L213

jf.then_L213:                                     ; preds = %jt.then_L214, %jt.else633
  %rv.rv679 = load i64, ptr %rv.lv422, align 8
  %logor684 = or i64 %rv.rv679, 32
  store i64 %logor684, ptr %rv.lv422, align 8
  br label %goto.phi.bb

jf.then_L212:                                     ; preds = %lab_L211
  %logand707.mask = and i64 %rv.rv423, 8
  %if_cond716 = icmp eq i64 %logand707.mask, 0
  br i1 %if_cond716, label %lab_L217, label %jf.else717

jf.else717:                                       ; preds = %jf.then_L212
  %add726 = add i64 %STK397.0, %2
  %stind.llvmaddr730 = shl i64 %add726, 3
  %stind.lv731 = inttoptr i64 %stind.llvmaddr730 to ptr
  store i64 %STK4.1, ptr %stind.lv731, align 8
  %fnap739 = call i64 @string_to_number(i64 %STK4.1)
  %if_cond742.not = icmp eq i64 %fnap739, 0
  br i1 %if_cond742.not, label %goto.phi.bb, label %jt.then_L216

jt.then_L216:                                     ; preds = %jf.else717
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

lab_L217:                                         ; preds = %jf.then_L212, %jt.then_L207
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
  br label %lf_L206

lf_L206:                                          ; preds = %goto.phi.bb, %lab_L217
  %STK399.1 = phi i64 [ %STK399.4, %goto.phi.bb ], [ %STK399.0, %lab_L217 ]
  %STK397.1 = phi i64 [ %STK397.4, %goto.phi.bb ], [ %STK397.0, %lab_L217 ]
  %STK367.1 = phi i64 [ %STK367.4, %goto.phi.bb ], [ %sub903, %lab_L217 ]
  %STK5.4 = phi i64 [ %STK5.7, %goto.phi.bb ], [ %STK5.3, %lab_L217 ]
  %STK4.2 = phi i64 [ %STK4.5, %goto.phi.bb ], [ %add888, %lab_L217 ]
  %lg.value906 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn909 = inttoptr i64 %lg.value906 to ptr
  %rtap910 = call i64 %rtap_ep_p_fn909()
  br label %lab_L218

lab_L218:                                         ; preds = %lab_L218, %lf_L206
  %lg.value911 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn914 = inttoptr i64 %lg.value911 to ptr
  %fnap915 = call i64 %rtap_ep_p_fn914()
  switch i64 %fnap915, label %lab_L218 [
    i64 10, label %jf.then_L205.loopexit
    i64 59, label %jf.then_L205.loopexit
    i64 -1, label %jf.then_L205.loopexit
  ]

jf.then_L205.loopexit:                            ; preds = %lab_L218, %lab_L218, %lab_L218
  br label %jf.then_L205

jf.then_L205:                                     ; preds = %jf.then_L205.loopexit, %jt.then_L207, %jt.then_L207, %jt.then_L207, %jf.else472, %jf.else451, %lab_L202
  %STK399.2 = phi i64 [ %STK399.0, %lab_L202 ], [ %STK399.0, %jf.else451 ], [ %STK399.0, %jf.else472 ], [ %STK399.0, %jt.then_L207 ], [ %STK399.0, %jt.then_L207 ], [ %STK399.0, %jt.then_L207 ], [ %STK399.1, %jf.then_L205.loopexit ]
  %STK397.2 = phi i64 [ %STK397.0, %lab_L202 ], [ %STK397.0, %jf.else451 ], [ %STK397.0, %jf.else472 ], [ %STK397.0, %jt.then_L207 ], [ %STK397.0, %jt.then_L207 ], [ %STK397.0, %jt.then_L207 ], [ %STK397.1, %jf.then_L205.loopexit ]
  %STK367.2 = phi i64 [ %STK367.0, %lab_L202 ], [ %STK367.0, %jf.else451 ], [ %STK367.0, %jf.else472 ], [ %STK367.0, %jt.then_L207 ], [ %STK367.0, %jt.then_L207 ], [ %STK367.0, %jt.then_L207 ], [ %STK367.1, %jf.then_L205.loopexit ]
  %STK5.5 = phi i64 [ %STK5.3, %lab_L202 ], [ %STK5.3, %jf.else451 ], [ %STK5.3, %jf.else472 ], [ %STK5.3, %jt.then_L207 ], [ %STK5.3, %jt.then_L207 ], [ %STK5.3, %jt.then_L207 ], [ %STK5.4, %jf.then_L205.loopexit ]
  %STK4.3 = phi i64 [ %STK4.1, %lab_L202 ], [ %STK4.1, %jf.else451 ], [ %STK4.1, %jf.else472 ], [ %STK4.1, %jt.then_L207 ], [ %STK4.1, %jt.then_L207 ], [ %STK4.1, %jt.then_L207 ], [ %STK4.2, %jf.then_L205.loopexit ]
  %add962 = add i64 %STK397.2, 1
  %le971.not = icmp sgt i64 %add962, %STK399.2
  br i1 %le971.not, label %jt.then_L203, label %lab_L202

jt.then_L203:                                     ; preds = %jf.then_L205
  %gr986 = icmp slt i64 %STK5.5, 0
  br i1 %gr986, label %jt.then_L224, label %lab_L223

lab_L223:                                         ; preds = %jt.then_L203, %lab_L226
  %STK977.0 = phi i64 [ %add1028, %lab_L226 ], [ 0, %jt.then_L203 ]
  %add998 = add i64 %STK977.0, %stack.bcpladdr10
  %rv.llvmaddr1001 = shl i64 %add998, 3
  %rv.lv1002 = inttoptr i64 %rv.llvmaddr1001 to ptr
  %rv.rv1003 = load i64, ptr %rv.lv1002, align 8
  %logand1008 = and i64 %rv.rv1003, 33
  %eq1013.not = icmp eq i64 %logand1008, 1
  br i1 %eq1013.not, label %goto.phi.bb, label %lab_L226

lab_L226:                                         ; preds = %lab_L223
  %add1028 = add i64 %STK977.0, 1
  %le1037.not = icmp sgt i64 %add1028, %STK5.5
  br i1 %le1037.not, label %jt.then_L224, label %lab_L223

jt.then_L224:                                     ; preds = %lab_L226, %lab_L201, %jt.then_L203
  %STK4.41914 = phi i64 [ %STK4.3, %jt.then_L203 ], [ %STK4.0.ph, %lab_L201 ], [ %STK4.3, %lab_L226 ]
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

lab_L228:                                         ; preds = %clear_words.exit1878
  br i1 %gr, label %jf.else191.i, label %lab_L286.i

lab_L286.i:                                       ; preds = %lab_L228, %jf.then_L290.i
  %STK6.0.i = phi i64 [ %add167.i, %jf.then_L290.i ], [ 1, %lab_L228 ]
  %STK5.0.i1886 = phi i64 [ %STK5.1.i1893, %jf.then_L290.i ], [ 0, %lab_L228 ]
  %STK4.0.i1887 = phi i64 [ %STK4.2.i1892, %jf.then_L290.i ], [ 0, %lab_L228 ]
  %STK3.0.i = phi i64 [ %STK3.2.i, %jf.then_L290.i ], [ 0, %lab_L228 ]
  %getbyte.charptr.i1888 = getelementptr i8, ptr %getbyte.string.i1885, i64 %STK6.0.i
  %getbyte.char.i1889 = load i8, ptr %getbyte.charptr.i1888, align 1
  %getbyte.charword.i = zext i8 %getbyte.char.i1889 to i64
  %eq.not.i1890 = icmp eq i64 %STK3.0.i, 0
  br i1 %eq.not.i1890, label %jf.else.i1895, label %jf.then_L290.i

jf.else.i1895:                                    ; preds = %lab_L286.i
  switch i8 %getbyte.char.i1889, label %jf.then_L291.i [
    i8 61, label %jt.then_L292.i
    i8 47, label %jt.then_L292.i
    i8 44, label %jt.then_L292.i
  ]

jt.then_L292.i:                                   ; preds = %jf.else.i1895, %jf.else.i1895, %jf.else.i1895
  %getbyte.char68.i = load i8, ptr %getbyte.string66.i, align 8
  %getbyte.charword69.i = zext i8 %getbyte.char68.i to i64
  %eq75.not.i = icmp eq i64 %STK4.0.i1887, %getbyte.charword69.i
  br i1 %eq75.not.i, label %findarglen.exit, label %jf.then_L291.i

jf.then_L291.i:                                   ; preds = %jt.then_L292.i, %jf.else.i1895
  %add.i1896 = add i64 %STK4.0.i1887, 1
  %getbyte.charptr99.i = getelementptr i8, ptr %getbyte.string66.i, i64 %add.i1896
  %getbyte.char100.i = load i8, ptr %getbyte.charptr99.i, align 1
  %getbyte.charword101.i = zext i8 %getbyte.char100.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = call i64 %rtap_ep_p_fn.i(i64 %getbyte.charword.i, i64 %getbyte.charword101.i)
  %eq109.i = icmp ne i64 %fnap.i, 0
  %spec.select.i1897 = zext i1 %eq109.i to i64
  br label %jf.then_L290.i

jf.then_L290.i:                                   ; preds = %jf.then_L291.i, %lab_L286.i
  %STK4.1.i1891 = phi i64 [ %STK4.0.i1887, %lab_L286.i ], [ %add.i1896, %jf.then_L291.i ]
  %STK3.1.i = phi i64 [ %STK3.0.i, %lab_L286.i ], [ %spec.select.i1897, %jf.then_L291.i ]
  %eq122.not.i = icmp eq i8 %getbyte.char.i1889, 44
  %eq133.not.i = icmp eq i8 %getbyte.char.i1889, 61
  %or.cond.i = or i1 %eq122.not.i, %eq133.not.i
  %STK4.2.i1892 = select i1 %or.cond.i, i64 0, i64 %STK4.1.i1891
  %STK3.2.i = select i1 %or.cond.i, i64 0, i64 %STK3.1.i
  %add159.i = zext i1 %eq122.not.i to i64
  %STK5.1.i1893 = add i64 %STK5.0.i1886, %add159.i
  %add167.i = add i64 %STK6.0.i, 1
  %le.not.i1894 = icmp sgt i64 %add167.i, %1
  br i1 %le.not.i1894, label %jt.then_L287.i, label %lab_L286.i

jt.then_L287.i:                                   ; preds = %jf.then_L290.i
  %eq186.not.i = icmp eq i64 %STK3.2.i, 0
  br i1 %eq186.not.i, label %jf.else191.i, label %jf.then_L229

jf.else191.i:                                     ; preds = %lab_L228, %jt.then_L287.i
  %STK4.3244.i = phi i64 [ %STK4.2.i1892, %jt.then_L287.i ], [ 0, %lab_L228 ]
  %STK5.2243.i = phi i64 [ %STK5.1.i1893, %jt.then_L287.i ], [ 0, %lab_L228 ]
  %getbyte.char200.i = load i8, ptr %getbyte.string66.i, align 8
  %getbyte.charword201.i = zext i8 %getbyte.char200.i to i64
  %eq207.not.i = icmp eq i64 %STK4.3244.i, %getbyte.charword201.i
  br i1 %eq207.not.i, label %findarglen.exit, label %jf.then_L229

findarglen.exit:                                  ; preds = %jt.then_L292.i, %jf.else191.i
  %common.ret.op.i = phi i64 [ %STK5.2243.i, %jf.else191.i ], [ %STK5.0.i1886, %jt.then_L292.i ]
  %ge = icmp slt i64 %common.ret.op.i, 0
  br i1 %ge, label %jf.then_L229, label %jf.else1072

jf.else1072:                                      ; preds = %findarglen.exit
  %add1079 = add i64 %common.ret.op.i, %stack.bcpladdr10
  %rv.llvmaddr1082 = shl i64 %add1079, 3
  %rv.lv1083 = inttoptr i64 %rv.llvmaddr1082 to ptr
  %rv.rv1084 = load i64, ptr %rv.lv1083, align 8
  %logand1089.mask = and i64 %rv.rv1084, 32
  %if_cond1098 = icmp eq i64 %logand1089.mask, 0
  br i1 %if_cond1098, label %jf.then_L231, label %goto.phi.bb.loopexit2007

jf.then_L231:                                     ; preds = %jf.else1072
  %logand1120.mask = and i64 %rv.rv1084, 4
  %if_cond1129 = icmp eq i64 %logand1120.mask, 0
  br i1 %if_cond1129, label %jf.then_L232, label %jf.else1130

jf.else1130:                                      ; preds = %jf.then_L231
  %add1138 = add i64 %common.ret.op.i, %2
  %stind.llvmaddr1142 = shl i64 %add1138, 3
  %stind.lv1143 = inttoptr i64 %stind.llvmaddr1142 to ptr
  store i64 -1, ptr %stind.lv1143, align 8
  %rv.rv1155 = load i64, ptr %rv.lv1083, align 8
  %logor1160 = or i64 %rv.rv1155, 32
  store i64 %logor1160, ptr %rv.lv1083, align 8
  br label %lab_L196.backedge

lab_L196.backedge:                                ; preds = %jf.else1130, %jt.then_L238
  br label %lab_L196

jf.then_L232:                                     ; preds = %jf.then_L231
  %lg.value1178 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn1181 = inttoptr i64 %lg.value1178 to ptr
  %fnap1184 = call i64 %rtap_ep_p_fn1181(i64 %STK4.0.ph, i64 %sub366)
  %eq1191.not = icmp eq i64 %fnap1184, 5
  br i1 %eq1191.not, label %jf.else1196, label %jf.then_L233

jf.else1196:                                      ; preds = %jf.then_L232
  %lg.value1201 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn1204 = inttoptr i64 %lg.value1201 to ptr
  %fnap1207 = call i64 %rtap_ep_p_fn1204(i64 %STK4.0.ph, i64 %sub366)
  br label %jf.then_L233

jf.then_L233:                                     ; preds = %jf.else1196, %jf.then_L232
  %STK1185.0 = phi i64 [ %fnap1184, %jf.then_L232 ], [ %fnap1207, %jf.else1196 ]
  %STK1185.0.off = add i64 %STK1185.0, -1
  %switch = icmp ult i64 %STK1185.0.off, 2
  br i1 %switch, label %jt.then_L248, label %goto.phi.bb.loopexit2008

jf.then_L229:                                     ; preds = %jf.else191.i, %jt.then_L287.i, %findarglen.exit
  %common.ret.op.i1917 = phi i64 [ %common.ret.op.i, %findarglen.exit ], [ -1, %jt.then_L287.i ], [ -1, %jf.else191.i ]
  %lg.value1237 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn1240 = inttoptr i64 %lg.value1237 to ptr
  %fnap1241 = call i64 %rtap_ep_p_fn1240()
  %eq1246.not = icmp eq i64 %fnap1241, 10
  br i1 %eq1246.not, label %jf.else1251, label %jf.then_L235

jf.else1251:                                      ; preds = %jf.then_L229
  %getbyte.char13.i = load i8, ptr %getbyte.string66.i, align 8
  %cond = icmp eq i8 %getbyte.char13.i, 0
  br i1 %cond, label %jf.then_L235, label %lab_L152.i

lab_L152.i:                                       ; preds = %jf.else1251
  %getbyte.char70.i = load i8, ptr %getbyte.charptr69.i, align 1
  %getbyte.charword71.i = zext i8 %getbyte.char70.i to i64
  %lg.value.i1902 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i1903 = inttoptr i64 %lg.value.i1902 to ptr
  %fnap.i1904 = call i64 %rtap_ep_p_fn.i1903(i64 63, i64 %getbyte.charword71.i)
  %if_cond79.i = icmp eq i64 %fnap.i1904, 0
  %eq.not.i1907 = icmp eq i8 %getbyte.char13.i, 1
  %or.cond = and i1 %if_cond79.i, %eq.not.i1907
  br i1 %or.cond, label %jf.else1272, label %jf.then_L235

jf.else1272:                                      ; preds = %lab_L152.i
  br i1 %gr, label %jt.then_L238, label %lab_L237

lab_L237:                                         ; preds = %jf.else1272, %lab_L237
  %STK1273.0 = phi i64 [ %add1311, %lab_L237 ], [ 1, %jf.else1272 ]
  %getbyte.charptr1296 = getelementptr i8, ptr %getbyte.string.i1885, i64 %STK1273.0
  %getbyte.char1297 = load i8, ptr %getbyte.charptr1296, align 1
  %getbyte.charword1298 = zext i8 %getbyte.char1297 to i64
  %lg.value1300 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn1303 = inttoptr i64 %lg.value1300 to ptr
  %rtap1305 = call i64 %rtap_ep_p_fn1303(i64 %getbyte.charword1298)
  %add1311 = add i64 %STK1273.0, 1
  %le1320.not = icmp sgt i64 %add1311, %1
  br i1 %le1320.not, label %jt.then_L238, label %lab_L237

jt.then_L238:                                     ; preds = %lab_L237, %jf.else1272
  %lg.value1328 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn1331 = inttoptr i64 %lg.value1328 to ptr
  %rtap1333 = call i64 %rtap_ep_p_fn1331(i64 %lstr.bcpladdr1326)
  %lg.value1334 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %lg.value1336 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 344), align 4
  %rtap_ep_p_fn1339 = inttoptr i64 %lg.value1336 to ptr
  %rtap1341 = call i64 %rtap_ep_p_fn1339(i64 %lg.value1334)
  br label %lab_L196.backedge

jf.then_L235:                                     ; preds = %jf.else1251, %jf.then_L229, %lab_L152.i
  %lg.value1342 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn1345 = inttoptr i64 %lg.value1342 to ptr
  %rtap1346 = call i64 %rtap_ep_p_fn1345()
  br label %lab_L241

lab_L241:                                         ; preds = %clear_words.exit1878, %jf.then_L235
  %STK354.0 = phi i64 [ %common.ret.op.i1917, %jf.then_L235 ], [ -1, %clear_words.exit1878 ]
  %if_cond1355 = icmp sgt i64 %STK354.0, -1
  %brmerge = or i1 %gr2841974, %if_cond1355
  br i1 %brmerge, label %jf.then_L242, label %lab_L243

lab_L243:                                         ; preds = %lab_L241, %lab_L246
  %STK1357.0 = phi i64 [ %add1407, %lab_L246 ], [ 0, %lab_L241 ]
  %add1378 = add i64 %STK1357.0, %stack.bcpladdr10
  %rv.llvmaddr1381 = shl i64 %add1378, 3
  %rv.lv1382 = inttoptr i64 %rv.llvmaddr1381 to ptr
  %rv.rv1383 = load i64, ptr %rv.lv1382, align 8
  %logand1388 = and i64 %rv.rv1383, 38
  %eq1393.not = icmp eq i64 %logand1388, 0
  br i1 %eq1393.not, label %jf.then_L242, label %lab_L246

lab_L246:                                         ; preds = %lab_L243
  %add1407 = add i64 %STK1357.0, 1
  %le1416.not = icmp sgt i64 %add1407, %STK5.21971
  br i1 %le1416.not, label %jf.then_L242, label %lab_L243

jf.then_L242:                                     ; preds = %lab_L243, %lab_L246, %lab_L241
  %STK354.1 = phi i64 [ %STK354.0, %lab_L241 ], [ %STK1357.0, %lab_L243 ], [ %STK354.0, %lab_L246 ]
  %ge1427 = icmp sgt i64 %STK354.1, -1
  br i1 %ge1427, label %jf.then_L242.jt.then_L248_crit_edge, label %goto.phi.bb.loopexit2008

jf.then_L242.jt.then_L248_crit_edge:              ; preds = %jf.then_L242
  %.pre = add i64 %STK354.1, %stack.bcpladdr10
  %.pre1966 = shl i64 %.pre, 3
  %.pre1967 = inttoptr i64 %.pre1966 to ptr
  br label %jt.then_L248

jt.then_L248:                                     ; preds = %jf.then_L242.jt.then_L248_crit_edge, %jf.then_L233
  %rv.lv1447.pre-phi = phi ptr [ %.pre1967, %jf.then_L242.jt.then_L248_crit_edge ], [ %rv.lv1083, %jf.then_L233 ]
  %STK354.11925 = phi i64 [ %STK354.1, %jf.then_L242.jt.then_L248_crit_edge ], [ %common.ret.op.i, %jf.then_L233 ]
  %rv.rv1448 = load i64, ptr %rv.lv1447.pre-phi, align 4
  %logand1453.mask = and i64 %rv.rv1448, 32
  %if_cond1462 = icmp eq i64 %logand1453.mask, 0
  br i1 %if_cond1462, label %jf.then_L249, label %goto.phi.bb.loopexit2008

jf.then_L249:                                     ; preds = %jt.then_L248
  %logand1484.mask = and i64 %rv.rv1448, 8
  %if_cond1493 = icmp eq i64 %logand1484.mask, 0
  br i1 %if_cond1493, label %jf.then_L250, label %jf.else1494

jf.else1494:                                      ; preds = %jf.then_L249
  %fnap1502 = call i64 @string_to_number(i64 %STK4.0.ph)
  %if_cond1505.not = icmp eq i64 %fnap1502, 0
  br i1 %if_cond1505.not, label %goto.phi.bb.loopexit2008, label %jt.then_L251

jt.then_L251:                                     ; preds = %jf.else1494
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
  br label %lab_L196.outer.backedge

jf.then_L250:                                     ; preds = %jf.then_L249
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
  br label %lab_L196.outer.backedge

lab_L196.outer.backedge:                          ; preds = %jf.then_L250, %jt.then_L251
  %STK4.0.ph.be = phi i64 [ %add1568, %jt.then_L251 ], [ %add1640, %jf.then_L250 ]
  br label %lab_L196.outer

lf_L175:                                          ; preds = %goto.phi.bb
  %lg.value1647 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn1650 = inttoptr i64 %lg.value1647 to ptr
  %rtap1651 = call i64 %rtap_ep_p_fn1650()
  br label %lab_L252

lab_L252:                                         ; preds = %lab_L252, %lf_L175
  %lg.value1652 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn1655 = inttoptr i64 %lg.value1652 to ptr
  %fnap1656 = call i64 %rtap_ep_p_fn1655()
  switch i64 %fnap1656, label %lab_L252 [
    i64 10, label %lab_L253
    i64 59, label %lab_L253
    i64 -1, label %lab_L253
  ]

lab_L253:                                         ; preds = %lab_L252, %lab_L252, %lab_L252
  store i64 120, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

goto.phi.bb.loopexit2007:                         ; preds = %clear_words.exit1878, %jf.else1072
  br label %goto.phi.bb

goto.phi.bb.loopexit2008:                         ; preds = %jf.then_L242, %jt.then_L248, %jf.else1494, %jf.then_L233
  br label %goto.phi.bb

goto.phi.bb:                                      ; preds = %jf.else, %lab_L191, %lab_L223, %goto.phi.bb.loopexit2008, %goto.phi.bb.loopexit2007, %jt.then_L207, %jf.else717, %jt.then_L216, %jf.then_L213
  %STK399.4 = phi i64 [ %STK399.0, %jt.then_L216 ], [ %STK399.0, %jf.then_L213 ], [ %STK399.0, %jf.else717 ], [ %STK399.0, %jt.then_L207 ], [ undef, %goto.phi.bb.loopexit2007 ], [ undef, %goto.phi.bb.loopexit2008 ], [ %STK399.2, %lab_L223 ], [ undef, %lab_L191 ], [ undef, %jf.else ]
  %STK397.4 = phi i64 [ %STK397.0, %jt.then_L216 ], [ %STK397.0, %jf.then_L213 ], [ %STK397.0, %jf.else717 ], [ %STK397.0, %jt.then_L207 ], [ undef, %goto.phi.bb.loopexit2007 ], [ undef, %goto.phi.bb.loopexit2008 ], [ %add962, %lab_L223 ], [ undef, %lab_L191 ], [ undef, %jf.else ]
  %STK367.4 = phi i64 [ %sub813, %jt.then_L216 ], [ %STK367.0, %jf.then_L213 ], [ %STK367.0, %jf.else717 ], [ %STK367.0, %jt.then_L207 ], [ %sub366, %goto.phi.bb.loopexit2007 ], [ %sub366, %goto.phi.bb.loopexit2008 ], [ %STK367.2, %lab_L223 ], [ undef, %lab_L191 ], [ undef, %jf.else ]
  %STK5.7 = phi i64 [ %STK5.3, %jt.then_L216 ], [ %STK5.3, %jf.then_L213 ], [ %STK5.3, %jf.else717 ], [ %STK5.3, %jt.then_L207 ], [ %STK5.21971, %goto.phi.bb.loopexit2007 ], [ %STK5.21971, %goto.phi.bb.loopexit2008 ], [ %STK5.5, %lab_L223 ], [ %STK5.21970, %lab_L191 ], [ %STK5.0, %jf.else ]
  %STK4.5 = phi i64 [ %add805, %jt.then_L216 ], [ %STK4.1, %jf.then_L213 ], [ %STK4.1, %jf.else717 ], [ %STK4.1, %jt.then_L207 ], [ %STK4.0.ph, %goto.phi.bb.loopexit2007 ], [ %STK4.0.ph, %goto.phi.bb.loopexit2008 ], [ %STK4.3, %lab_L223 ], [ 0, %lab_L191 ], [ 0, %jf.else ]
  %goto.phi = phi ptr [ blockaddress(@rdargslen, %lf_L206), %jt.then_L216 ], [ blockaddress(@rdargslen, %lf_L206), %jf.then_L213 ], [ blockaddress(@rdargslen, %lf_L175), %jf.else717 ], [ blockaddress(@rdargslen, %lf_L175), %jt.then_L207 ], [ blockaddress(@rdargslen, %lf_L175), %goto.phi.bb.loopexit2007 ], [ blockaddress(@rdargslen, %lf_L175), %goto.phi.bb.loopexit2008 ], [ blockaddress(@rdargslen, %lf_L175), %lab_L223 ], [ blockaddress(@rdargslen, %lf_L175), %lab_L191 ], [ blockaddress(@rdargslen, %lf_L175), %jf.else ]
  indirectbr ptr %goto.phi, [label %lf_L206, label %lf_L175]
}

define range(i64 -1, 6) i64 @rditem(i64 %0, i64 %1) section ".text.BLIB" {
entry:
  %add = shl i64 %1, 3
  %sub = or disjoint i64 %add, 7
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %gr = icmp slt i64 %1, 0
  br i1 %gr, label %jt.then_L257, label %lab_L256

lab_L256:                                         ; preds = %entry, %lab_L256
  %STK17.0 = phi i64 [ %add41, %lab_L256 ], [ 0, %entry ]
  %add34 = add i64 %STK17.0, %0
  %stind.llvmaddr = shl i64 %add34, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 0, ptr %stind.lv, align 8
  %add41 = add i64 %STK17.0, 1
  %le.not = icmp sgt i64 %add41, %1
  br i1 %le.not, label %jt.then_L257, label %lab_L256

jt.then_L257:                                     ; preds = %lab_L256, %entry
  switch i64 %fnap, label %jf.then_L262 [
    i64 32, label %lab_L260.preheader
    i64 9, label %lab_L260.preheader
    i64 13, label %lab_L260.preheader
  ]

lab_L260.preheader:                               ; preds = %jt.then_L257, %jt.then_L257, %jt.then_L257
  br label %lab_L260

lab_L260:                                         ; preds = %lab_L260.backedge, %lab_L260.preheader
  %lg.value85 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn88 = inttoptr i64 %lg.value85 to ptr
  %fnap89 = tail call i64 %rtap_ep_p_fn88()
  switch i64 %fnap89, label %jf.then_L262 [
    i64 32, label %lab_L260.backedge
    i64 9, label %lab_L260.backedge
    i64 13, label %lab_L260.backedge
  ]

lab_L260.backedge:                                ; preds = %lab_L260, %lab_L260, %lab_L260
  br label %lab_L260

jf.then_L262:                                     ; preds = %lab_L260, %jt.then_L257
  %STK15.0 = phi i64 [ %fnap, %jt.then_L257 ], [ %fnap89, %lab_L260 ]
  switch i64 %STK15.0, label %jt.else393 [
    i64 -1, label %common.ret
    i64 10, label %jf.else147
    i64 59, label %jf.else160
    i64 61, label %jf.else173
    i64 34, label %lab_L269.preheader
  ]

lab_L269.preheader:                               ; preds = %jf.then_L262
  %putbyte.llvmaddr = shl i64 %0, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L269.outer

common.ret:                                       ; preds = %jf.then_L273, %lab_L269, %lab_L269, %jt.else524, %lab_L277, %jt.else546, %jf.then_L262, %jf.else239, %jf.else173, %jf.else160, %jf.else147
  %common.ret.op = phi i64 [ 3, %jf.else147 ], [ 4, %jf.else160 ], [ 5, %jf.else173 ], [ 2, %jf.else239 ], [ 0, %jf.then_L262 ], [ 1, %jt.else546 ], [ 1, %jt.else524 ], [ -1, %lab_L277 ], [ -1, %lab_L269 ], [ -1, %lab_L269 ], [ -1, %jf.then_L273 ]
  ret i64 %common.ret.op

jf.else147:                                       ; preds = %jf.then_L262
  br label %common.ret

jf.else160:                                       ; preds = %jf.then_L262
  br label %common.ret

jf.else173:                                       ; preds = %jf.then_L262
  br label %common.ret

lab_L269:                                         ; preds = %lab_L269.outer, %lab_L269
  %lg.value187 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn190 = inttoptr i64 %lg.value187 to ptr
  %fnap191 = tail call i64 %rtap_ep_p_fn190()
  switch i64 %fnap191, label %jf.then_L272 [
    i64 13, label %lab_L269
    i64 10, label %common.ret
    i64 -1, label %common.ret
    i64 34, label %jf.else239
  ]

jf.else239:                                       ; preds = %lab_L269
  br label %common.ret

jf.then_L272:                                     ; preds = %lab_L269
  %eq247.not = icmp eq i64 %fnap191, 42
  %extract.t = trunc i64 %fnap191 to i8
  br i1 %eq247.not, label %jf.else252, label %jf.then_L273

jf.else252:                                       ; preds = %jf.then_L272
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
  br label %jf.then_L273

jf.then_L273:                                     ; preds = %jf.else252, %jf.then_L272
  %STK15.2.off0 = phi i8 [ %extract.t, %jf.then_L272 ], [ %spec.select609, %jf.else252 ]
  %add304 = add i64 %STK2.0.ph, 1
  %gr313.not = icmp sgt i64 %add304, %sub
  br i1 %gr313.not, label %common.ret, label %jf.then_L276

jf.then_L276:                                     ; preds = %jf.then_L273
  %putbyte.char = trunc i64 %add304 to i8
  store i8 %putbyte.char, ptr %putbyte.string, align 8
  %putbyte.charptr338 = getelementptr i8, ptr %putbyte.string, i64 %add304
  store i8 %STK15.2.off0, ptr %putbyte.charptr338, align 1
  br label %lab_L269.outer

lab_L269.outer:                                   ; preds = %lab_L269.preheader, %jf.then_L276
  %STK2.0.ph = phi i64 [ 0, %lab_L269.preheader ], [ %add304, %jf.then_L276 ]
  br label %lab_L269

jt.else393:                                       ; preds = %jf.then_L262
  %extract.t607 = trunc i64 %STK15.0 to i8
  %putbyte.llvmaddr436 = shl i64 %0, 3
  %putbyte.string437 = inttoptr i64 %putbyte.llvmaddr436 to ptr
  br label %lab_L277

lab_L277:                                         ; preds = %jt.else393, %jt.else524
  %STK15.3.off0 = phi i8 [ %extract.t607, %jt.else393 ], [ %extract.t608, %jt.else524 ]
  %STK2.1 = phi i64 [ 0, %jt.else393 ], [ %add410, %jt.else524 ]
  %add410 = add i64 %STK2.1, 1
  %gr419.not = icmp sgt i64 %add410, %sub
  br i1 %gr419.not, label %common.ret, label %jf.then_L280

jf.then_L280:                                     ; preds = %lab_L277
  %putbyte.char435 = trunc i64 %add410 to i8
  store i8 %putbyte.char435, ptr %putbyte.string437, align 8
  %putbyte.charptr451 = getelementptr i8, ptr %putbyte.string437, i64 %add410
  store i8 %STK15.3.off0, ptr %putbyte.charptr451, align 1
  br label %lab_L281

lab_L281:                                         ; preds = %lab_L281, %jf.then_L280
  %lg.value452 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn455 = inttoptr i64 %lg.value452 to ptr
  %fnap456 = tail call i64 %rtap_ep_p_fn455()
  switch i64 %fnap456, label %jt.else524 [
    i64 13, label %lab_L281
    i64 10, label %jt.else546
    i64 32, label %jt.else546
    i64 9, label %jt.else546
    i64 59, label %jt.else546
    i64 61, label %jt.else546
  ]

jt.else524:                                       ; preds = %lab_L281
  %eq530.not = icmp eq i64 %fnap456, -1
  %extract.t608 = trunc i64 %fnap456 to i8
  br i1 %eq530.not, label %common.ret, label %lab_L277

jt.else546:                                       ; preds = %lab_L281, %lab_L281, %lab_L281, %lab_L281, %lab_L281
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
  br i1 %gr.i, label %jf.else191.i, label %lab_L286.i

lab_L286.i:                                       ; preds = %entry, %jf.then_L290.i
  %STK6.0.i = phi i64 [ %add167.i, %jf.then_L290.i ], [ 1, %entry ]
  %STK5.0.i = phi i64 [ %STK5.1.i, %jf.then_L290.i ], [ 0, %entry ]
  %STK4.0.i = phi i64 [ %STK4.2.i, %jf.then_L290.i ], [ 0, %entry ]
  %STK3.0.i = phi i64 [ %STK3.2.i, %jf.then_L290.i ], [ 0, %entry ]
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string, i64 %STK6.0.i
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %getbyte.charword.i = zext i8 %getbyte.char.i to i64
  %eq.not.i = icmp eq i64 %STK3.0.i, 0
  br i1 %eq.not.i, label %jf.else.i, label %jf.then_L290.i

jf.else.i:                                        ; preds = %lab_L286.i
  switch i8 %getbyte.char.i, label %jf.then_L291.i [
    i8 61, label %jt.then_L292.i
    i8 47, label %jt.then_L292.i
    i8 44, label %jt.then_L292.i
  ]

jt.then_L292.i:                                   ; preds = %jf.else.i, %jf.else.i, %jf.else.i
  %getbyte.char68.i = load i8, ptr %.pre247.i, align 8
  %getbyte.charword69.i = zext i8 %getbyte.char68.i to i64
  %eq75.not.i = icmp eq i64 %STK4.0.i, %getbyte.charword69.i
  br i1 %eq75.not.i, label %findarglen.exit, label %jf.then_L291.i

jf.then_L291.i:                                   ; preds = %jt.then_L292.i, %jf.else.i
  %add.i = add i64 %STK4.0.i, 1
  %getbyte.charptr99.i = getelementptr i8, ptr %.pre247.i, i64 %add.i
  %getbyte.char100.i = load i8, ptr %getbyte.charptr99.i, align 1
  %getbyte.charword101.i = zext i8 %getbyte.char100.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 %getbyte.charword.i, i64 %getbyte.charword101.i)
  %eq109.i = icmp ne i64 %fnap.i, 0
  %spec.select.i = zext i1 %eq109.i to i64
  br label %jf.then_L290.i

jf.then_L290.i:                                   ; preds = %jf.then_L291.i, %lab_L286.i
  %STK4.1.i = phi i64 [ %STK4.0.i, %lab_L286.i ], [ %add.i, %jf.then_L291.i ]
  %STK3.1.i = phi i64 [ %STK3.0.i, %lab_L286.i ], [ %spec.select.i, %jf.then_L291.i ]
  %eq122.not.i = icmp eq i8 %getbyte.char.i, 44
  %eq133.not.i = icmp eq i8 %getbyte.char.i, 61
  %or.cond.i = or i1 %eq122.not.i, %eq133.not.i
  %STK4.2.i = select i1 %or.cond.i, i64 0, i64 %STK4.1.i
  %STK3.2.i = select i1 %or.cond.i, i64 0, i64 %STK3.1.i
  %add159.i = zext i1 %eq122.not.i to i64
  %STK5.1.i = add i64 %STK5.0.i, %add159.i
  %add167.i = add nuw nsw i64 %STK6.0.i, 1
  %le.not.i.not = icmp samesign ult i64 %STK6.0.i, %getbyte.charword
  br i1 %le.not.i.not, label %lab_L286.i, label %jt.then_L287.i

jt.then_L287.i:                                   ; preds = %jf.then_L290.i
  %eq186.not.i = icmp eq i64 %STK3.2.i, 0
  br i1 %eq186.not.i, label %jf.else191.i, label %jf.then_L297.i

jf.else191.i:                                     ; preds = %entry, %jt.then_L287.i
  %STK4.3244.i = phi i64 [ %STK4.2.i, %jt.then_L287.i ], [ 0, %entry ]
  %STK5.2243.i = phi i64 [ %STK5.1.i, %jt.then_L287.i ], [ 0, %entry ]
  %getbyte.char200.i = load i8, ptr %.pre247.i, align 8
  %getbyte.charword201.i = zext i8 %getbyte.char200.i to i64
  %eq207.not.i = icmp eq i64 %STK4.3244.i, %getbyte.charword201.i
  br i1 %eq207.not.i, label %findarglen.exit, label %jf.then_L297.i

jf.then_L297.i:                                   ; preds = %jf.else191.i, %jt.then_L287.i
  br label %findarglen.exit

findarglen.exit:                                  ; preds = %jt.then_L292.i, %jf.else191.i, %jf.then_L297.i
  %common.ret.op.i = phi i64 [ -1, %jf.then_L297.i ], [ %STK5.2243.i, %jf.else191.i ], [ %STK5.0.i, %jt.then_L292.i ]
  ret i64 %common.ret.op.i
}

define i64 @findarglen(i64 %0, i64 %1, i64 %2) local_unnamed_addr section ".text.BLIB" {
entry:
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %entry.jf.else191_crit_edge, label %lab_L286.preheader

entry.jf.else191_crit_edge:                       ; preds = %entry
  %.pre = shl i64 %2, 3
  %.pre247 = inttoptr i64 %.pre to ptr
  br label %jf.else191

lab_L286.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.llvmaddr65 = shl i64 %2, 3
  %getbyte.string66 = inttoptr i64 %getbyte.llvmaddr65 to ptr
  br label %lab_L286

lab_L286:                                         ; preds = %lab_L286.preheader, %jf.then_L290
  %STK6.0 = phi i64 [ %add167, %jf.then_L290 ], [ 1, %lab_L286.preheader ]
  %STK5.0 = phi i64 [ %STK5.1, %jf.then_L290 ], [ 0, %lab_L286.preheader ]
  %STK4.0 = phi i64 [ %STK4.2, %jf.then_L290 ], [ 0, %lab_L286.preheader ]
  %STK3.0 = phi i64 [ %STK3.2, %jf.then_L290 ], [ 0, %lab_L286.preheader ]
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK6.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %getbyte.charword = zext i8 %getbyte.char to i64
  %eq.not = icmp eq i64 %STK3.0, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L290

jf.else:                                          ; preds = %lab_L286
  switch i8 %getbyte.char, label %jf.then_L291 [
    i8 61, label %jt.then_L292
    i8 47, label %jt.then_L292
    i8 44, label %jt.then_L292
  ]

jt.then_L292:                                     ; preds = %jf.else, %jf.else, %jf.else
  %getbyte.char68 = load i8, ptr %getbyte.string66, align 8
  %getbyte.charword69 = zext i8 %getbyte.char68 to i64
  %eq75.not = icmp eq i64 %STK4.0, %getbyte.charword69
  br i1 %eq75.not, label %common.ret, label %jf.then_L291

common.ret:                                       ; preds = %jt.then_L292, %jf.else191, %jf.then_L297
  %common.ret.op = phi i64 [ -1, %jf.then_L297 ], [ %STK5.2243, %jf.else191 ], [ %STK5.0, %jt.then_L292 ]
  ret i64 %common.ret.op

jf.then_L291:                                     ; preds = %jf.else, %jt.then_L292
  %add = add i64 %STK4.0, 1
  %getbyte.charptr99 = getelementptr i8, ptr %getbyte.string66, i64 %add
  %getbyte.char100 = load i8, ptr %getbyte.charptr99, align 1
  %getbyte.charword101 = zext i8 %getbyte.char100 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword, i64 %getbyte.charword101)
  %eq109 = icmp ne i64 %fnap, 0
  %spec.select = zext i1 %eq109 to i64
  br label %jf.then_L290

jf.then_L290:                                     ; preds = %jf.then_L291, %lab_L286
  %STK4.1 = phi i64 [ %STK4.0, %lab_L286 ], [ %add, %jf.then_L291 ]
  %STK3.1 = phi i64 [ %STK3.0, %lab_L286 ], [ %spec.select, %jf.then_L291 ]
  %eq122.not = icmp eq i8 %getbyte.char, 44
  %eq133.not = icmp eq i8 %getbyte.char, 61
  %or.cond = or i1 %eq122.not, %eq133.not
  %STK4.2 = select i1 %or.cond, i64 0, i64 %STK4.1
  %STK3.2 = select i1 %or.cond, i64 0, i64 %STK3.1
  %add159 = zext i1 %eq122.not to i64
  %STK5.1 = add i64 %STK5.0, %add159
  %add167 = add i64 %STK6.0, 1
  %le.not = icmp sgt i64 %add167, %1
  br i1 %le.not, label %jt.then_L287, label %lab_L286

jt.then_L287:                                     ; preds = %jf.then_L290
  %eq186.not = icmp eq i64 %STK3.2, 0
  br i1 %eq186.not, label %jf.else191, label %jf.then_L297

jf.else191:                                       ; preds = %entry.jf.else191_crit_edge, %jt.then_L287
  %getbyte.string198.pre-phi = phi ptr [ %.pre247, %entry.jf.else191_crit_edge ], [ %getbyte.string66, %jt.then_L287 ]
  %STK4.3244 = phi i64 [ 0, %entry.jf.else191_crit_edge ], [ %STK4.2, %jt.then_L287 ]
  %STK5.2243 = phi i64 [ 0, %entry.jf.else191_crit_edge ], [ %STK5.1, %jt.then_L287 ]
  %getbyte.char200 = load i8, ptr %getbyte.string198.pre-phi, align 1
  %getbyte.charword201 = zext i8 %getbyte.char200 to i64
  %eq207.not = icmp eq i64 %STK4.3244, %getbyte.charword201
  br i1 %eq207.not, label %common.ret, label %jf.then_L297

jf.then_L297:                                     ; preds = %jf.else191, %jt.then_L287
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
  br i1 %if_cond.not, label %common.ret, label %jt.then_L298

common.ret.sink.split:                            ; preds = %jf.else62, %jf.else472
  %neg.sink = phi i64 [ %neg, %jf.else472 ], [ %getbyte.charword72, %jf.else62 ]
  store i64 %neg.sink, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

common.ret:                                       ; preds = %jump.target_L311, %common.ret.sink.split, %jt.then_L319, %jf.then_L307, %jf.else159, %jt.then_L301, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ -1, %jt.then_L301 ], [ -1, %jf.else159 ], [ -1, %jf.then_L307 ], [ -1, %jt.then_L319 ], [ -1, %common.ret.sink.split ], [ 0, %jump.target_L311 ]
  ret i64 %common.ret.op

jt.then_L298:                                     ; preds = %entry
  %getbyte.charptr20 = getelementptr i8, ptr %getbyte.string, i64 1
  %getbyte.char21 = load i8, ptr %getbyte.charptr20, align 1
  %getbyte.charword22 = zext i8 %getbyte.char21 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword22)
  %eq.not = icmp eq i64 %fnap, 39
  %eq37.not = icmp eq i8 %getbyte.char, 3
  %or.cond = and i1 %eq37.not, %eq.not
  br i1 %or.cond, label %jf.else42, label %jf.then_L299

jf.else42:                                        ; preds = %jt.then_L298
  %getbyte.charptr50 = getelementptr i8, ptr %getbyte.string, i64 3
  %getbyte.char51 = load i8, ptr %getbyte.charptr50, align 1
  %eq57.not = icmp eq i8 %getbyte.char51, 39
  br i1 %eq57.not, label %jf.else62, label %jf.then_L303

jf.else62:                                        ; preds = %jf.else42
  %getbyte.charptr70 = getelementptr i8, ptr %getbyte.string, i64 2
  %getbyte.char71 = load i8, ptr %getbyte.charptr70, align 2
  %getbyte.charword72 = zext i8 %getbyte.char71 to i64
  br label %common.ret.sink.split

jf.then_L299:                                     ; preds = %jt.then_L298
  switch i64 %fnap, label %jf.then_L300 [
    i64 43, label %jt.then_L301
    i64 45, label %jt.then_L301
  ]

jt.then_L301:                                     ; preds = %jf.then_L299, %jf.then_L299
  %eq114.not = icmp eq i8 %getbyte.char, 1
  br i1 %eq114.not, label %common.ret, label %jf.then_L302

jf.then_L302:                                     ; preds = %jt.then_L301
  %eq104 = icmp ne i64 %fnap, 45
  %getbyte.charptr137 = getelementptr i8, ptr %getbyte.string, i64 2
  %getbyte.char138 = load i8, ptr %getbyte.charptr137, align 2
  %getbyte.charword139 = zext i8 %getbyte.char138 to i64
  %lg.value141 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn144 = inttoptr i64 %lg.value141 to ptr
  %fnap146 = tail call i64 %rtap_ep_p_fn144(i64 %getbyte.charword139)
  br label %jf.then_L300

jf.then_L300:                                     ; preds = %jf.then_L299, %jf.then_L302
  %STK7.0 = phi i64 [ %fnap146, %jf.then_L302 ], [ %fnap, %jf.then_L299 ]
  %STK5.0 = phi i1 [ %eq104, %jf.then_L302 ], [ true, %jf.then_L299 ]
  %STK1.0 = phi i64 [ 2, %jf.then_L302 ], [ 1, %jf.then_L299 ]
  %eq154.not = icmp eq i64 %STK7.0, 35
  br i1 %eq154.not, label %jf.else159, label %jf.then_L303

jf.else159:                                       ; preds = %jf.then_L300
  %eq168.not = icmp eq i64 %STK1.0, %getbyte.charword
  br i1 %eq168.not, label %common.ret, label %jf.then_L304

jf.then_L304:                                     ; preds = %jf.else159
  %add181 = add nuw nsw i64 %STK1.0, 1
  %getbyte.charptr192 = getelementptr i8, ptr %getbyte.string, i64 %add181
  %getbyte.char193 = load i8, ptr %getbyte.charptr192, align 1
  %getbyte.charword194 = zext i8 %getbyte.char193 to i64
  %lg.value196 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn199 = inttoptr i64 %lg.value196 to ptr
  %fnap201 = tail call i64 %rtap_ep_p_fn199(i64 %getbyte.charword194)
  switch i64 %fnap201, label %jf.then_L303 [
    i64 88, label %jf.else247
    i64 66, label %jf.then_L307
    i64 79, label %jf.then_L307
  ]

jf.else247:                                       ; preds = %jf.then_L304
  br label %jf.then_L307

jf.then_L307:                                     ; preds = %jf.then_L304, %jf.then_L304, %jf.else247
  %STK6.0 = phi i64 [ 16, %jf.else247 ], [ 8, %jf.then_L304 ], [ 8, %jf.then_L304 ]
  %eq269.not = icmp eq i64 %add181, %getbyte.charword
  br i1 %eq269.not, label %common.ret, label %jf.then_L309

jf.then_L309:                                     ; preds = %jf.then_L307
  %eq255.not = icmp eq i64 %fnap201, 66
  %spec.select = select i1 %eq255.not, i64 2, i64 %STK6.0
  %add282 = add nuw nsw i64 %STK1.0, 2
  %getbyte.charptr293 = getelementptr i8, ptr %getbyte.string, i64 %add282
  %getbyte.char294 = load i8, ptr %getbyte.charptr293, align 1
  %getbyte.charword295 = zext i8 %getbyte.char294 to i64
  %lg.value297 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn300 = inttoptr i64 %lg.value297 to ptr
  %fnap302 = tail call i64 %rtap_ep_p_fn300(i64 %getbyte.charword295)
  br label %jf.then_L303

jf.then_L303:                                     ; preds = %jf.else42, %jf.then_L304, %jf.then_L309, %jf.then_L300
  %STK5.0534 = phi i1 [ %STK5.0, %jf.then_L300 ], [ %STK5.0, %jf.then_L309 ], [ %STK5.0, %jf.then_L304 ], [ true, %jf.else42 ]
  %STK7.1 = phi i64 [ %STK7.0, %jf.then_L300 ], [ %fnap302, %jf.then_L309 ], [ %fnap201, %jf.then_L304 ], [ 39, %jf.else42 ]
  %STK6.2 = phi i64 [ 10, %jf.then_L300 ], [ %spec.select, %jf.then_L309 ], [ 8, %jf.then_L304 ], [ 10, %jf.else42 ]
  %STK1.1 = phi i64 [ %STK1.0, %jf.then_L300 ], [ %add282, %jf.then_L309 ], [ %add181, %jf.then_L304 ], [ 1, %jf.else42 ]
  br label %lab_L310

lab_L310:                                         ; preds = %jt.else446, %jf.then_L303
  %STK7.2 = phi i64 [ %STK7.1, %jf.then_L303 ], [ %fnap464, %jt.else446 ]
  %STK1.2 = phi i64 [ %STK1.1, %jf.then_L303 ], [ %add433, %jt.else446 ]
  %1 = add i64 %STK7.2, -58
  %or.cond528 = icmp ult i64 %1, -10
  br i1 %or.cond528, label %jf.then_L312, label %jf.else325

jf.else325:                                       ; preds = %lab_L310
  %sub = add nsw i64 %STK7.2, -48
  br label %jump.target_L311

jf.then_L312:                                     ; preds = %lab_L310
  %2 = add i64 %STK7.2, -91
  %or.cond529 = icmp ult i64 %2, -26
  %eq373.not = icmp eq i64 %STK7.2, 95
  %. = select i1 %eq373.not, i64 -1, i64 1000
  %add364 = add nsw i64 %STK7.2, -55
  %__res_a.1 = select i1 %or.cond529, i64 %., i64 %add364
  br label %jump.target_L311

jump.target_L311:                                 ; preds = %jf.then_L312, %jf.else325
  %__res_a.2 = phi i64 [ %__res_a.1, %jf.then_L312 ], [ %sub, %jf.else325 ]
  %ls = icmp slt i64 %__res_a.2, %STK6.2
  br i1 %ls, label %jt.then_L317, label %common.ret

jt.then_L317:                                     ; preds = %jump.target_L311
  %ge = icmp slt i64 %__res_a.2, 0
  br i1 %ge, label %jf.then_L318, label %jf.else413

jf.else413:                                       ; preds = %jt.then_L317
  %lg.value416 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %mul = mul i64 %lg.value416, %STK6.2
  %add425 = add i64 %mul, %__res_a.2
  store i64 %add425, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L318

jf.then_L318:                                     ; preds = %jf.else413, %jt.then_L317
  %gr.not = icmp ult i64 %STK1.2, %getbyte.charword
  br i1 %gr.not, label %jt.else446, label %jt.then_L319

jt.else446:                                       ; preds = %jf.then_L318
  %add433 = add nuw nsw i64 %STK1.2, 1
  %getbyte.charptr455 = getelementptr i8, ptr %getbyte.string, i64 %add433
  %getbyte.char456 = load i8, ptr %getbyte.charptr455, align 1
  %getbyte.charword457 = zext i8 %getbyte.char456 to i64
  %lg.value459 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn462 = inttoptr i64 %lg.value459 to ptr
  %fnap464 = tail call i64 %rtap_ep_p_fn462(i64 %getbyte.charword457)
  br label %lab_L310

jt.then_L319:                                     ; preds = %jf.then_L318
  br i1 %STK5.0534, label %common.ret, label %jf.else472

jf.else472:                                       ; preds = %jt.then_L319
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
  br i1 %or.cond, label %lab_L321.preheader, label %vector.ph

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
  br i1 %cmp.n, label %jt.then_L322, label %lab_L321.preheader

lab_L321.preheader:                               ; preds = %entry, %middle.block
  %STK2.0.ph = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ]
  br label %lab_L321

lab_L321:                                         ; preds = %lab_L321.preheader, %lab_L321
  %STK2.0 = phi i64 [ %add, %lab_L321 ], [ %STK2.0.ph, %lab_L321.preheader ]
  %getbyte.charptr19 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char20 = load i8, ptr %getbyte.charptr19, align 1
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %STK2.0
  store i8 %getbyte.char20, ptr %putbyte.charptr, align 1
  %add = add nuw nsw i64 %STK2.0, 1
  %le.not.not = icmp samesign ult i64 %STK2.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L321, label %jt.then_L322, !llvm.loop !7

jt.then_L322:                                     ; preds = %lab_L321, %middle.block
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @copy_words(i64 %0, i64 %1, i64 %2) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %sub = add i64 %2, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L326, label %lab_L325

lab_L325:                                         ; preds = %entry, %lab_L325
  %STK3.0 = phi i64 [ %add35, %lab_L325 ], [ 0, %entry ]
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
  br i1 %le.not, label %jt.then_L326, label %lab_L325

jt.then_L326:                                     ; preds = %lab_L325, %entry
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none)
define noundef i64 @clear_words(i64 %0, i64 %1) local_unnamed_addr #3 section ".text.BLIB" {
entry:
  %sub = add i64 %1, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L330, label %lab_L329

lab_L329:                                         ; preds = %entry, %lab_L329
  %STK2.0 = phi i64 [ %add26, %lab_L329 ], [ 0, %entry ]
  %add = add i64 %STK2.0, %0
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 0, ptr %stind.lv, align 8
  %add26 = add i64 %STK2.0, 1
  %le.not = icmp sgt i64 %add26, %sub
  br i1 %le.not, label %jt.then_L330, label %lab_L329

jt.then_L330:                                     ; preds = %lab_L329, %entry
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @copy_bytes(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %spec.select = tail call i64 @llvm.smin.i64(i64 %0, i64 %3)
  %sub = add i64 %spec.select, -1
  %gr26 = icmp slt i64 %sub, 0
  br i1 %gr26, label %jt.then_L335, label %lab_L334.preheader

lab_L334.preheader:                               ; preds = %entry
  %or.cond = icmp slt i64 %spec.select, 8
  br i1 %or.cond, label %lab_L334.preheader168, label %vector.ph

vector.ph:                                        ; preds = %lab_L334.preheader
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
  br i1 %cmp.n, label %jt.then_L335, label %lab_L334.preheader168

lab_L334.preheader168:                            ; preds = %lab_L334.preheader, %middle.block
  %STK13.0.ph = phi i64 [ 0, %lab_L334.preheader ], [ %n.vec, %middle.block ]
  br label %lab_L334

lab_L334:                                         ; preds = %lab_L334.preheader168, %lab_L334
  %STK13.0 = phi i64 [ %add54, %lab_L334 ], [ %STK13.0.ph, %lab_L334.preheader168 ]
  %9 = getelementptr i8, ptr null, i64 %STK13.0
  %getbyte.charptr = getelementptr i8, ptr %9, i64 %1
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %putbyte.charptr = getelementptr i8, ptr %9, i64 %4
  store i8 %getbyte.char, ptr %putbyte.charptr, align 1
  %add54 = add i64 %STK13.0, 1
  %le.not = icmp sgt i64 %add54, %sub
  br i1 %le.not, label %jt.then_L335, label %lab_L334, !llvm.loop !9

jt.then_L335:                                     ; preds = %lab_L334, %middle.block, %entry
  %sub75 = add i64 %3, -1
  %gr83 = icmp sgt i64 %spec.select, %sub75
  br i1 %gr83, label %jt.then_L339, label %lab_L338.preheader

lab_L338.preheader:                               ; preds = %jt.then_L335
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
  br i1 %min.iters.check158, label %lab_L338.preheader167, label %vector.scevcheck154

vector.scevcheck154:                              ; preds = %lab_L338.preheader
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
  br i1 %25, label %lab_L338.preheader167, label %vector.ph159

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
  br i1 %cmp.n165, label %jt.then_L339, label %lab_L338.preheader167

lab_L338.preheader167:                            ; preds = %vector.scevcheck154, %lab_L338.preheader, %middle.block156
  %STK69.0.ph = phi i64 [ %spec.select, %lab_L338.preheader ], [ %spec.select, %vector.scevcheck154 ], [ %26, %middle.block156 ]
  br label %lab_L338

lab_L338:                                         ; preds = %lab_L338.preheader167, %lab_L338
  %STK69.0 = phi i64 [ %add112, %lab_L338 ], [ %STK69.0.ph, %lab_L338.preheader167 ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK69.0
  store i8 %putbyte.char103, ptr %gep, align 1
  %add112 = add i64 %STK69.0, 1
  %le121.not = icmp sgt i64 %add112, %sub75
  br i1 %le121.not, label %jt.then_L339, label %lab_L338, !llvm.loop !11

jt.then_L339:                                     ; preds = %lab_L338, %middle.block156, %jt.then_L335
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
  br i1 %or.cond142, label %jt.then_L343, label %jf.then_L344

jf.then_L344:                                     ; preds = %entry, %lab_L349
  %fnap143 = phi i64 [ %fnap, %lab_L349 ], [ %fnap141, %entry ]
  switch i64 %fnap143, label %common.ret [
    i64 43, label %lab_L351.loopexit
    i64 45, label %lab_L351
    i64 10, label %lab_L349
    i64 9, label %lab_L349
    i64 32, label %lab_L349
  ]

common.ret:                                       ; preds = %jf.then_L344, %jf.then_L354
  %storemerge = phi i64 [ 0, %jf.then_L354 ], [ -1, %jf.then_L344 ]
  %common.ret.op = phi i64 [ %spec.select, %jf.then_L354 ], [ 0, %jf.then_L344 ]
  %lg.value112 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn115 = inttoptr i64 %lg.value112 to ptr
  %rtap116 = tail call i64 %rtap_ep_p_fn115()
  store i64 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  ret i64 %common.ret.op

lab_L349:                                         ; preds = %jf.then_L344, %jf.then_L344, %jf.then_L344
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %1 = add i64 %fnap, -48
  %or.cond = icmp ult i64 %1, 10
  br i1 %or.cond, label %jt.then_L343, label %jf.then_L344

lab_L351.loopexit:                                ; preds = %jf.then_L344
  br label %lab_L351

lab_L351:                                         ; preds = %jf.then_L344, %lab_L351.loopexit
  %2 = phi i1 [ true, %lab_L351.loopexit ], [ false, %jf.then_L344 ]
  %lg.value28 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn31 = inttoptr i64 %lg.value28 to ptr
  %fnap32 = tail call i64 %rtap_ep_p_fn31()
  br label %jt.then_L343

jt.then_L343:                                     ; preds = %lab_L349, %entry, %lab_L351
  %STK2.1 = phi i1 [ %2, %lab_L351 ], [ true, %entry ], [ true, %lab_L349 ]
  %STK1.0 = phi i64 [ %fnap32, %lab_L351 ], [ %fnap141, %entry ], [ %fnap, %lab_L349 ]
  %3 = add i64 %STK1.0, -58
  %or.cond134 = icmp ult i64 %3, -10
  br i1 %or.cond134, label %jf.then_L354, label %lab_L352

lab_L352:                                         ; preds = %jt.then_L343, %lab_L352
  %STK1.1 = phi i64 [ %fnap78, %lab_L352 ], [ %STK1.0, %jt.then_L343 ]
  %STK.0 = phi i64 [ %sub, %lab_L352 ], [ 0, %jt.then_L343 ]
  %mul = mul i64 %STK.0, 10
  %add = add nsw i64 %STK1.1, -48
  %sub = add i64 %add, %mul
  %lg.value74 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn77 = inttoptr i64 %lg.value74 to ptr
  %fnap78 = tail call i64 %rtap_ep_p_fn77()
  %4 = add i64 %fnap78, -48
  %or.cond135 = icmp ult i64 %4, 10
  br i1 %or.cond135, label %lab_L352, label %jf.then_L354

jf.then_L354:                                     ; preds = %lab_L352, %jt.then_L343
  %STK.1 = phi i64 [ 0, %jt.then_L343 ], [ %sub, %lab_L352 ]
  %neg = sub i64 0, %STK.1
  %spec.select = select i1 %STK2.1, i64 %STK.1, i64 %neg
  br label %common.ret
}

define i64 @findinput(i64 %0) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 416), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %0, i64 129, i64 0)
  ret i64 %fnap
}

define i64 @pathfindinput(i64 %0, i64 %1) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 416), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %0, i64 129, i64 %1)
  ret i64 %fnap
}

define i64 @findoutput(i64 %0) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 416), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %0, i64 130, i64 0)
  ret i64 %fnap
}

define i64 @findinoutput(i64 %0) local_unnamed_addr section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 416), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %0, i64 131, i64 0)
  ret i64 %fnap
}

define i64 @findupdate(i64 %0) local_unnamed_addr section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 416), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %0, i64 131, i64 0)
  ret i64 %fnap
}

define i64 @findappend(i64 %0) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 416), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %0, i64 132, i64 0)
  ret i64 %fnap
}

define noundef i64 @endread() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  %lg.value1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 496), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value1 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lg.value)
  ret i64 -4985279381848933680
}

define noundef i64 @endwrite() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %lg.value1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 496), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value1 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lg.value)
  ret i64 -4985279381848933680
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
  br label %lab_L361

lab_L361:                                         ; preds = %lab_L361, %entry
  %STK13.0 = phi i64 [ 0, %entry ], [ %add95, %lab_L361 ]
  %STK9.1 = phi i64 [ %spec.select, %entry ], [ %div, %lab_L361 ]
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
  br i1 %if_cond101.not, label %lab_L362, label %lab_L361

lab_L362:                                         ; preds = %lab_L361
  %if_cond = icmp sgt i64 %fnap, -1
  %STK11.0 = select i1 %eq.not, i64 0, i64 %lg.value10
  %STK1.0 = call i64 @llvm.smax.i64(i64 %1, i64 4)
  %neg105 = sub i64 0, %STK11.0
  %sub = sub i64 %neg105, %STK2.0
  %le = icmp slt i64 %sub, 1
  %le145.not = icmp sgt i64 %sub, %add95
  %or.cond = or i1 %le, %le145.not
  br i1 %or.cond, label %jf.then_L365, label %jf.else150

jf.else150:                                       ; preds = %lab_L362
  %sub156 = add nuw i64 %sub, 2305843009213693951
  %add162 = add i64 %sub156, %stack.bcpladdr
  %rv.llvmaddr = shl i64 %add162, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %ge = icmp slt i64 %rv.rv, 5
  br i1 %ge, label %jf.then_L365, label %jf.else180

jf.else180:                                       ; preds = %jf.else150
  %ls187.not = icmp slt i64 %sub, %add95
  br i1 %ls187.not, label %lab_L366, label %jf.else268

lab_L366:                                         ; preds = %jf.else180, %jf.else251
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
  br i1 %if_cond250, label %jf.then_L365, label %jf.else251

jf.else251:                                       ; preds = %lab_L366
  %add244 = add nuw nsw i64 %STK175.0, 1
  %ls258 = icmp slt i64 %add244, %add95
  br i1 %ls258, label %lab_L366, label %jf.else268

jf.else268:                                       ; preds = %jf.else251, %jf.else180
  %add276 = add i64 %add95, %stack.bcpladdr
  %stind.llvmaddr280 = shl i64 %add276, 3
  %stind.lv281 = inttoptr i64 %stind.llvmaddr280 to ptr
  store i64 1, ptr %stind.lv281, align 8
  %add287 = add i64 %STK13.0, 2
  br label %jf.then_L365

jf.then_L365:                                     ; preds = %lab_L366, %jf.else268, %jf.else150, %lab_L362
  %STK13.1 = phi i64 [ %add95, %lab_L362 ], [ %add95, %jf.else150 ], [ %add287, %jf.else268 ], [ %add95, %lab_L366 ]
  %sub295 = add i64 %STK13.1, -1
  %gr.not = icmp sgt i64 %sub295, %neg105
  %add322 = sub i64 1, %STK11.0
  %STK16.0 = select i1 %gr.not, i64 %STK13.1, i64 %add322
  %add331 = add nsw i64 %STK1.0, -1
  %sub336 = add i64 %add331, %sub
  br i1 %if_cond, label %jf.then_L373, label %jf.else343

jf.else343:                                       ; preds = %jf.then_L365
  %sub295.neg105 = call i64 @llvm.smax.i64(i64 %sub295, i64 %neg105)
  %gr371 = icmp sgt i64 %sub, %sub295.neg105
  br i1 %gr371, label %jf.then_L373, label %lab_L374

lab_L374:                                         ; preds = %jf.else343, %lab_L377
  %STK346.0 = phi i64 [ %add423, %lab_L377 ], [ %sub, %jf.else343 ]
  %le382 = icmp sgt i64 %STK346.0, -1
  %ls394.not = icmp slt i64 %STK346.0, %STK13.1
  %or.cond689 = and i1 %le382, %ls394.not
  br i1 %or.cond689, label %jf.else399, label %lab_L377

jf.else399:                                       ; preds = %lab_L374
  %add406 = add i64 %STK346.0, %stack.bcpladdr
  %rv.llvmaddr409 = shl i64 %add406, 3
  %rv.lv410 = inttoptr i64 %rv.llvmaddr409 to ptr
  %rv.rv411 = load i64, ptr %rv.lv410, align 8
  %if_cond414 = icmp eq i64 %rv.rv411, 0
  br i1 %if_cond414, label %lab_L377, label %jf.then_L373

lab_L377:                                         ; preds = %lab_L374, %jf.else399
  %add423 = add i64 %STK346.0, 1
  %le432.not = icmp sgt i64 %add423, %sub295.neg105
  br i1 %le432.not, label %jf.then_L373, label %lab_L374

jf.then_L373:                                     ; preds = %lab_L377, %jf.else399, %jf.else343, %jf.then_L365
  %if_cond495 = phi i64 [ 32, %jf.then_L365 ], [ 32, %jf.else343 ], [ 32, %lab_L377 ], [ 45, %jf.else399 ]
  %add452 = add i64 %STK16.0, 1
  %ls460 = icmp slt i64 %sub336, %add452
  br i1 %ls460, label %jt.then_L383, label %lab_L382

lab_L382:                                         ; preds = %jf.then_L373, %lab_L382
  %STK446.0 = phi i64 [ %add477, %lab_L382 ], [ %sub336, %jf.then_L373 ]
  %lg.value467 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn470 = inttoptr i64 %lg.value467 to ptr
  %rtap = call i64 %rtap_ep_p_fn470(i64 32)
  %add477 = add i64 %STK446.0, -1
  %ge486.not = icmp slt i64 %add477, %add452
  br i1 %ge486.not, label %jt.then_L383, label %lab_L382

jt.then_L383:                                     ; preds = %lab_L382, %jf.then_L373
  %lg.value505 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn508 = inttoptr i64 %lg.value505 to ptr
  %rtap510 = call i64 %rtap_ep_p_fn508(i64 %if_cond495)
  %sub516 = add i64 %STK16.0, -1
  %ls526 = icmp slt i64 %sub516, %sub
  br i1 %ls526, label %jt.then_L389, label %lab_L388

lab_L388:                                         ; preds = %jt.then_L383, %lab_L391
  %STK517.0 = phi i64 [ %add610, %lab_L391 ], [ %sub516, %jt.then_L383 ]
  %le537 = icmp sgt i64 %STK517.0, -1
  %ls549.not = icmp slt i64 %STK517.0, %STK13.1
  %or.cond691 = and i1 %le537, %ls549.not
  br i1 %or.cond691, label %jf.else554, label %jump.target_L393

jf.else554:                                       ; preds = %lab_L388
  %add561 = add i64 %STK517.0, %stack.bcpladdr
  %rv.llvmaddr564 = shl i64 %add561, 3
  %rv.lv565 = inttoptr i64 %rv.llvmaddr564 to ptr
  %rv.rv566 = load i64, ptr %rv.lv565, align 8
  %add571 = add i64 %rv.rv566, 48
  br label %jump.target_L393

jump.target_L393:                                 ; preds = %lab_L388, %jf.else554
  %.sink701 = phi i64 [ %add571, %jf.else554 ], [ 48, %lab_L388 ]
  %lg.value580 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn583 = inttoptr i64 %lg.value580 to ptr
  %rtap585 = call i64 %rtap_ep_p_fn583(i64 %.sink701)
  %eq592.not = icmp eq i64 %STK517.0, %neg105
  br i1 %eq592.not, label %jf.else597, label %lab_L391

jf.else597:                                       ; preds = %jump.target_L393
  %lg.value599 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn602 = inttoptr i64 %lg.value599 to ptr
  %rtap604 = call i64 %rtap_ep_p_fn602(i64 46)
  br label %lab_L391

lab_L391:                                         ; preds = %jump.target_L393, %jf.else597
  %add610 = add i64 %STK517.0, -1
  %ge619.not = icmp slt i64 %add610, %sub
  br i1 %ge619.not, label %jt.then_L389, label %lab_L388

jt.then_L389:                                     ; preds = %lab_L391, %jt.then_L383
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
  br label %lab_L131.i

lab_L131.i:                                       ; preds = %lab_L131.i, %entry
  %STK7.1.i = phi i64 [ %spec.select.i, %entry ], [ %div.i, %lab_L131.i ]
  %STK5.0.i = phi i64 [ 0, %entry ], [ %add45.i, %lab_L131.i ]
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
  br i1 %if_cond51.not.i, label %lab_L132.i, label %lab_L131.i

lab_L132.i:                                       ; preds = %lab_L131.i
  %if_cond.i = icmp slt i64 %0, 0
  %.lobit = ashr i64 %0, 63
  %spec.select209.i = add i64 %1, %.lobit
  br i1 %if_cond.i, label %jf.else61.i, label %jf.then_L134.i

jf.else61.i:                                      ; preds = %lab_L132.i
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %rtap.i = call i64 %rtap_ep_p_fn.i(i64 45)
  br label %jf.then_L134.i

jf.then_L134.i:                                   ; preds = %jf.else61.i, %lab_L132.i
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L136.i, label %lab_L135.i

lab_L135.i:                                       ; preds = %jf.then_L134.i, %lab_L135.i
  %STK71.0.i = phi i64 [ %add104.i, %lab_L135.i ], [ %add70.i, %jf.then_L134.i ]
  %lg.value93.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96.i = inttoptr i64 %lg.value93.i to ptr
  %rtap98.i = call i64 %rtap_ep_p_fn96.i(i64 48)
  %add104.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add104.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L136.i, label %lab_L135.i

jt.then_L136.i:                                   ; preds = %lab_L135.i, %jf.then_L134.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L142.i

lab_L142.i:                                       ; preds = %jt.then_L136.i, %lab_L142.i
  %STK141.0.i = phi i64 [ %add177.i, %lab_L142.i ], [ %STK5.0.i, %jt.then_L136.i ]
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
  br i1 %ge.not.i, label %writedz.exit, label %lab_L142.i

writedz.exit:                                     ; preds = %lab_L142.i, %jt.then_L136.i
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %stack.vec.i)
  ret i64 -4985279381848933680
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

define i64 @sys_flt(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr section ".text.BLIB" {
entry:
  switch i64 %0, label %lab_L436 [
    i64 17, label %lab_L435
    i64 15, label %lab_L434
    i64 18, label %lab_L433
    i64 16, label %lab_L432
    i64 14, label %lab_L431
    i64 13, label %lab_L430
    i64 12, label %lab_L429
    i64 11, label %lab_L428
    i64 10, label %lab_L427
    i64 9, label %lab_L426
    i64 7, label %lab_L425
    i64 6, label %lab_L424
    i64 5, label %lab_L421
    i64 4, label %lab_L420
    i64 3, label %lab_L419
    i64 2, label %lab_L407
    i64 1, label %lab_L400
    i64 0, label %jump.target_L398
  ]

lab_L400:                                         ; preds = %entry
  %float.itof = sitofp i64 %1 to double
  %gr = icmp slt i64 %2, 1
  br i1 %gr, label %jf.then_L403, label %lab_L401

lab_L401:                                         ; preds = %lab_L400, %lab_L401
  %frhs = phi double [ %fresult, %lab_L401 ], [ %float.itof, %lab_L400 ]
  %STK2.0 = phi i64 [ %sub, %lab_L401 ], [ %2, %lab_L400 ]
  %fresult = fmul double %frhs, 1.000000e+01
  %sub = add nsw i64 %STK2.0, -1
  %gr36 = icmp samesign ugt i64 %STK2.0, 1
  br i1 %gr36, label %lab_L401, label %jf.then_L403.thread

jf.then_L403.thread:                              ; preds = %lab_L401
  %STK5.1515 = bitcast double %fresult to i64
  br label %jump.target_L398

jf.then_L403:                                     ; preds = %lab_L400
  %STK5.1 = bitcast double %float.itof to i64
  %if_cond49 = icmp sgt i64 %2, -1
  br i1 %if_cond49, label %jump.target_L398, label %lab_L404

lab_L404:                                         ; preds = %jf.then_L403, %lab_L404
  %flhs57 = phi double [ %fresult58, %lab_L404 ], [ %float.itof, %jf.then_L403 ]
  %STK2.2 = phi i64 [ %add, %lab_L404 ], [ %2, %jf.then_L403 ]
  %fresult58 = fdiv double %flhs57, 1.000000e+01
  %add = add nuw nsw i64 %STK2.2, 1
  %ls73.not = icmp eq i64 %STK2.2, -1
  br i1 %ls73.not, label %jump.target_L398.loopexit, label %lab_L404

lab_L407:                                         ; preds = %entry
  %flhs88 = bitcast i64 %1 to double
  %comparison = fcmp ult double %flhs88, 0.000000e+00
  %fresult112 = fneg double %flhs88
  %fneg = bitcast double %fresult112 to i64
  %STK80.0 = select i1 %comparison, i64 %fneg, i64 %1
  %flhs121 = bitcast i64 %STK80.0 to double
  %comparison122 = fcmp ult double %flhs121, 1.000000e+01
  br i1 %comparison122, label %jf.then_L413, label %lab_L411.preheader

lab_L411.preheader:                               ; preds = %lab_L407
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.53 to i64), 3
  br label %lab_L411

lab_L411:                                         ; preds = %lab_L411.preheader, %lab_L411
  %STK81.0 = phi i64 [ %add144, %lab_L411 ], [ 0, %lab_L411.preheader ]
  %STK80.1 = phi double [ %fresult135, %lab_L411 ], [ %flhs121, %lab_L411.preheader ]
  %fresult135 = fdiv double %STK80.1, 1.000000e+01
  %fdiv136 = bitcast double %fresult135 to i64
  %add144 = add i64 %STK81.0, 1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lstr.bcpladdr, i64 %fdiv136, i64 %add144)
  %comparison162 = fcmp ult double %fresult135, 1.000000e+01
  br i1 %comparison162, label %jf.then_L413, label %lab_L411

jf.then_L413:                                     ; preds = %lab_L411, %lab_L407
  %flhs174.pre-phi = phi double [ %flhs121, %lab_L407 ], [ %fresult135, %lab_L411 ]
  %STK81.1 = phi i64 [ 0, %lab_L407 ], [ %add144, %lab_L411 ]
  %STK80.2 = phi i64 [ %STK80.0, %lab_L407 ], [ %fdiv136, %lab_L411 ]
  %comparison175 = fcmp ugt double %flhs174.pre-phi, 1.000000e+00
  br i1 %comparison175, label %jf.then_L416, label %lab_L414.preheader

lab_L414.preheader:                               ; preds = %jf.then_L413
  %lstr.bcpladdr199 = ashr exact i64 ptrtoint (ptr @lstr.global.54 to i64), 3
  br label %lab_L414

lab_L414:                                         ; preds = %lab_L414.preheader, %lab_L414
  %STK81.2 = phi i64 [ %sub196, %lab_L414 ], [ %STK81.1, %lab_L414.preheader ]
  %STK80.3 = phi double [ %fresult187, %lab_L414 ], [ %flhs174.pre-phi, %lab_L414.preheader ]
  %fresult187 = fmul double %STK80.3, 1.000000e+01
  %fmul188 = bitcast double %fresult187 to i64
  %sub196 = add i64 %STK81.2, -1
  %lg.value205 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn208 = inttoptr i64 %lg.value205 to ptr
  %rtap212 = tail call i64 %rtap_ep_p_fn208(i64 %lstr.bcpladdr199, i64 %fmul188, i64 %sub196)
  %comparison220 = fcmp ugt double %fresult187, 1.000000e+00
  br i1 %comparison220, label %jf.then_L416, label %lab_L414

jf.then_L416:                                     ; preds = %lab_L414, %jf.then_L413
  %flhs246.pre-phi = phi double [ %flhs174.pre-phi, %jf.then_L413 ], [ %fresult187, %lab_L414 ]
  %STK81.3 = phi i64 [ %STK81.1, %jf.then_L413 ], [ %sub196, %lab_L414 ]
  %STK80.4 = phi i64 [ %STK80.2, %jf.then_L413 ], [ %fmul188, %lab_L414 ]
  store i64 %STK81.3, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %fresult247 = fneg double %flhs246.pre-phi
  %fneg248 = bitcast double %fresult247 to i64
  %__res_a.1 = select i1 %comparison, i64 %fneg248, i64 %STK80.4
  br label %jump.target_L398

lab_L419:                                         ; preds = %entry
  %float.itof257 = sitofp i64 %1 to double
  %float258 = bitcast double %float.itof257 to i64
  br label %jump.target_L398

lab_L420:                                         ; preds = %entry
  %fix.ftoi = bitcast i64 %1 to double
  %fix263 = fptosi double %fix.ftoi to i64
  br label %jump.target_L398

lab_L421:                                         ; preds = %entry
  %flhs272 = bitcast i64 %1 to double
  %comparison273 = fcmp ult double %flhs272, 0.000000e+00
  %fresult287 = fneg double %flhs272
  %fneg288 = bitcast double %fresult287 to i64
  %__res_a.2 = select i1 %comparison273, i64 %fneg288, i64 %1
  br label %jump.target_L398

lab_L424:                                         ; preds = %entry
  %frhs300 = bitcast i64 %1 to double
  %flhs301 = bitcast i64 %2 to double
  %fresult302 = fmul double %frhs300, %flhs301
  %fmul303 = bitcast double %fresult302 to i64
  br label %jump.target_L398

lab_L425:                                         ; preds = %entry
  %frhs312 = bitcast i64 %2 to double
  %flhs313 = bitcast i64 %1 to double
  %fresult314 = fdiv double %flhs313, %frhs312
  %fdiv315 = bitcast double %fresult314 to i64
  br label %jump.target_L398

lab_L426:                                         ; preds = %entry
  %frhs324 = bitcast i64 %1 to double
  %flhs325 = bitcast i64 %2 to double
  %fresult326 = fadd double %frhs324, %flhs325
  %fadd = bitcast double %fresult326 to i64
  br label %jump.target_L398

lab_L427:                                         ; preds = %entry
  %frhs335 = bitcast i64 %2 to double
  %flhs336 = bitcast i64 %1 to double
  %fresult337 = fsub double %flhs336, %frhs335
  %fsub = bitcast double %fresult337 to i64
  br label %jump.target_L398

lab_L428:                                         ; preds = %entry
  br label %jump.target_L398

lab_L429:                                         ; preds = %entry
  %flhs346 = bitcast i64 %1 to double
  %fresult347 = fneg double %flhs346
  %fneg348 = bitcast double %fresult347 to i64
  br label %jump.target_L398

lab_L430:                                         ; preds = %entry
  %frhs357 = bitcast i64 %1 to double
  %flhs358 = bitcast i64 %2 to double
  %comparison359 = fcmp oeq double %flhs358, %frhs357
  %feq = sext i1 %comparison359 to i64
  br label %jump.target_L398

lab_L431:                                         ; preds = %entry
  %frhs368 = bitcast i64 %1 to double
  %flhs369 = bitcast i64 %2 to double
  %comparison370 = fcmp one double %flhs369, %frhs368
  %fne = sext i1 %comparison370 to i64
  br label %jump.target_L398

lab_L432:                                         ; preds = %entry
  %frhs379 = bitcast i64 %2 to double
  %flhs380 = bitcast i64 %1 to double
  %comparison381 = fcmp ogt double %flhs380, %frhs379
  %fgr = sext i1 %comparison381 to i64
  br label %jump.target_L398

lab_L433:                                         ; preds = %entry
  %frhs390 = bitcast i64 %2 to double
  %flhs391 = bitcast i64 %1 to double
  %comparison392 = fcmp oge double %flhs391, %frhs390
  %fge393 = sext i1 %comparison392 to i64
  br label %jump.target_L398

lab_L434:                                         ; preds = %entry
  %frhs402 = bitcast i64 %2 to double
  %flhs403 = bitcast i64 %1 to double
  %comparison404 = fcmp olt double %flhs403, %frhs402
  %fls = sext i1 %comparison404 to i64
  br label %jump.target_L398

lab_L435:                                         ; preds = %entry
  %frhs413 = bitcast i64 %2 to double
  %flhs414 = bitcast i64 %1 to double
  %comparison415 = fcmp ole double %flhs414, %frhs413
  %fle416 = sext i1 %comparison415 to i64
  br label %jump.target_L398

lab_L436:                                         ; preds = %entry
  %lstr.bcpladdr419 = ashr exact i64 ptrtoint (ptr @lstr.global.55 to i64), 3
  %lg.value431 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn434 = inttoptr i64 %lg.value431 to ptr
  %rtap441 = tail call i64 %rtap_ep_p_fn434(i64 %lstr.bcpladdr419, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  %lg.value443 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn446 = inttoptr i64 %lg.value443 to ptr
  %rtap448 = tail call i64 %rtap_ep_p_fn446(i64 1)
  br label %jump.target_L398

jump.target_L398.loopexit:                        ; preds = %lab_L404
  %fdiv.le = bitcast double %fresult58 to i64
  br label %jump.target_L398

jump.target_L398:                                 ; preds = %jump.target_L398.loopexit, %jf.then_L403.thread, %entry, %jf.then_L403, %lab_L436, %lab_L435, %lab_L434, %lab_L433, %lab_L432, %lab_L431, %lab_L430, %lab_L429, %lab_L428, %lab_L427, %lab_L426, %lab_L425, %lab_L424, %lab_L421, %lab_L420, %lab_L419, %jf.then_L416
  %STK5.3 = phi i64 [ -4985279381848933680, %lab_L436 ], [ %STK5.1, %jf.then_L403 ], [ %__res_a.1, %jf.then_L416 ], [ %float258, %lab_L419 ], [ %fix263, %lab_L420 ], [ %__res_a.2, %lab_L421 ], [ %fmul303, %lab_L424 ], [ %fdiv315, %lab_L425 ], [ %fadd, %lab_L426 ], [ %fsub, %lab_L427 ], [ %1, %lab_L428 ], [ %fneg348, %lab_L429 ], [ %feq, %lab_L430 ], [ %fne, %lab_L431 ], [ %fgr, %lab_L432 ], [ %fge393, %lab_L433 ], [ %fls, %lab_L434 ], [ %fle416, %lab_L435 ], [ -1, %entry ], [ %STK5.1515, %jf.then_L403.thread ], [ %fdiv.le, %jump.target_L398.loopexit ]
  ret i64 %STK5.3
}

define i64 @sys(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) section ".text.BLIB" {
entry:
  switch i64 %0, label %lab_L444 [
    i64 63, label %lab_L443
    i64 11, label %lab_L442
    i64 10, label %lab_L441
  ]

lab_L441:                                         ; preds = %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  br label %jump.target_L440

lab_L442:                                         ; preds = %entry
  %lg.value12 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn15 = inttoptr i64 %lg.value12 to ptr
  %fnap16 = tail call i64 %rtap_ep_p_fn15(i64 %1)
  br label %jump.target_L440

lab_L443:                                         ; preds = %entry
  %fnap37 = tail call i64 @sys_flt(i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  br label %jump.target_L440

lab_L444:                                         ; preds = %entry
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.57 to i64), 3
  %lg.value53 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn56 = inttoptr i64 %lg.value53 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn56(i64 %lstr.bcpladdr, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  %lg.value65 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn68 = inttoptr i64 %lg.value65 to ptr
  %rtap70 = tail call i64 %rtap_ep_p_fn68(i64 1)
  br label %jump.target_L440

jump.target_L440:                                 ; preds = %lab_L444, %lab_L443, %lab_L442, %lab_L441
  %STK6.0 = phi i64 [ -4985279381848933680, %lab_L444 ], [ %fnap, %lab_L441 ], [ %fnap16, %lab_L442 ], [ %fnap37, %lab_L443 ]
  ret i64 %STK6.0
}

define noundef i64 @writes(i64 %0) section ".text.BLIB" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr = icmp eq i8 %getbyte.char, 0
  br i1 %gr, label %jt.then_L446, label %lab_L445

lab_L445:                                         ; preds = %entry, %lab_L445
  %STK1.0 = phi i64 [ %add, %lab_L445 ], [ 1, %entry ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK1.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  %add = add nuw nsw i64 %STK1.0, 1
  %le.not.not = icmp samesign ult i64 %STK1.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L445, label %jt.then_L446

jt.then_L446:                                     ; preds = %lab_L445, %entry
  ret i64 -4985279381848933680
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
  %rtap = tail call i64 %rtap_ep_p_fn(i64 60, i64 %0)
  ret i64 -4985279381848933680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @fplus(i64 %0, i64 %1, i64 returned %2) #5 section ".text.BLIB" {
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
define i64 @fminus(i64 %0, i64 %1, i64 returned %2) #5 section ".text.BLIB" {
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
define i64 @fmult(i64 %0, i64 %1, i64 returned %2) #5 section ".text.BLIB" {
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
define i64 @fdiv(i64 %0, i64 %1, i64 returned %2) #5 section ".text.BLIB" {
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
define i64 @fneg(i64 %0, i64 returned %1) #5 section ".text.BLIB" {
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
define i64 @ffix(i64 %0) #6 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv8 = load double, ptr %rv.lv, align 8
  %fix3 = fptosi double %rv.rv8 to i64
  ret i64 %fix3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @ffloat(i64 %0, i64 returned %1) #5 section ".text.BLIB" {
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
define range(i64 -1, 2) i64 @fcomp(i64 %0, i64 %1) #6 section ".text.BLIB" {
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
define i64 @fabs(i64 %0, i64 returned %1) #5 section ".text.BLIB" {
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
declare double @llvm.fabs.f64(double) #7

define noundef i64 @blib.dumpheap() local_unnamed_addr section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.73, align 8
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.80 to i64), 3
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lstr.bcpladdr)
  %ll.static.value7 = load i64, ptr @itemn.global.71, align 8
  %eq.not = icmp eq i64 %ll.static.value7, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L472

common.ret:                                       ; preds = %lab_L474, %jf.else
  ret i64 -4985279381848933680

jf.else:                                          ; preds = %entry
  %lstr.bcpladdr10 = ashr exact i64 ptrtoint (ptr @lstr.global.81 to i64), 3
  %lg.value12 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn15 = inttoptr i64 %lg.value12 to ptr
  %rtap17 = tail call i64 %rtap_ep_p_fn15(i64 %lstr.bcpladdr10)
  br label %common.ret

jf.then_L472:                                     ; preds = %entry
  %lstr.bcpladdr18 = ashr exact i64 ptrtoint (ptr @lstr.global.82 to i64), 3
  %ll.static.value23 = load i64, ptr @itemn.global.72, align 8
  %shift.result30 = shl i64 %ll.static.value7, 3
  %shift.result41 = shl i64 %ll.static.value23, 3
  %lg.value45 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn48 = inttoptr i64 %lg.value45 to ptr
  %rtap55 = tail call i64 %rtap_ep_p_fn48(i64 %lstr.bcpladdr18, i64 1048576, i64 %ll.static.value7, i64 %ll.static.value23, i64 %shift.result30, i64 %shift.result41)
  %lstr.bcpladdr56 = ashr exact i64 ptrtoint (ptr @lstr.global.83 to i64), 3
  %lg.value58 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn61 = inttoptr i64 %lg.value58 to ptr
  %rtap63 = tail call i64 %rtap_ep_p_fn61(i64 %lstr.bcpladdr56)
  %lstr.bcpladdr64 = ashr exact i64 ptrtoint (ptr @lstr.global.84 to i64), 3
  %lg.value66 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn69 = inttoptr i64 %lg.value66 to ptr
  %rtap71 = tail call i64 %rtap_ep_p_fn69(i64 %lstr.bcpladdr64)
  %lstr.bcpladdr125 = ashr exact i64 ptrtoint (ptr @lstr.global.85 to i64), 3
  br label %lab_L473

lab_L473:                                         ; preds = %lab_L480.4, %jf.then_L472
  %STK3.0 = phi i64 [ 0, %jf.then_L472 ], [ %add88, %lab_L480.4 ]
  %STK2.0 = phi i64 [ 0, %jf.then_L472 ], [ %add, %lab_L480.4 ]
  %STK1.0 = phi i64 [ 0, %jf.then_L472 ], [ %spec.select, %lab_L480.4 ]
  %STK.0 = phi i64 [ %ll.static.value, %jf.then_L472 ], [ %rv.rv249, %lab_L480.4 ]
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
  %ll.static.value180 = load i64, ptr @itemn.global.72, align 8
  %ls.not = icmp slt i64 %STK.0, %ll.static.value180
  br i1 %ls.not, label %jf.else188, label %lab_L480

jf.else188:                                       ; preds = %lab_L473
  %rv.rv200 = load i64, ptr %rv.lv, align 8
  %lg.value203 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn206 = inttoptr i64 %lg.value203 to ptr
  %rtap209 = tail call i64 %rtap_ep_p_fn206(i64 %rv.rv200, i64 16)
  %lg.value211 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn214 = inttoptr i64 %lg.value211 to ptr
  %rtap216 = tail call i64 %rtap_ep_p_fn214(i64 32)
  %ll.static.value180.1.pre = load i64, ptr @itemn.global.72, align 8
  br label %lab_L480

lab_L480:                                         ; preds = %lab_L473, %jf.else188
  %ll.static.value180.1 = phi i64 [ %ll.static.value180, %lab_L473 ], [ %ll.static.value180.1.pre, %jf.else188 ]
  %add178.1 = add i64 %STK.0, 1
  %ls.not.1 = icmp slt i64 %add178.1, %ll.static.value180.1
  br i1 %ls.not.1, label %jf.else188.1, label %lab_L480.1

jf.else188.1:                                     ; preds = %lab_L480
  %rv.llvmaddr198.1 = shl i64 %add178.1, 3
  %rv.lv199.1 = inttoptr i64 %rv.llvmaddr198.1 to ptr
  %rv.rv200.1 = load i64, ptr %rv.lv199.1, align 8
  %lg.value203.1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn206.1 = inttoptr i64 %lg.value203.1 to ptr
  %rtap209.1 = tail call i64 %rtap_ep_p_fn206.1(i64 %rv.rv200.1, i64 16)
  %lg.value211.1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn214.1 = inttoptr i64 %lg.value211.1 to ptr
  %rtap216.1 = tail call i64 %rtap_ep_p_fn214.1(i64 32)
  %ll.static.value180.2.pre = load i64, ptr @itemn.global.72, align 8
  br label %lab_L480.1

lab_L480.1:                                       ; preds = %jf.else188.1, %lab_L480
  %ll.static.value180.2 = phi i64 [ %ll.static.value180.2.pre, %jf.else188.1 ], [ %ll.static.value180.1, %lab_L480 ]
  %add178.2 = add i64 %STK.0, 2
  %ls.not.2 = icmp slt i64 %add178.2, %ll.static.value180.2
  br i1 %ls.not.2, label %jf.else188.2, label %lab_L480.2

jf.else188.2:                                     ; preds = %lab_L480.1
  %rv.llvmaddr198.2 = shl i64 %add178.2, 3
  %rv.lv199.2 = inttoptr i64 %rv.llvmaddr198.2 to ptr
  %rv.rv200.2 = load i64, ptr %rv.lv199.2, align 8
  %lg.value203.2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn206.2 = inttoptr i64 %lg.value203.2 to ptr
  %rtap209.2 = tail call i64 %rtap_ep_p_fn206.2(i64 %rv.rv200.2, i64 16)
  %lg.value211.2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn214.2 = inttoptr i64 %lg.value211.2 to ptr
  %rtap216.2 = tail call i64 %rtap_ep_p_fn214.2(i64 32)
  %ll.static.value180.3.pre = load i64, ptr @itemn.global.72, align 8
  br label %lab_L480.2

lab_L480.2:                                       ; preds = %jf.else188.2, %lab_L480.1
  %ll.static.value180.3 = phi i64 [ %ll.static.value180.3.pre, %jf.else188.2 ], [ %ll.static.value180.2, %lab_L480.1 ]
  %add178.3 = add i64 %STK.0, 3
  %ls.not.3 = icmp slt i64 %add178.3, %ll.static.value180.3
  br i1 %ls.not.3, label %jf.else188.3, label %lab_L480.3

jf.else188.3:                                     ; preds = %lab_L480.2
  %rv.llvmaddr198.3 = shl i64 %add178.3, 3
  %rv.lv199.3 = inttoptr i64 %rv.llvmaddr198.3 to ptr
  %rv.rv200.3 = load i64, ptr %rv.lv199.3, align 8
  %lg.value203.3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn206.3 = inttoptr i64 %lg.value203.3 to ptr
  %rtap209.3 = tail call i64 %rtap_ep_p_fn206.3(i64 %rv.rv200.3, i64 16)
  %lg.value211.3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn214.3 = inttoptr i64 %lg.value211.3 to ptr
  %rtap216.3 = tail call i64 %rtap_ep_p_fn214.3(i64 32)
  %ll.static.value180.4.pre = load i64, ptr @itemn.global.72, align 8
  br label %lab_L480.3

lab_L480.3:                                       ; preds = %jf.else188.3, %lab_L480.2
  %ll.static.value180.4 = phi i64 [ %ll.static.value180.4.pre, %jf.else188.3 ], [ %ll.static.value180.3, %lab_L480.2 ]
  %add178.4 = add i64 %STK.0, 4
  %ls.not.4 = icmp slt i64 %add178.4, %ll.static.value180.4
  br i1 %ls.not.4, label %jf.else188.4, label %lab_L480.4

jf.else188.4:                                     ; preds = %lab_L480.3
  %rv.llvmaddr198.4 = shl i64 %add178.4, 3
  %rv.lv199.4 = inttoptr i64 %rv.llvmaddr198.4 to ptr
  %rv.rv200.4 = load i64, ptr %rv.lv199.4, align 8
  %lg.value203.4 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn206.4 = inttoptr i64 %lg.value203.4 to ptr
  %rtap209.4 = tail call i64 %rtap_ep_p_fn206.4(i64 %rv.rv200.4, i64 16)
  %lg.value211.4 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn214.4 = inttoptr i64 %lg.value211.4 to ptr
  %rtap216.4 = tail call i64 %rtap_ep_p_fn214.4(i64 32)
  br label %lab_L480.4

lab_L480.4:                                       ; preds = %jf.else188.4, %lab_L480.3
  %spec.select = tail call i64 @llvm.umax.i64(i64 %logand, i64 %STK1.0)
  %lg.value234 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 672), align 4
  %rtap_ep_p_fn237 = inttoptr i64 %lg.value234 to ptr
  %rtap238 = tail call i64 %rtap_ep_p_fn237()
  %rv.llvmaddr247 = add i64 %rv.llvmaddr, 8
  %rv.lv248 = inttoptr i64 %rv.llvmaddr247 to ptr
  %rv.rv249 = load i64, ptr %rv.lv248, align 8
  %eq257.not = icmp eq i64 %rv.rv249, 0
  br i1 %eq257.not, label %lab_L474, label %lab_L473

lab_L474:                                         ; preds = %lab_L480.4
  %lstr.bcpladdr263 = ashr exact i64 ptrtoint (ptr @lstr.global.86 to i64), 3
  %lg.value265 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn268 = inttoptr i64 %lg.value265 to ptr
  %rtap270 = tail call i64 %rtap_ep_p_fn268(i64 %lstr.bcpladdr263)
  %lstr.bcpladdr271 = ashr exact i64 ptrtoint (ptr @lstr.global.87 to i64), 3
  %lg.value279 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn282 = inttoptr i64 %lg.value279 to ptr
  %rtap287 = tail call i64 %rtap_ep_p_fn282(i64 %lstr.bcpladdr271, i64 %add88, i64 %add, i64 %spec.select)
  %lstr.bcpladdr288 = ashr exact i64 ptrtoint (ptr @lstr.global.88 to i64), 3
  %ll.static.value290 = load i64, ptr @itemn.global.74, align 8
  %ll.static.value292 = load i64, ptr @itemn.global.76, align 8
  %ll.static.value294 = load i64, ptr @itemn.global.75, align 8
  %ll.static.value296 = load i64, ptr @itemn.global.78, align 8
  %ll.static.value298 = load i64, ptr @itemn.global.77, align 8
  %lg.value300 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn303 = inttoptr i64 %lg.value300 to ptr
  %rtap310 = tail call i64 %rtap_ep_p_fn303(i64 %lstr.bcpladdr288, i64 %ll.static.value290, i64 %ll.static.value292, i64 %ll.static.value294, i64 %ll.static.value296, i64 %ll.static.value298)
  br label %common.ret
}

define noundef i64 @blib.init_heap() local_unnamed_addr section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.71, align 8
  %eq.not = icmp eq i64 %ll.static.value, 0
  br i1 %eq.not, label %jf.else, label %common.ret

jf.else:                                          ; preds = %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 9, i64 0, i64 8388608, i64 3, i64 34, i64 0, i64 0)
  store i64 %fnap, ptr @itemn.global.71, align 8
  %if_cond26 = icmp sgt i64 %fnap, -1
  br i1 %if_cond26, label %jf.then_L484, label %jf.else27

jf.else27:                                        ; preds = %jf.else
  %neg = sub i64 0, %fnap
  %lg.value33 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn36 = inttoptr i64 %lg.value33 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn36(i64 60, i64 %neg)
  %ll.static.value39.pre = load i64, ptr @itemn.global.71, align 8
  br label %jf.then_L484

jf.then_L484:                                     ; preds = %jf.else27, %jf.else
  %ll.static.value39 = phi i64 [ %ll.static.value39.pre, %jf.else27 ], [ %fnap, %jf.else ]
  %shift.result44 = lshr i64 %ll.static.value39, 3
  store i64 %shift.result44, ptr @itemn.global.71, align 8
  %add = add nuw nsw i64 %shift.result44, 1048576
  store i64 %add, ptr @itemn.global.72, align 8
  store i64 %shift.result44, ptr @itemn.global.73, align 8
  %rv.llvmaddr = and i64 %ll.static.value39, -8
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %0 = and i64 %rv.rv, -9223372036854775808
  %xor77 = or disjoint i64 %0, 1048576
  store i64 %xor77, ptr %rv.lv, align 8
  %ll.static.value93 = load i64, ptr @itemn.global.73, align 8
  %rv.llvmaddr96 = shl i64 %ll.static.value93, 3
  %rv.lv97 = inttoptr i64 %rv.llvmaddr96 to ptr
  %rv.rv98 = load i64, ptr %rv.lv97, align 8
  %xor118 = or i64 %rv.rv98, -9223372036854775808
  store i64 %xor118, ptr %rv.lv97, align 8
  %ll.static.value127 = load i64, ptr @itemn.global.73, align 8
  %add132 = shl i64 %ll.static.value127, 3
  %stind.llvmaddr136 = add i64 %add132, 8
  %stind.lv137 = inttoptr i64 %stind.llvmaddr136 to ptr
  store i64 0, ptr %stind.lv137, align 8
  %ll.static.value139 = load i64, ptr @itemn.global.73, align 8
  %add144 = shl i64 %ll.static.value139, 3
  %stind.llvmaddr148 = add i64 %add144, 16
  %stind.lv149 = inttoptr i64 %stind.llvmaddr148 to ptr
  store i64 0, ptr %stind.lv149, align 8
  store i64 0, ptr @itemn.global.74, align 8
  store i64 0, ptr @itemn.global.75, align 8
  store i64 0, ptr @itemn.global.76, align 8
  store i64 0, ptr @itemn.global.77, align 8
  store i64 0, ptr @itemn.global.78, align 8
  br label %common.ret

common.ret:                                       ; preds = %entry, %jf.then_L484
  ret i64 -4985279381848933680
}

define noundef i64 @blib.finish_heap() local_unnamed_addr section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.71, align 8
  %shift.result3 = shl i64 %ll.static.value, 3
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 11, i64 %shift.result3, i64 8388608)
  store i64 0, ptr @itemn.global.71, align 8
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
  %ll.static.value = load i64, ptr @itemn.global.73, align 8
  %eq.not = icmp eq i64 %ll.static.value, 0
  br i1 %eq.not, label %jf.else, label %jf.else69

common.ret:                                       ; preds = %jf.then_L494, %jf.then_L493, %jf.else
  ret i64 -4985279381848933680

jf.else:                                          ; preds = %entry
  store i64 %0, ptr @itemn.global.73, align 8
  %stind.llvmaddr43 = add i64 %rv.llvmaddr, 8
  %stind.lv44 = inttoptr i64 %stind.llvmaddr43 to ptr
  store i64 0, ptr %stind.lv44, align 8
  %stind.llvmaddr55 = add i64 %rv.llvmaddr, 16
  %stind.lv56 = inttoptr i64 %stind.llvmaddr55 to ptr
  store i64 0, ptr %stind.lv56, align 8
  br label %common.ret

jf.else69:                                        ; preds = %entry
  %ls.not = icmp slt i64 %ll.static.value, %0
  br i1 %ls.not, label %lab_L488, label %jf.else128

lab_L488:                                         ; preds = %jf.else69, %lab_L488
  %STK58.0 = phi i64 [ %rv.rv93, %lab_L488 ], [ %ll.static.value, %jf.else69 ]
  %add88 = shl i64 %STK58.0, 3
  %rv.llvmaddr91 = add i64 %add88, 8
  %rv.lv92 = inttoptr i64 %rv.llvmaddr91 to ptr
  %rv.rv93 = load i64, ptr %rv.lv92, align 8
  %ne101.not = icmp ne i64 %rv.rv93, 0
  %ls113 = icmp slt i64 %rv.rv93, %0
  %or.cond = and i1 %ne101.not, %ls113
  br i1 %or.cond, label %lab_L488, label %jf.then_L490

jf.then_L490:                                     ; preds = %lab_L488
  %eq123.not = icmp eq i64 %STK58.0, 0
  br i1 %eq123.not, label %jf.else128, label %jf.then_L492

jf.else128:                                       ; preds = %jf.else69, %jf.then_L490
  %stind.llvmaddr140 = add i64 %rv.llvmaddr, 8
  %stind.lv141 = inttoptr i64 %stind.llvmaddr140 to ptr
  store i64 %ll.static.value, ptr %stind.lv141, align 8
  %stind.llvmaddr152 = add i64 %rv.llvmaddr, 16
  %stind.lv153 = inttoptr i64 %stind.llvmaddr152 to ptr
  store i64 0, ptr %stind.lv153, align 8
  %ll.static.value155 = load i64, ptr @itemn.global.73, align 8
  %ne159.not = icmp eq i64 %ll.static.value155, 0
  br i1 %ne159.not, label %jf.then_L493, label %jf.else164

jf.else164:                                       ; preds = %jf.else128
  %add172 = shl i64 %ll.static.value155, 3
  %stind.llvmaddr176 = add i64 %add172, 16
  %stind.lv177 = inttoptr i64 %stind.llvmaddr176 to ptr
  store i64 %0, ptr %stind.lv177, align 8
  br label %jf.then_L493

jf.then_L493:                                     ; preds = %jf.else164, %jf.else128
  store i64 %0, ptr @itemn.global.73, align 8
  br label %common.ret

jf.then_L492:                                     ; preds = %jf.then_L490
  %stind.llvmaddr202 = add i64 %rv.llvmaddr, 8
  %stind.lv203 = inttoptr i64 %stind.llvmaddr202 to ptr
  store i64 %rv.rv93, ptr %stind.lv203, align 8
  %stind.llvmaddr215 = add i64 %rv.llvmaddr, 16
  %stind.lv216 = inttoptr i64 %stind.llvmaddr215 to ptr
  store i64 %STK58.0, ptr %stind.lv216, align 8
  %rv.rv227 = load i64, ptr %rv.lv92, align 4
  %ne232.not = icmp eq i64 %rv.rv227, 0
  br i1 %ne232.not, label %jf.then_L494, label %jf.else237

jf.else237:                                       ; preds = %jf.then_L492
  %add255 = shl i64 %rv.rv227, 3
  %stind.llvmaddr259 = add i64 %add255, 16
  %stind.lv260 = inttoptr i64 %stind.llvmaddr259 to ptr
  store i64 %0, ptr %stind.lv260, align 8
  br label %jf.then_L494

jf.then_L494:                                     ; preds = %jf.else237, %jf.then_L492
  store i64 %0, ptr %rv.lv92, align 4
  br label %common.ret
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noundef i64 @blib.remove_from_free_list(i64 %0) local_unnamed_addr #5 section ".text.BLIB" {
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
  %itemn.global.73.sink = select i1 %ne.not, ptr @itemn.global.73, ptr %stind.lv
  store i64 %rv.rv48, ptr %itemn.global.73.sink, align 8
  %rv.rv60 = load i64, ptr %rv.lv47, align 8
  %ne65.not = icmp eq i64 %rv.rv60, 0
  br i1 %ne65.not, label %jf.then_L498, label %jf.else70

jf.else70:                                        ; preds = %entry
  %rv.rv81 = load i64, ptr %rv.lv, align 8
  %add98 = shl i64 %rv.rv60, 3
  %stind.llvmaddr102 = add i64 %add98, 16
  %stind.lv103 = inttoptr i64 %stind.llvmaddr102 to ptr
  store i64 %rv.rv81, ptr %stind.lv103, align 8
  br label %jf.then_L498

jf.then_L498:                                     ; preds = %jf.else70, %entry
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
  %ll.static.value = load i64, ptr @itemn.global.72, align 8
  %ls.not = icmp slt i64 %add, %ll.static.value
  br i1 %ls.not, label %jf.else, label %jf.then_L500

jf.else:                                          ; preds = %entry
  %rv.llvmaddr21 = shl i64 %add, 3
  %rv.lv22 = inttoptr i64 %rv.llvmaddr21 to ptr
  %rv.rv23 = load i64, ptr %rv.lv22, align 8
  %if_cond31 = icmp sgt i64 %rv.rv23, -1
  br i1 %if_cond31, label %jf.then_L500, label %jf.else32

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
  %itemn.global.73.sink.i = select i1 %ne.not.i, ptr @itemn.global.73, ptr %stind.lv.i
  store i64 %rv.rv48.i, ptr %itemn.global.73.sink.i, align 8
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
  br label %jf.then_L500

jf.then_L500:                                     ; preds = %jf.else, %blib.remove_from_free_list.exit, %entry
  %rv.llvmaddr100 = add i64 %rv.llvmaddr, 16
  %rv.lv101 = inttoptr i64 %rv.llvmaddr100 to ptr
  %rv.rv102 = load i64, ptr %rv.lv101, align 8
  %ne.not = icmp eq i64 %rv.rv102, 0
  br i1 %ne.not, label %common.ret, label %jf.else111

jf.else111:                                       ; preds = %jf.then_L500
  %rv.llvmaddr137 = shl i64 %rv.rv102, 3
  %rv.lv138 = inttoptr i64 %rv.llvmaddr137 to ptr
  %rv.rv139 = load i64, ptr %rv.lv138, align 8
  %logand144 = and i64 %rv.rv139, 9223372036854775807
  %add148 = add i64 %logand144, %rv.rv102
  %eq.not = icmp eq i64 %add148, %0
  br i1 %eq.not, label %jf.else158, label %common.ret

common.ret:                                       ; preds = %jf.then_L500, %jf.else111, %blib.remove_from_free_list.exit326
  %common.ret.op = phi i64 [ %rv.rv102, %blib.remove_from_free_list.exit326 ], [ %0, %jf.else111 ], [ %0, %jf.then_L500 ]
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
  %itemn.global.73.sink.i318 = select i1 %ne.not.i311, ptr @itemn.global.73, ptr %stind.lv.i317
  store i64 %rv.rv48.i314, ptr %itemn.global.73.sink.i318, align 8
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
  %ll.static.value = load i64, ptr @itemn.global.73, align 8
  %ne.not = icmp eq i64 %ll.static.value, 0
  br i1 %ne.not, label %common.ret, label %lab_L506

lab_L506:                                         ; preds = %entry, %jf.then_L509
  %STK14.0 = phi i64 [ %rv.rv197, %jf.then_L509 ], [ %ll.static.value, %entry ]
  %rv.llvmaddr = shl i64 %STK14.0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 9223372036854775807
  %ge.not = icmp slt i64 %logand, %add12
  br i1 %ge.not, label %jf.then_L509, label %jf.else38

jf.else38:                                        ; preds = %lab_L506
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
  %itemn.global.73.sink.i = select i1 %ne.not.i, ptr @itemn.global.73, ptr %stind.lv.i
  store i64 %rv.rv48.i, ptr %itemn.global.73.sink.i, align 8
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
  %ll.static.value121 = load i64, ptr @itemn.global.74, align 8
  %add125 = add i64 %ll.static.value121, 1
  store i64 %add125, ptr @itemn.global.74, align 8
  %ll.static.value134 = load i64, ptr @itemn.global.78, align 8
  %add138 = add i64 %ll.static.value134, %add
  store i64 %add138, ptr @itemn.global.78, align 8
  %ll.static.value143 = load i64, ptr @itemn.global.77, align 8
  %gr.not = icmp sgt i64 %add138, %ll.static.value143
  br i1 %gr.not, label %jf.else151, label %jf.then_L510

jf.else151:                                       ; preds = %blib.split_block.exit
  store i64 %add138, ptr @itemn.global.77, align 8
  br label %jf.then_L510

jf.then_L510:                                     ; preds = %jf.else151, %blib.split_block.exit
  %ll.static.value162 = load i64, ptr @itemn.global.76, align 8
  %gr166.not = icmp sgt i64 %add, %ll.static.value162
  br i1 %gr166.not, label %jf.else171, label %jf.then_L511

jf.else171:                                       ; preds = %jf.then_L510
  store i64 %add, ptr @itemn.global.76, align 8
  br label %jf.then_L511

common.ret:                                       ; preds = %jf.then_L509, %entry, %jf.then_L511
  %common.ret.op = phi i64 [ %add185, %jf.then_L511 ], [ 0, %entry ], [ 0, %jf.then_L509 ]
  ret i64 %common.ret.op

jf.then_L511:                                     ; preds = %jf.else171, %jf.then_L510
  %add185 = add i64 %STK14.0, 2
  br label %common.ret

jf.then_L509:                                     ; preds = %lab_L506
  %rv.llvmaddr195 = add i64 %rv.llvmaddr, 8
  %rv.lv196 = inttoptr i64 %rv.llvmaddr195 to ptr
  %rv.rv197 = load i64, ptr %rv.lv196, align 8
  %ne205.not = icmp eq i64 %rv.rv197, 0
  br i1 %ne205.not, label %common.ret, label %lab_L506
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
  br i1 %ne31.not, label %jt.else, label %jt.then_L515

jt.else:                                          ; preds = %jf.else
  %sub41 = add i64 %0, 2305843009213693949
  %add47 = add i64 %sub41, %rv.rv
  %rv.llvmaddr50 = shl i64 %add47, 3
  %rv.lv51 = inttoptr i64 %rv.llvmaddr50 to ptr
  %rv.rv52 = load i64, ptr %rv.lv51, align 8
  %ne57.not = icmp eq i64 %rv.rv52, 3286577140387536
  br i1 %ne57.not, label %jf.then_L514, label %jt.then_L515

jt.then_L515:                                     ; preds = %jt.else, %jf.else
  %rtap = tail call i64 @blib.dumpheap()
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn72 = inttoptr i64 %lg.value to ptr
  %rtap75 = tail call i64 %rtap_ep_p_fn72(i64 60, i64 42)
  br label %jf.then_L514

jf.then_L514:                                     ; preds = %jt.then_L515, %jt.else
  %ll.static.value = load i64, ptr @itemn.global.71, align 8
  %ls = icmp sge i64 %sub, %ll.static.value
  %ll.static.value88 = load i64, ptr @itemn.global.72, align 8
  %ge.not = icmp slt i64 %sub, %ll.static.value88
  %or.cond = select i1 %ls, i1 %ge.not, i1 false
  br i1 %or.cond, label %jf.then_L516, label %jt.then_L517

jt.then_L517:                                     ; preds = %jf.then_L514
  %rtap107 = tail call i64 @blib.dumpheap()
  %lg.value110 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn113 = inttoptr i64 %lg.value110 to ptr
  %rtap116 = tail call i64 %rtap_ep_p_fn113(i64 60, i64 42)
  br label %jf.then_L516

jf.then_L516:                                     ; preds = %jf.then_L514, %jt.then_L517
  %rv.rv122 = load i64, ptr %rv.lv, align 8
  %eq.not.not = icmp sgt i64 %rv.rv122, -1
  br i1 %eq.not.not, label %jf.then_L518, label %jf.else136

jf.else136:                                       ; preds = %jf.then_L516
  %rtap147 = tail call i64 @blib.dumpheap()
  %lg.value150 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn153 = inttoptr i64 %lg.value150 to ptr
  %rtap156 = tail call i64 %rtap_ep_p_fn153(i64 60, i64 42)
  br label %jf.then_L518

common.ret:                                       ; preds = %entry, %jf.then_L518
  ret i64 -4985279381848933680

jf.then_L518:                                     ; preds = %jf.else136, %jf.then_L516
  %rtap164 = tail call i64 @blib.add_to_free_list(i64 %sub)
  %rtap172 = tail call i64 @blib.coalesce(i64 %sub)
  %ll.static.value174 = load i64, ptr @itemn.global.75, align 8
  %add178 = add i64 %ll.static.value174, 1
  store i64 %add178, ptr @itemn.global.75, align 8
  %ll.static.value180 = load i64, ptr @itemn.global.78, align 8
  %reass.sub = sub i64 %ll.static.value180, %logand
  %sub191 = add i64 %reass.sub, 3
  store i64 %sub191, ptr @itemn.global.78, align 8
  br label %common.ret
}

define range(i64 0, 9223372036854775805) i64 @maxvec() section ".text.BLIB" {
entry:
  %rtap = tail call i64 @blib.init_heap()
  %ll.static.value = load i64, ptr @itemn.global.73, align 8
  %eq = icmp eq i64 %ll.static.value, 0
  br i1 %eq, label %jt.then_L522, label %lab_L520

lab_L520:                                         ; preds = %entry, %lab_L520
  %STK1.0 = phi i64 [ %rv.rv40, %lab_L520 ], [ %ll.static.value, %entry ]
  %STK.0 = phi i64 [ %spec.select, %lab_L520 ], [ 0, %entry ]
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
  br i1 %eq48.not, label %jt.then_L522, label %lab_L520

jt.then_L522:                                     ; preds = %lab_L520, %entry
  %STK.2 = phi i64 [ 0, %entry ], [ %spec.select, %lab_L520 ]
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
  br i1 %eq.not, label %common.ret, label %jf.then_L534

common.ret:                                       ; preds = %entry, %jf.then_L535, %jf.else31
  %common.ret.op = phi i64 [ 0, %jf.else31 ], [ %fnap19, %jf.then_L535 ], [ 0, %entry ]
  ret i64 %common.ret.op

jf.then_L534:                                     ; preds = %entry
  %lg.value14 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn17 = inttoptr i64 %lg.value14 to ptr
  %fnap19 = tail call i64 %rtap_ep_p_fn17(i64 5)
  %eq26.not = icmp eq i64 %fnap19, 0
  br i1 %eq26.not, label %jf.else31, label %jf.then_L535

jf.else31:                                        ; preds = %jf.then_L534
  %lg.value34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn37 = inttoptr i64 %lg.value34 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn37(i64 %fnap)
  br label %common.ret

jf.then_L535:                                     ; preds = %jf.then_L534
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
  %ll.static.value = load i64, ptr @itemn.global.107, align 8
  %stind.llvmaddr368 = add i64 %rv.llvmaddr, 40
  %stind.lv369 = inttoptr i64 %stind.llvmaddr368 to ptr
  store i64 %ll.static.value, ptr %stind.lv369, align 8
  store i64 %fnap19, ptr @itemn.global.107, align 8
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
  %ll.static.value = load i64, ptr @itemn.global.106, align 8
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
  br i1 %if_cond, label %jf.then_L544, label %jf.else13

jf.else13:                                        ; preds = %entry
  %rv.llvmaddr.i = add i64 %rv.llvmaddr, 16
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %logand.i = and i64 %rv.rv.i, 4294967295
  %gr.not.i = icmp eq i64 %logand.i, 0
  br i1 %gr.not.i, label %jf.then_L544, label %jf.else.i

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
  br i1 %le.i, label %jf.then_L544, label %jf.else124.i

jf.else124.i:                                     ; preds = %jf.else.i
  %neg.i = sub i64 0, %fnap.i
  store i64 %neg.i, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L544

jf.then_L544:                                     ; preds = %jf.else124.i, %jf.else.i, %jf.else13, %entry
  %rv.rv22 = load i64, ptr %rv.lv, align 8
  %2 = and i64 %rv.rv22, 8
  %if_cond41.not = icmp eq i64 %2, 0
  br i1 %if_cond41.not, label %jt.else, label %common.ret

jt.else:                                          ; preds = %jf.then_L544
  %ll.static.value = load i64, ptr @itemn.global.107, align 8
  %ne.not = icmp eq i64 %ll.static.value, 0
  br i1 %ne.not, label %common.ret.sink.split, label %lab_L546.preheader

lab_L546.preheader:                               ; preds = %jt.else
  %eq.not191 = icmp eq i64 %0, %ll.static.value
  br i1 %eq.not191, label %jf.else74, label %jf.then_L549

lab_L546:                                         ; preds = %jf.then_L549
  %eq.not = icmp eq i64 %0, %rv.rv154
  br i1 %eq.not, label %jf.then_L550, label %jf.then_L549

jf.else74:                                        ; preds = %lab_L546.preheader
  %rv.llvmaddr82 = add i64 %rv.llvmaddr, 40
  %rv.lv83 = inttoptr i64 %rv.llvmaddr82 to ptr
  %rv.rv84 = load i64, ptr %rv.lv83, align 8
  store i64 %rv.rv84, ptr @itemn.global.107, align 8
  br label %jump.target_L551

jf.then_L550:                                     ; preds = %lab_L546
  %rv.llvmaddr94 = add i64 %rv.llvmaddr, 40
  %rv.lv95 = inttoptr i64 %rv.llvmaddr94 to ptr
  %rv.rv96 = load i64, ptr %rv.lv95, align 8
  %add103 = shl i64 %STK42.0192, 3
  %stind.llvmaddr = add i64 %add103, 40
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %rv.rv96, ptr %stind.lv, align 8
  br label %jump.target_L551

common.ret.sink.split:                            ; preds = %jf.then_L549, %jt.else, %jump.target_L551
  %lg.value169.sink.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), %jump.target_L551 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), %jt.else ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), %jf.then_L549 ]
  %.sink = phi i64 [ %0, %jump.target_L551 ], [ 100, %jt.else ], [ 100, %jf.then_L549 ]
  %lg.value169.sink = load i64, ptr %lg.value169.sink.in, align 4
  %rtap_ep_p_fn172 = inttoptr i64 %lg.value169.sink to ptr
  %rtap174 = tail call i64 %rtap_ep_p_fn172(i64 %.sink)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %jf.then_L544
  ret i64 -4985279381848933680

jump.target_L551:                                 ; preds = %jf.then_L550, %jf.else74
  %rv.llvmaddr113 = add i64 %rv.llvmaddr, 8
  %rv.lv114 = inttoptr i64 %rv.llvmaddr113 to ptr
  %rv.rv115 = load i64, ptr %rv.lv114, align 8
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn119 = inttoptr i64 %lg.value to ptr
  %rtap121 = tail call i64 %rtap_ep_p_fn119(i64 %rv.rv115)
  store i64 0, ptr %rv.lv114, align 8
  br label %common.ret.sink.split

jf.then_L549:                                     ; preds = %lab_L546.preheader, %lab_L546
  %STK42.0192 = phi i64 [ %rv.rv154, %lab_L546 ], [ %ll.static.value, %lab_L546.preheader ]
  %add149 = shl i64 %STK42.0192, 3
  %rv.llvmaddr152 = add i64 %add149, 40
  %rv.lv153 = inttoptr i64 %rv.llvmaddr152 to ptr
  %rv.rv154 = load i64, ptr %rv.lv153, align 8
  %ne162.not = icmp eq i64 %rv.rv154, 0
  br i1 %ne162.not, label %common.ret.sink.split, label %lab_L546
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
  br i1 %le, label %jf.then_L553, label %jf.else

jf.else:                                          ; preds = %entry
  %ls.not = icmp eq i64 %fnap, 0
  br i1 %ls.not, label %jf.then_L554, label %jf.else93

jf.else93:                                        ; preds = %jf.else
  %neg = sub i64 0, %fnap
  store i64 %neg, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L554

common.ret:                                       ; preds = %jf.then_L553, %jf.then_L554
  ret i64 -4985279381848933680

jf.then_L554:                                     ; preds = %jf.else93, %jf.else
  %rv.rv104 = load i64, ptr %rv.lv, align 8
  %xor124 = or i64 %rv.rv104, 1
  store i64 %xor124, ptr %rv.lv, align 8
  br label %common.ret

jf.then_L553:                                     ; preds = %entry
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
  br i1 %le.i, label %jf.then_L553.i, label %jf.else.i

jf.else.i:                                        ; preds = %entry
  %ls.not.i = icmp eq i64 %fnap.i, 0
  br i1 %ls.not.i, label %jf.then_L554.i, label %jf.else93.i

jf.else93.i:                                      ; preds = %jf.else.i
  %neg.i = sub i64 0, %fnap.i
  store i64 %neg.i, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L554.i

jf.then_L554.i:                                   ; preds = %jf.else93.i, %jf.else.i
  %rv.rv104.i = load i64, ptr %rv.lv.i, align 8
  %xor124.i = or i64 %rv.rv104.i, 1
  store i64 %xor124.i, ptr %rv.lv.i, align 8
  br label %blib.block_read.exit

jf.then_L553.i:                                   ; preds = %entry
  %shift.result141.i = shl i64 %fnap.i, 32
  store i64 %shift.result141.i, ptr %rv.lv45.i, align 8
  br label %blib.block_read.exit

blib.block_read.exit:                             ; preds = %jf.then_L554.i, %jf.then_L553.i
  ret i64 -4985279381848933680
}

define noundef i64 @blib.tty_write.116(i64 %0) section ".text.BLIB" {
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
  switch i8 %getbyte.char, label %jf.then_L562 [
    i8 42, label %jf.else
    i8 33, label %jf.else44
  ]

jf.else:                                          ; preds = %entry
  %eq15.not = icmp eq i64 %1, 1
  br i1 %eq15.not, label %jf.else20, label %jf.then_L561

common.ret:                                       ; preds = %jf.then_L535.i, %jf.else31.i, %jf.else179, %jf.else44, %jf.then_L574, %lab_L573, %jf.then_L561, %jf.else20
  %common.ret.op = phi i64 [ %ll.static.value, %jf.else20 ], [ %ll.static.value22, %jf.then_L561 ], [ 0, %lab_L573 ], [ 0, %jf.then_L574 ], [ %spec.select, %jf.else44 ], [ 0, %jf.else31.i ], [ %fnap19.i, %jf.then_L535.i ], [ 0, %jf.else179 ]
  ret i64 %common.ret.op

jf.else20:                                        ; preds = %jf.else
  %ll.static.value = load i64, ptr @itemn.global.104, align 8
  br label %common.ret

jf.then_L561:                                     ; preds = %jf.else
  %ll.static.value22 = load i64, ptr @itemn.global.105, align 8
  br label %common.ret

jf.else44:                                        ; preds = %entry
  %eq50.not = icmp eq i64 %1, 1
  %ll.static.value58 = load i64, ptr @itemn.global.106, align 8
  %spec.select = select i1 %eq50.not, i64 0, i64 %ll.static.value58
  br label %common.ret

jf.then_L562:                                     ; preds = %entry
  %getbyte.char70 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword71 = zext i8 %getbyte.char70 to i64
  %gr = icmp eq i8 %getbyte.char70, 0
  br i1 %gr, label %jt.then_L565, label %lab_L564.preheader

lab_L564.preheader:                               ; preds = %jf.then_L562
  %invariant.gep = getelementptr i8, ptr %stack.vec, i64 -1
  %min.iters.check = icmp ult i8 %getbyte.char70, 8
  br i1 %min.iters.check, label %lab_L564.preheader251, label %vector.ph

vector.ph:                                        ; preds = %lab_L564.preheader
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
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %getbyte.charword71
  br i1 %cmp.n, label %jt.then_L565.loopexit, label %lab_L564.preheader251

lab_L564.preheader251:                            ; preds = %lab_L564.preheader, %middle.block
  %STK61.0.ph = phi i64 [ 1, %lab_L564.preheader ], [ %2, %middle.block ]
  br label %lab_L564

lab_L564:                                         ; preds = %lab_L564.preheader251, %lab_L564
  %STK61.0 = phi i64 [ %add, %lab_L564 ], [ %STK61.0.ph, %lab_L564.preheader251 ]
  %getbyte.charptr91 = getelementptr i8, ptr %getbyte.string, i64 %STK61.0
  %getbyte.char92 = load i8, ptr %getbyte.charptr91, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK61.0
  store i8 %getbyte.char92, ptr %gep, align 1
  %add = add nuw nsw i64 %STK61.0, 1
  %le.not.not = icmp samesign ult i64 %STK61.0, %getbyte.charword71
  br i1 %le.not.not, label %lab_L564, label %jt.then_L565.loopexit, !llvm.loop !13

jt.then_L565.loopexit:                            ; preds = %lab_L564, %middle.block
  %getbyte.char131.pre = load i8, ptr %getbyte.string, align 8
  br label %jt.then_L565

jt.then_L565:                                     ; preds = %jt.then_L565.loopexit, %jf.then_L562
  %getbyte.char131 = phi i8 [ %getbyte.char131.pre, %jt.then_L565.loopexit ], [ 0, %jf.then_L562 ]
  %getbyte.charword132 = zext i8 %getbyte.char131 to i64
  %putbyte.charptr140 = getelementptr i8, ptr %stack.vec, i64 %getbyte.charword132
  store i8 0, ptr %putbyte.charptr140, align 1
  switch i64 %1, label %lab_L573 [
    i64 3, label %lab_L572
    i64 2, label %lab_L571
    i64 1, label %jump.target_L569
  ]

lab_L571:                                         ; preds = %jt.then_L565
  br label %jump.target_L569

lab_L572:                                         ; preds = %jt.then_L565
  br label %jump.target_L569

lab_L573:                                         ; preds = %jt.then_L565
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

jump.target_L569:                                 ; preds = %jt.then_L565, %lab_L572, %lab_L571
  %STK2.0 = phi i64 [ 577, %lab_L571 ], [ 2, %lab_L572 ], [ 0, %jt.then_L565 ]
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = call i64 %rtap_ep_p_fn(i64 2, i64 %stack.vecaddr, i64 %STK2.0, i64 438)
  %ge = icmp slt i64 %fnap, 0
  br i1 %ge, label %jf.then_L574, label %jf.else179

jf.else179:                                       ; preds = %jump.target_L569
  %eq185.not = icmp eq i64 %1, 1
  %. = select i1 %eq185.not, i64 ptrtoint (ptr @blib.block_read to i64), i64 ptrtoint (ptr @blib.block_write to i64)
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = call i64 %rtap_ep_p_fn.i(i64 127)
  %eq.not.i = icmp eq i64 %fnap.i, 0
  br i1 %eq.not.i, label %common.ret, label %jf.then_L534.i

jf.then_L534.i:                                   ; preds = %jf.else179
  %lg.value14.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn17.i = inttoptr i64 %lg.value14.i to ptr
  %fnap19.i = call i64 %rtap_ep_p_fn17.i(i64 5)
  %eq26.not.i = icmp eq i64 %fnap19.i, 0
  br i1 %eq26.not.i, label %jf.else31.i, label %jf.then_L535.i

jf.else31.i:                                      ; preds = %jf.then_L534.i
  %lg.value34.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn37.i = inttoptr i64 %lg.value34.i to ptr
  %rtap.i = call i64 %rtap_ep_p_fn37.i(i64 %fnap.i)
  br label %common.ret

jf.then_L535.i:                                   ; preds = %jf.then_L534.i
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
  %ll.static.value.i = load i64, ptr @itemn.global.107, align 8
  %stind.llvmaddr368.i = add i64 %rv.llvmaddr.i, 40
  %stind.lv369.i = inttoptr i64 %stind.llvmaddr368.i to ptr
  store i64 %ll.static.value.i, ptr %stind.lv369.i, align 8
  store i64 %fnap19.i, ptr @itemn.global.107, align 8
  br label %common.ret

jf.then_L574:                                     ; preds = %jump.target_L569
  %neg = sub i64 0, %fnap
  store i64 %neg, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @blib.rditem_add(i64 %0) local_unnamed_addr #1 section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.104, align 8
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
  br i1 %ne.not, label %common.ret, label %jt.then_L578.preheader

jt.then_L578.preheader:                           ; preds = %jf.else
  %rv.llvmaddr66 = add i64 %add, 8
  %rv.lv67 = inttoptr i64 %rv.llvmaddr66 to ptr
  br label %jt.then_L578

common.ret:                                       ; preds = %jt.then_L578, %jf.else213, %entry, %jf.else
  ret i64 -4985279381848933680

jt.then_L578:                                     ; preds = %jt.then_L578.preheader, %jf.else213
  %rv.rv80 = phi i64 [ %xor173, %jf.else213 ], [ %rv.rv, %jt.then_L578.preheader ]
  %getbyte.char55 = phi i8 [ %getbyte.char223, %jf.else213 ], [ %getbyte.char, %jt.then_L578.preheader ]
  %STK4.0 = phi i64 [ %add98, %jf.else213 ], [ %logand, %jt.then_L578.preheader ]
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

jf.else213:                                       ; preds = %jt.then_L578
  %add98 = add i64 %STK4.0, 1
  %getbyte.charptr222 = getelementptr i8, ptr %getbyte.string, i64 %add98
  %getbyte.char223 = load i8, ptr %getbyte.charptr222, align 1
  %ne229.not = icmp eq i8 %getbyte.char223, 0
  br i1 %ne229.not, label %common.ret, label %jt.then_L578
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noundef i64 @blib.rditem_end() local_unnamed_addr #5 section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.104, align 8
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

define i64 @findinput.122(i64 %0) section ".text.BLIB" {
entry:
  %fnap = tail call i64 @blib.findfile(i64 %0, i64 1)
  ret i64 %fnap
}

define i64 @findoutput.124(i64 %0) section ".text.BLIB" {
entry:
  %fnap = tail call i64 @blib.findfile(i64 %0, i64 2)
  ret i64 %fnap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define noundef i64 @selectinput(i64 %0) #8 section ".text.BLIB" {
entry:
  store i64 %0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  ret i64 -4985279381848933680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define noundef i64 @selectoutput(i64 %0) #8 section ".text.BLIB" {
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
  br i1 %eq.not, label %jf.else, label %jf.then_L588

jf.else:                                          ; preds = %entry
  %lg.value7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn10 = inttoptr i64 %lg.value7 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn10(i64 101)
  br label %jf.then_L588

jf.then_L588:                                     ; preds = %jf.else, %entry
  %rv.llvmaddr = shl i64 %fnap, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 1
  %if_cond19 = icmp eq i64 %logand, 0
  br i1 %if_cond19, label %jf.then_L589, label %common.ret

common.ret:                                       ; preds = %jf.then_L591, %jf.else203, %jf.else229, %jf.then_L590, %jf.then_L588
  %common.ret.op = phi i64 [ -1, %jf.then_L588 ], [ -1, %jf.then_L590 ], [ %getbyte.charword, %jf.then_L591 ], [ 255, %jf.else203 ], [ -1, %jf.else229 ]
  ret i64 %common.ret.op

jf.then_L589:                                     ; preds = %jf.then_L588
  %rv.llvmaddr29 = add i64 %rv.llvmaddr, 16
  %rv.lv30 = inttoptr i64 %rv.llvmaddr29 to ptr
  %rv.rv31 = load i64, ptr %rv.lv30, align 8
  %logand36 = and i64 %rv.rv31, 4294967295
  %shift.result53 = lshr i64 %rv.rv31, 32
  %eq57.not = icmp eq i64 %logand36, %shift.result53
  br i1 %eq57.not, label %jf.else62, label %jf.then_L590

jf.else62:                                        ; preds = %jf.then_L589
  %rv.llvmaddr73 = add i64 %rv.llvmaddr, 32
  %rv.lv74 = inttoptr i64 %rv.llvmaddr73 to ptr
  %rv.rv75 = load i64, ptr %rv.lv74, align 8
  %rtap_ep_p_fn78 = inttoptr i64 %rv.rv75 to ptr
  %rtap80 = tail call i64 %rtap_ep_p_fn78(i64 %fnap)
  %rv.rv86.pre = load i64, ptr %rv.lv, align 8
  br label %jf.then_L590

jf.then_L590:                                     ; preds = %jf.else62, %jf.then_L589
  %rv.rv86 = phi i64 [ %rv.rv86.pre, %jf.else62 ], [ %rv.rv, %jf.then_L589 ]
  %logand91 = and i64 %rv.rv86, 1
  %if_cond94 = icmp eq i64 %logand91, 0
  br i1 %if_cond94, label %jf.then_L591, label %common.ret

jf.then_L591:                                     ; preds = %jf.then_L590
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

jf.else203:                                       ; preds = %jf.then_L591
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
  br i1 %eq.not, label %jf.else, label %jf.then_L594

jf.else:                                          ; preds = %entry
  %lg.value6 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn9 = inttoptr i64 %lg.value6 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn9(i64 101)
  br label %jf.then_L594

jf.then_L594:                                     ; preds = %jf.else, %entry
  %add = shl i64 %fnap, 3
  %rv.llvmaddr = add i64 %add, 16
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 4294967295
  %gr.not = icmp eq i64 %logand, 0
  br i1 %gr.not, label %common.ret, label %jf.else28

common.ret:                                       ; preds = %jf.then_L594, %jf.else28
  ret i64 -4985279381848933680

jf.else28:                                        ; preds = %jf.then_L594
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
  br i1 %eq.not, label %jf.else, label %jf.then_L597

jf.else:                                          ; preds = %entry
  %lg.value7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn10 = inttoptr i64 %lg.value7 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn10(i64 102)
  br label %jf.then_L597

jf.then_L597:                                     ; preds = %jf.else, %entry
  %add = shl i64 %fnap, 3
  %rv.llvmaddr = add i64 %add, 16
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 4294967295
  %shift.result37 = lshr i64 %rv.rv, 32
  %eq41 = icmp eq i64 %logand, %shift.result37
  br i1 %eq41, label %jt.then_L599, label %jt.else

jt.else:                                          ; preds = %jf.then_L597
  %eq51.not = icmp eq i64 %0, 10
  br i1 %eq51.not, label %jf.else56, label %jf.then_L598

jf.else56:                                        ; preds = %jt.else
  %ll.static.value = load i64, ptr @itemn.global.105, align 8
  %eq62 = icmp eq i64 %ll.static.value, %fnap
  %ll.static.value68 = load i64, ptr @itemn.global.106, align 8
  %eq74.not = icmp eq i64 %ll.static.value68, %fnap
  %or.cond = select i1 %eq62, i1 true, i1 %eq74.not
  br i1 %or.cond, label %jt.then_L599, label %jf.then_L598

jt.then_L599:                                     ; preds = %jf.else56, %jf.then_L597
  %rv.llvmaddr90 = add i64 %add, 32
  %rv.lv91 = inttoptr i64 %rv.llvmaddr90 to ptr
  %rv.rv92 = load i64, ptr %rv.lv91, align 8
  %rtap_ep_p_fn95 = inttoptr i64 %rv.rv92 to ptr
  %rtap97 = tail call i64 %rtap_ep_p_fn95(i64 %fnap)
  %rv.rv122.pre = load i64, ptr %rv.lv, align 8
  %.pre = and i64 %rv.rv122.pre, 4294967295
  br label %jf.then_L598

jf.then_L598:                                     ; preds = %jf.else56, %jt.then_L599, %jt.else
  %logand127.pre-phi = phi i64 [ %logand, %jf.else56 ], [ %.pre, %jt.then_L599 ], [ %logand, %jt.else ]
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

define noundef i64 @endread.131() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 464), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L602

jf.else:                                          ; preds = %entry
  %lg.value6 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn9 = inttoptr i64 %lg.value6 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn9(i64 101)
  br label %jf.then_L602

jf.then_L602:                                     ; preds = %jf.else, %entry
  %lg.value10 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 464), align 4
  %rtap_ep_p_fn13 = inttoptr i64 %lg.value10 to ptr
  %fnap14 = tail call i64 %rtap_ep_p_fn13()
  %rtap20 = tail call i64 @blib.block_close(i64 %fnap14)
  %lg.value22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 448), align 4
  %rtap_ep_p_fn25 = inttoptr i64 %lg.value22 to ptr
  %rtap27 = tail call i64 %rtap_ep_p_fn25(i64 0)
  ret i64 -4985279381848933680
}

define noundef i64 @endwrite.133() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 472), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L604

jf.else:                                          ; preds = %entry
  %lg.value6 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn9 = inttoptr i64 %lg.value6 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn9(i64 102)
  br label %jf.then_L604

jf.then_L604:                                     ; preds = %jf.else, %entry
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
  store i64 0, ptr @itemn.global.107, align 8
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 127)
  %eq.not.i = icmp eq i64 %fnap.i, 0
  br i1 %eq.not.i, label %blib.allocate_dcb.exit, label %jf.then_L534.i

jf.then_L534.i:                                   ; preds = %entry
  %lg.value14.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn17.i = inttoptr i64 %lg.value14.i to ptr
  %fnap19.i = tail call i64 %rtap_ep_p_fn17.i(i64 5)
  %eq26.not.i = icmp eq i64 %fnap19.i, 0
  br i1 %eq26.not.i, label %jf.else31.i, label %jf.then_L535.i

jf.else31.i:                                      ; preds = %jf.then_L534.i
  %lg.value34.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn37.i = inttoptr i64 %lg.value34.i to ptr
  %rtap.i = tail call i64 %rtap_ep_p_fn37.i(i64 %fnap.i)
  br label %blib.allocate_dcb.exit

jf.then_L535.i:                                   ; preds = %jf.then_L534.i
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
  %ll.static.value.i = load i64, ptr @itemn.global.107, align 8
  %stind.llvmaddr368.i = add i64 %rv.llvmaddr.i, 40
  %stind.lv369.i = inttoptr i64 %stind.llvmaddr368.i to ptr
  store i64 %ll.static.value.i, ptr %stind.lv369.i, align 8
  store i64 %fnap19.i, ptr @itemn.global.107, align 8
  br label %blib.allocate_dcb.exit

blib.allocate_dcb.exit:                           ; preds = %entry, %jf.else31.i, %jf.then_L535.i
  %common.ret.op.i = phi i64 [ 0, %jf.else31.i ], [ %fnap19.i, %jf.then_L535.i ], [ 0, %entry ]
  store i64 %common.ret.op.i, ptr @itemn.global.104, align 8
  %lg.value.i72 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn.i73 = inttoptr i64 %lg.value.i72 to ptr
  %fnap.i74 = tail call i64 %rtap_ep_p_fn.i73(i64 127)
  %eq.not.i75 = icmp eq i64 %fnap.i74, 0
  br i1 %eq.not.i75, label %blib.allocate_dcb.exit107, label %jf.then_L534.i76

jf.then_L534.i76:                                 ; preds = %blib.allocate_dcb.exit
  %lg.value14.i77 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn17.i78 = inttoptr i64 %lg.value14.i77 to ptr
  %fnap19.i79 = tail call i64 %rtap_ep_p_fn17.i78(i64 5)
  %eq26.not.i80 = icmp eq i64 %fnap19.i79, 0
  br i1 %eq26.not.i80, label %jf.else31.i103, label %jf.then_L535.i81

jf.else31.i103:                                   ; preds = %jf.then_L534.i76
  %lg.value34.i104 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn37.i105 = inttoptr i64 %lg.value34.i104 to ptr
  %rtap.i106 = tail call i64 %rtap_ep_p_fn37.i105(i64 %fnap.i74)
  br label %blib.allocate_dcb.exit107

jf.then_L535.i81:                                 ; preds = %jf.then_L534.i76
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
  store i64 ptrtoint (ptr @blib.tty_write.116 to i64), ptr %stind.lv344.i96, align 8
  %stind.llvmaddr356.i97 = add i64 %rv.llvmaddr.i82, 24
  %stind.lv357.i98 = inttoptr i64 %stind.llvmaddr356.i97 to ptr
  store i64 ptrtoint (ptr @blib.tty_close to i64), ptr %stind.lv357.i98, align 8
  %ll.static.value.i99 = load i64, ptr @itemn.global.107, align 8
  %stind.llvmaddr368.i100 = add i64 %rv.llvmaddr.i82, 40
  %stind.lv369.i101 = inttoptr i64 %stind.llvmaddr368.i100 to ptr
  store i64 %ll.static.value.i99, ptr %stind.lv369.i101, align 8
  store i64 %fnap19.i79, ptr @itemn.global.107, align 8
  br label %blib.allocate_dcb.exit107

blib.allocate_dcb.exit107:                        ; preds = %blib.allocate_dcb.exit, %jf.else31.i103, %jf.then_L535.i81
  %common.ret.op.i102 = phi i64 [ 0, %jf.else31.i103 ], [ %fnap19.i79, %jf.then_L535.i81 ], [ 0, %blib.allocate_dcb.exit ]
  store i64 %common.ret.op.i102, ptr @itemn.global.105, align 8
  %lg.value.i108 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn.i109 = inttoptr i64 %lg.value.i108 to ptr
  %fnap.i110 = tail call i64 %rtap_ep_p_fn.i109(i64 127)
  %eq.not.i111 = icmp eq i64 %fnap.i110, 0
  br i1 %eq.not.i111, label %blib.allocate_dcb.exit143, label %jf.then_L534.i112

jf.then_L534.i112:                                ; preds = %blib.allocate_dcb.exit107
  %lg.value14.i113 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 200), align 4
  %rtap_ep_p_fn17.i114 = inttoptr i64 %lg.value14.i113 to ptr
  %fnap19.i115 = tail call i64 %rtap_ep_p_fn17.i114(i64 5)
  %eq26.not.i116 = icmp eq i64 %fnap19.i115, 0
  br i1 %eq26.not.i116, label %jf.else31.i139, label %jf.then_L535.i117

jf.else31.i139:                                   ; preds = %jf.then_L534.i112
  %lg.value34.i140 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 216), align 4
  %rtap_ep_p_fn37.i141 = inttoptr i64 %lg.value34.i140 to ptr
  %rtap.i142 = tail call i64 %rtap_ep_p_fn37.i141(i64 %fnap.i110)
  br label %blib.allocate_dcb.exit143

jf.then_L535.i117:                                ; preds = %jf.then_L534.i112
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
  store i64 ptrtoint (ptr @blib.tty_write.116 to i64), ptr %stind.lv344.i132, align 8
  %stind.llvmaddr356.i133 = add i64 %rv.llvmaddr.i118, 24
  %stind.lv357.i134 = inttoptr i64 %stind.llvmaddr356.i133 to ptr
  store i64 ptrtoint (ptr @blib.tty_close to i64), ptr %stind.lv357.i134, align 8
  %ll.static.value.i135 = load i64, ptr @itemn.global.107, align 8
  %stind.llvmaddr368.i136 = add i64 %rv.llvmaddr.i118, 40
  %stind.lv369.i137 = inttoptr i64 %stind.llvmaddr368.i136 to ptr
  store i64 %ll.static.value.i135, ptr %stind.lv369.i137, align 8
  store i64 %fnap19.i115, ptr @itemn.global.107, align 8
  br label %blib.allocate_dcb.exit143

blib.allocate_dcb.exit143:                        ; preds = %blib.allocate_dcb.exit107, %jf.else31.i139, %jf.then_L535.i117
  %common.ret.op.i138 = phi i64 [ 0, %jf.else31.i139 ], [ %fnap19.i115, %jf.then_L535.i117 ], [ 0, %blib.allocate_dcb.exit107 ]
  store i64 %common.ret.op.i138, ptr @itemn.global.106, align 8
  %ll.static.value = load i64, ptr @itemn.global.104, align 8
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 448), align 4
  %rtap_ep_p_fn61 = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn61(i64 %ll.static.value)
  %ll.static.value63 = load i64, ptr @itemn.global.105, align 8
  %lg.value65 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 456), align 4
  %rtap_ep_p_fn68 = inttoptr i64 %lg.value65 to ptr
  %rtap70 = tail call i64 %rtap_ep_p_fn68(i64 %ll.static.value63)
  ret i64 -4985279381848933680
}

define noundef i64 @blib.ioterm() local_unnamed_addr section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.107, align 8
  %ll.static.value2 = load i64, ptr @itemn.global.106, align 8
  store i64 %ll.static.value2, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %ne.not = icmp eq i64 %ll.static.value, 0
  br i1 %ne.not, label %common.ret, label %jt.then_L607

common.ret:                                       ; preds = %jump.target_L610, %entry
  ret i64 -4985279381848933680

jt.then_L607:                                     ; preds = %entry, %jump.target_L610
  %STK1.0 = phi i64 [ %rv.rv, %jump.target_L610 ], [ %ll.static.value, %entry ]
  %add = shl i64 %STK1.0, 3
  %rv.llvmaddr = add i64 %add, 40
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.lv18 = inttoptr i64 %add to ptr
  %rv.rv19 = load i64, ptr %rv.lv18, align 8
  %0 = and i64 %rv.rv19, 8
  %if_cond31 = icmp eq i64 %0, 0
  br i1 %if_cond31, label %jump.target_L610, label %jf.else

jf.else:                                          ; preds = %jt.then_L607
  %1 = and i64 %rv.rv19, -9
  store i64 %1, ptr %rv.lv18, align 8
  br label %jump.target_L610

jump.target_L610:                                 ; preds = %jt.then_L607, %jf.else
  %rtap = tail call i64 @blib.block_close(i64 %STK1.0)
  %ne82.not = icmp eq i64 %rv.rv, 0
  br i1 %ne82.not, label %common.ret, label %jt.then_L607
}

define noundef i64 @rewind() section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 464), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %eq.not = icmp eq i64 %fnap, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L612

jf.else:                                          ; preds = %entry
  %lg.value7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 224), align 4
  %rtap_ep_p_fn10 = inttoptr i64 %lg.value7 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn10(i64 101)
  br label %jf.then_L612

jf.then_L612:                                     ; preds = %jf.else, %entry
  %rv.llvmaddr = shl i64 %fnap, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %shift.result18 = lshr i64 %rv.rv, 32
  %lg.value22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn25 = inttoptr i64 %lg.value22 to ptr
  %fnap30 = tail call i64 %rtap_ep_p_fn25(i64 8, i64 %shift.result18, i64 0, i64 0)
  %if_cond40 = icmp sgt i64 %fnap30, -1
  br i1 %if_cond40, label %jf.then_L613, label %jf.else41

jf.else41:                                        ; preds = %jf.then_L612
  %neg = sub i64 0, %fnap30
  store i64 %neg, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L613

jf.then_L613:                                     ; preds = %jf.else41, %jf.then_L612
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
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.139 to i64), 3
  %lg.value = load i64, ptr @__bcpl_global_vector, align 4
  %lg.value4 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value4 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lstr.bcpladdr, i64 %lg.value)
  %lg.value8 = load i64, ptr @__bcpl_global_vector, align 4
  %sub = add i64 %lg.value8, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L616, label %lab_L615.preheader

lab_L615.preheader:                               ; preds = %entry
  %lstr.bcpladdr31 = ashr exact i64 ptrtoint (ptr @lstr.global.140 to i64), 3
  br label %lab_L615

lab_L615:                                         ; preds = %lab_L615.preheader, %jf.then_L619
  %STK7.0 = phi i64 [ %add70, %jf.then_L619 ], [ 0, %lab_L615.preheader ]
  %0 = and i64 %STK7.0, 3
  %eq.not = icmp eq i64 %0, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L619

jf.else:                                          ; preds = %lab_L615
  %lg.value35 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn38 = inttoptr i64 %lg.value35 to ptr
  %rtap41 = tail call i64 %rtap_ep_p_fn38(i64 %lstr.bcpladdr31, i64 %STK7.0)
  br label %jf.then_L619

jf.then_L619:                                     ; preds = %jf.else, %lab_L615
  %add369 = shl i64 %STK7.0, 3
  %llg.bcpladdr370 = add i64 %add369, ptrtoint (ptr @__bcpl_global_vector to i64)
  %rv.llvmaddr = and i64 %llg.bcpladdr370, -8
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %lg.value51 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn54 = inttoptr i64 %lg.value51 to ptr
  %rtap57 = tail call i64 %rtap_ep_p_fn54(i64 %rv.rv, i64 16)
  %lg.value59 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn62 = inttoptr i64 %lg.value59 to ptr
  %rtap64 = tail call i64 %rtap_ep_p_fn62(i64 32)
  %add70 = add i64 %STK7.0, 1
  %le.not = icmp sgt i64 %add70, %sub
  br i1 %le.not, label %jt.then_L616, label %lab_L615

jt.then_L616:                                     ; preds = %jf.then_L619, %entry
  %lg.value83 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 672), align 4
  %rtap_ep_p_fn86 = inttoptr i64 %lg.value83 to ptr
  %rtap87 = tail call i64 %rtap_ep_p_fn86()
  %lstr.bcpladdr88 = ashr exact i64 ptrtoint (ptr @lstr.global.141 to i64), 3
  %lg.value91 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn94 = inttoptr i64 %lg.value91 to ptr
  %rtap97 = tail call i64 %rtap_ep_p_fn94(i64 %lstr.bcpladdr88, i64 1024)
  %ll.static.value = load i64, ptr @itemn.global.107, align 8
  %ne.not = icmp eq i64 %ll.static.value, 0
  br i1 %ne.not, label %jf.then_L622, label %lab_L620.preheader

lab_L620.preheader:                               ; preds = %jt.then_L616
  %lstr.bcpladdr219 = ashr exact i64 ptrtoint (ptr @lstr.global.142 to i64), 3
  br label %lab_L620

lab_L620:                                         ; preds = %lab_L620.preheader, %lab_L620
  %STK.0 = phi i64 [ %rv.rv323, %lab_L620 ], [ %ll.static.value, %lab_L620.preheader ]
  %lg.value110 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  %eq116 = icmp eq i64 %lg.value110, %STK.0
  %lg.value122 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %eq128.not = icmp eq i64 %lg.value122, %STK.0
  %or.cond = select i1 %eq116, i1 true, i1 %eq128.not
  %__res_a.0 = select i1 %or.cond, i64 42, i64 32
  %rv.llvmaddr141 = shl i64 %STK.0, 3
  %rv.lv142 = inttoptr i64 %rv.llvmaddr141 to ptr
  %rv.rv143 = load i64, ptr %rv.lv142, align 8
  %1 = and i64 %rv.rv143, 2
  %if_cond166 = icmp eq i64 %1, 0
  %__res_a.1 = select i1 %if_cond166, i64 32, i64 82
  %2 = and i64 %rv.rv143, 4
  %if_cond210 = icmp eq i64 %2, 0
  %__res_a.2 = select i1 %if_cond210, i64 32, i64 87
  %shift.result239 = lshr i64 %rv.rv143, 32
  %rv.llvmaddr255 = add i64 %rv.llvmaddr141, 16
  %rv.lv256 = inttoptr i64 %rv.llvmaddr255 to ptr
  %rv.rv257 = load i64, ptr %rv.lv256, align 8
  %logand262 = and i64 %rv.rv257, 4294967295
  %shift.result283 = lshr i64 %rv.rv257, 32
  %logand297 = and i64 %rv.rv143, 1
  %lg.value299 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn302 = inttoptr i64 %lg.value299 to ptr
  %rtap312 = tail call i64 %rtap_ep_p_fn302(i64 %lstr.bcpladdr219, i64 %__res_a.0, i64 %STK.0, i64 %shift.result239, i64 %__res_a.1, i64 %__res_a.2, i64 %logand262, i64 %shift.result283, i64 %logand297)
  %rv.llvmaddr321 = add i64 %rv.llvmaddr141, 40
  %rv.lv322 = inttoptr i64 %rv.llvmaddr321 to ptr
  %rv.rv323 = load i64, ptr %rv.lv322, align 8
  %ne331.not = icmp eq i64 %rv.rv323, 0
  br i1 %ne331.not, label %jf.then_L622, label %lab_L620

jf.then_L622:                                     ; preds = %lab_L620, %jt.then_L616
  %rtap340 = tail call i64 @blib.dumpheap()
  %lstr.bcpladdr341 = ashr exact i64 ptrtoint (ptr @lstr.global.143 to i64), 3
  %lg.value343 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn346 = inttoptr i64 %lg.value343 to ptr
  %rtap348 = tail call i64 %rtap_ep_p_fn346(i64 %lstr.bcpladdr341)
  ret i64 -4985279381848933680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef i64 @xgetenv(i64 %0, i64 %1) local_unnamed_addr #2 section ".text.BLIB" {
entry:
  ret i64 -4985279381848933680
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.scmp.i64.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.smax.i128(i128, i128) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

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
