; ModuleID = 'BLIB'
source_filename = "BLIB"
target triple = "x86_64-unknown-linux-gnu"

@__bcpl_global_vector = external local_unnamed_addr global [1024 x i64], section "BCPLGVEC"
@lstr.global = private global [14 x i8] c"\0D<<mess:%-%n>>", section ".rodata.BLIB", align 8
@itemn.global = internal global [16 x i64] [i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70], section ".rodata.BLIB"
@lstr.global.21 = private global [51 x i8] c"2Error: rdargs format specified too many arguments\0A", section ".rodata.BLIB", align 8
@lstr.global.22 = private global [10 x i8] c"\09 (yes/no)", section ".rodata.BLIB", align 8
@lstr.global.23 = private global [4 x i8] c"\03 > ", section ".rodata.BLIB", align 8
@lstr.global.24 = private global [4 x i8] c"\03yes", section ".rodata.BLIB", align 8
@lstr.global.25 = private global [2 x i8] c"\01y", section ".rodata.BLIB", align 8
@lstr.global.30 = private global [3 x i8] c"\02: ", section ".rodata.BLIB", align 8
@lstr.global.47 = private global [11 x i8] c"\0A%10.5f %n\0A", section ".rodata.BLIB", align 8
@lstr.global.48 = private global [11 x i8] c"\0A%10.5f %n\0A", section ".rodata.BLIB", align 8
@lstr.global.49 = private global [56 x i8] c"7ERROR sys_flt operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".rodata.BLIB", align 8
@lstr.global.51 = private global [63 x i8] c">ERROR sys package=%n operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".rodata.BLIB", align 8
@itemn.global.63 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.64 = internal unnamed_addr global i64 0, section ".data.BLIB"
@itemn.global.65 = internal unnamed_addr global i64 0, section ".data.BLIB"
@lstr.global.67 = private global [21 x i8] c"\14\0A\0ABCPL HEAP SPACE:  ", section ".rodata.BLIB", align 8
@lstr.global.68 = private global [20 x i8] c"\13Heap not allocated\0A", section ".rodata.BLIB", align 8
@lstr.global.69 = private global [74 x i8] c"IHeap of %N words allocated at range %16X..%16X (byte address %16X..%16X)\0A", section ".rodata.BLIB", align 8
@lstr.global.70 = private global [27 x i8] c"\1A\0ABlocks on the free list:\0A", section ".rodata.BLIB", align 8
@lstr.global.71 = private global [73 x i8] c"HNo.  Size (words)      At BCPL address   To BCPL address    Contents...\0A", section ".rodata.BLIB", align 8
@lstr.global.72 = private global [25 x i8] c"\18%4X: %16X %16X..%16X    ", section ".rodata.BLIB", align 8
@lstr.global.73 = private global [77 x i8] c"LFree list contains %N words of space in %N blocks. The largest is %N words\0A\0A", section ".rodata.BLIB", align 8
@lstr.global.81 = private global [37 x i8] c"$attempt to free damaged block #X%16X", section ".rodata.BLIB", align 8
@lstr.global.82 = private global [53 x i8] c"4attempt to free block not allocated by getvec #X%16X", section ".rodata.BLIB", align 8
@lstr.global.83 = private global [52 x i8] c"3attempt to free block already marked as free #X%16X", section ".rodata.BLIB", align 8

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
@__bcpl_gv43 = alias ptr, ptr @deplete
@__bcpl_gv89 = alias ptr, ptr @writes
@__bcpl_gv3 = alias ptr, ptr @sys
@__bcpl_gv94 = alias ptr, ptr @writef
@__bcpl_gv61 = alias ptr, ptr @endwrite
@__bcpl_gv60 = alias ptr, ptr @endread
@__bcpl_gv130 = alias ptr, ptr @findappend
@__bcpl_gv49 = alias ptr, ptr @findoutput
@__bcpl_gv53 = alias ptr, ptr @pathfindinput
@__bcpl_gv48 = alias ptr, ptr @findinput
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

define noundef i64 @write_format(i64 %0, i64 %1) local_unnamed_addr section ".text.BLIB" {
entry:
  %stack.vec.i = alloca [21 x i64], align 8
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %le.not = icmp eq i8 %getbyte.char, 0
  br i1 %le.not, label %jf.then_L045, label %lab_L043.preheader

lab_L043.preheader:                               ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %getbyte.string, i64 1
  %rv.llvmaddr = shl i64 %1, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %stack.vecaddr.i = ptrtoint ptr %stack.vec.i to i64
  %stack.bcpladdr.i = ashr exact i64 %stack.vecaddr.i, 3
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global to i64), 3
  br label %lab_L043

lab_L043:                                         ; preds = %lab_L043.preheader, %jump.target_L044
  %STK2.0 = phi i64 [ %STK2.8, %jump.target_L044 ], [ 1, %lab_L043.preheader ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %add = add nsw i64 %STK2.0, 1
  %eq = icmp eq i8 %getbyte.char19, 37
  br i1 %eq, label %jt.then_L049, label %jt.else

jt.else:                                          ; preds = %lab_L043
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value45 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value45 to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  br label %jump.target_L044

jt.then_L049:                                     ; preds = %lab_L043
  %getbyte.charptr55 = getelementptr i8, ptr %getbyte.string, i64 %add
  %getbyte.char56 = load i8, ptr %getbyte.charptr55, align 1
  %getbyte.charword57 = zext i8 %getbyte.char56 to i64
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.llvmaddr64 = shl i64 %rv.rv, 3
  %rv.lv65 = inttoptr i64 %rv.llvmaddr64 to ptr
  %rv.rv66 = load i64, ptr %rv.lv65, align 8
  br label %lab_L046.outer

lab_L046.outer:                                   ; preds = %lab_L068, %jt.then_L049
  %if_cond275.ph = phi i1 [ true, %jt.then_L049 ], [ false, %lab_L068 ]
  %STK25.0.ph = phi i64 [ 0, %jt.then_L049 ], [ %sub225, %lab_L068 ]
  %STK24.0.ph = phi i64 [ 0, %jt.then_L049 ], [ %sub, %lab_L068 ]
  %STK22.0.ph = phi i64 [ %getbyte.charword57, %jt.then_L049 ], [ %getbyte.charword246, %lab_L068 ]
  %STK2.1.ph = phi i64 [ %add, %jt.then_L049 ], [ %add233, %lab_L068 ]
  br label %lab_L046

lab_L046:                                         ; preds = %lab_L046.backedge, %lab_L046.outer
  %if_cond275 = phi i1 [ %if_cond275.ph, %lab_L046.outer ], [ false, %lab_L046.backedge ]
  %STK24.0 = phi i64 [ %STK24.0.ph, %lab_L046.outer ], [ %sub, %lab_L046.backedge ]
  %STK22.0 = phi i64 [ %STK22.0.ph, %lab_L046.outer ], [ %STK22.0.be, %lab_L046.backedge ]
  %STK2.1 = phi i64 [ %STK2.1.ph, %lab_L046.outer ], [ %STK2.1.be, %lab_L046.backedge ]
  %lg.value71 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn74 = inttoptr i64 %lg.value71 to ptr
  %fnap = call i64 %rtap_ep_p_fn74(i64 %STK22.0)
  switch i64 %fnap, label %lab_L052 [
    i64 80, label %lab_L101
    i64 70, label %lab_L098
    i64 69, label %lab_L097
    i64 77, label %lab_L095
    i64 45, label %lab_L094
    i64 43, label %lab_L093
    i64 36, label %lab_L093
    i64 66, label %lf_L048
    i64 90, label %lab_L087
    i64 85, label %lab_L086
    i64 78, label %lf_L047.loopexit1477
    i64 88, label %lab_L084
    i64 79, label %lab_L083
    i64 35, label %lf_L047.loopexit1384
    i64 67, label %lf_L047
    i64 84, label %lab_L080
    i64 83, label %lf_L047.loopexit
    i64 73, label %lab_L078
    i64 68, label %lab_L072
    i64 57, label %lab_L065.preheader
    i64 56, label %lab_L065.preheader
    i64 55, label %lab_L065.preheader
    i64 54, label %lab_L065.preheader
    i64 53, label %lab_L065.preheader
    i64 52, label %lab_L065.preheader
    i64 51, label %lab_L065.preheader
    i64 50, label %lab_L065.preheader
    i64 49, label %lab_L065.preheader
    i64 48, label %lab_L065.preheader
  ]

lab_L065.preheader:                               ; preds = %lab_L046, %lab_L046, %lab_L046, %lab_L046, %lab_L046, %lab_L046, %lab_L046, %lab_L046, %lab_L046, %lab_L046
  br label %lab_L065

lab_L052:                                         ; preds = %lab_L046
  %lg.value79 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn82 = inttoptr i64 %lg.value79 to ptr
  %rtap84 = call i64 %rtap_ep_p_fn82(i64 %STK22.0)
  %add90 = add i64 %STK2.1, 1
  br label %jump.target_L044

lab_L065:                                         ; preds = %lab_L065.preheader, %lab_L065
  %STK24.2 = phi i64 [ %sub, %lab_L065 ], [ %STK24.0, %lab_L065.preheader ]
  %STK22.2 = phi i64 [ %getbyte.charword128, %lab_L065 ], [ %STK22.0, %lab_L065.preheader ]
  %STK2.3 = phi i64 [ %add115, %lab_L065 ], [ %STK2.1, %lab_L065.preheader ]
  %mul = mul i64 %STK24.2, 10
  %add103 = add nsw i64 %STK22.2, -48
  %sub = add i64 %add103, %mul
  %add115 = add i64 %STK2.3, 1
  %getbyte.charptr126 = getelementptr i8, ptr %getbyte.string, i64 %add115
  %getbyte.char127 = load i8, ptr %getbyte.charptr126, align 1
  %getbyte.charword128 = zext i8 %getbyte.char127 to i64
  %2 = add i8 %getbyte.char127, -48
  %or.cond = icmp ult i8 %2, 10
  br i1 %or.cond, label %lab_L065, label %lab_L054

lab_L054:                                         ; preds = %lab_L065
  %eq160.not = icmp eq i8 %getbyte.char127, 46
  br i1 %eq160.not, label %jf.else165, label %lab_L046.backedge

lab_L046.backedge:                                ; preds = %lab_L054, %jf.else165
  %STK22.0.be = phi i64 [ %getbyte.charword128, %lab_L054 ], [ %getbyte.charword184, %jf.else165 ]
  %STK2.1.be = phi i64 [ %add115, %lab_L054 ], [ %add171, %jf.else165 ]
  br label %lab_L046

jf.else165:                                       ; preds = %lab_L054
  %add171 = add i64 %STK2.3, 2
  %getbyte.charptr182 = getelementptr i8, ptr %getbyte.string, i64 %add171
  %getbyte.char183 = load i8, ptr %getbyte.charptr182, align 1
  %getbyte.charword184 = zext i8 %getbyte.char183 to i64
  %3 = add i8 %getbyte.char183, -58
  %or.cond1159 = icmp ult i8 %3, -10
  br i1 %or.cond1159, label %lab_L046.backedge, label %lab_L068

lab_L068:                                         ; preds = %jf.else165, %lab_L068
  %STK25.1 = phi i64 [ %sub225, %lab_L068 ], [ %STK25.0.ph, %jf.else165 ]
  %STK22.3 = phi i64 [ %getbyte.charword246, %lab_L068 ], [ %getbyte.charword184, %jf.else165 ]
  %STK2.4 = phi i64 [ %add233, %lab_L068 ], [ %add171, %jf.else165 ]
  %mul214 = mul i64 %STK25.1, 10
  %add220 = add nsw i64 %STK22.3, -48
  %sub225 = add i64 %add220, %mul214
  %add233 = add i64 %STK2.4, 1
  %getbyte.charptr244 = getelementptr i8, ptr %getbyte.string, i64 %add233
  %getbyte.char245 = load i8, ptr %getbyte.charptr244, align 1
  %getbyte.charword246 = zext i8 %getbyte.char245 to i64
  %4 = add i8 %getbyte.char245, -48
  %or.cond1160 = icmp ult i8 %4, 10
  br i1 %or.cond1160, label %lab_L068, label %lab_L046.outer

lab_L072:                                         ; preds = %lab_L046
  br i1 %if_cond275, label %lab_L078.thread, label %jf.else276

lab_L078.thread:                                  ; preds = %lab_L072
  %lg.value4041383 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), align 4
  br label %jt.else485

jf.else276:                                       ; preds = %lab_L072
  %gr = icmp slt i64 %STK25.0.ph, 1
  br i1 %gr, label %jt.then_L075, label %lab_L074

lab_L074:                                         ; preds = %jf.else276, %lab_L074
  %STK278.0 = phi i64 [ %add305, %lab_L074 ], [ 1, %jf.else276 ]
  %STK277.0 = phi i64 [ %mul297, %lab_L074 ], [ 1, %jf.else276 ]
  %mul297 = mul i64 %STK277.0, 10
  %add305 = add i64 %STK278.0, 1
  %le314.not = icmp sgt i64 %add305, %STK25.0.ph
  br i1 %le314.not, label %jt.then_L075, label %lab_L074

jt.then_L075:                                     ; preds = %lab_L074, %jf.else276
  %STK277.1 = phi i64 [ 1, %jf.else276 ], [ %mul297, %lab_L074 ]
  %rv.rv66.frozen = freeze i64 %rv.rv66
  %STK277.1.frozen = freeze i64 %STK277.1
  %div = sdiv i64 %rv.rv66.frozen, %STK277.1.frozen
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %stack.vec.i)
  %neg.i = sub i64 0, %div
  %if_cond.i = icmp slt i64 %rv.rv66, 0
  %spec.select.i = select i1 %if_cond.i, i64 %div, i64 %neg.i
  br label %lab_L113.i

lab_L113.i:                                       ; preds = %lab_L113.i, %jt.then_L075
  %STK7.1.i = phi i64 [ %spec.select.i, %jt.then_L075 ], [ %div.i, %lab_L113.i ]
  %STK5.0.i = phi i64 [ 0, %jt.then_L075 ], [ %add45.i, %lab_L113.i ]
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
  br i1 %if_cond51.not.i, label %lab_L114.i, label %lab_L113.i

lab_L114.i:                                       ; preds = %lab_L113.i
  %6 = xor i64 %STK25.0.ph, -1
  %rv.rv66.lobit = ashr i64 %rv.rv66, 63
  %sub338 = add i64 %rv.rv66.lobit, %6
  %spec.select209.i = add i64 %sub338, %STK24.0
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L118.i, label %lab_L117.i

lab_L117.i:                                       ; preds = %lab_L114.i, %lab_L117.i
  %STK71.0.i = phi i64 [ %add104.i, %lab_L117.i ], [ %add70.i, %lab_L114.i ]
  %lg.value93.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96.i = inttoptr i64 %lg.value93.i to ptr
  %rtap98.i = call i64 %rtap_ep_p_fn96.i(i64 32)
  %add104.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add104.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L118.i, label %lab_L117.i

jt.then_L118.i:                                   ; preds = %lab_L117.i, %lab_L114.i
  br i1 %if_cond.i, label %jt.else127.i, label %jf.then_L123.i

jt.else127.i:                                     ; preds = %jt.then_L118.i
  %lg.value129.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn132.i = inttoptr i64 %lg.value129.i to ptr
  %rtap134.i = call i64 %rtap_ep_p_fn132.i(i64 45)
  br label %jf.then_L123.i

jf.then_L123.i:                                   ; preds = %jt.else127.i, %jt.then_L118.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L124.i

lab_L124.i:                                       ; preds = %jf.then_L123.i, %lab_L124.i
  %STK141.0.i = phi i64 [ %add177.i, %lab_L124.i ], [ %STK5.0.i, %jf.then_L123.i ]
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
  br i1 %ge.not.i, label %writedz.exit, label %lab_L124.i

writedz.exit:                                     ; preds = %lab_L124.i, %jf.then_L123.i
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
  br label %jump.target_L044

lab_L078:                                         ; preds = %lab_L046
  %lg.value404 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L089

lab_L080:                                         ; preds = %lab_L046
  %lg.value418 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 720), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L089

lab_L083:                                         ; preds = %lab_L046
  %lg.value439 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L089

lab_L084:                                         ; preds = %lab_L046
  %lg.value446 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L089

lab_L086:                                         ; preds = %lab_L046
  %lg.value460 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 728), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L089

lab_L087:                                         ; preds = %lab_L046
  %lg.value467 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 736), align 4
  br i1 %if_cond275, label %jt.else485, label %jt.then_L089

lf_L048:                                          ; preds = %lab_L046
  br i1 %if_cond275, label %jt.else485, label %jt.then_L089

jt.else485:                                       ; preds = %lab_L078.thread, %lab_L078, %lab_L080, %lab_L083, %lab_L084, %lab_L086, %lab_L087, %lf_L048
  %STK23.1.ph1381 = phi i64 [ %lg.value467, %lab_L087 ], [ ptrtoint (ptr @writebin to i64), %lf_L048 ], [ %lg.value460, %lab_L086 ], [ %lg.value446, %lab_L084 ], [ %lg.value439, %lab_L083 ], [ %lg.value418, %lab_L080 ], [ %lg.value404, %lab_L078 ], [ %lg.value4041383, %lab_L078.thread ]
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
  br label %jt.then_L089

jt.then_L089:                                     ; preds = %lab_L078, %lab_L080, %lab_L083, %lab_L084, %lab_L086, %lab_L087, %jt.else485, %lf_L048
  %STK23.1.ph1380 = phi i64 [ ptrtoint (ptr @writebin to i64), %lf_L048 ], [ %STK23.1.ph1381, %jt.else485 ], [ %lg.value467, %lab_L087 ], [ %lg.value460, %lab_L086 ], [ %lg.value446, %lab_L084 ], [ %lg.value439, %lab_L083 ], [ %lg.value418, %lab_L080 ], [ %lg.value404, %lab_L078 ]
  %STK24.3 = phi i64 [ %STK24.0, %lf_L048 ], [ %__res_a.0, %jt.else485 ], [ %STK24.0, %lab_L087 ], [ %STK24.0, %lab_L086 ], [ %STK24.0, %lab_L084 ], [ %STK24.0, %lab_L083 ], [ %STK24.0, %lab_L080 ], [ %STK24.0, %lab_L078 ]
  %STK2.6 = phi i64 [ %STK2.1, %lf_L048 ], [ %add491, %jt.else485 ], [ %STK2.1, %lab_L087 ], [ %STK2.1, %lab_L086 ], [ %STK2.1, %lab_L084 ], [ %STK2.1, %lab_L083 ], [ %STK2.1, %lab_L080 ], [ %STK2.1, %lab_L078 ]
  %rtap_ep_p_fn567 = inttoptr i64 %STK23.1.ph1380 to ptr
  %rtap570 = call i64 %rtap_ep_p_fn567(i64 %rv.rv66, i64 %STK24.3)
  %rv.rv576 = load i64, ptr %rv.lv, align 8
  %add581 = add i64 %rv.rv576, 1
  store i64 %add581, ptr %rv.lv, align 8
  %add594 = add i64 %STK2.6, 1
  br label %jump.target_L044

lf_L047.loopexit1384:                             ; preds = %lab_L046
  br label %lf_L047

lf_L047.loopexit1477:                             ; preds = %lab_L046
  br label %lf_L047

lf_L047.loopexit:                                 ; preds = %lab_L046
  br label %lf_L047

lf_L047:                                          ; preds = %lab_L046, %lf_L047.loopexit, %lf_L047.loopexit1477, %lf_L047.loopexit1384
  %STK23.1.ph1174.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1008), %lf_L047.loopexit1384 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 688), %lf_L047.loopexit1477 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), %lf_L047.loopexit ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), %lab_L046 ]
  %STK23.1.ph1174 = load i64, ptr %STK23.1.ph1174.in, align 4
  %rtap_ep_p_fn603 = inttoptr i64 %STK23.1.ph1174 to ptr
  %rtap606 = call i64 %rtap_ep_p_fn603(i64 %rv.rv66, i64 0)
  %rv.rv612 = load i64, ptr %rv.lv, align 8
  %add617 = add i64 %rv.rv612, 1
  store i64 %add617, ptr %rv.lv, align 8
  %add630 = add i64 %STK2.1, 1
  br label %jump.target_L044

lab_L093:                                         ; preds = %lab_L046, %lab_L046
  %rv.rv638 = load i64, ptr %rv.lv, align 8
  %add643 = add i64 %rv.rv638, 1
  store i64 %add643, ptr %rv.lv, align 8
  %add656 = add i64 %STK2.1, 1
  br label %jump.target_L044

lab_L094:                                         ; preds = %lab_L046
  %rv.rv664 = load i64, ptr %rv.lv, align 8
  %sub669 = add i64 %rv.rv664, -1
  store i64 %sub669, ptr %rv.lv, align 8
  %add682 = add i64 %STK2.1, 1
  br label %jump.target_L044

lab_L095:                                         ; preds = %lab_L046
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
  br label %jump.target_L044

lab_L097:                                         ; preds = %lab_L046
  %rv.rv748 = load i64, ptr %rv.lv, align 8
  %add753 = add i64 %rv.rv748, 1
  store i64 %add753, ptr %rv.lv, align 8
  %lg.value767 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1440), align 4
  %rtap_ep_p_fn770 = inttoptr i64 %lg.value767 to ptr
  %rtap774 = call i64 %rtap_ep_p_fn770(i64 %rv.rv66, i64 %STK24.0, i64 %STK25.0.ph)
  %add780 = add i64 %STK2.1, 1
  br label %jump.target_L044

lab_L098:                                         ; preds = %lab_L046
  %rv.rv788 = load i64, ptr %rv.lv, align 8
  %add793 = add i64 %rv.rv788, 1
  store i64 %add793, ptr %rv.lv, align 8
  br i1 %if_cond275, label %jf.then_L099, label %jf.else805

jf.else805:                                       ; preds = %lab_L098
  %lg.value812 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 584), align 4
  %rtap_ep_p_fn815 = inttoptr i64 %lg.value812 to ptr
  %rtap819 = call i64 %rtap_ep_p_fn815(i64 %rv.rv66, i64 %STK24.0, i64 %STK25.0.ph)
  br label %jump.target_L100

jf.then_L099:                                     ; preds = %lab_L098
  %rtap830 = call i64 @write_format(i64 %rv.rv66, i64 %1)
  br label %jump.target_L100

jump.target_L100:                                 ; preds = %jf.then_L099, %jf.else805
  %add836 = add i64 %STK2.1, 1
  br label %jump.target_L044

lab_L101:                                         ; preds = %lab_L046
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
  br i1 %eq898.not, label %jf.else903, label %jf.then_L102

jf.else903:                                       ; preds = %lab_L101
  %getbyte.char916 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword917 = zext i8 %getbyte.char916 to i64
  %gr921 = icmp sgt i64 %add890, %getbyte.charword917
  br i1 %gr921, label %jump.target_L044, label %lab_L104

lab_L104:                                         ; preds = %jf.else903, %lab_L105
  %getbyte.char9981378 = phi i8 [ %getbyte.char998, %lab_L105 ], [ %getbyte.char916, %jf.else903 ]
  %STK905.0 = phi i64 [ %STK905.1, %lab_L105 ], [ %booltoword844, %jf.else903 ]
  %STK2.7 = phi i64 [ %add944, %lab_L105 ], [ %add890, %jf.else903 ]
  %getbyte.charptr935 = getelementptr i8, ptr %getbyte.string, i64 %STK2.7
  %getbyte.char936 = load i8, ptr %getbyte.charptr935, align 1
  %getbyte.charword937 = zext i8 %getbyte.char936 to i64
  %add944 = add nsw i64 %STK2.7, 1
  %eq952.not = icmp eq i8 %getbyte.char936, 92
  br i1 %eq952.not, label %jf.else957, label %jf.then_L107

jf.else957:                                       ; preds = %lab_L104
  %not = xor i64 %STK905.0, -1
  %eq969 = icmp eq i64 %booltoword844, %not
  br i1 %eq969, label %jump.target_L044, label %lab_L105

jf.then_L107:                                     ; preds = %lab_L104
  %if_cond978.not = icmp eq i64 %STK905.0, 0
  br i1 %if_cond978.not, label %jt.else979, label %lab_L105

jt.else979:                                       ; preds = %jf.then_L107
  %lg.value982 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn985 = inttoptr i64 %lg.value982 to ptr
  %rtap987 = call i64 %rtap_ep_p_fn985(i64 %getbyte.charword937)
  %getbyte.char998.pre = load i8, ptr %getbyte.string, align 8
  br label %lab_L105

lab_L105:                                         ; preds = %jf.else957, %jt.else979, %jf.then_L107
  %getbyte.char998 = phi i8 [ %getbyte.char9981378, %jf.then_L107 ], [ %getbyte.char998.pre, %jt.else979 ], [ %getbyte.char9981378, %jf.else957 ]
  %STK905.1 = phi i64 [ -1, %jf.then_L107 ], [ 0, %jt.else979 ], [ %not, %jf.else957 ]
  %getbyte.charword999 = zext i8 %getbyte.char998 to i64
  %gr1003.not.not = icmp slt i64 %STK2.7, %getbyte.charword999
  br i1 %gr1003.not.not, label %lab_L104, label %jump.target_L044

jf.then_L102:                                     ; preds = %lab_L101
  br i1 %ne, label %jf.else1014, label %jump.target_L044

jf.else1014:                                      ; preds = %jf.then_L102
  %lg.value1017 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn1020 = inttoptr i64 %lg.value1017 to ptr
  %rtap1022 = call i64 %rtap_ep_p_fn1020(i64 %getbyte.charword882)
  br label %jump.target_L044

jump.target_L044:                                 ; preds = %lab_L105, %jf.else957, %jf.then_L102, %jf.else1014, %jf.else903, %jump.target_L100, %lab_L097, %lab_L095, %lab_L094, %lab_L093, %lf_L047, %jt.then_L089, %writedz.exit, %lab_L052, %jt.else
  %STK2.8 = phi i64 [ %add90, %lab_L052 ], [ %add594, %jt.then_L089 ], [ %add630, %lf_L047 ], [ %add401, %writedz.exit ], [ %add656, %lab_L093 ], [ %add682, %lab_L094 ], [ %add739, %lab_L095 ], [ %add780, %lab_L097 ], [ %add836, %jump.target_L100 ], [ %add890, %jf.then_L102 ], [ %add890, %jf.else1014 ], [ %add890, %jf.else903 ], [ %add, %jt.else ], [ %add944, %jf.else957 ], [ %add944, %lab_L105 ]
  %getbyte.char1036 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword1037 = zext i8 %getbyte.char1036 to i64
  %le1041.not = icmp sgt i64 %STK2.8, %getbyte.charword1037
  br i1 %le1041.not, label %jf.then_L045, label %lab_L043

jf.then_L045:                                     ; preds = %jump.target_L044, %entry
  store i64 %lg.value, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  ret i64 -4985279381848933680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @capitalch(i64 %0) #1 section ".text.BLIB" {
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
  br label %lab_L113

lab_L113:                                         ; preds = %lab_L113, %entry
  %STK7.1 = phi i64 [ %spec.select, %entry ], [ %div, %lab_L113 ]
  %STK5.0 = phi i64 [ 0, %entry ], [ %add45, %lab_L113 ]
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
  br i1 %if_cond51.not, label %lab_L114, label %lab_L113

lab_L114:                                         ; preds = %lab_L113
  %spec.select209 = add i64 %1, %sub
  %if_cond60 = icmp eq i64 %2, 0
  %or.cond = select i1 %if_cond, i1 true, i1 %if_cond60
  br i1 %or.cond, label %jf.then_L116, label %jf.else61

jf.else61:                                        ; preds = %lab_L114
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 45)
  br label %jf.then_L116

jf.then_L116:                                     ; preds = %jf.else61, %lab_L114
  %add70 = add i64 %STK5.0, 2
  %gr = icmp sgt i64 %add70, %spec.select209
  br i1 %gr, label %jt.then_L118, label %lab_L117.preheader

lab_L117.preheader:                               ; preds = %jf.then_L116
  %. = select i1 %if_cond60, i64 32, i64 48
  br label %lab_L117

lab_L117:                                         ; preds = %lab_L117.preheader, %lab_L117
  %STK71.0 = phi i64 [ %add104, %lab_L117 ], [ %add70, %lab_L117.preheader ]
  %lg.value93 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96 = inttoptr i64 %lg.value93 to ptr
  %rtap98 = call i64 %rtap_ep_p_fn96(i64 %.)
  %add104 = add i64 %STK71.0, 1
  %le.not = icmp sgt i64 %add104, %spec.select209
  br i1 %le.not, label %jt.then_L118, label %lab_L117

jt.then_L118:                                     ; preds = %lab_L117, %jf.then_L116
  %or.cond210 = select i1 %not.if_cond, i1 %if_cond60, i1 false
  br i1 %or.cond210, label %jt.else127, label %jf.then_L123

jt.else127:                                       ; preds = %jt.then_L118
  %lg.value129 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn132 = inttoptr i64 %lg.value129 to ptr
  %rtap134 = call i64 %rtap_ep_p_fn132(i64 45)
  br label %jf.then_L123

jf.then_L123:                                     ; preds = %jt.else127, %jt.then_L118
  %ls = icmp slt i64 %STK5.0, 0
  br i1 %ls, label %jt.then_L125, label %lab_L124

lab_L124:                                         ; preds = %jf.then_L123, %lab_L124
  %STK141.0 = phi i64 [ %add177, %lab_L124 ], [ %STK5.0, %jf.then_L123 ]
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
  br i1 %ge.not, label %jt.then_L125, label %lab_L124

jt.then_L125:                                     ; preds = %lab_L124, %jf.then_L123
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
  br label %lab_L113.i

lab_L113.i:                                       ; preds = %lab_L113.i, %entry
  %STK7.1.i = phi i64 [ %spec.select.i, %entry ], [ %div.i, %lab_L113.i ]
  %STK5.0.i = phi i64 [ 0, %entry ], [ %add45.i, %lab_L113.i ]
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
  br i1 %if_cond51.not.i, label %lab_L114.i, label %lab_L113.i

lab_L114.i:                                       ; preds = %lab_L113.i
  %if_cond.i = icmp slt i64 %0, 0
  %.lobit = ashr i64 %0, 63
  %spec.select209.i = add i64 %1, %.lobit
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L118.i, label %lab_L117.i

lab_L117.i:                                       ; preds = %lab_L114.i, %lab_L117.i
  %STK71.0.i = phi i64 [ %add104.i, %lab_L117.i ], [ %add70.i, %lab_L114.i ]
  %lg.value93.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn96.i = inttoptr i64 %lg.value93.i to ptr
  %rtap98.i = call i64 %rtap_ep_p_fn96.i(i64 32)
  %add104.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add104.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L118.i, label %lab_L117.i

jt.then_L118.i:                                   ; preds = %lab_L117.i, %lab_L114.i
  br i1 %if_cond.i, label %jt.else127.i, label %jf.then_L123.i

jt.else127.i:                                     ; preds = %jt.then_L118.i
  %lg.value129.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn132.i = inttoptr i64 %lg.value129.i to ptr
  %rtap134.i = call i64 %rtap_ep_p_fn132.i(i64 45)
  br label %jf.then_L123.i

jf.then_L123.i:                                   ; preds = %jt.else127.i, %jt.then_L118.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L124.i

lab_L124.i:                                       ; preds = %jf.then_L123.i, %lab_L124.i
  %STK141.0.i = phi i64 [ %add177.i, %lab_L124.i ], [ %STK5.0.i, %jf.then_L123.i ]
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
  br i1 %ge.not.i, label %writedz.exit, label %lab_L124.i

writedz.exit:                                     ; preds = %lab_L124.i, %jf.then_L123.i
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
  br i1 %gr, label %jf.then_L128, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 3
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then_L128

jf.then_L128:                                     ; preds = %jf.else, %entry
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
  br i1 %gr, label %jf.then_L129, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 4
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then_L129

jf.then_L129:                                     ; preds = %jf.else, %entry
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
  br i1 %gr, label %jf.then_L131, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 1
  %sub = add nsw i64 %1, -1
  %rtap = tail call i64 @writebin(i64 %shift.result10, i64 %sub)
  br label %jf.then_L131

jf.then_L131:                                     ; preds = %jf.else, %entry
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
  br i1 %gr, label %jt.then_L135, label %lab_L134

lab_L134:                                         ; preds = %entry, %lab_L137
  %STK27.0 = phi i64 [ %add, %lab_L137 ], [ 1, %entry ]
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
  br i1 %if_cond79, label %lab_L137, label %common.ret

common.ret:                                       ; preds = %lab_L134, %jf.then_L139, %jt.then_L135
  %common.ret.op = phi i64 [ 0, %jt.then_L135 ], [ %.146, %jf.then_L139 ], [ %fnap, %lab_L134 ]
  ret i64 %common.ret.op

lab_L137:                                         ; preds = %lab_L134
  %add = add nuw nsw i64 %STK27.0, 1
  %le.not.not = icmp samesign ult i64 %STK27.0, %getbyte.charword37
  br i1 %le.not.not, label %lab_L134, label %jt.then_L135

jt.then_L135:                                     ; preds = %lab_L137, %entry
  %eq.not = icmp eq i8 %getbyte.char13, %getbyte.char
  br i1 %eq.not, label %common.ret, label %jf.then_L139

jf.then_L139:                                     ; preds = %jt.then_L135
  %eq119.not = icmp eq i64 %0, %.
  %.146 = select i1 %eq119.not, i64 -1, i64 1
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @getkeylen(i64 %0, i64 %1, i64 %2, i64 returned %3) local_unnamed_addr #2 section ".text.BLIB" {
entry:
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %jt.then_L143, label %lab_L141.preheader

lab_L141.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  br label %lab_L141

lab_L141:                                         ; preds = %lab_L141.preheader, %jf.else
  %STK4.0 = phi i64 [ %add, %jf.else ], [ 1, %lab_L141.preheader ]
  %STK2.0 = phi i64 [ %spec.select, %jf.else ], [ %2, %lab_L141.preheader ]
  %if_cond13 = icmp eq i64 %STK2.0, 0
  br i1 %if_cond13, label %jt.then_L143, label %jf.else

jf.else:                                          ; preds = %lab_L141
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK4.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %eq.not = icmp eq i8 %getbyte.char, 44
  %sub = sext i1 %eq.not to i64
  %spec.select = add i64 %STK2.0, %sub
  %add = add i64 %STK4.0, 1
  %gr46.not = icmp sgt i64 %add, %1
  br i1 %gr46.not, label %jt.then_L143, label %lab_L141

jt.then_L143:                                     ; preds = %jf.else, %lab_L141, %entry
  %STK4.1 = phi i64 [ 1, %entry ], [ %add, %jf.else ], [ %STK4.0, %lab_L141 ]
  %le.not = icmp sgt i64 %STK4.1, %1
  br i1 %le.not, label %jt.then_L143.jf.then_L147_crit_edge, label %lab_L145.preheader

jt.then_L143.jf.then_L147_crit_edge:              ; preds = %jt.then_L143
  %.pre = shl i64 %3, 3
  %.pre207 = inttoptr i64 %.pre to ptr
  br label %jf.then_L147

lab_L145.preheader:                               ; preds = %jt.then_L143
  %getbyte.llvmaddr69 = shl i64 %0, 3
  %getbyte.string70 = inttoptr i64 %getbyte.llvmaddr69 to ptr
  %putbyte.llvmaddr = shl i64 %3, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L145

lab_L145:                                         ; preds = %lab_L145.preheader, %jt.then_L148
  %STK5.0 = phi i64 [ %STK5.1, %jt.then_L148 ], [ 0, %lab_L145.preheader ]
  %STK4.2 = phi i64 [ %add148, %jt.then_L148 ], [ %STK4.1, %lab_L145.preheader ]
  %getbyte.charptr71 = getelementptr i8, ptr %getbyte.string70, i64 %STK4.2
  %getbyte.char72 = load i8, ptr %getbyte.charptr71, align 1
  switch i8 %getbyte.char72, label %jt.else118 [
    i8 47, label %jf.then_L147.loopexit.split.loop.exit204
    i8 61, label %jf.then_L147.loopexit.split.loop.exit204
    i8 44, label %jf.then_L147.loopexit.split.loop.exit204
    i8 10, label %jt.then_L148
  ]

jt.else118:                                       ; preds = %lab_L145
  %add124 = add i64 %STK5.0, 1
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %add124
  store i8 %getbyte.char72, ptr %putbyte.charptr, align 1
  br label %jt.then_L148

jt.then_L148:                                     ; preds = %lab_L145, %jt.else118
  %STK5.1 = phi i64 [ %add124, %jt.else118 ], [ %STK5.0, %lab_L145 ]
  %add148 = add i64 %STK4.2, 1
  %le157.not = icmp sgt i64 %add148, %1
  br i1 %le157.not, label %jf.then_L147.loopexit.split.loop.exit, label %lab_L145

jf.then_L147.loopexit.split.loop.exit:            ; preds = %jt.then_L148
  %extract.t203.le = trunc i64 %STK5.1 to i8
  br label %jf.then_L147

jf.then_L147.loopexit.split.loop.exit204:         ; preds = %lab_L145, %lab_L145, %lab_L145
  %extract.t.le = trunc i64 %STK5.0 to i8
  br label %jf.then_L147

jf.then_L147:                                     ; preds = %jt.then_L143.jf.then_L147_crit_edge, %jf.then_L147.loopexit.split.loop.exit, %jf.then_L147.loopexit.split.loop.exit204
  %putbyte.string173.pre-phi = phi ptr [ %.pre207, %jt.then_L143.jf.then_L147_crit_edge ], [ %putbyte.string, %jf.then_L147.loopexit.split.loop.exit ], [ %putbyte.string, %jf.then_L147.loopexit.split.loop.exit204 ]
  %STK5.2.off0 = phi i8 [ 0, %jt.then_L143.jf.then_L147_crit_edge ], [ %extract.t203.le, %jf.then_L147.loopexit.split.loop.exit ], [ %extract.t.le, %jf.then_L147.loopexit.split.loop.exit204 ]
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
  br i1 %gr, label %jt.then_L150, label %lab_L149.preheader

lab_L149.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i8 %getbyte.char, 4
  %diff.check = icmp eq i64 %getbyte.llvmaddr, %stack.vec165
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %lab_L149.preheader185, label %vector.ph

vector.ph:                                        ; preds = %lab_L149.preheader
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
  br i1 %cmp.n, label %jt.then_L150, label %lab_L149.preheader185

lab_L149.preheader185:                            ; preds = %lab_L149.preheader, %middle.block
  %STK6.0.ph = phi i64 [ 1, %lab_L149.preheader ], [ %4, %middle.block ]
  %STK4.0.ph = phi i64 [ 0, %lab_L149.preheader ], [ %n.vec, %middle.block ]
  br label %lab_L149

lab_L149:                                         ; preds = %lab_L149.preheader185, %lab_L149
  %STK6.0 = phi i64 [ %add42, %lab_L149 ], [ %STK6.0.ph, %lab_L149.preheader185 ]
  %STK4.0 = phi i64 [ %add, %lab_L149 ], [ %STK4.0.ph, %lab_L149.preheader185 ]
  %add = add nuw nsw i64 %STK4.0, 1
  %getbyte.charptr29 = getelementptr i8, ptr %getbyte.string, i64 %STK6.0
  %getbyte.char30 = load i8, ptr %getbyte.charptr29, align 1
  %putbyte.charptr = getelementptr i8, ptr %stack.vec, i64 %add
  store i8 %getbyte.char30, ptr %putbyte.charptr, align 1
  %add42 = add nuw nsw i64 %STK6.0, 1
  %le.not.not = icmp samesign ult i64 %STK6.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L149, label %jt.then_L150, !llvm.loop !3

jt.then_L150:                                     ; preds = %lab_L149, %middle.block, %entry
  %STK4.1 = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ], [ %add, %lab_L149 ]
  %getbyte.llvmaddr62 = shl i64 %1, 3
  %getbyte.string63 = inttoptr i64 %getbyte.llvmaddr62 to ptr
  %getbyte.char65 = load i8, ptr %getbyte.string63, align 8
  %getbyte.charword66 = zext i8 %getbyte.char65 to i64
  %gr74 = icmp eq i8 %getbyte.char65, 0
  br i1 %gr74, label %jt.then_L154, label %lab_L153.preheader

lab_L153.preheader:                               ; preds = %jt.then_L150
  %min.iters.check171 = icmp ult i8 %getbyte.char65, 4
  br i1 %min.iters.check171, label %lab_L153.preheader184, label %vector.memcheck167

vector.memcheck167:                               ; preds = %lab_L153.preheader
  %9 = add i64 %STK4.1, %stack.vec165
  %10 = sub i64 %9, %getbyte.llvmaddr62
  %diff.check168 = icmp ult i64 %10, 4
  br i1 %diff.check168, label %lab_L153.preheader184, label %vector.ph172

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
  br i1 %cmp.n181, label %jt.then_L154, label %lab_L153.preheader184

lab_L153.preheader184:                            ; preds = %vector.memcheck167, %lab_L153.preheader, %middle.block169
  %STK56.0.ph = phi i64 [ 1, %lab_L153.preheader ], [ 1, %vector.memcheck167 ], [ %11, %middle.block169 ]
  %STK4.2.ph = phi i64 [ %STK4.1, %lab_L153.preheader ], [ %STK4.1, %vector.memcheck167 ], [ %12, %middle.block169 ]
  br label %lab_L153

lab_L153:                                         ; preds = %lab_L153.preheader184, %lab_L153
  %STK56.0 = phi i64 [ %add116, %lab_L153 ], [ %STK56.0.ph, %lab_L153.preheader184 ]
  %STK4.2 = phi i64 [ %add85, %lab_L153 ], [ %STK4.2.ph, %lab_L153.preheader184 ]
  %add85 = add nuw nsw i64 %STK4.2, 1
  %getbyte.charptr96 = getelementptr i8, ptr %getbyte.string63, i64 %STK56.0
  %getbyte.char97 = load i8, ptr %getbyte.charptr96, align 1
  %putbyte.charptr110 = getelementptr i8, ptr %stack.vec, i64 %add85
  store i8 %getbyte.char97, ptr %putbyte.charptr110, align 1
  %add116 = add nuw nsw i64 %STK56.0, 1
  %le125.not.not = icmp samesign ult i64 %STK56.0, %getbyte.charword66
  br i1 %le125.not.not, label %lab_L153, label %jt.then_L154, !llvm.loop !5

jt.then_L154:                                     ; preds = %lab_L153, %middle.block169, %jt.then_L150
  %STK4.3 = phi i64 [ %STK4.1, %jt.then_L150 ], [ %12, %middle.block169 ], [ %add85, %lab_L153 ]
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
  br i1 %gr.i, label %lab_L311.i1863.preheader, label %lab_L311.i

lab_L311.i:                                       ; preds = %entry, %lab_L311.i
  %STK2.0.i = phi i64 [ %add26.i, %lab_L311.i ], [ 0, %entry ]
  %add.i = add i64 %STK2.0.i, %2
  %stind.llvmaddr.i = shl i64 %add.i, 3
  %stind.lv.i = inttoptr i64 %stind.llvmaddr.i to ptr
  store i64 0, ptr %stind.lv.i, align 8
  %add26.i = add i64 %STK2.0.i, 1
  %le.not.i = icmp sgt i64 %add26.i, %3
  br i1 %le.not.i, label %lab_L311.i1863.preheader, label %lab_L311.i

lab_L311.i1863.preheader:                         ; preds = %lab_L311.i, %entry
  br label %lab_L311.i1863

lab_L311.i1863:                                   ; preds = %lab_L311.i1863.preheader, %lab_L311.i1863
  %STK2.0.i1864 = phi i64 [ %add26.i1868, %lab_L311.i1863 ], [ 0, %lab_L311.i1863.preheader ]
  %add.i1865 = add nsw i64 %STK2.0.i1864, %stack.bcpladdr10
  %stind.llvmaddr.i1866 = shl i64 %add.i1865, 3
  %stind.lv.i1867 = inttoptr i64 %stind.llvmaddr.i1866 to ptr
  store i64 0, ptr %stind.lv.i1867, align 8
  %add26.i1868 = add nuw nsw i64 %STK2.0.i1864, 1
  %le.not.i1869 = icmp samesign ugt i64 %STK2.0.i1864, 126
  br i1 %le.not.i1869, label %clear_words.exit1870, label %lab_L311.i1863

clear_words.exit1870:                             ; preds = %lab_L311.i1863
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %lab_L173.preheader, label %lab_L158.preheader

lab_L158.preheader:                               ; preds = %clear_words.exit1870
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  br label %lab_L158

lab_L158:                                         ; preds = %lab_L158.preheader, %lab_L161
  %STK29.0 = phi i64 [ %add261, %lab_L161 ], [ 1, %lab_L158.preheader ]
  %STK5.0 = phi i64 [ %STK5.1, %lab_L161 ], [ 0, %lab_L158.preheader ]
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK29.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  switch i8 %getbyte.char, label %lab_L161 [
    i8 47, label %jf.else
    i8 44, label %jf.else229
  ]

jf.else:                                          ; preds = %lab_L158
  %getbyte.charptr66 = getelementptr i8, ptr %getbyte.charptr, i64 1
  %getbyte.char67 = load i8, ptr %getbyte.charptr66, align 1
  %getbyte.charword68 = zext i8 %getbyte.char67 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn72 = inttoptr i64 %lg.value to ptr
  %fnap = call i64 %rtap_ep_p_fn72(i64 %getbyte.charword68)
  switch i64 %fnap, label %goto.phi.bb [
    i64 80, label %lab_L170
    i64 78, label %lab_L169
    i64 83, label %lab_L168
    i64 75, label %lab_L167
    i64 65, label %lab_L161.sink.split
  ]

lab_L167:                                         ; preds = %jf.else
  br label %lab_L161.sink.split

lab_L168:                                         ; preds = %jf.else
  br label %lab_L161.sink.split

lab_L169:                                         ; preds = %jf.else
  br label %lab_L161.sink.split

lab_L170:                                         ; preds = %jf.else
  br label %lab_L161.sink.split

jf.else229:                                       ; preds = %lab_L158
  %add235 = add i64 %STK5.0, 1
  %gr242 = icmp slt i64 %add235, 128
  br i1 %gr242, label %lab_L161, label %jf.else247

common.ret:                                       ; preds = %lab_L235, %jt.then_L206, %jf.else247
  %common.ret.op = phi i64 [ 0, %jf.else247 ], [ %STK4.41914, %jt.then_L206 ], [ 0, %lab_L235 ]
  ret i64 %common.ret.op

jf.else247:                                       ; preds = %jf.else229
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.21 to i64), 3
  %lg.value249 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 760), align 4
  %rtap_ep_p_fn252 = inttoptr i64 %lg.value249 to ptr
  %rtap254 = call i64 %rtap_ep_p_fn252(i64 %lstr.bcpladdr)
  br label %common.ret

lab_L161.sink.split:                              ; preds = %jf.else, %lab_L167, %lab_L168, %lab_L169, %lab_L170
  %.sink = phi i64 [ 16, %lab_L170 ], [ 8, %lab_L169 ], [ 4, %lab_L168 ], [ 2, %lab_L167 ], [ 1, %jf.else ]
  %add194 = add i64 %STK5.0, %stack.bcpladdr10
  %rv.llvmaddr197 = shl i64 %add194, 3
  %rv.lv198 = inttoptr i64 %rv.llvmaddr197 to ptr
  %rv.rv199 = load i64, ptr %rv.lv198, align 8
  %logor204 = or i64 %rv.rv199, %.sink
  store i64 %logor204, ptr %rv.lv198, align 8
  br label %lab_L161

lab_L161:                                         ; preds = %lab_L161.sink.split, %lab_L158, %jf.else229
  %STK5.1 = phi i64 [ %add235, %jf.else229 ], [ %STK5.0, %lab_L158 ], [ %STK5.0, %lab_L161.sink.split ]
  %add261 = add i64 %STK29.0, 1
  %le.not = icmp sgt i64 %add261, %1
  br i1 %le.not, label %jt.then_L159, label %lab_L158

jt.then_L159:                                     ; preds = %lab_L161
  %gr284 = icmp slt i64 %STK5.1, 0
  br i1 %gr284, label %jt.then_L174, label %lab_L173.preheader

lab_L173.preheader:                               ; preds = %clear_words.exit1870, %jt.then_L159
  %STK5.21970 = phi i64 [ %STK5.1, %jt.then_L159 ], [ 0, %clear_words.exit1870 ]
  br label %lab_L173

lab_L173:                                         ; preds = %lab_L173.preheader, %lab_L176
  %STK275.0 = phi i64 [ %add325, %lab_L176 ], [ 0, %lab_L173.preheader ]
  %add296 = add i64 %STK275.0, %stack.bcpladdr10
  %rv.llvmaddr299 = shl i64 %add296, 3
  %rv.lv300 = inttoptr i64 %rv.llvmaddr299 to ptr
  %rv.rv301 = load i64, ptr %rv.lv300, align 8
  %logand = and i64 %rv.rv301, 12
  %eq310.not = icmp eq i64 %logand, 12
  br i1 %eq310.not, label %goto.phi.bb, label %lab_L176

lab_L176:                                         ; preds = %lab_L173
  %add325 = add i64 %STK275.0, 1
  %le334.not = icmp sgt i64 %add325, %STK5.21970
  br i1 %le334.not, label %jt.then_L174, label %lab_L173

jt.then_L174:                                     ; preds = %lab_L176, %jt.then_L159
  %gr2841974 = phi i1 [ true, %jt.then_L159 ], [ false, %lab_L176 ]
  %STK5.21971 = phi i64 [ %STK5.1, %jt.then_L159 ], [ %STK5.21970, %lab_L176 ]
  %add346 = add i64 %2, 1
  %add351 = add i64 %add346, %STK5.21971
  %getbyte.llvmaddr.i1884 = shl i64 %0, 3
  %getbyte.string.i1885 = inttoptr i64 %getbyte.llvmaddr.i1884 to ptr
  %lstr.bcpladdr1326 = ashr exact i64 ptrtoint (ptr @lstr.global.30 to i64), 3
  br label %lab_L178.outer

lab_L178.outer:                                   ; preds = %lab_L178.outer.backedge, %jt.then_L174
  %STK4.0.ph = phi i64 [ %add351, %jt.then_L174 ], [ %STK4.0.ph.be, %lab_L178.outer.backedge ]
  %sub.neg = sub i64 %2, %STK4.0.ph
  %sub366 = add i64 %sub.neg, %3
  %getbyte.llvmaddr65.i = shl i64 %STK4.0.ph, 3
  %getbyte.string66.i = inttoptr i64 %getbyte.llvmaddr65.i to ptr
  %getbyte.charptr69.i = getelementptr i8, ptr %getbyte.string66.i, i64 1
  br label %lab_L178

lab_L178:                                         ; preds = %lab_L178.backedge, %lab_L178.outer
  %lg.value372 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn375 = inttoptr i64 %lg.value372 to ptr
  %fnap378 = call i64 %rtap_ep_p_fn375(i64 %STK4.0.ph, i64 %sub366)
  br label %lab_L311.i1871

lab_L311.i1871:                                   ; preds = %lab_L311.i1871, %lab_L178
  %STK2.0.i1872 = phi i64 [ %add26.i1876, %lab_L311.i1871 ], [ 0, %lab_L178 ]
  %add.i1873 = add nsw i64 %STK2.0.i1872, %stack.bcpladdr
  %stind.llvmaddr.i1874 = shl i64 %add.i1873, 3
  %stind.lv.i1875 = inttoptr i64 %stind.llvmaddr.i1874 to ptr
  store i64 0, ptr %stind.lv.i1875, align 8
  %add26.i1876 = add nuw nsw i64 %STK2.0.i1872, 1
  %le.not.i1877 = icmp samesign ugt i64 %STK2.0.i1872, 29
  br i1 %le.not.i1877, label %clear_words.exit1878, label %lab_L311.i1871

clear_words.exit1878:                             ; preds = %lab_L311.i1871
  switch i64 %fnap378, label %goto.phi.bb.loopexit2007 [
    i64 2, label %lab_L223
    i64 1, label %lab_L210
    i64 4, label %lab_L183
    i64 3, label %lab_L183
    i64 0, label %lab_L183
  ]

lab_L183:                                         ; preds = %clear_words.exit1878, %clear_words.exit1878, %clear_words.exit1878
  br i1 %gr2841974, label %jt.then_L206, label %lab_L184

lab_L184:                                         ; preds = %lab_L183, %jf.then_L187
  %STK399.0 = phi i64 [ %STK399.2, %jf.then_L187 ], [ %STK5.21971, %lab_L183 ]
  %STK397.0 = phi i64 [ %add962, %jf.then_L187 ], [ 0, %lab_L183 ]
  %STK367.0 = phi i64 [ %STK367.2, %jf.then_L187 ], [ %sub366, %lab_L183 ]
  %STK5.3 = phi i64 [ %STK5.5, %jf.then_L187 ], [ %STK5.21971, %lab_L183 ]
  %STK4.1 = phi i64 [ %STK4.3, %jf.then_L187 ], [ %STK4.0.ph, %lab_L183 ]
  %add418 = add i64 %STK397.0, %stack.bcpladdr10
  %rv.llvmaddr421 = shl i64 %add418, 3
  %rv.lv422 = inttoptr i64 %rv.llvmaddr421 to ptr
  %rv.rv423 = load i64, ptr %rv.lv422, align 8
  %logand441 = and i64 %rv.rv423, 48
  %eq446.not = icmp eq i64 %logand441, 16
  br i1 %eq446.not, label %jf.else451, label %jf.then_L187

jf.else451:                                       ; preds = %lab_L184
  %lg.value453 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  %rv.llvmaddr460 = shl i64 %lg.value453, 3
  %rv.lv461 = inttoptr i64 %rv.llvmaddr460 to ptr
  %rv.rv462 = load i64, ptr %rv.lv461, align 8
  %eq467.not = icmp eq i64 %rv.rv462, -1
  br i1 %eq467.not, label %jf.else472, label %jf.then_L187

jf.else472:                                       ; preds = %jf.else451
  %lg.value474 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %rv.llvmaddr481 = shl i64 %lg.value474, 3
  %rv.lv482 = inttoptr i64 %rv.llvmaddr481 to ptr
  %rv.rv483 = load i64, ptr %rv.lv482, align 8
  %eq488.not = icmp eq i64 %rv.rv483, -1
  br i1 %eq488.not, label %jf.else493, label %jf.then_L187

jf.else493:                                       ; preds = %jf.else472
  br i1 %gr, label %jt.then_L143.i, label %lab_L141.preheader.i

lab_L141.preheader.i:                             ; preds = %jf.else493
  %getbyte.llvmaddr.i = shl i64 %0, 3
  %getbyte.string.i = inttoptr i64 %getbyte.llvmaddr.i to ptr
  br label %lab_L141.i

lab_L141.i:                                       ; preds = %jf.else.i, %lab_L141.preheader.i
  %STK4.0.i = phi i64 [ %add.i1881, %jf.else.i ], [ 1, %lab_L141.preheader.i ]
  %STK2.0.i1880 = phi i64 [ %spec.select.i, %jf.else.i ], [ %STK397.0, %lab_L141.preheader.i ]
  %if_cond13.i = icmp eq i64 %STK2.0.i1880, 0
  br i1 %if_cond13.i, label %jt.then_L143.i, label %jf.else.i

jf.else.i:                                        ; preds = %lab_L141.i
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string.i, i64 %STK4.0.i
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %eq.not.i = icmp eq i8 %getbyte.char.i, 44
  %sub.i = sext i1 %eq.not.i to i64
  %spec.select.i = add i64 %STK2.0.i1880, %sub.i
  %add.i1881 = add i64 %STK4.0.i, 1
  %gr46.not.i = icmp sgt i64 %add.i1881, %1
  br i1 %gr46.not.i, label %jt.then_L143.i, label %lab_L141.i

jt.then_L143.i:                                   ; preds = %jf.else.i, %lab_L141.i, %jf.else493
  %STK4.1.i = phi i64 [ 1, %jf.else493 ], [ %STK4.0.i, %lab_L141.i ], [ %add.i1881, %jf.else.i ]
  %le.not.i1882 = icmp sgt i64 %STK4.1.i, %1
  br i1 %le.not.i1882, label %getkeylen.exit, label %lab_L145.preheader.i

lab_L145.preheader.i:                             ; preds = %jt.then_L143.i
  %getbyte.llvmaddr69.i = shl i64 %0, 3
  %getbyte.string70.i = inttoptr i64 %getbyte.llvmaddr69.i to ptr
  br label %lab_L145.i

lab_L145.i:                                       ; preds = %jt.then_L148.i, %lab_L145.preheader.i
  %STK5.0.i = phi i64 [ %STK5.1.i, %jt.then_L148.i ], [ 0, %lab_L145.preheader.i ]
  %STK4.2.i = phi i64 [ %add148.i, %jt.then_L148.i ], [ %STK4.1.i, %lab_L145.preheader.i ]
  %getbyte.charptr71.i = getelementptr i8, ptr %getbyte.string70.i, i64 %STK4.2.i
  %getbyte.char72.i = load i8, ptr %getbyte.charptr71.i, align 1
  switch i8 %getbyte.char72.i, label %jt.else118.i [
    i8 47, label %jf.then_L147.loopexit.split.loop.exit204.i
    i8 61, label %jf.then_L147.loopexit.split.loop.exit204.i
    i8 44, label %jf.then_L147.loopexit.split.loop.exit204.i
    i8 10, label %jt.then_L148.i
  ]

jt.else118.i:                                     ; preds = %lab_L145.i
  %add124.i = add i64 %STK5.0.i, 1
  %putbyte.charptr.i = getelementptr i8, ptr %stack.vec, i64 %add124.i
  store i8 %getbyte.char72.i, ptr %putbyte.charptr.i, align 1
  br label %jt.then_L148.i

jt.then_L148.i:                                   ; preds = %jt.else118.i, %lab_L145.i
  %STK5.1.i = phi i64 [ %add124.i, %jt.else118.i ], [ %STK5.0.i, %lab_L145.i ]
  %add148.i = add i64 %STK4.2.i, 1
  %le157.not.i = icmp sgt i64 %add148.i, %1
  br i1 %le157.not.i, label %jf.then_L147.loopexit.split.loop.exit.i, label %lab_L145.i

jf.then_L147.loopexit.split.loop.exit.i:          ; preds = %jt.then_L148.i
  %extract.t203.le.i = trunc i64 %STK5.1.i to i8
  br label %getkeylen.exit

jf.then_L147.loopexit.split.loop.exit204.i:       ; preds = %lab_L145.i, %lab_L145.i, %lab_L145.i
  %extract.t.le.i = trunc i64 %STK5.0.i to i8
  br label %getkeylen.exit

getkeylen.exit:                                   ; preds = %jt.then_L143.i, %jf.then_L147.loopexit.split.loop.exit.i, %jf.then_L147.loopexit.split.loop.exit204.i
  %STK5.2.off0.i = phi i8 [ %extract.t203.le.i, %jf.then_L147.loopexit.split.loop.exit.i ], [ %extract.t.le.i, %jf.then_L147.loopexit.split.loop.exit204.i ], [ 0, %jt.then_L143.i ]
  store i8 %STK5.2.off0.i, ptr %stack.vec, align 8
  %lg.value512 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn515 = inttoptr i64 %lg.value512 to ptr
  %rtap517 = call i64 %rtap_ep_p_fn515(i64 %stack.bcpladdr)
  %rv.rv529 = load i64, ptr %rv.lv422, align 8
  %logand534 = and i64 %rv.rv529, 4
  %eq539 = icmp eq i64 %logand534, 0
  br i1 %eq539, label %jt.then_L189, label %jt.else544

jt.else544:                                       ; preds = %getkeylen.exit
  %lstr.bcpladdr545 = ashr exact i64 ptrtoint (ptr @lstr.global.22 to i64), 3
  %lg.value547 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn550 = inttoptr i64 %lg.value547 to ptr
  %rtap552 = call i64 %rtap_ep_p_fn550(i64 %lstr.bcpladdr545)
  br label %jt.then_L189

jt.then_L189:                                     ; preds = %jt.else544, %getkeylen.exit
  %lstr.bcpladdr553 = ashr exact i64 ptrtoint (ptr @lstr.global.23 to i64), 3
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
    i64 4, label %jf.then_L187
    i64 3, label %jf.then_L187
    i64 2, label %lab_L199
    i64 1, label %lab_L193
    i64 0, label %jf.then_L187
  ]

lab_L193:                                         ; preds = %jt.then_L189
  %logand590.mask = and i64 %rv.rv423, 4
  %if_cond598 = icmp eq i64 %logand590.mask, 0
  br i1 %if_cond598, label %jf.then_L194, label %jf.else599

jf.else599:                                       ; preds = %lab_L193
  %add607 = add i64 %STK397.0, %2
  %stind.llvmaddr611 = shl i64 %add607, 3
  %stind.lv612 = inttoptr i64 %stind.llvmaddr611 to ptr
  store i64 0, ptr %stind.lv612, align 8
  %lstr.bcpladdr615 = ashr exact i64 ptrtoint (ptr @lstr.global.24 to i64), 3
  %fnap623 = call i64 @compstring(i64 %STK4.1, i64 %lstr.bcpladdr615)
  %eq628 = icmp eq i64 %fnap623, 0
  br i1 %eq628, label %jt.then_L196, label %jt.else633

jt.else633:                                       ; preds = %jf.else599
  %lstr.bcpladdr636 = ashr exact i64 ptrtoint (ptr @lstr.global.25 to i64), 3
  %fnap644 = call i64 @compstring(i64 %STK4.1, i64 %lstr.bcpladdr636)
  %eq649.not = icmp eq i64 %fnap644, 0
  br i1 %eq649.not, label %jt.then_L196, label %jf.then_L195

jt.then_L196:                                     ; preds = %jt.else633, %jf.else599
  store i64 -1, ptr %stind.lv612, align 8
  br label %jf.then_L195

jf.then_L195:                                     ; preds = %jt.then_L196, %jt.else633
  %rv.rv679 = load i64, ptr %rv.lv422, align 8
  %logor684 = or i64 %rv.rv679, 32
  store i64 %logor684, ptr %rv.lv422, align 8
  br label %goto.phi.bb

jf.then_L194:                                     ; preds = %lab_L193
  %logand707.mask = and i64 %rv.rv423, 8
  %if_cond716 = icmp eq i64 %logand707.mask, 0
  br i1 %if_cond716, label %lab_L199, label %jf.else717

jf.else717:                                       ; preds = %jf.then_L194
  %add726 = add i64 %STK397.0, %2
  %stind.llvmaddr730 = shl i64 %add726, 3
  %stind.lv731 = inttoptr i64 %stind.llvmaddr730 to ptr
  store i64 %STK4.1, ptr %stind.lv731, align 8
  %fnap739 = call i64 @string_to_number(i64 %STK4.1)
  %if_cond742.not = icmp eq i64 %fnap739, 0
  br i1 %if_cond742.not, label %goto.phi.bb, label %jt.then_L198

jt.then_L198:                                     ; preds = %jf.else717
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

lab_L199:                                         ; preds = %jf.then_L194, %jt.then_L189
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
  br label %lf_L188

lf_L188:                                          ; preds = %goto.phi.bb, %lab_L199
  %STK399.1 = phi i64 [ %STK399.4, %goto.phi.bb ], [ %STK399.0, %lab_L199 ]
  %STK397.1 = phi i64 [ %STK397.4, %goto.phi.bb ], [ %STK397.0, %lab_L199 ]
  %STK367.1 = phi i64 [ %STK367.4, %goto.phi.bb ], [ %sub903, %lab_L199 ]
  %STK5.4 = phi i64 [ %STK5.7, %goto.phi.bb ], [ %STK5.3, %lab_L199 ]
  %STK4.2 = phi i64 [ %STK4.5, %goto.phi.bb ], [ %add888, %lab_L199 ]
  %lg.value906 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn909 = inttoptr i64 %lg.value906 to ptr
  %rtap910 = call i64 %rtap_ep_p_fn909()
  br label %lab_L200

lab_L200:                                         ; preds = %lab_L200, %lf_L188
  %lg.value911 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn914 = inttoptr i64 %lg.value911 to ptr
  %fnap915 = call i64 %rtap_ep_p_fn914()
  switch i64 %fnap915, label %lab_L200 [
    i64 10, label %jf.then_L187.loopexit
    i64 59, label %jf.then_L187.loopexit
    i64 -1, label %jf.then_L187.loopexit
  ]

jf.then_L187.loopexit:                            ; preds = %lab_L200, %lab_L200, %lab_L200
  br label %jf.then_L187

jf.then_L187:                                     ; preds = %jf.then_L187.loopexit, %jt.then_L189, %jt.then_L189, %jt.then_L189, %jf.else472, %jf.else451, %lab_L184
  %STK399.2 = phi i64 [ %STK399.0, %lab_L184 ], [ %STK399.0, %jf.else451 ], [ %STK399.0, %jf.else472 ], [ %STK399.0, %jt.then_L189 ], [ %STK399.0, %jt.then_L189 ], [ %STK399.0, %jt.then_L189 ], [ %STK399.1, %jf.then_L187.loopexit ]
  %STK397.2 = phi i64 [ %STK397.0, %lab_L184 ], [ %STK397.0, %jf.else451 ], [ %STK397.0, %jf.else472 ], [ %STK397.0, %jt.then_L189 ], [ %STK397.0, %jt.then_L189 ], [ %STK397.0, %jt.then_L189 ], [ %STK397.1, %jf.then_L187.loopexit ]
  %STK367.2 = phi i64 [ %STK367.0, %lab_L184 ], [ %STK367.0, %jf.else451 ], [ %STK367.0, %jf.else472 ], [ %STK367.0, %jt.then_L189 ], [ %STK367.0, %jt.then_L189 ], [ %STK367.0, %jt.then_L189 ], [ %STK367.1, %jf.then_L187.loopexit ]
  %STK5.5 = phi i64 [ %STK5.3, %lab_L184 ], [ %STK5.3, %jf.else451 ], [ %STK5.3, %jf.else472 ], [ %STK5.3, %jt.then_L189 ], [ %STK5.3, %jt.then_L189 ], [ %STK5.3, %jt.then_L189 ], [ %STK5.4, %jf.then_L187.loopexit ]
  %STK4.3 = phi i64 [ %STK4.1, %lab_L184 ], [ %STK4.1, %jf.else451 ], [ %STK4.1, %jf.else472 ], [ %STK4.1, %jt.then_L189 ], [ %STK4.1, %jt.then_L189 ], [ %STK4.1, %jt.then_L189 ], [ %STK4.2, %jf.then_L187.loopexit ]
  %add962 = add i64 %STK397.2, 1
  %le971.not = icmp sgt i64 %add962, %STK399.2
  br i1 %le971.not, label %jt.then_L185, label %lab_L184

jt.then_L185:                                     ; preds = %jf.then_L187
  %gr986 = icmp slt i64 %STK5.5, 0
  br i1 %gr986, label %jt.then_L206, label %lab_L205

lab_L205:                                         ; preds = %jt.then_L185, %lab_L208
  %STK977.0 = phi i64 [ %add1028, %lab_L208 ], [ 0, %jt.then_L185 ]
  %add998 = add i64 %STK977.0, %stack.bcpladdr10
  %rv.llvmaddr1001 = shl i64 %add998, 3
  %rv.lv1002 = inttoptr i64 %rv.llvmaddr1001 to ptr
  %rv.rv1003 = load i64, ptr %rv.lv1002, align 8
  %logand1008 = and i64 %rv.rv1003, 33
  %eq1013.not = icmp eq i64 %logand1008, 1
  br i1 %eq1013.not, label %goto.phi.bb, label %lab_L208

lab_L208:                                         ; preds = %lab_L205
  %add1028 = add i64 %STK977.0, 1
  %le1037.not = icmp sgt i64 %add1028, %STK5.5
  br i1 %le1037.not, label %jt.then_L206, label %lab_L205

jt.then_L206:                                     ; preds = %lab_L208, %lab_L183, %jt.then_L185
  %STK4.41914 = phi i64 [ %STK4.3, %jt.then_L185 ], [ %STK4.0.ph, %lab_L183 ], [ %STK4.3, %lab_L208 ]
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

lab_L210:                                         ; preds = %clear_words.exit1878
  br i1 %gr, label %jf.else191.i, label %lab_L268.i

lab_L268.i:                                       ; preds = %lab_L210, %jf.then_L272.i
  %STK6.0.i = phi i64 [ %add167.i, %jf.then_L272.i ], [ 1, %lab_L210 ]
  %STK5.0.i1886 = phi i64 [ %STK5.1.i1893, %jf.then_L272.i ], [ 0, %lab_L210 ]
  %STK4.0.i1887 = phi i64 [ %STK4.2.i1892, %jf.then_L272.i ], [ 0, %lab_L210 ]
  %STK3.0.i = phi i64 [ %STK3.2.i, %jf.then_L272.i ], [ 0, %lab_L210 ]
  %getbyte.charptr.i1888 = getelementptr i8, ptr %getbyte.string.i1885, i64 %STK6.0.i
  %getbyte.char.i1889 = load i8, ptr %getbyte.charptr.i1888, align 1
  %getbyte.charword.i = zext i8 %getbyte.char.i1889 to i64
  %eq.not.i1890 = icmp eq i64 %STK3.0.i, 0
  br i1 %eq.not.i1890, label %jf.else.i1895, label %jf.then_L272.i

jf.else.i1895:                                    ; preds = %lab_L268.i
  switch i8 %getbyte.char.i1889, label %jf.then_L273.i [
    i8 61, label %jt.then_L274.i
    i8 47, label %jt.then_L274.i
    i8 44, label %jt.then_L274.i
  ]

jt.then_L274.i:                                   ; preds = %jf.else.i1895, %jf.else.i1895, %jf.else.i1895
  %getbyte.char68.i = load i8, ptr %getbyte.string66.i, align 8
  %getbyte.charword69.i = zext i8 %getbyte.char68.i to i64
  %eq75.not.i = icmp eq i64 %STK4.0.i1887, %getbyte.charword69.i
  br i1 %eq75.not.i, label %findarglen.exit, label %jf.then_L273.i

jf.then_L273.i:                                   ; preds = %jt.then_L274.i, %jf.else.i1895
  %add.i1896 = add i64 %STK4.0.i1887, 1
  %getbyte.charptr99.i = getelementptr i8, ptr %getbyte.string66.i, i64 %add.i1896
  %getbyte.char100.i = load i8, ptr %getbyte.charptr99.i, align 1
  %getbyte.charword101.i = zext i8 %getbyte.char100.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = call i64 %rtap_ep_p_fn.i(i64 %getbyte.charword.i, i64 %getbyte.charword101.i)
  %eq109.i = icmp ne i64 %fnap.i, 0
  %spec.select.i1897 = zext i1 %eq109.i to i64
  br label %jf.then_L272.i

jf.then_L272.i:                                   ; preds = %jf.then_L273.i, %lab_L268.i
  %STK4.1.i1891 = phi i64 [ %STK4.0.i1887, %lab_L268.i ], [ %add.i1896, %jf.then_L273.i ]
  %STK3.1.i = phi i64 [ %STK3.0.i, %lab_L268.i ], [ %spec.select.i1897, %jf.then_L273.i ]
  %eq122.not.i = icmp eq i8 %getbyte.char.i1889, 44
  %eq133.not.i = icmp eq i8 %getbyte.char.i1889, 61
  %or.cond.i = or i1 %eq122.not.i, %eq133.not.i
  %STK4.2.i1892 = select i1 %or.cond.i, i64 0, i64 %STK4.1.i1891
  %STK3.2.i = select i1 %or.cond.i, i64 0, i64 %STK3.1.i
  %add159.i = zext i1 %eq122.not.i to i64
  %STK5.1.i1893 = add i64 %STK5.0.i1886, %add159.i
  %add167.i = add i64 %STK6.0.i, 1
  %le.not.i1894 = icmp sgt i64 %add167.i, %1
  br i1 %le.not.i1894, label %jt.then_L269.i, label %lab_L268.i

jt.then_L269.i:                                   ; preds = %jf.then_L272.i
  %eq186.not.i = icmp eq i64 %STK3.2.i, 0
  br i1 %eq186.not.i, label %jf.else191.i, label %jf.then_L211

jf.else191.i:                                     ; preds = %lab_L210, %jt.then_L269.i
  %STK4.3244.i = phi i64 [ %STK4.2.i1892, %jt.then_L269.i ], [ 0, %lab_L210 ]
  %STK5.2243.i = phi i64 [ %STK5.1.i1893, %jt.then_L269.i ], [ 0, %lab_L210 ]
  %getbyte.char200.i = load i8, ptr %getbyte.string66.i, align 8
  %getbyte.charword201.i = zext i8 %getbyte.char200.i to i64
  %eq207.not.i = icmp eq i64 %STK4.3244.i, %getbyte.charword201.i
  br i1 %eq207.not.i, label %findarglen.exit, label %jf.then_L211

findarglen.exit:                                  ; preds = %jt.then_L274.i, %jf.else191.i
  %common.ret.op.i = phi i64 [ %STK5.2243.i, %jf.else191.i ], [ %STK5.0.i1886, %jt.then_L274.i ]
  %ge = icmp slt i64 %common.ret.op.i, 0
  br i1 %ge, label %jf.then_L211, label %jf.else1072

jf.else1072:                                      ; preds = %findarglen.exit
  %add1079 = add i64 %common.ret.op.i, %stack.bcpladdr10
  %rv.llvmaddr1082 = shl i64 %add1079, 3
  %rv.lv1083 = inttoptr i64 %rv.llvmaddr1082 to ptr
  %rv.rv1084 = load i64, ptr %rv.lv1083, align 8
  %logand1089.mask = and i64 %rv.rv1084, 32
  %if_cond1098 = icmp eq i64 %logand1089.mask, 0
  br i1 %if_cond1098, label %jf.then_L213, label %goto.phi.bb.loopexit2007

jf.then_L213:                                     ; preds = %jf.else1072
  %logand1120.mask = and i64 %rv.rv1084, 4
  %if_cond1129 = icmp eq i64 %logand1120.mask, 0
  br i1 %if_cond1129, label %jf.then_L214, label %jf.else1130

jf.else1130:                                      ; preds = %jf.then_L213
  %add1138 = add i64 %common.ret.op.i, %2
  %stind.llvmaddr1142 = shl i64 %add1138, 3
  %stind.lv1143 = inttoptr i64 %stind.llvmaddr1142 to ptr
  store i64 -1, ptr %stind.lv1143, align 8
  %rv.rv1155 = load i64, ptr %rv.lv1083, align 8
  %logor1160 = or i64 %rv.rv1155, 32
  store i64 %logor1160, ptr %rv.lv1083, align 8
  br label %lab_L178.backedge

lab_L178.backedge:                                ; preds = %jf.else1130, %jt.then_L220
  br label %lab_L178

jf.then_L214:                                     ; preds = %jf.then_L213
  %lg.value1178 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn1181 = inttoptr i64 %lg.value1178 to ptr
  %fnap1184 = call i64 %rtap_ep_p_fn1181(i64 %STK4.0.ph, i64 %sub366)
  %eq1191.not = icmp eq i64 %fnap1184, 5
  br i1 %eq1191.not, label %jf.else1196, label %jf.then_L215

jf.else1196:                                      ; preds = %jf.then_L214
  %lg.value1201 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn1204 = inttoptr i64 %lg.value1201 to ptr
  %fnap1207 = call i64 %rtap_ep_p_fn1204(i64 %STK4.0.ph, i64 %sub366)
  br label %jf.then_L215

jf.then_L215:                                     ; preds = %jf.else1196, %jf.then_L214
  %STK1185.0 = phi i64 [ %fnap1184, %jf.then_L214 ], [ %fnap1207, %jf.else1196 ]
  %STK1185.0.off = add i64 %STK1185.0, -1
  %switch = icmp ult i64 %STK1185.0.off, 2
  br i1 %switch, label %jt.then_L230, label %goto.phi.bb.loopexit2008

jf.then_L211:                                     ; preds = %jf.else191.i, %jt.then_L269.i, %findarglen.exit
  %common.ret.op.i1917 = phi i64 [ %common.ret.op.i, %findarglen.exit ], [ -1, %jt.then_L269.i ], [ -1, %jf.else191.i ]
  %lg.value1237 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn1240 = inttoptr i64 %lg.value1237 to ptr
  %fnap1241 = call i64 %rtap_ep_p_fn1240()
  %eq1246.not = icmp eq i64 %fnap1241, 10
  br i1 %eq1246.not, label %jf.else1251, label %jf.then_L217

jf.else1251:                                      ; preds = %jf.then_L211
  %getbyte.char13.i = load i8, ptr %getbyte.string66.i, align 8
  %cond = icmp eq i8 %getbyte.char13.i, 0
  br i1 %cond, label %jf.then_L217, label %lab_L134.i

lab_L134.i:                                       ; preds = %jf.else1251
  %getbyte.char70.i = load i8, ptr %getbyte.charptr69.i, align 1
  %getbyte.charword71.i = zext i8 %getbyte.char70.i to i64
  %lg.value.i1902 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i1903 = inttoptr i64 %lg.value.i1902 to ptr
  %fnap.i1904 = call i64 %rtap_ep_p_fn.i1903(i64 63, i64 %getbyte.charword71.i)
  %if_cond79.i = icmp eq i64 %fnap.i1904, 0
  %eq.not.i1907 = icmp eq i8 %getbyte.char13.i, 1
  %or.cond = and i1 %if_cond79.i, %eq.not.i1907
  br i1 %or.cond, label %jf.else1272, label %jf.then_L217

jf.else1272:                                      ; preds = %lab_L134.i
  br i1 %gr, label %jt.then_L220, label %lab_L219

lab_L219:                                         ; preds = %jf.else1272, %lab_L219
  %STK1273.0 = phi i64 [ %add1311, %lab_L219 ], [ 1, %jf.else1272 ]
  %getbyte.charptr1296 = getelementptr i8, ptr %getbyte.string.i1885, i64 %STK1273.0
  %getbyte.char1297 = load i8, ptr %getbyte.charptr1296, align 1
  %getbyte.charword1298 = zext i8 %getbyte.char1297 to i64
  %lg.value1300 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn1303 = inttoptr i64 %lg.value1300 to ptr
  %rtap1305 = call i64 %rtap_ep_p_fn1303(i64 %getbyte.charword1298)
  %add1311 = add i64 %STK1273.0, 1
  %le1320.not = icmp sgt i64 %add1311, %1
  br i1 %le1320.not, label %jt.then_L220, label %lab_L219

jt.then_L220:                                     ; preds = %lab_L219, %jf.else1272
  %lg.value1328 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn1331 = inttoptr i64 %lg.value1328 to ptr
  %rtap1333 = call i64 %rtap_ep_p_fn1331(i64 %lstr.bcpladdr1326)
  %lg.value1334 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %lg.value1336 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 344), align 4
  %rtap_ep_p_fn1339 = inttoptr i64 %lg.value1336 to ptr
  %rtap1341 = call i64 %rtap_ep_p_fn1339(i64 %lg.value1334)
  br label %lab_L178.backedge

jf.then_L217:                                     ; preds = %jf.else1251, %jf.then_L211, %lab_L134.i
  %lg.value1342 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn1345 = inttoptr i64 %lg.value1342 to ptr
  %rtap1346 = call i64 %rtap_ep_p_fn1345()
  br label %lab_L223

lab_L223:                                         ; preds = %clear_words.exit1878, %jf.then_L217
  %STK354.0 = phi i64 [ %common.ret.op.i1917, %jf.then_L217 ], [ -1, %clear_words.exit1878 ]
  %if_cond1355 = icmp sgt i64 %STK354.0, -1
  %brmerge = or i1 %gr2841974, %if_cond1355
  br i1 %brmerge, label %jf.then_L224, label %lab_L225

lab_L225:                                         ; preds = %lab_L223, %lab_L228
  %STK1357.0 = phi i64 [ %add1407, %lab_L228 ], [ 0, %lab_L223 ]
  %add1378 = add i64 %STK1357.0, %stack.bcpladdr10
  %rv.llvmaddr1381 = shl i64 %add1378, 3
  %rv.lv1382 = inttoptr i64 %rv.llvmaddr1381 to ptr
  %rv.rv1383 = load i64, ptr %rv.lv1382, align 8
  %logand1388 = and i64 %rv.rv1383, 38
  %eq1393.not = icmp eq i64 %logand1388, 0
  br i1 %eq1393.not, label %jf.then_L224, label %lab_L228

lab_L228:                                         ; preds = %lab_L225
  %add1407 = add i64 %STK1357.0, 1
  %le1416.not = icmp sgt i64 %add1407, %STK5.21971
  br i1 %le1416.not, label %jf.then_L224, label %lab_L225

jf.then_L224:                                     ; preds = %lab_L225, %lab_L228, %lab_L223
  %STK354.1 = phi i64 [ %STK354.0, %lab_L223 ], [ %STK1357.0, %lab_L225 ], [ %STK354.0, %lab_L228 ]
  %ge1427 = icmp sgt i64 %STK354.1, -1
  br i1 %ge1427, label %jf.then_L224.jt.then_L230_crit_edge, label %goto.phi.bb.loopexit2008

jf.then_L224.jt.then_L230_crit_edge:              ; preds = %jf.then_L224
  %.pre = add i64 %STK354.1, %stack.bcpladdr10
  %.pre1966 = shl i64 %.pre, 3
  %.pre1967 = inttoptr i64 %.pre1966 to ptr
  br label %jt.then_L230

jt.then_L230:                                     ; preds = %jf.then_L224.jt.then_L230_crit_edge, %jf.then_L215
  %rv.lv1447.pre-phi = phi ptr [ %.pre1967, %jf.then_L224.jt.then_L230_crit_edge ], [ %rv.lv1083, %jf.then_L215 ]
  %STK354.11925 = phi i64 [ %STK354.1, %jf.then_L224.jt.then_L230_crit_edge ], [ %common.ret.op.i, %jf.then_L215 ]
  %rv.rv1448 = load i64, ptr %rv.lv1447.pre-phi, align 4
  %logand1453.mask = and i64 %rv.rv1448, 32
  %if_cond1462 = icmp eq i64 %logand1453.mask, 0
  br i1 %if_cond1462, label %jf.then_L231, label %goto.phi.bb.loopexit2008

jf.then_L231:                                     ; preds = %jt.then_L230
  %logand1484.mask = and i64 %rv.rv1448, 8
  %if_cond1493 = icmp eq i64 %logand1484.mask, 0
  br i1 %if_cond1493, label %jf.then_L232, label %jf.else1494

jf.else1494:                                      ; preds = %jf.then_L231
  %fnap1502 = call i64 @string_to_number(i64 %STK4.0.ph)
  %if_cond1505.not = icmp eq i64 %fnap1502, 0
  br i1 %if_cond1505.not, label %goto.phi.bb.loopexit2008, label %jt.then_L233

jt.then_L233:                                     ; preds = %jf.else1494
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
  br label %lab_L178.outer.backedge

jf.then_L232:                                     ; preds = %jf.then_L231
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
  br label %lab_L178.outer.backedge

lab_L178.outer.backedge:                          ; preds = %jf.then_L232, %jt.then_L233
  %STK4.0.ph.be = phi i64 [ %add1568, %jt.then_L233 ], [ %add1640, %jf.then_L232 ]
  br label %lab_L178.outer

lf_L157:                                          ; preds = %goto.phi.bb
  %lg.value1647 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn1650 = inttoptr i64 %lg.value1647 to ptr
  %rtap1651 = call i64 %rtap_ep_p_fn1650()
  br label %lab_L234

lab_L234:                                         ; preds = %lab_L234, %lf_L157
  %lg.value1652 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn1655 = inttoptr i64 %lg.value1652 to ptr
  %fnap1656 = call i64 %rtap_ep_p_fn1655()
  switch i64 %fnap1656, label %lab_L234 [
    i64 10, label %lab_L235
    i64 59, label %lab_L235
    i64 -1, label %lab_L235
  ]

lab_L235:                                         ; preds = %lab_L234, %lab_L234, %lab_L234
  store i64 120, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

goto.phi.bb.loopexit2007:                         ; preds = %clear_words.exit1878, %jf.else1072
  br label %goto.phi.bb

goto.phi.bb.loopexit2008:                         ; preds = %jf.then_L224, %jt.then_L230, %jf.else1494, %jf.then_L215
  br label %goto.phi.bb

goto.phi.bb:                                      ; preds = %jf.else, %lab_L173, %lab_L205, %goto.phi.bb.loopexit2008, %goto.phi.bb.loopexit2007, %jt.then_L189, %jf.else717, %jt.then_L198, %jf.then_L195
  %STK399.4 = phi i64 [ %STK399.0, %jt.then_L198 ], [ %STK399.0, %jf.then_L195 ], [ %STK399.0, %jf.else717 ], [ %STK399.0, %jt.then_L189 ], [ undef, %goto.phi.bb.loopexit2007 ], [ undef, %goto.phi.bb.loopexit2008 ], [ %STK399.2, %lab_L205 ], [ undef, %lab_L173 ], [ undef, %jf.else ]
  %STK397.4 = phi i64 [ %STK397.0, %jt.then_L198 ], [ %STK397.0, %jf.then_L195 ], [ %STK397.0, %jf.else717 ], [ %STK397.0, %jt.then_L189 ], [ undef, %goto.phi.bb.loopexit2007 ], [ undef, %goto.phi.bb.loopexit2008 ], [ %add962, %lab_L205 ], [ undef, %lab_L173 ], [ undef, %jf.else ]
  %STK367.4 = phi i64 [ %sub813, %jt.then_L198 ], [ %STK367.0, %jf.then_L195 ], [ %STK367.0, %jf.else717 ], [ %STK367.0, %jt.then_L189 ], [ %sub366, %goto.phi.bb.loopexit2007 ], [ %sub366, %goto.phi.bb.loopexit2008 ], [ %STK367.2, %lab_L205 ], [ undef, %lab_L173 ], [ undef, %jf.else ]
  %STK5.7 = phi i64 [ %STK5.3, %jt.then_L198 ], [ %STK5.3, %jf.then_L195 ], [ %STK5.3, %jf.else717 ], [ %STK5.3, %jt.then_L189 ], [ %STK5.21971, %goto.phi.bb.loopexit2007 ], [ %STK5.21971, %goto.phi.bb.loopexit2008 ], [ %STK5.5, %lab_L205 ], [ %STK5.21970, %lab_L173 ], [ %STK5.0, %jf.else ]
  %STK4.5 = phi i64 [ %add805, %jt.then_L198 ], [ %STK4.1, %jf.then_L195 ], [ %STK4.1, %jf.else717 ], [ %STK4.1, %jt.then_L189 ], [ %STK4.0.ph, %goto.phi.bb.loopexit2007 ], [ %STK4.0.ph, %goto.phi.bb.loopexit2008 ], [ %STK4.3, %lab_L205 ], [ 0, %lab_L173 ], [ 0, %jf.else ]
  %goto.phi = phi ptr [ blockaddress(@rdargslen, %lf_L188), %jt.then_L198 ], [ blockaddress(@rdargslen, %lf_L188), %jf.then_L195 ], [ blockaddress(@rdargslen, %lf_L157), %jf.else717 ], [ blockaddress(@rdargslen, %lf_L157), %jt.then_L189 ], [ blockaddress(@rdargslen, %lf_L157), %goto.phi.bb.loopexit2007 ], [ blockaddress(@rdargslen, %lf_L157), %goto.phi.bb.loopexit2008 ], [ blockaddress(@rdargslen, %lf_L157), %lab_L205 ], [ blockaddress(@rdargslen, %lf_L157), %lab_L173 ], [ blockaddress(@rdargslen, %lf_L157), %jf.else ]
  indirectbr ptr %goto.phi, [label %lf_L188, label %lf_L157]
}

define range(i64 -1, 6) i64 @rditem(i64 %0, i64 %1) section ".text.BLIB" {
entry:
  %add = shl i64 %1, 3
  %sub = or disjoint i64 %add, 7
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %gr = icmp slt i64 %1, 0
  br i1 %gr, label %jt.then_L239, label %lab_L238

lab_L238:                                         ; preds = %entry, %lab_L238
  %STK17.0 = phi i64 [ %add41, %lab_L238 ], [ 0, %entry ]
  %add34 = add i64 %STK17.0, %0
  %stind.llvmaddr = shl i64 %add34, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 0, ptr %stind.lv, align 8
  %add41 = add i64 %STK17.0, 1
  %le.not = icmp sgt i64 %add41, %1
  br i1 %le.not, label %jt.then_L239, label %lab_L238

jt.then_L239:                                     ; preds = %lab_L238, %entry
  switch i64 %fnap, label %jf.then_L244 [
    i64 32, label %lab_L242.preheader
    i64 9, label %lab_L242.preheader
    i64 13, label %lab_L242.preheader
  ]

lab_L242.preheader:                               ; preds = %jt.then_L239, %jt.then_L239, %jt.then_L239
  br label %lab_L242

lab_L242:                                         ; preds = %lab_L242.backedge, %lab_L242.preheader
  %lg.value85 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn88 = inttoptr i64 %lg.value85 to ptr
  %fnap89 = tail call i64 %rtap_ep_p_fn88()
  switch i64 %fnap89, label %jf.then_L244 [
    i64 32, label %lab_L242.backedge
    i64 9, label %lab_L242.backedge
    i64 13, label %lab_L242.backedge
  ]

lab_L242.backedge:                                ; preds = %lab_L242, %lab_L242, %lab_L242
  br label %lab_L242

jf.then_L244:                                     ; preds = %lab_L242, %jt.then_L239
  %STK15.0 = phi i64 [ %fnap, %jt.then_L239 ], [ %fnap89, %lab_L242 ]
  switch i64 %STK15.0, label %jt.else393 [
    i64 -1, label %common.ret
    i64 10, label %jf.else147
    i64 59, label %jf.else160
    i64 61, label %jf.else173
    i64 34, label %lab_L251.preheader
  ]

lab_L251.preheader:                               ; preds = %jf.then_L244
  %putbyte.llvmaddr = shl i64 %0, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L251.outer

common.ret:                                       ; preds = %jf.then_L255, %lab_L251, %lab_L251, %jt.else524, %lab_L259, %jt.else546, %jf.then_L244, %jf.else239, %jf.else173, %jf.else160, %jf.else147
  %common.ret.op = phi i64 [ 3, %jf.else147 ], [ 4, %jf.else160 ], [ 5, %jf.else173 ], [ 2, %jf.else239 ], [ 0, %jf.then_L244 ], [ 1, %jt.else546 ], [ 1, %jt.else524 ], [ -1, %lab_L259 ], [ -1, %lab_L251 ], [ -1, %lab_L251 ], [ -1, %jf.then_L255 ]
  ret i64 %common.ret.op

jf.else147:                                       ; preds = %jf.then_L244
  br label %common.ret

jf.else160:                                       ; preds = %jf.then_L244
  br label %common.ret

jf.else173:                                       ; preds = %jf.then_L244
  br label %common.ret

lab_L251:                                         ; preds = %lab_L251.outer, %lab_L251
  %lg.value187 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn190 = inttoptr i64 %lg.value187 to ptr
  %fnap191 = tail call i64 %rtap_ep_p_fn190()
  switch i64 %fnap191, label %jf.then_L254 [
    i64 13, label %lab_L251
    i64 10, label %common.ret
    i64 -1, label %common.ret
    i64 34, label %jf.else239
  ]

jf.else239:                                       ; preds = %lab_L251
  br label %common.ret

jf.then_L254:                                     ; preds = %lab_L251
  %eq247.not = icmp eq i64 %fnap191, 42
  %extract.t = trunc i64 %fnap191 to i8
  br i1 %eq247.not, label %jf.else252, label %jf.then_L255

jf.else252:                                       ; preds = %jf.then_L254
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
  br label %jf.then_L255

jf.then_L255:                                     ; preds = %jf.else252, %jf.then_L254
  %STK15.2.off0 = phi i8 [ %extract.t, %jf.then_L254 ], [ %spec.select609, %jf.else252 ]
  %add304 = add i64 %STK2.0.ph, 1
  %gr313.not = icmp sgt i64 %add304, %sub
  br i1 %gr313.not, label %common.ret, label %jf.then_L258

jf.then_L258:                                     ; preds = %jf.then_L255
  %putbyte.char = trunc i64 %add304 to i8
  store i8 %putbyte.char, ptr %putbyte.string, align 8
  %putbyte.charptr338 = getelementptr i8, ptr %putbyte.string, i64 %add304
  store i8 %STK15.2.off0, ptr %putbyte.charptr338, align 1
  br label %lab_L251.outer

lab_L251.outer:                                   ; preds = %lab_L251.preheader, %jf.then_L258
  %STK2.0.ph = phi i64 [ 0, %lab_L251.preheader ], [ %add304, %jf.then_L258 ]
  br label %lab_L251

jt.else393:                                       ; preds = %jf.then_L244
  %extract.t607 = trunc i64 %STK15.0 to i8
  %putbyte.llvmaddr436 = shl i64 %0, 3
  %putbyte.string437 = inttoptr i64 %putbyte.llvmaddr436 to ptr
  br label %lab_L259

lab_L259:                                         ; preds = %jt.else393, %jt.else524
  %STK15.3.off0 = phi i8 [ %extract.t607, %jt.else393 ], [ %extract.t608, %jt.else524 ]
  %STK2.1 = phi i64 [ 0, %jt.else393 ], [ %add410, %jt.else524 ]
  %add410 = add i64 %STK2.1, 1
  %gr419.not = icmp sgt i64 %add410, %sub
  br i1 %gr419.not, label %common.ret, label %jf.then_L262

jf.then_L262:                                     ; preds = %lab_L259
  %putbyte.char435 = trunc i64 %add410 to i8
  store i8 %putbyte.char435, ptr %putbyte.string437, align 8
  %putbyte.charptr451 = getelementptr i8, ptr %putbyte.string437, i64 %add410
  store i8 %STK15.3.off0, ptr %putbyte.charptr451, align 1
  br label %lab_L263

lab_L263:                                         ; preds = %lab_L263, %jf.then_L262
  %lg.value452 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn455 = inttoptr i64 %lg.value452 to ptr
  %fnap456 = tail call i64 %rtap_ep_p_fn455()
  switch i64 %fnap456, label %jt.else524 [
    i64 13, label %lab_L263
    i64 10, label %jt.else546
    i64 32, label %jt.else546
    i64 9, label %jt.else546
    i64 59, label %jt.else546
    i64 61, label %jt.else546
  ]

jt.else524:                                       ; preds = %lab_L263
  %eq530.not = icmp eq i64 %fnap456, -1
  %extract.t608 = trunc i64 %fnap456 to i8
  br i1 %eq530.not, label %common.ret, label %lab_L259

jt.else546:                                       ; preds = %lab_L263, %lab_L263, %lab_L263, %lab_L263, %lab_L263
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
  br i1 %gr.i, label %jf.else191.i, label %lab_L268.i

lab_L268.i:                                       ; preds = %entry, %jf.then_L272.i
  %STK6.0.i = phi i64 [ %add167.i, %jf.then_L272.i ], [ 1, %entry ]
  %STK5.0.i = phi i64 [ %STK5.1.i, %jf.then_L272.i ], [ 0, %entry ]
  %STK4.0.i = phi i64 [ %STK4.2.i, %jf.then_L272.i ], [ 0, %entry ]
  %STK3.0.i = phi i64 [ %STK3.2.i, %jf.then_L272.i ], [ 0, %entry ]
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string, i64 %STK6.0.i
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %getbyte.charword.i = zext i8 %getbyte.char.i to i64
  %eq.not.i = icmp eq i64 %STK3.0.i, 0
  br i1 %eq.not.i, label %jf.else.i, label %jf.then_L272.i

jf.else.i:                                        ; preds = %lab_L268.i
  switch i8 %getbyte.char.i, label %jf.then_L273.i [
    i8 61, label %jt.then_L274.i
    i8 47, label %jt.then_L274.i
    i8 44, label %jt.then_L274.i
  ]

jt.then_L274.i:                                   ; preds = %jf.else.i, %jf.else.i, %jf.else.i
  %getbyte.char68.i = load i8, ptr %.pre247.i, align 8
  %getbyte.charword69.i = zext i8 %getbyte.char68.i to i64
  %eq75.not.i = icmp eq i64 %STK4.0.i, %getbyte.charword69.i
  br i1 %eq75.not.i, label %findarglen.exit, label %jf.then_L273.i

jf.then_L273.i:                                   ; preds = %jt.then_L274.i, %jf.else.i
  %add.i = add i64 %STK4.0.i, 1
  %getbyte.charptr99.i = getelementptr i8, ptr %.pre247.i, i64 %add.i
  %getbyte.char100.i = load i8, ptr %getbyte.charptr99.i, align 1
  %getbyte.charword101.i = zext i8 %getbyte.char100.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 %getbyte.charword.i, i64 %getbyte.charword101.i)
  %eq109.i = icmp ne i64 %fnap.i, 0
  %spec.select.i = zext i1 %eq109.i to i64
  br label %jf.then_L272.i

jf.then_L272.i:                                   ; preds = %jf.then_L273.i, %lab_L268.i
  %STK4.1.i = phi i64 [ %STK4.0.i, %lab_L268.i ], [ %add.i, %jf.then_L273.i ]
  %STK3.1.i = phi i64 [ %STK3.0.i, %lab_L268.i ], [ %spec.select.i, %jf.then_L273.i ]
  %eq122.not.i = icmp eq i8 %getbyte.char.i, 44
  %eq133.not.i = icmp eq i8 %getbyte.char.i, 61
  %or.cond.i = or i1 %eq122.not.i, %eq133.not.i
  %STK4.2.i = select i1 %or.cond.i, i64 0, i64 %STK4.1.i
  %STK3.2.i = select i1 %or.cond.i, i64 0, i64 %STK3.1.i
  %add159.i = zext i1 %eq122.not.i to i64
  %STK5.1.i = add i64 %STK5.0.i, %add159.i
  %add167.i = add nuw nsw i64 %STK6.0.i, 1
  %le.not.i.not = icmp samesign ult i64 %STK6.0.i, %getbyte.charword
  br i1 %le.not.i.not, label %lab_L268.i, label %jt.then_L269.i

jt.then_L269.i:                                   ; preds = %jf.then_L272.i
  %eq186.not.i = icmp eq i64 %STK3.2.i, 0
  br i1 %eq186.not.i, label %jf.else191.i, label %jf.then_L279.i

jf.else191.i:                                     ; preds = %entry, %jt.then_L269.i
  %STK4.3244.i = phi i64 [ %STK4.2.i, %jt.then_L269.i ], [ 0, %entry ]
  %STK5.2243.i = phi i64 [ %STK5.1.i, %jt.then_L269.i ], [ 0, %entry ]
  %getbyte.char200.i = load i8, ptr %.pre247.i, align 8
  %getbyte.charword201.i = zext i8 %getbyte.char200.i to i64
  %eq207.not.i = icmp eq i64 %STK4.3244.i, %getbyte.charword201.i
  br i1 %eq207.not.i, label %findarglen.exit, label %jf.then_L279.i

jf.then_L279.i:                                   ; preds = %jf.else191.i, %jt.then_L269.i
  br label %findarglen.exit

findarglen.exit:                                  ; preds = %jt.then_L274.i, %jf.else191.i, %jf.then_L279.i
  %common.ret.op.i = phi i64 [ -1, %jf.then_L279.i ], [ %STK5.2243.i, %jf.else191.i ], [ %STK5.0.i, %jt.then_L274.i ]
  ret i64 %common.ret.op.i
}

define i64 @findarglen(i64 %0, i64 %1, i64 %2) local_unnamed_addr section ".text.BLIB" {
entry:
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %entry.jf.else191_crit_edge, label %lab_L268.preheader

entry.jf.else191_crit_edge:                       ; preds = %entry
  %.pre = shl i64 %2, 3
  %.pre247 = inttoptr i64 %.pre to ptr
  br label %jf.else191

lab_L268.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.llvmaddr65 = shl i64 %2, 3
  %getbyte.string66 = inttoptr i64 %getbyte.llvmaddr65 to ptr
  br label %lab_L268

lab_L268:                                         ; preds = %lab_L268.preheader, %jf.then_L272
  %STK6.0 = phi i64 [ %add167, %jf.then_L272 ], [ 1, %lab_L268.preheader ]
  %STK5.0 = phi i64 [ %STK5.1, %jf.then_L272 ], [ 0, %lab_L268.preheader ]
  %STK4.0 = phi i64 [ %STK4.2, %jf.then_L272 ], [ 0, %lab_L268.preheader ]
  %STK3.0 = phi i64 [ %STK3.2, %jf.then_L272 ], [ 0, %lab_L268.preheader ]
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK6.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %getbyte.charword = zext i8 %getbyte.char to i64
  %eq.not = icmp eq i64 %STK3.0, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L272

jf.else:                                          ; preds = %lab_L268
  switch i8 %getbyte.char, label %jf.then_L273 [
    i8 61, label %jt.then_L274
    i8 47, label %jt.then_L274
    i8 44, label %jt.then_L274
  ]

jt.then_L274:                                     ; preds = %jf.else, %jf.else, %jf.else
  %getbyte.char68 = load i8, ptr %getbyte.string66, align 8
  %getbyte.charword69 = zext i8 %getbyte.char68 to i64
  %eq75.not = icmp eq i64 %STK4.0, %getbyte.charword69
  br i1 %eq75.not, label %common.ret, label %jf.then_L273

common.ret:                                       ; preds = %jt.then_L274, %jf.else191, %jf.then_L279
  %common.ret.op = phi i64 [ -1, %jf.then_L279 ], [ %STK5.2243, %jf.else191 ], [ %STK5.0, %jt.then_L274 ]
  ret i64 %common.ret.op

jf.then_L273:                                     ; preds = %jf.else, %jt.then_L274
  %add = add i64 %STK4.0, 1
  %getbyte.charptr99 = getelementptr i8, ptr %getbyte.string66, i64 %add
  %getbyte.char100 = load i8, ptr %getbyte.charptr99, align 1
  %getbyte.charword101 = zext i8 %getbyte.char100 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword, i64 %getbyte.charword101)
  %eq109 = icmp ne i64 %fnap, 0
  %spec.select = zext i1 %eq109 to i64
  br label %jf.then_L272

jf.then_L272:                                     ; preds = %jf.then_L273, %lab_L268
  %STK4.1 = phi i64 [ %STK4.0, %lab_L268 ], [ %add, %jf.then_L273 ]
  %STK3.1 = phi i64 [ %STK3.0, %lab_L268 ], [ %spec.select, %jf.then_L273 ]
  %eq122.not = icmp eq i8 %getbyte.char, 44
  %eq133.not = icmp eq i8 %getbyte.char, 61
  %or.cond = or i1 %eq122.not, %eq133.not
  %STK4.2 = select i1 %or.cond, i64 0, i64 %STK4.1
  %STK3.2 = select i1 %or.cond, i64 0, i64 %STK3.1
  %add159 = zext i1 %eq122.not to i64
  %STK5.1 = add i64 %STK5.0, %add159
  %add167 = add i64 %STK6.0, 1
  %le.not = icmp sgt i64 %add167, %1
  br i1 %le.not, label %jt.then_L269, label %lab_L268

jt.then_L269:                                     ; preds = %jf.then_L272
  %eq186.not = icmp eq i64 %STK3.2, 0
  br i1 %eq186.not, label %jf.else191, label %jf.then_L279

jf.else191:                                       ; preds = %entry.jf.else191_crit_edge, %jt.then_L269
  %getbyte.string198.pre-phi = phi ptr [ %.pre247, %entry.jf.else191_crit_edge ], [ %getbyte.string66, %jt.then_L269 ]
  %STK4.3244 = phi i64 [ 0, %entry.jf.else191_crit_edge ], [ %STK4.2, %jt.then_L269 ]
  %STK5.2243 = phi i64 [ 0, %entry.jf.else191_crit_edge ], [ %STK5.1, %jt.then_L269 ]
  %getbyte.char200 = load i8, ptr %getbyte.string198.pre-phi, align 1
  %getbyte.charword201 = zext i8 %getbyte.char200 to i64
  %eq207.not = icmp eq i64 %STK4.3244, %getbyte.charword201
  br i1 %eq207.not, label %common.ret, label %jf.then_L279

jf.then_L279:                                     ; preds = %jf.else191, %jt.then_L269
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
  br i1 %if_cond.not, label %common.ret, label %jt.then_L280

common.ret.sink.split:                            ; preds = %jf.else62, %jf.else472
  %neg.sink = phi i64 [ %neg, %jf.else472 ], [ %getbyte.charword72, %jf.else62 ]
  store i64 %neg.sink, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

common.ret:                                       ; preds = %jump.target_L293, %common.ret.sink.split, %jt.then_L301, %jf.then_L289, %jf.else159, %jt.then_L283, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ -1, %jt.then_L283 ], [ -1, %jf.else159 ], [ -1, %jf.then_L289 ], [ -1, %jt.then_L301 ], [ -1, %common.ret.sink.split ], [ 0, %jump.target_L293 ]
  ret i64 %common.ret.op

jt.then_L280:                                     ; preds = %entry
  %getbyte.charptr20 = getelementptr i8, ptr %getbyte.string, i64 1
  %getbyte.char21 = load i8, ptr %getbyte.charptr20, align 1
  %getbyte.charword22 = zext i8 %getbyte.char21 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword22)
  %eq.not = icmp eq i64 %fnap, 39
  %eq37.not = icmp eq i8 %getbyte.char, 3
  %or.cond = and i1 %eq37.not, %eq.not
  br i1 %or.cond, label %jf.else42, label %jf.then_L281

jf.else42:                                        ; preds = %jt.then_L280
  %getbyte.charptr50 = getelementptr i8, ptr %getbyte.string, i64 3
  %getbyte.char51 = load i8, ptr %getbyte.charptr50, align 1
  %eq57.not = icmp eq i8 %getbyte.char51, 39
  br i1 %eq57.not, label %jf.else62, label %jf.then_L285

jf.else62:                                        ; preds = %jf.else42
  %getbyte.charptr70 = getelementptr i8, ptr %getbyte.string, i64 2
  %getbyte.char71 = load i8, ptr %getbyte.charptr70, align 2
  %getbyte.charword72 = zext i8 %getbyte.char71 to i64
  br label %common.ret.sink.split

jf.then_L281:                                     ; preds = %jt.then_L280
  switch i64 %fnap, label %jf.then_L282 [
    i64 43, label %jt.then_L283
    i64 45, label %jt.then_L283
  ]

jt.then_L283:                                     ; preds = %jf.then_L281, %jf.then_L281
  %eq114.not = icmp eq i8 %getbyte.char, 1
  br i1 %eq114.not, label %common.ret, label %jf.then_L284

jf.then_L284:                                     ; preds = %jt.then_L283
  %eq104 = icmp ne i64 %fnap, 45
  %getbyte.charptr137 = getelementptr i8, ptr %getbyte.string, i64 2
  %getbyte.char138 = load i8, ptr %getbyte.charptr137, align 2
  %getbyte.charword139 = zext i8 %getbyte.char138 to i64
  %lg.value141 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn144 = inttoptr i64 %lg.value141 to ptr
  %fnap146 = tail call i64 %rtap_ep_p_fn144(i64 %getbyte.charword139)
  br label %jf.then_L282

jf.then_L282:                                     ; preds = %jf.then_L281, %jf.then_L284
  %STK7.0 = phi i64 [ %fnap146, %jf.then_L284 ], [ %fnap, %jf.then_L281 ]
  %STK5.0 = phi i1 [ %eq104, %jf.then_L284 ], [ true, %jf.then_L281 ]
  %STK1.0 = phi i64 [ 2, %jf.then_L284 ], [ 1, %jf.then_L281 ]
  %eq154.not = icmp eq i64 %STK7.0, 35
  br i1 %eq154.not, label %jf.else159, label %jf.then_L285

jf.else159:                                       ; preds = %jf.then_L282
  %eq168.not = icmp eq i64 %STK1.0, %getbyte.charword
  br i1 %eq168.not, label %common.ret, label %jf.then_L286

jf.then_L286:                                     ; preds = %jf.else159
  %add181 = add nuw nsw i64 %STK1.0, 1
  %getbyte.charptr192 = getelementptr i8, ptr %getbyte.string, i64 %add181
  %getbyte.char193 = load i8, ptr %getbyte.charptr192, align 1
  %getbyte.charword194 = zext i8 %getbyte.char193 to i64
  %lg.value196 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn199 = inttoptr i64 %lg.value196 to ptr
  %fnap201 = tail call i64 %rtap_ep_p_fn199(i64 %getbyte.charword194)
  switch i64 %fnap201, label %jf.then_L285 [
    i64 88, label %jf.else247
    i64 66, label %jf.then_L289
    i64 79, label %jf.then_L289
  ]

jf.else247:                                       ; preds = %jf.then_L286
  br label %jf.then_L289

jf.then_L289:                                     ; preds = %jf.then_L286, %jf.then_L286, %jf.else247
  %STK6.0 = phi i64 [ 16, %jf.else247 ], [ 8, %jf.then_L286 ], [ 8, %jf.then_L286 ]
  %eq269.not = icmp eq i64 %add181, %getbyte.charword
  br i1 %eq269.not, label %common.ret, label %jf.then_L291

jf.then_L291:                                     ; preds = %jf.then_L289
  %eq255.not = icmp eq i64 %fnap201, 66
  %spec.select = select i1 %eq255.not, i64 2, i64 %STK6.0
  %add282 = add nuw nsw i64 %STK1.0, 2
  %getbyte.charptr293 = getelementptr i8, ptr %getbyte.string, i64 %add282
  %getbyte.char294 = load i8, ptr %getbyte.charptr293, align 1
  %getbyte.charword295 = zext i8 %getbyte.char294 to i64
  %lg.value297 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn300 = inttoptr i64 %lg.value297 to ptr
  %fnap302 = tail call i64 %rtap_ep_p_fn300(i64 %getbyte.charword295)
  br label %jf.then_L285

jf.then_L285:                                     ; preds = %jf.else42, %jf.then_L286, %jf.then_L291, %jf.then_L282
  %STK5.0534 = phi i1 [ %STK5.0, %jf.then_L282 ], [ %STK5.0, %jf.then_L291 ], [ %STK5.0, %jf.then_L286 ], [ true, %jf.else42 ]
  %STK7.1 = phi i64 [ %STK7.0, %jf.then_L282 ], [ %fnap302, %jf.then_L291 ], [ %fnap201, %jf.then_L286 ], [ 39, %jf.else42 ]
  %STK6.2 = phi i64 [ 10, %jf.then_L282 ], [ %spec.select, %jf.then_L291 ], [ 8, %jf.then_L286 ], [ 10, %jf.else42 ]
  %STK1.1 = phi i64 [ %STK1.0, %jf.then_L282 ], [ %add282, %jf.then_L291 ], [ %add181, %jf.then_L286 ], [ 1, %jf.else42 ]
  br label %lab_L292

lab_L292:                                         ; preds = %jt.else446, %jf.then_L285
  %STK7.2 = phi i64 [ %STK7.1, %jf.then_L285 ], [ %fnap464, %jt.else446 ]
  %STK1.2 = phi i64 [ %STK1.1, %jf.then_L285 ], [ %add433, %jt.else446 ]
  %1 = add i64 %STK7.2, -58
  %or.cond528 = icmp ult i64 %1, -10
  br i1 %or.cond528, label %jf.then_L294, label %jf.else325

jf.else325:                                       ; preds = %lab_L292
  %sub = add nsw i64 %STK7.2, -48
  br label %jump.target_L293

jf.then_L294:                                     ; preds = %lab_L292
  %2 = add i64 %STK7.2, -91
  %or.cond529 = icmp ult i64 %2, -26
  %eq373.not = icmp eq i64 %STK7.2, 95
  %. = select i1 %eq373.not, i64 -1, i64 1000
  %add364 = add nsw i64 %STK7.2, -55
  %__res_a.1 = select i1 %or.cond529, i64 %., i64 %add364
  br label %jump.target_L293

jump.target_L293:                                 ; preds = %jf.then_L294, %jf.else325
  %__res_a.2 = phi i64 [ %__res_a.1, %jf.then_L294 ], [ %sub, %jf.else325 ]
  %ls = icmp slt i64 %__res_a.2, %STK6.2
  br i1 %ls, label %jt.then_L299, label %common.ret

jt.then_L299:                                     ; preds = %jump.target_L293
  %ge = icmp slt i64 %__res_a.2, 0
  br i1 %ge, label %jf.then_L300, label %jf.else413

jf.else413:                                       ; preds = %jt.then_L299
  %lg.value416 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %mul = mul i64 %lg.value416, %STK6.2
  %add425 = add i64 %mul, %__res_a.2
  store i64 %add425, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L300

jf.then_L300:                                     ; preds = %jf.else413, %jt.then_L299
  %gr.not = icmp ult i64 %STK1.2, %getbyte.charword
  br i1 %gr.not, label %jt.else446, label %jt.then_L301

jt.else446:                                       ; preds = %jf.then_L300
  %add433 = add nuw nsw i64 %STK1.2, 1
  %getbyte.charptr455 = getelementptr i8, ptr %getbyte.string, i64 %add433
  %getbyte.char456 = load i8, ptr %getbyte.charptr455, align 1
  %getbyte.charword457 = zext i8 %getbyte.char456 to i64
  %lg.value459 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn462 = inttoptr i64 %lg.value459 to ptr
  %fnap464 = tail call i64 %rtap_ep_p_fn462(i64 %getbyte.charword457)
  br label %lab_L292

jt.then_L301:                                     ; preds = %jf.then_L300
  br i1 %STK5.0534, label %common.ret, label %jf.else472

jf.else472:                                       ; preds = %jt.then_L301
  %lg.value473 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %neg = sub i64 0, %lg.value473
  br label %common.ret.sink.split
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @copystring(i64 %0, i64 %1) local_unnamed_addr #2 section ".text.BLIB" {
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
  br i1 %or.cond, label %lab_L303.preheader, label %vector.ph

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
  br i1 %cmp.n, label %jt.then_L304, label %lab_L303.preheader

lab_L303.preheader:                               ; preds = %entry, %middle.block
  %STK2.0.ph = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ]
  br label %lab_L303

lab_L303:                                         ; preds = %lab_L303.preheader, %lab_L303
  %STK2.0 = phi i64 [ %add, %lab_L303 ], [ %STK2.0.ph, %lab_L303.preheader ]
  %getbyte.charptr19 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char20 = load i8, ptr %getbyte.charptr19, align 1
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %STK2.0
  store i8 %getbyte.char20, ptr %putbyte.charptr, align 1
  %add = add nuw nsw i64 %STK2.0, 1
  %le.not.not = icmp samesign ult i64 %STK2.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L303, label %jt.then_L304, !llvm.loop !7

jt.then_L304:                                     ; preds = %lab_L303, %middle.block
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @copy_words(i64 %0, i64 %1, i64 %2) local_unnamed_addr #2 section ".text.BLIB" {
entry:
  %sub = add i64 %2, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L308, label %lab_L307

lab_L307:                                         ; preds = %entry, %lab_L307
  %STK3.0 = phi i64 [ %add35, %lab_L307 ], [ 0, %entry ]
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
  br i1 %le.not, label %jt.then_L308, label %lab_L307

jt.then_L308:                                     ; preds = %lab_L307, %entry
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none)
define noundef i64 @clear_words(i64 %0, i64 %1) local_unnamed_addr #3 section ".text.BLIB" {
entry:
  %sub = add i64 %1, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L312, label %lab_L311

lab_L311:                                         ; preds = %entry, %lab_L311
  %STK2.0 = phi i64 [ %add26, %lab_L311 ], [ 0, %entry ]
  %add = add i64 %STK2.0, %0
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 0, ptr %stind.lv, align 8
  %add26 = add i64 %STK2.0, 1
  %le.not = icmp sgt i64 %add26, %sub
  br i1 %le.not, label %jt.then_L312, label %lab_L311

jt.then_L312:                                     ; preds = %lab_L311, %entry
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @copy_bytes(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 section ".text.BLIB" {
entry:
  %spec.select = tail call i64 @llvm.smin.i64(i64 %0, i64 %3)
  %sub = add i64 %spec.select, -1
  %gr26 = icmp slt i64 %sub, 0
  br i1 %gr26, label %jt.then_L317, label %lab_L316.preheader

lab_L316.preheader:                               ; preds = %entry
  %or.cond = icmp slt i64 %spec.select, 8
  br i1 %or.cond, label %lab_L316.preheader168, label %vector.ph

vector.ph:                                        ; preds = %lab_L316.preheader
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
  br i1 %cmp.n, label %jt.then_L317, label %lab_L316.preheader168

lab_L316.preheader168:                            ; preds = %lab_L316.preheader, %middle.block
  %STK13.0.ph = phi i64 [ 0, %lab_L316.preheader ], [ %n.vec, %middle.block ]
  br label %lab_L316

lab_L316:                                         ; preds = %lab_L316.preheader168, %lab_L316
  %STK13.0 = phi i64 [ %add54, %lab_L316 ], [ %STK13.0.ph, %lab_L316.preheader168 ]
  %9 = getelementptr i8, ptr null, i64 %STK13.0
  %getbyte.charptr = getelementptr i8, ptr %9, i64 %1
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %putbyte.charptr = getelementptr i8, ptr %9, i64 %4
  store i8 %getbyte.char, ptr %putbyte.charptr, align 1
  %add54 = add i64 %STK13.0, 1
  %le.not = icmp sgt i64 %add54, %sub
  br i1 %le.not, label %jt.then_L317, label %lab_L316, !llvm.loop !9

jt.then_L317:                                     ; preds = %lab_L316, %middle.block, %entry
  %sub75 = add i64 %3, -1
  %gr83 = icmp sgt i64 %spec.select, %sub75
  br i1 %gr83, label %jt.then_L321, label %lab_L320.preheader

lab_L320.preheader:                               ; preds = %jt.then_L317
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
  br i1 %min.iters.check158, label %lab_L320.preheader167, label %vector.scevcheck154

vector.scevcheck154:                              ; preds = %lab_L320.preheader
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
  br i1 %25, label %lab_L320.preheader167, label %vector.ph159

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
  br i1 %cmp.n165, label %jt.then_L321, label %lab_L320.preheader167

lab_L320.preheader167:                            ; preds = %vector.scevcheck154, %lab_L320.preheader, %middle.block156
  %STK69.0.ph = phi i64 [ %spec.select, %lab_L320.preheader ], [ %spec.select, %vector.scevcheck154 ], [ %26, %middle.block156 ]
  br label %lab_L320

lab_L320:                                         ; preds = %lab_L320.preheader167, %lab_L320
  %STK69.0 = phi i64 [ %add112, %lab_L320 ], [ %STK69.0.ph, %lab_L320.preheader167 ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK69.0
  store i8 %putbyte.char103, ptr %gep, align 1
  %add112 = add i64 %STK69.0, 1
  %le121.not = icmp sgt i64 %add112, %sub75
  br i1 %le121.not, label %jt.then_L321, label %lab_L320, !llvm.loop !11

jt.then_L321:                                     ; preds = %lab_L320, %middle.block156, %jt.then_L317
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
  br i1 %or.cond142, label %jt.then_L325, label %jf.then_L326

jf.then_L326:                                     ; preds = %entry, %lab_L331
  %fnap143 = phi i64 [ %fnap, %lab_L331 ], [ %fnap141, %entry ]
  switch i64 %fnap143, label %common.ret [
    i64 43, label %lab_L333.loopexit
    i64 45, label %lab_L333
    i64 10, label %lab_L331
    i64 9, label %lab_L331
    i64 32, label %lab_L331
  ]

common.ret:                                       ; preds = %jf.then_L326, %jf.then_L336
  %storemerge = phi i64 [ 0, %jf.then_L336 ], [ -1, %jf.then_L326 ]
  %common.ret.op = phi i64 [ %spec.select, %jf.then_L336 ], [ 0, %jf.then_L326 ]
  %lg.value112 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn115 = inttoptr i64 %lg.value112 to ptr
  %rtap116 = tail call i64 %rtap_ep_p_fn115()
  store i64 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  ret i64 %common.ret.op

lab_L331:                                         ; preds = %jf.then_L326, %jf.then_L326, %jf.then_L326
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %1 = add i64 %fnap, -48
  %or.cond = icmp ult i64 %1, 10
  br i1 %or.cond, label %jt.then_L325, label %jf.then_L326

lab_L333.loopexit:                                ; preds = %jf.then_L326
  br label %lab_L333

lab_L333:                                         ; preds = %jf.then_L326, %lab_L333.loopexit
  %2 = phi i1 [ true, %lab_L333.loopexit ], [ false, %jf.then_L326 ]
  %lg.value28 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn31 = inttoptr i64 %lg.value28 to ptr
  %fnap32 = tail call i64 %rtap_ep_p_fn31()
  br label %jt.then_L325

jt.then_L325:                                     ; preds = %lab_L331, %entry, %lab_L333
  %STK2.1 = phi i1 [ %2, %lab_L333 ], [ true, %entry ], [ true, %lab_L331 ]
  %STK1.0 = phi i64 [ %fnap32, %lab_L333 ], [ %fnap141, %entry ], [ %fnap, %lab_L331 ]
  %3 = add i64 %STK1.0, -58
  %or.cond134 = icmp ult i64 %3, -10
  br i1 %or.cond134, label %jf.then_L336, label %lab_L334

lab_L334:                                         ; preds = %jt.then_L325, %lab_L334
  %STK1.1 = phi i64 [ %fnap78, %lab_L334 ], [ %STK1.0, %jt.then_L325 ]
  %STK.0 = phi i64 [ %sub, %lab_L334 ], [ 0, %jt.then_L325 ]
  %mul = mul i64 %STK.0, 10
  %add = add nsw i64 %STK1.1, -48
  %sub = add i64 %add, %mul
  %lg.value74 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn77 = inttoptr i64 %lg.value74 to ptr
  %fnap78 = tail call i64 %rtap_ep_p_fn77()
  %4 = add i64 %fnap78, -48
  %or.cond135 = icmp ult i64 %4, 10
  br i1 %or.cond135, label %lab_L334, label %jf.then_L336

jf.then_L336:                                     ; preds = %lab_L334, %jt.then_L325
  %STK.1 = phi i64 [ 0, %jt.then_L325 ], [ %sub, %lab_L334 ]
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
  switch i64 %0, label %lab_L380 [
    i64 17, label %lab_L379
    i64 15, label %lab_L378
    i64 18, label %lab_L377
    i64 16, label %lab_L376
    i64 14, label %lab_L375
    i64 13, label %lab_L374
    i64 12, label %lab_L373
    i64 11, label %lab_L372
    i64 10, label %lab_L371
    i64 9, label %lab_L370
    i64 7, label %lab_L369
    i64 6, label %lab_L368
    i64 5, label %lab_L365
    i64 4, label %lab_L364
    i64 3, label %lab_L363
    i64 2, label %lab_L351
    i64 1, label %lab_L344
    i64 0, label %jump.target_L342
  ]

lab_L344:                                         ; preds = %entry
  %float.itof = sitofp i64 %1 to double
  %gr = icmp slt i64 %2, 1
  br i1 %gr, label %jf.then_L347, label %lab_L345

lab_L345:                                         ; preds = %lab_L344, %lab_L345
  %frhs = phi double [ %fresult, %lab_L345 ], [ %float.itof, %lab_L344 ]
  %STK2.0 = phi i64 [ %sub, %lab_L345 ], [ %2, %lab_L344 ]
  %fresult = fmul double %frhs, 1.000000e+01
  %sub = add nsw i64 %STK2.0, -1
  %gr36 = icmp samesign ugt i64 %STK2.0, 1
  br i1 %gr36, label %lab_L345, label %jf.then_L347.thread

jf.then_L347.thread:                              ; preds = %lab_L345
  %STK5.1515 = bitcast double %fresult to i64
  br label %jump.target_L342

jf.then_L347:                                     ; preds = %lab_L344
  %STK5.1 = bitcast double %float.itof to i64
  %if_cond49 = icmp sgt i64 %2, -1
  br i1 %if_cond49, label %jump.target_L342, label %lab_L348

lab_L348:                                         ; preds = %jf.then_L347, %lab_L348
  %flhs57 = phi double [ %fresult58, %lab_L348 ], [ %float.itof, %jf.then_L347 ]
  %STK2.2 = phi i64 [ %add, %lab_L348 ], [ %2, %jf.then_L347 ]
  %fresult58 = fdiv double %flhs57, 1.000000e+01
  %add = add nuw nsw i64 %STK2.2, 1
  %ls73.not = icmp eq i64 %STK2.2, -1
  br i1 %ls73.not, label %jump.target_L342.loopexit, label %lab_L348

lab_L351:                                         ; preds = %entry
  %flhs88 = bitcast i64 %1 to double
  %comparison = fcmp ult double %flhs88, 0.000000e+00
  %fresult112 = fneg double %flhs88
  %fneg = bitcast double %fresult112 to i64
  %STK80.0 = select i1 %comparison, i64 %fneg, i64 %1
  %flhs121 = bitcast i64 %STK80.0 to double
  %comparison122 = fcmp ult double %flhs121, 1.000000e+01
  br i1 %comparison122, label %jf.then_L357, label %lab_L355.preheader

lab_L355.preheader:                               ; preds = %lab_L351
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.47 to i64), 3
  br label %lab_L355

lab_L355:                                         ; preds = %lab_L355.preheader, %lab_L355
  %STK81.0 = phi i64 [ %add144, %lab_L355 ], [ 0, %lab_L355.preheader ]
  %STK80.1 = phi double [ %fresult135, %lab_L355 ], [ %flhs121, %lab_L355.preheader ]
  %fresult135 = fdiv double %STK80.1, 1.000000e+01
  %fdiv136 = bitcast double %fresult135 to i64
  %add144 = add i64 %STK81.0, 1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lstr.bcpladdr, i64 %fdiv136, i64 %add144)
  %comparison162 = fcmp ult double %fresult135, 1.000000e+01
  br i1 %comparison162, label %jf.then_L357, label %lab_L355

jf.then_L357:                                     ; preds = %lab_L355, %lab_L351
  %flhs174.pre-phi = phi double [ %flhs121, %lab_L351 ], [ %fresult135, %lab_L355 ]
  %STK81.1 = phi i64 [ 0, %lab_L351 ], [ %add144, %lab_L355 ]
  %STK80.2 = phi i64 [ %STK80.0, %lab_L351 ], [ %fdiv136, %lab_L355 ]
  %comparison175 = fcmp ugt double %flhs174.pre-phi, 1.000000e+00
  br i1 %comparison175, label %jf.then_L360, label %lab_L358.preheader

lab_L358.preheader:                               ; preds = %jf.then_L357
  %lstr.bcpladdr199 = ashr exact i64 ptrtoint (ptr @lstr.global.48 to i64), 3
  br label %lab_L358

lab_L358:                                         ; preds = %lab_L358.preheader, %lab_L358
  %STK81.2 = phi i64 [ %sub196, %lab_L358 ], [ %STK81.1, %lab_L358.preheader ]
  %STK80.3 = phi double [ %fresult187, %lab_L358 ], [ %flhs174.pre-phi, %lab_L358.preheader ]
  %fresult187 = fmul double %STK80.3, 1.000000e+01
  %fmul188 = bitcast double %fresult187 to i64
  %sub196 = add i64 %STK81.2, -1
  %lg.value205 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn208 = inttoptr i64 %lg.value205 to ptr
  %rtap212 = tail call i64 %rtap_ep_p_fn208(i64 %lstr.bcpladdr199, i64 %fmul188, i64 %sub196)
  %comparison220 = fcmp ugt double %fresult187, 1.000000e+00
  br i1 %comparison220, label %jf.then_L360, label %lab_L358

jf.then_L360:                                     ; preds = %lab_L358, %jf.then_L357
  %flhs246.pre-phi = phi double [ %flhs174.pre-phi, %jf.then_L357 ], [ %fresult187, %lab_L358 ]
  %STK81.3 = phi i64 [ %STK81.1, %jf.then_L357 ], [ %sub196, %lab_L358 ]
  %STK80.4 = phi i64 [ %STK80.2, %jf.then_L357 ], [ %fmul188, %lab_L358 ]
  store i64 %STK81.3, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %fresult247 = fneg double %flhs246.pre-phi
  %fneg248 = bitcast double %fresult247 to i64
  %__res_a.1 = select i1 %comparison, i64 %fneg248, i64 %STK80.4
  br label %jump.target_L342

lab_L363:                                         ; preds = %entry
  %float.itof257 = sitofp i64 %1 to double
  %float258 = bitcast double %float.itof257 to i64
  br label %jump.target_L342

lab_L364:                                         ; preds = %entry
  %fix.ftoi = bitcast i64 %1 to double
  %fix263 = fptosi double %fix.ftoi to i64
  br label %jump.target_L342

lab_L365:                                         ; preds = %entry
  %flhs272 = bitcast i64 %1 to double
  %comparison273 = fcmp ult double %flhs272, 0.000000e+00
  %fresult287 = fneg double %flhs272
  %fneg288 = bitcast double %fresult287 to i64
  %__res_a.2 = select i1 %comparison273, i64 %fneg288, i64 %1
  br label %jump.target_L342

lab_L368:                                         ; preds = %entry
  %frhs300 = bitcast i64 %1 to double
  %flhs301 = bitcast i64 %2 to double
  %fresult302 = fmul double %frhs300, %flhs301
  %fmul303 = bitcast double %fresult302 to i64
  br label %jump.target_L342

lab_L369:                                         ; preds = %entry
  %frhs312 = bitcast i64 %2 to double
  %flhs313 = bitcast i64 %1 to double
  %fresult314 = fdiv double %flhs313, %frhs312
  %fdiv315 = bitcast double %fresult314 to i64
  br label %jump.target_L342

lab_L370:                                         ; preds = %entry
  %frhs324 = bitcast i64 %1 to double
  %flhs325 = bitcast i64 %2 to double
  %fresult326 = fadd double %frhs324, %flhs325
  %fadd = bitcast double %fresult326 to i64
  br label %jump.target_L342

lab_L371:                                         ; preds = %entry
  %frhs335 = bitcast i64 %2 to double
  %flhs336 = bitcast i64 %1 to double
  %fresult337 = fsub double %flhs336, %frhs335
  %fsub = bitcast double %fresult337 to i64
  br label %jump.target_L342

lab_L372:                                         ; preds = %entry
  br label %jump.target_L342

lab_L373:                                         ; preds = %entry
  %flhs346 = bitcast i64 %1 to double
  %fresult347 = fneg double %flhs346
  %fneg348 = bitcast double %fresult347 to i64
  br label %jump.target_L342

lab_L374:                                         ; preds = %entry
  %frhs357 = bitcast i64 %1 to double
  %flhs358 = bitcast i64 %2 to double
  %comparison359 = fcmp oeq double %flhs358, %frhs357
  %feq = sext i1 %comparison359 to i64
  br label %jump.target_L342

lab_L375:                                         ; preds = %entry
  %frhs368 = bitcast i64 %1 to double
  %flhs369 = bitcast i64 %2 to double
  %comparison370 = fcmp one double %flhs369, %frhs368
  %fne = sext i1 %comparison370 to i64
  br label %jump.target_L342

lab_L376:                                         ; preds = %entry
  %frhs379 = bitcast i64 %2 to double
  %flhs380 = bitcast i64 %1 to double
  %comparison381 = fcmp ogt double %flhs380, %frhs379
  %fgr = sext i1 %comparison381 to i64
  br label %jump.target_L342

lab_L377:                                         ; preds = %entry
  %frhs390 = bitcast i64 %2 to double
  %flhs391 = bitcast i64 %1 to double
  %comparison392 = fcmp oge double %flhs391, %frhs390
  %fge393 = sext i1 %comparison392 to i64
  br label %jump.target_L342

lab_L378:                                         ; preds = %entry
  %frhs402 = bitcast i64 %2 to double
  %flhs403 = bitcast i64 %1 to double
  %comparison404 = fcmp olt double %flhs403, %frhs402
  %fls = sext i1 %comparison404 to i64
  br label %jump.target_L342

lab_L379:                                         ; preds = %entry
  %frhs413 = bitcast i64 %2 to double
  %flhs414 = bitcast i64 %1 to double
  %comparison415 = fcmp ole double %flhs414, %frhs413
  %fle416 = sext i1 %comparison415 to i64
  br label %jump.target_L342

lab_L380:                                         ; preds = %entry
  %lstr.bcpladdr419 = ashr exact i64 ptrtoint (ptr @lstr.global.49 to i64), 3
  %lg.value431 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn434 = inttoptr i64 %lg.value431 to ptr
  %rtap441 = tail call i64 %rtap_ep_p_fn434(i64 %lstr.bcpladdr419, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  %lg.value443 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn446 = inttoptr i64 %lg.value443 to ptr
  %rtap448 = tail call i64 %rtap_ep_p_fn446(i64 1)
  br label %jump.target_L342

jump.target_L342.loopexit:                        ; preds = %lab_L348
  %fdiv.le = bitcast double %fresult58 to i64
  br label %jump.target_L342

jump.target_L342:                                 ; preds = %jump.target_L342.loopexit, %jf.then_L347.thread, %entry, %jf.then_L347, %lab_L380, %lab_L379, %lab_L378, %lab_L377, %lab_L376, %lab_L375, %lab_L374, %lab_L373, %lab_L372, %lab_L371, %lab_L370, %lab_L369, %lab_L368, %lab_L365, %lab_L364, %lab_L363, %jf.then_L360
  %STK5.3 = phi i64 [ -4985279381848933680, %lab_L380 ], [ %STK5.1, %jf.then_L347 ], [ %__res_a.1, %jf.then_L360 ], [ %float258, %lab_L363 ], [ %fix263, %lab_L364 ], [ %__res_a.2, %lab_L365 ], [ %fmul303, %lab_L368 ], [ %fdiv315, %lab_L369 ], [ %fadd, %lab_L370 ], [ %fsub, %lab_L371 ], [ %1, %lab_L372 ], [ %fneg348, %lab_L373 ], [ %feq, %lab_L374 ], [ %fne, %lab_L375 ], [ %fgr, %lab_L376 ], [ %fge393, %lab_L377 ], [ %fls, %lab_L378 ], [ %fle416, %lab_L379 ], [ -1, %entry ], [ %STK5.1515, %jf.then_L347.thread ], [ %fdiv.le, %jump.target_L342.loopexit ]
  ret i64 %STK5.3
}

define i64 @sys(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) section ".text.BLIB" {
entry:
  switch i64 %0, label %lab_L388 [
    i64 63, label %lab_L387
    i64 11, label %lab_L386
    i64 10, label %lab_L385
  ]

lab_L385:                                         ; preds = %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  br label %jump.target_L384

lab_L386:                                         ; preds = %entry
  %lg.value12 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn15 = inttoptr i64 %lg.value12 to ptr
  %fnap16 = tail call i64 %rtap_ep_p_fn15(i64 %1)
  br label %jump.target_L384

lab_L387:                                         ; preds = %entry
  %fnap37 = tail call i64 @sys_flt(i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  br label %jump.target_L384

lab_L388:                                         ; preds = %entry
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.51 to i64), 3
  %lg.value53 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn56 = inttoptr i64 %lg.value53 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn56(i64 %lstr.bcpladdr, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  %lg.value65 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn68 = inttoptr i64 %lg.value65 to ptr
  %rtap70 = tail call i64 %rtap_ep_p_fn68(i64 1)
  br label %jump.target_L384

jump.target_L384:                                 ; preds = %lab_L388, %lab_L387, %lab_L386, %lab_L385
  %STK6.0 = phi i64 [ -4985279381848933680, %lab_L388 ], [ %fnap, %lab_L385 ], [ %fnap16, %lab_L386 ], [ %fnap37, %lab_L387 ]
  ret i64 %STK6.0
}

define noundef i64 @writes(i64 %0) section ".text.BLIB" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr = icmp eq i8 %getbyte.char, 0
  br i1 %gr, label %jt.then_L390, label %lab_L389

lab_L389:                                         ; preds = %entry, %lab_L389
  %STK1.0 = phi i64 [ %add, %lab_L389 ], [ 1, %entry ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK1.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  %add = add nuw nsw i64 %STK1.0, 1
  %le.not.not = icmp samesign ult i64 %STK1.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L389, label %jt.then_L390

jt.then_L390:                                     ; preds = %lab_L389, %entry
  ret i64 -4985279381848933680
}

define noundef i64 @deplete(i64 %0) section ".text.BLIB" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 1)
  ret i64 -4985279381848933680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @fplus(i64 %0, i64 %1, i64 returned %2) #4 section ".text.BLIB" {
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
define i64 @fminus(i64 %0, i64 %1, i64 returned %2) #4 section ".text.BLIB" {
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
define i64 @fmult(i64 %0, i64 %1, i64 returned %2) #4 section ".text.BLIB" {
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
define i64 @fdiv(i64 %0, i64 %1, i64 returned %2) #4 section ".text.BLIB" {
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
define i64 @fneg(i64 %0, i64 returned %1) #4 section ".text.BLIB" {
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
define i64 @ffix(i64 %0) #5 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv8 = load double, ptr %rv.lv, align 8
  %fix3 = fptosi double %rv.rv8 to i64
  ret i64 %fix3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i64 @ffloat(i64 %0, i64 returned %1) #4 section ".text.BLIB" {
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
define range(i64 -1, 2) i64 @fcomp(i64 %0, i64 %1) #5 section ".text.BLIB" {
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
define i64 @fabs(i64 %0, i64 returned %1) #4 section ".text.BLIB" {
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
declare double @llvm.fabs.f64(double) #6

define noundef i64 @dumpheap(i64 %0, i64 %1) local_unnamed_addr section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.65, align 8
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.67 to i64), 3
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lstr.bcpladdr)
  %ne.not = icmp eq i64 %0, 0
  br i1 %ne.not, label %jf.then_L409, label %jf.else

jf.else:                                          ; preds = %entry
  %lg.value15 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn18 = inttoptr i64 %lg.value15 to ptr
  %rtap21 = tail call i64 %rtap_ep_p_fn18(i64 %0, i64 %1)
  br label %jf.then_L409

jf.then_L409:                                     ; preds = %jf.else, %entry
  %lg.value22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 672), align 4
  %rtap_ep_p_fn25 = inttoptr i64 %lg.value22 to ptr
  %rtap26 = tail call i64 %rtap_ep_p_fn25()
  %ll.static.value28 = load i64, ptr @itemn.global.63, align 8
  %eq.not = icmp eq i64 %ll.static.value28, 0
  br i1 %eq.not, label %jf.else36, label %jf.then_L410

common.ret:                                       ; preds = %lab_L412, %jf.else36
  ret i64 -4985279381848933680

jf.else36:                                        ; preds = %jf.then_L409
  %lstr.bcpladdr37 = ashr exact i64 ptrtoint (ptr @lstr.global.68 to i64), 3
  %lg.value39 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn42 = inttoptr i64 %lg.value39 to ptr
  %rtap44 = tail call i64 %rtap_ep_p_fn42(i64 %lstr.bcpladdr37)
  br label %common.ret

jf.then_L410:                                     ; preds = %jf.then_L409
  %lstr.bcpladdr45 = ashr exact i64 ptrtoint (ptr @lstr.global.69 to i64), 3
  %ll.static.value50 = load i64, ptr @itemn.global.64, align 8
  %shift.result57 = shl i64 %ll.static.value28, 3
  %shift.result68 = shl i64 %ll.static.value50, 3
  %lg.value72 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn75 = inttoptr i64 %lg.value72 to ptr
  %rtap82 = tail call i64 %rtap_ep_p_fn75(i64 %lstr.bcpladdr45, i64 1048576, i64 %ll.static.value28, i64 %ll.static.value50, i64 %shift.result57, i64 %shift.result68)
  %lstr.bcpladdr83 = ashr exact i64 ptrtoint (ptr @lstr.global.70 to i64), 3
  %lg.value85 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn88 = inttoptr i64 %lg.value85 to ptr
  %rtap90 = tail call i64 %rtap_ep_p_fn88(i64 %lstr.bcpladdr83)
  %lstr.bcpladdr91 = ashr exact i64 ptrtoint (ptr @lstr.global.71 to i64), 3
  %lg.value93 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn96 = inttoptr i64 %lg.value93 to ptr
  %rtap98 = tail call i64 %rtap_ep_p_fn96(i64 %lstr.bcpladdr91)
  %lstr.bcpladdr153 = ashr exact i64 ptrtoint (ptr @lstr.global.72 to i64), 3
  br label %lab_L411

lab_L411:                                         ; preds = %lab_L418.4, %jf.then_L410
  %STK5.0 = phi i64 [ 0, %jf.then_L410 ], [ %add116, %lab_L418.4 ]
  %STK4.0 = phi i64 [ 0, %jf.then_L410 ], [ %add, %lab_L418.4 ]
  %STK3.0 = phi i64 [ 0, %jf.then_L410 ], [ %spec.select, %lab_L418.4 ]
  %STK2.0 = phi i64 [ %ll.static.value, %jf.then_L410 ], [ %rv.rv277, %lab_L418.4 ]
  %add = add i64 %STK4.0, 1
  %rv.llvmaddr = shl i64 %STK2.0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 9223372036854775807
  %add116 = add i64 %logand, %STK5.0
  %add187 = add i64 %logand, %STK2.0
  %lg.value189 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn192 = inttoptr i64 %lg.value189 to ptr
  %rtap198 = tail call i64 %rtap_ep_p_fn192(i64 %lstr.bcpladdr153, i64 %add, i64 %logand, i64 %STK2.0, i64 %add187)
  %ll.static.value208 = load i64, ptr @itemn.global.64, align 8
  %ls.not = icmp slt i64 %STK2.0, %ll.static.value208
  br i1 %ls.not, label %jf.else216, label %lab_L418

jf.else216:                                       ; preds = %lab_L411
  %rv.rv228 = load i64, ptr %rv.lv, align 8
  %lg.value231 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn234 = inttoptr i64 %lg.value231 to ptr
  %rtap237 = tail call i64 %rtap_ep_p_fn234(i64 %rv.rv228, i64 16)
  %lg.value239 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn242 = inttoptr i64 %lg.value239 to ptr
  %rtap244 = tail call i64 %rtap_ep_p_fn242(i64 32)
  %ll.static.value208.1.pre = load i64, ptr @itemn.global.64, align 8
  br label %lab_L418

lab_L418:                                         ; preds = %lab_L411, %jf.else216
  %ll.static.value208.1 = phi i64 [ %ll.static.value208, %lab_L411 ], [ %ll.static.value208.1.pre, %jf.else216 ]
  %add206.1 = add i64 %STK2.0, 1
  %ls.not.1 = icmp slt i64 %add206.1, %ll.static.value208.1
  br i1 %ls.not.1, label %jf.else216.1, label %lab_L418.1

jf.else216.1:                                     ; preds = %lab_L418
  %rv.llvmaddr226.1 = shl i64 %add206.1, 3
  %rv.lv227.1 = inttoptr i64 %rv.llvmaddr226.1 to ptr
  %rv.rv228.1 = load i64, ptr %rv.lv227.1, align 8
  %lg.value231.1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn234.1 = inttoptr i64 %lg.value231.1 to ptr
  %rtap237.1 = tail call i64 %rtap_ep_p_fn234.1(i64 %rv.rv228.1, i64 16)
  %lg.value239.1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn242.1 = inttoptr i64 %lg.value239.1 to ptr
  %rtap244.1 = tail call i64 %rtap_ep_p_fn242.1(i64 32)
  %ll.static.value208.2.pre = load i64, ptr @itemn.global.64, align 8
  br label %lab_L418.1

lab_L418.1:                                       ; preds = %jf.else216.1, %lab_L418
  %ll.static.value208.2 = phi i64 [ %ll.static.value208.2.pre, %jf.else216.1 ], [ %ll.static.value208.1, %lab_L418 ]
  %add206.2 = add i64 %STK2.0, 2
  %ls.not.2 = icmp slt i64 %add206.2, %ll.static.value208.2
  br i1 %ls.not.2, label %jf.else216.2, label %lab_L418.2

jf.else216.2:                                     ; preds = %lab_L418.1
  %rv.llvmaddr226.2 = shl i64 %add206.2, 3
  %rv.lv227.2 = inttoptr i64 %rv.llvmaddr226.2 to ptr
  %rv.rv228.2 = load i64, ptr %rv.lv227.2, align 8
  %lg.value231.2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn234.2 = inttoptr i64 %lg.value231.2 to ptr
  %rtap237.2 = tail call i64 %rtap_ep_p_fn234.2(i64 %rv.rv228.2, i64 16)
  %lg.value239.2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn242.2 = inttoptr i64 %lg.value239.2 to ptr
  %rtap244.2 = tail call i64 %rtap_ep_p_fn242.2(i64 32)
  %ll.static.value208.3.pre = load i64, ptr @itemn.global.64, align 8
  br label %lab_L418.2

lab_L418.2:                                       ; preds = %jf.else216.2, %lab_L418.1
  %ll.static.value208.3 = phi i64 [ %ll.static.value208.3.pre, %jf.else216.2 ], [ %ll.static.value208.2, %lab_L418.1 ]
  %add206.3 = add i64 %STK2.0, 3
  %ls.not.3 = icmp slt i64 %add206.3, %ll.static.value208.3
  br i1 %ls.not.3, label %jf.else216.3, label %lab_L418.3

jf.else216.3:                                     ; preds = %lab_L418.2
  %rv.llvmaddr226.3 = shl i64 %add206.3, 3
  %rv.lv227.3 = inttoptr i64 %rv.llvmaddr226.3 to ptr
  %rv.rv228.3 = load i64, ptr %rv.lv227.3, align 8
  %lg.value231.3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn234.3 = inttoptr i64 %lg.value231.3 to ptr
  %rtap237.3 = tail call i64 %rtap_ep_p_fn234.3(i64 %rv.rv228.3, i64 16)
  %lg.value239.3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn242.3 = inttoptr i64 %lg.value239.3 to ptr
  %rtap244.3 = tail call i64 %rtap_ep_p_fn242.3(i64 32)
  %ll.static.value208.4.pre = load i64, ptr @itemn.global.64, align 8
  br label %lab_L418.3

lab_L418.3:                                       ; preds = %jf.else216.3, %lab_L418.2
  %ll.static.value208.4 = phi i64 [ %ll.static.value208.4.pre, %jf.else216.3 ], [ %ll.static.value208.3, %lab_L418.2 ]
  %add206.4 = add i64 %STK2.0, 4
  %ls.not.4 = icmp slt i64 %add206.4, %ll.static.value208.4
  br i1 %ls.not.4, label %jf.else216.4, label %lab_L418.4

jf.else216.4:                                     ; preds = %lab_L418.3
  %rv.llvmaddr226.4 = shl i64 %add206.4, 3
  %rv.lv227.4 = inttoptr i64 %rv.llvmaddr226.4 to ptr
  %rv.rv228.4 = load i64, ptr %rv.lv227.4, align 8
  %lg.value231.4 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn234.4 = inttoptr i64 %lg.value231.4 to ptr
  %rtap237.4 = tail call i64 %rtap_ep_p_fn234.4(i64 %rv.rv228.4, i64 16)
  %lg.value239.4 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn242.4 = inttoptr i64 %lg.value239.4 to ptr
  %rtap244.4 = tail call i64 %rtap_ep_p_fn242.4(i64 32)
  br label %lab_L418.4

lab_L418.4:                                       ; preds = %jf.else216.4, %lab_L418.3
  %spec.select = tail call i64 @llvm.umax.i64(i64 %logand, i64 %STK3.0)
  %lg.value262 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 672), align 4
  %rtap_ep_p_fn265 = inttoptr i64 %lg.value262 to ptr
  %rtap266 = tail call i64 %rtap_ep_p_fn265()
  %rv.llvmaddr275 = add i64 %rv.llvmaddr, 8
  %rv.lv276 = inttoptr i64 %rv.llvmaddr275 to ptr
  %rv.rv277 = load i64, ptr %rv.lv276, align 8
  %eq285.not = icmp eq i64 %rv.rv277, 0
  br i1 %eq285.not, label %lab_L412, label %lab_L411

lab_L412:                                         ; preds = %lab_L418.4
  %lstr.bcpladdr291 = ashr exact i64 ptrtoint (ptr @lstr.global.73 to i64), 3
  %lg.value299 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn302 = inttoptr i64 %lg.value299 to ptr
  %rtap307 = tail call i64 %rtap_ep_p_fn302(i64 %lstr.bcpladdr291, i64 %add116, i64 %add, i64 %spec.select)
  br label %common.ret
}

define noundef i64 @init_heap() local_unnamed_addr section ".text.BLIB" {
entry:
  %ll.static.value = load i64, ptr @itemn.global.63, align 8
  %eq.not = icmp eq i64 %ll.static.value, 0
  br i1 %eq.not, label %jf.else, label %common.ret

jf.else:                                          ; preds = %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 9, i64 0, i64 8388608, i64 3, i64 34, i64 0, i64 0)
  store i64 %fnap, ptr @itemn.global.63, align 8
  %if_cond26 = icmp sgt i64 %fnap, -1
  br i1 %if_cond26, label %jf.then_L422, label %jf.else27

jf.else27:                                        ; preds = %jf.else
  %neg = sub i64 0, %fnap
  %lg.value33 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn36 = inttoptr i64 %lg.value33 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn36(i64 60, i64 %neg)
  %ll.static.value39.pre = load i64, ptr @itemn.global.63, align 8
  br label %jf.then_L422

jf.then_L422:                                     ; preds = %jf.else27, %jf.else
  %ll.static.value39 = phi i64 [ %ll.static.value39.pre, %jf.else27 ], [ %fnap, %jf.else ]
  %shift.result44 = lshr i64 %ll.static.value39, 3
  store i64 %shift.result44, ptr @itemn.global.63, align 8
  %add = add nuw nsw i64 %shift.result44, 1048576
  store i64 %add, ptr @itemn.global.64, align 8
  store i64 %shift.result44, ptr @itemn.global.65, align 8
  %rv.llvmaddr = and i64 %ll.static.value39, -8
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %0 = and i64 %rv.rv, -9223372036854775808
  %xor77 = or disjoint i64 %0, 1048576
  store i64 %xor77, ptr %rv.lv, align 8
  %ll.static.value93 = load i64, ptr @itemn.global.65, align 8
  %rv.llvmaddr96 = shl i64 %ll.static.value93, 3
  %rv.lv97 = inttoptr i64 %rv.llvmaddr96 to ptr
  %rv.rv98 = load i64, ptr %rv.lv97, align 8
  %xor118 = or i64 %rv.rv98, -9223372036854775808
  store i64 %xor118, ptr %rv.lv97, align 8
  %ll.static.value127 = load i64, ptr @itemn.global.65, align 8
  %add132 = shl i64 %ll.static.value127, 3
  %stind.llvmaddr136 = add i64 %add132, 8
  %stind.lv137 = inttoptr i64 %stind.llvmaddr136 to ptr
  store i64 0, ptr %stind.lv137, align 8
  %ll.static.value139 = load i64, ptr @itemn.global.65, align 8
  %add144 = shl i64 %ll.static.value139, 3
  %stind.llvmaddr148 = add i64 %add144, 16
  %stind.lv149 = inttoptr i64 %stind.llvmaddr148 to ptr
  store i64 0, ptr %stind.lv149, align 8
  br label %common.ret

common.ret:                                       ; preds = %entry, %jf.then_L422
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @add_to_free_list(i64 %0) local_unnamed_addr #2 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %xor23 = or i64 %rv.rv, -9223372036854775808
  store i64 %xor23, ptr %rv.lv, align 8
  %ll.static.value = load i64, ptr @itemn.global.65, align 8
  %eq.not = icmp eq i64 %ll.static.value, 0
  br i1 %eq.not, label %jf.else, label %jf.else69

common.ret:                                       ; preds = %jf.then_L431, %jf.then_L430, %jf.else
  ret i64 -4985279381848933680

jf.else:                                          ; preds = %entry
  store i64 %0, ptr @itemn.global.65, align 8
  %stind.llvmaddr43 = add i64 %rv.llvmaddr, 8
  %stind.lv44 = inttoptr i64 %stind.llvmaddr43 to ptr
  store i64 0, ptr %stind.lv44, align 8
  %stind.llvmaddr55 = add i64 %rv.llvmaddr, 16
  %stind.lv56 = inttoptr i64 %stind.llvmaddr55 to ptr
  store i64 0, ptr %stind.lv56, align 8
  br label %common.ret

jf.else69:                                        ; preds = %entry
  %ls.not = icmp slt i64 %ll.static.value, %0
  br i1 %ls.not, label %lab_L425, label %jf.else128

lab_L425:                                         ; preds = %jf.else69, %lab_L425
  %STK58.0 = phi i64 [ %rv.rv93, %lab_L425 ], [ %ll.static.value, %jf.else69 ]
  %add88 = shl i64 %STK58.0, 3
  %rv.llvmaddr91 = add i64 %add88, 8
  %rv.lv92 = inttoptr i64 %rv.llvmaddr91 to ptr
  %rv.rv93 = load i64, ptr %rv.lv92, align 8
  %ne101.not = icmp ne i64 %rv.rv93, 0
  %ls113 = icmp slt i64 %rv.rv93, %0
  %or.cond = and i1 %ne101.not, %ls113
  br i1 %or.cond, label %lab_L425, label %jf.then_L427

jf.then_L427:                                     ; preds = %lab_L425
  %eq123.not = icmp eq i64 %STK58.0, 0
  br i1 %eq123.not, label %jf.else128, label %jf.then_L429

jf.else128:                                       ; preds = %jf.else69, %jf.then_L427
  %stind.llvmaddr140 = add i64 %rv.llvmaddr, 8
  %stind.lv141 = inttoptr i64 %stind.llvmaddr140 to ptr
  store i64 %ll.static.value, ptr %stind.lv141, align 8
  %stind.llvmaddr152 = add i64 %rv.llvmaddr, 16
  %stind.lv153 = inttoptr i64 %stind.llvmaddr152 to ptr
  store i64 0, ptr %stind.lv153, align 8
  %ll.static.value155 = load i64, ptr @itemn.global.65, align 8
  %ne159.not = icmp eq i64 %ll.static.value155, 0
  br i1 %ne159.not, label %jf.then_L430, label %jf.else164

jf.else164:                                       ; preds = %jf.else128
  %add172 = shl i64 %ll.static.value155, 3
  %stind.llvmaddr176 = add i64 %add172, 16
  %stind.lv177 = inttoptr i64 %stind.llvmaddr176 to ptr
  store i64 %0, ptr %stind.lv177, align 8
  br label %jf.then_L430

jf.then_L430:                                     ; preds = %jf.else164, %jf.else128
  store i64 %0, ptr @itemn.global.65, align 8
  br label %common.ret

jf.then_L429:                                     ; preds = %jf.then_L427
  %stind.llvmaddr202 = add i64 %rv.llvmaddr, 8
  %stind.lv203 = inttoptr i64 %stind.llvmaddr202 to ptr
  store i64 %rv.rv93, ptr %stind.lv203, align 8
  %stind.llvmaddr215 = add i64 %rv.llvmaddr, 16
  %stind.lv216 = inttoptr i64 %stind.llvmaddr215 to ptr
  store i64 %STK58.0, ptr %stind.lv216, align 8
  %rv.rv227 = load i64, ptr %rv.lv92, align 4
  %ne232.not = icmp eq i64 %rv.rv227, 0
  br i1 %ne232.not, label %jf.then_L431, label %jf.else237

jf.else237:                                       ; preds = %jf.then_L429
  %add255 = shl i64 %rv.rv227, 3
  %stind.llvmaddr259 = add i64 %add255, 16
  %stind.lv260 = inttoptr i64 %stind.llvmaddr259 to ptr
  store i64 %0, ptr %stind.lv260, align 8
  br label %jf.then_L431

jf.then_L431:                                     ; preds = %jf.else237, %jf.then_L429
  store i64 %0, ptr %rv.lv92, align 4
  br label %common.ret
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noundef i64 @remove_from_free_list(i64 %0) local_unnamed_addr #4 section ".text.BLIB" {
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
  %itemn.global.65.sink = select i1 %ne.not, ptr @itemn.global.65, ptr %stind.lv
  store i64 %rv.rv48, ptr %itemn.global.65.sink, align 8
  %rv.rv60 = load i64, ptr %rv.lv47, align 8
  %ne65.not = icmp eq i64 %rv.rv60, 0
  br i1 %ne65.not, label %jf.then_L435, label %jf.else70

jf.else70:                                        ; preds = %entry
  %rv.rv81 = load i64, ptr %rv.lv, align 8
  %add98 = shl i64 %rv.rv60, 3
  %stind.llvmaddr102 = add i64 %add98, 16
  %stind.lv103 = inttoptr i64 %stind.llvmaddr102 to ptr
  store i64 %rv.rv81, ptr %stind.lv103, align 8
  br label %jf.then_L435

jf.then_L435:                                     ; preds = %jf.else70, %entry
  store i64 0, ptr %rv.lv47, align 8
  store i64 0, ptr %rv.lv, align 8
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @coalesce(i64 %0) local_unnamed_addr #2 section ".text.BLIB" {
entry:
  %rv.llvmaddr = shl i64 %0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 9223372036854775807
  %add = add i64 %logand, %0
  %ll.static.value = load i64, ptr @itemn.global.64, align 8
  %ls.not = icmp slt i64 %add, %ll.static.value
  br i1 %ls.not, label %jf.else, label %jf.then_L437

jf.else:                                          ; preds = %entry
  %rv.llvmaddr21 = shl i64 %add, 3
  %rv.lv22 = inttoptr i64 %rv.llvmaddr21 to ptr
  %rv.rv23 = load i64, ptr %rv.lv22, align 8
  %if_cond31 = icmp sgt i64 %rv.rv23, -1
  br i1 %if_cond31, label %jf.then_L437, label %jf.else32

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
  %itemn.global.65.sink.i = select i1 %ne.not.i, ptr @itemn.global.65, ptr %stind.lv.i
  store i64 %rv.rv48.i, ptr %itemn.global.65.sink.i, align 8
  %rv.rv60.i = load i64, ptr %rv.lv47.i, align 8
  %ne65.not.i = icmp eq i64 %rv.rv60.i, 0
  br i1 %ne65.not.i, label %remove_from_free_list.exit, label %jf.else70.i

jf.else70.i:                                      ; preds = %jf.else32
  %rv.rv81.i = load i64, ptr %rv.lv.i, align 8
  %add98.i = shl i64 %rv.rv60.i, 3
  %stind.llvmaddr102.i = add i64 %add98.i, 16
  %stind.lv103.i = inttoptr i64 %stind.llvmaddr102.i to ptr
  store i64 %rv.rv81.i, ptr %stind.lv103.i, align 8
  br label %remove_from_free_list.exit

remove_from_free_list.exit:                       ; preds = %jf.else32, %jf.else70.i
  store i64 0, ptr %rv.lv47.i, align 8
  store i64 0, ptr %rv.lv.i, align 8
  %rv.rv41 = load i64, ptr %rv.lv, align 8
  %rv.rv53 = load i64, ptr %rv.lv22, align 8
  %add62 = add i64 %rv.rv53, %rv.rv41
  %1 = and i64 %add62, 9223372036854775807
  %2 = and i64 %rv.rv41, -9223372036854775808
  %xor88 = or disjoint i64 %1, %2
  store i64 %xor88, ptr %rv.lv, align 8
  br label %jf.then_L437

jf.then_L437:                                     ; preds = %jf.else, %remove_from_free_list.exit, %entry
  %rv.llvmaddr100 = add i64 %rv.llvmaddr, 16
  %rv.lv101 = inttoptr i64 %rv.llvmaddr100 to ptr
  %rv.rv102 = load i64, ptr %rv.lv101, align 8
  %ne.not = icmp eq i64 %rv.rv102, 0
  br i1 %ne.not, label %common.ret, label %jf.else111

jf.else111:                                       ; preds = %jf.then_L437
  %rv.llvmaddr137 = shl i64 %rv.rv102, 3
  %rv.lv138 = inttoptr i64 %rv.llvmaddr137 to ptr
  %rv.rv139 = load i64, ptr %rv.lv138, align 8
  %logand144 = and i64 %rv.rv139, 9223372036854775807
  %add148 = add i64 %logand144, %rv.rv102
  %eq.not = icmp eq i64 %add148, %0
  br i1 %eq.not, label %jf.else158, label %common.ret

common.ret:                                       ; preds = %jf.then_L437, %jf.else111, %remove_from_free_list.exit326
  %common.ret.op = phi i64 [ %rv.rv102, %remove_from_free_list.exit326 ], [ %0, %jf.else111 ], [ %0, %jf.then_L437 ]
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
  br i1 %ne65.not.i300, label %remove_from_free_list.exit306, label %jf.else70.i301

jf.else70.i301:                                   ; preds = %jf.else158
  %rv.rv81.i302 = load i64, ptr %rv.lv101, align 8
  %add98.i303 = shl i64 %rv.rv60.i299, 3
  %stind.llvmaddr102.i304 = add i64 %add98.i303, 16
  %stind.lv103.i305 = inttoptr i64 %stind.llvmaddr102.i304 to ptr
  store i64 %rv.rv81.i302, ptr %stind.lv103.i305, align 8
  br label %remove_from_free_list.exit306

remove_from_free_list.exit306:                    ; preds = %jf.else158, %jf.else70.i301
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
  %itemn.global.65.sink.i318 = select i1 %ne.not.i311, ptr @itemn.global.65, ptr %stind.lv.i317
  store i64 %rv.rv48.i314, ptr %itemn.global.65.sink.i318, align 8
  %rv.rv60.i319 = load i64, ptr %stind.lv.i297, align 8
  %ne65.not.i320 = icmp eq i64 %rv.rv60.i319, 0
  br i1 %ne65.not.i320, label %remove_from_free_list.exit326, label %jf.else70.i321

jf.else70.i321:                                   ; preds = %remove_from_free_list.exit306
  %rv.rv81.i322 = load i64, ptr %rv.lv.i309, align 8
  %add98.i323 = shl i64 %rv.rv60.i319, 3
  %stind.llvmaddr102.i324 = add i64 %add98.i323, 16
  %stind.lv103.i325 = inttoptr i64 %stind.llvmaddr102.i324 to ptr
  store i64 %rv.rv81.i322, ptr %stind.lv103.i325, align 8
  br label %remove_from_free_list.exit326

remove_from_free_list.exit326:                    ; preds = %remove_from_free_list.exit306, %jf.else70.i321
  store i64 0, ptr %stind.lv.i297, align 8
  store i64 0, ptr %rv.lv.i309, align 8
  %rv.rv192 = load i64, ptr %rv.lv138, align 8
  %rv.rv204 = load i64, ptr %rv.lv, align 8
  %add213 = add i64 %rv.rv204, %rv.rv192
  %3 = and i64 %add213, 9223372036854775807
  %4 = and i64 %rv.rv192, -9223372036854775808
  %xor240 = or disjoint i64 %3, %4
  store i64 %xor240, ptr %rv.lv138, align 8
  %rtap255 = tail call i64 @add_to_free_list(i64 %rv.rv102)
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @split_block(i64 %0, i64 %1) local_unnamed_addr #2 section ".text.BLIB" {
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
  %rtap = tail call i64 @add_to_free_list(i64 %add21)
  br label %common.ret

common.ret:                                       ; preds = %entry, %jf.else
  ret i64 -4985279381848933680
}

define range(i64 3, 2) i64 @getvec(i64 %0) section ".text.BLIB" {
entry:
  %add7 = add i64 %0, 3
  %add12 = add i64 %0, 4
  %ll.static.value.i = load i64, ptr @itemn.global.63, align 8
  %eq.not.i = icmp eq i64 %ll.static.value.i, 0
  br i1 %eq.not.i, label %jf.else.i, label %init_heap.exit

jf.else.i:                                        ; preds = %entry
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 9, i64 0, i64 8388608, i64 3, i64 34, i64 0, i64 0)
  store i64 %fnap.i, ptr @itemn.global.63, align 8
  %if_cond26.i = icmp sgt i64 %fnap.i, -1
  br i1 %if_cond26.i, label %jf.then_L422.i, label %jf.else27.i

jf.else27.i:                                      ; preds = %jf.else.i
  %neg.i = sub i64 0, %fnap.i
  %lg.value33.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn36.i = inttoptr i64 %lg.value33.i to ptr
  %rtap.i = tail call i64 %rtap_ep_p_fn36.i(i64 60, i64 %neg.i)
  %ll.static.value39.pre.i = load i64, ptr @itemn.global.63, align 8
  br label %jf.then_L422.i

jf.then_L422.i:                                   ; preds = %jf.else27.i, %jf.else.i
  %ll.static.value39.i = phi i64 [ %ll.static.value39.pre.i, %jf.else27.i ], [ %fnap.i, %jf.else.i ]
  %shift.result44.i = lshr i64 %ll.static.value39.i, 3
  store i64 %shift.result44.i, ptr @itemn.global.63, align 8
  %add.i = add nuw nsw i64 %shift.result44.i, 1048576
  store i64 %add.i, ptr @itemn.global.64, align 8
  store i64 %shift.result44.i, ptr @itemn.global.65, align 8
  %rv.llvmaddr.i = and i64 %ll.static.value39.i, -8
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %1 = and i64 %rv.rv.i, -9223372036854775808
  %xor77.i = or disjoint i64 %1, 1048576
  store i64 %xor77.i, ptr %rv.lv.i, align 8
  %ll.static.value93.i = load i64, ptr @itemn.global.65, align 8
  %rv.llvmaddr96.i = shl i64 %ll.static.value93.i, 3
  %rv.lv97.i = inttoptr i64 %rv.llvmaddr96.i to ptr
  %rv.rv98.i = load i64, ptr %rv.lv97.i, align 8
  %xor118.i = or i64 %rv.rv98.i, -9223372036854775808
  store i64 %xor118.i, ptr %rv.lv97.i, align 8
  %ll.static.value127.i = load i64, ptr @itemn.global.65, align 8
  %add132.i = shl i64 %ll.static.value127.i, 3
  %stind.llvmaddr136.i = add i64 %add132.i, 8
  %stind.lv137.i = inttoptr i64 %stind.llvmaddr136.i to ptr
  store i64 0, ptr %stind.lv137.i, align 8
  %ll.static.value139.i = load i64, ptr @itemn.global.65, align 8
  %add144.i = shl i64 %ll.static.value139.i, 3
  %stind.llvmaddr148.i = add i64 %add144.i, 16
  %stind.lv149.i = inttoptr i64 %stind.llvmaddr148.i to ptr
  store i64 0, ptr %stind.lv149.i, align 8
  br label %init_heap.exit

init_heap.exit:                                   ; preds = %entry, %jf.then_L422.i
  %ll.static.value = load i64, ptr @itemn.global.65, align 8
  %ne.not = icmp eq i64 %ll.static.value, 0
  br i1 %ne.not, label %common.ret, label %lab_L443

lab_L443:                                         ; preds = %init_heap.exit, %jf.then_L446
  %STK14.0 = phi i64 [ %rv.rv137, %jf.then_L446 ], [ %ll.static.value, %init_heap.exit ]
  %rv.llvmaddr = shl i64 %STK14.0, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %logand = and i64 %rv.rv, 9223372036854775807
  %ge.not = icmp slt i64 %logand, %add12
  br i1 %ge.not, label %jf.then_L446, label %jf.else38

jf.else38:                                        ; preds = %lab_L443
  %rv.llvmaddr.i169 = add i64 %rv.llvmaddr, 16
  %rv.lv.i170 = inttoptr i64 %rv.llvmaddr.i169 to ptr
  %rv.rv.i171 = load i64, ptr %rv.lv.i170, align 8
  %ne.not.i = icmp eq i64 %rv.rv.i171, 0
  %rv.llvmaddr46.i = add i64 %rv.llvmaddr, 8
  %rv.lv47.i = inttoptr i64 %rv.llvmaddr46.i to ptr
  %rv.rv48.i = load i64, ptr %rv.lv47.i, align 8
  %add36.i = shl i64 %rv.rv.i171, 3
  %stind.llvmaddr.i = add i64 %add36.i, 8
  %stind.lv.i = inttoptr i64 %stind.llvmaddr.i to ptr
  %itemn.global.65.sink.i = select i1 %ne.not.i, ptr @itemn.global.65, ptr %stind.lv.i
  store i64 %rv.rv48.i, ptr %itemn.global.65.sink.i, align 8
  %rv.rv60.i = load i64, ptr %rv.lv47.i, align 8
  %ne65.not.i = icmp eq i64 %rv.rv60.i, 0
  br i1 %ne65.not.i, label %remove_from_free_list.exit, label %jf.else70.i

jf.else70.i:                                      ; preds = %jf.else38
  %rv.rv81.i = load i64, ptr %rv.lv.i170, align 8
  %add98.i = shl i64 %rv.rv60.i, 3
  %stind.llvmaddr102.i = add i64 %add98.i, 16
  %stind.lv103.i = inttoptr i64 %stind.llvmaddr102.i to ptr
  store i64 %rv.rv81.i, ptr %stind.lv103.i, align 8
  br label %remove_from_free_list.exit

remove_from_free_list.exit:                       ; preds = %jf.else38, %jf.else70.i
  store i64 0, ptr %rv.lv47.i, align 8
  store i64 0, ptr %rv.lv.i170, align 8
  %rv.rv.i174 = load i64, ptr %rv.lv, align 4
  %logand.i = and i64 %rv.rv.i174, 9223372036854775807
  %add.i175 = add i64 %0, 5
  %ge.not.i = icmp slt i64 %logand.i, %add.i175
  br i1 %ge.not.i, label %split_block.exit, label %jf.else.i176

jf.else.i176:                                     ; preds = %remove_from_free_list.exit
  %add21.i = add i64 %STK14.0, %add12
  %sub.i = sub i64 %rv.rv.i174, %add12
  %rv.llvmaddr43.i = shl i64 %add21.i, 3
  %rv.lv44.i = inttoptr i64 %rv.llvmaddr43.i to ptr
  %xor99.i = or i64 %sub.i, -9223372036854775808
  store i64 %xor99.i, ptr %rv.lv44.i, align 8
  %rv.rv114.i = load i64, ptr %rv.lv, align 4
  %2 = and i64 %add12, 9223372036854775807
  %3 = and i64 %rv.rv114.i, -9223372036854775808
  %xor134.i = or disjoint i64 %3, %2
  store i64 %xor134.i, ptr %rv.lv, align 4
  %rtap.i177 = tail call i64 @add_to_free_list(i64 %add21.i)
  %rv.rv68.pre = load i64, ptr %rv.lv, align 4
  %.pre = and i64 %rv.rv68.pre, 9223372036854775807
  br label %split_block.exit

split_block.exit:                                 ; preds = %remove_from_free_list.exit, %jf.else.i176
  %.pre-phi = phi i64 [ %logand.i, %remove_from_free_list.exit ], [ %.pre, %jf.else.i176 ]
  store i64 %.pre-phi, ptr %rv.lv, align 4
  store i64 3286577140387536, ptr %rv.lv47.i, align 8
  %add114 = add i64 %add7, %STK14.0
  %stind.llvmaddr118 = shl i64 %add114, 3
  %stind.lv119 = inttoptr i64 %stind.llvmaddr118 to ptr
  store i64 3286577140387536, ptr %stind.lv119, align 8
  %add125 = add i64 %STK14.0, 2
  br label %common.ret

common.ret:                                       ; preds = %jf.then_L446, %init_heap.exit, %split_block.exit
  %common.ret.op = phi i64 [ %add125, %split_block.exit ], [ 0, %init_heap.exit ], [ 0, %jf.then_L446 ]
  ret i64 %common.ret.op

jf.then_L446:                                     ; preds = %lab_L443
  %rv.llvmaddr135 = add i64 %rv.llvmaddr, 8
  %rv.lv136 = inttoptr i64 %rv.llvmaddr135 to ptr
  %rv.rv137 = load i64, ptr %rv.lv136, align 8
  %ne145.not = icmp eq i64 %rv.rv137, 0
  br i1 %ne145.not, label %common.ret, label %lab_L443
}

define noundef i64 @freevec(i64 %0) section ".text.BLIB" {
entry:
  %ne.not = icmp eq i64 %0, 0
  br i1 %ne.not, label %common.ret, label %jf.else

jf.else:                                          ; preds = %entry
  %sub = add i64 %0, -2
  %rv.llvmaddr = shl i64 %sub, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %add = shl i64 %0, 3
  %rv.llvmaddr24 = add i64 %add, -8
  %rv.lv25 = inttoptr i64 %rv.llvmaddr24 to ptr
  %rv.rv26 = load i64, ptr %rv.lv25, align 8
  %ne31.not = icmp eq i64 %rv.rv26, 3286577140387536
  br i1 %ne31.not, label %jt.else, label %jt.then_L450

jt.else:                                          ; preds = %jf.else
  %rv.rv = load i64, ptr %rv.lv, align 8
  %sub41 = add i64 %0, 2305843009213693949
  %add47 = add i64 %sub41, %rv.rv
  %rv.llvmaddr50 = shl i64 %add47, 3
  %rv.lv51 = inttoptr i64 %rv.llvmaddr50 to ptr
  %rv.rv52 = load i64, ptr %rv.lv51, align 8
  %ne57.not = icmp eq i64 %rv.rv52, 3286577140387536
  br i1 %ne57.not, label %jf.then_L449, label %jt.then_L450

jt.then_L450:                                     ; preds = %jt.else, %jf.else
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.81 to i64), 3
  %rtap = tail call i64 @dumpheap(i64 %lstr.bcpladdr, i64 %0)
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn72 = inttoptr i64 %lg.value to ptr
  %rtap75 = tail call i64 %rtap_ep_p_fn72(i64 60, i64 42)
  br label %jf.then_L449

jf.then_L449:                                     ; preds = %jt.then_L450, %jt.else
  %ll.static.value = load i64, ptr @itemn.global.63, align 8
  %ls = icmp sge i64 %sub, %ll.static.value
  %ll.static.value88 = load i64, ptr @itemn.global.64, align 8
  %ge.not = icmp slt i64 %sub, %ll.static.value88
  %or.cond = select i1 %ls, i1 %ge.not, i1 false
  br i1 %or.cond, label %jf.then_L451, label %jt.then_L452

jt.then_L452:                                     ; preds = %jf.then_L449
  %lstr.bcpladdr97 = ashr exact i64 ptrtoint (ptr @lstr.global.82 to i64), 3
  %rtap107 = tail call i64 @dumpheap(i64 %lstr.bcpladdr97, i64 %0)
  %lg.value110 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn113 = inttoptr i64 %lg.value110 to ptr
  %rtap116 = tail call i64 %rtap_ep_p_fn113(i64 60, i64 42)
  br label %jf.then_L451

jf.then_L451:                                     ; preds = %jf.then_L449, %jt.then_L452
  %rv.rv122 = load i64, ptr %rv.lv, align 8
  %eq.not.not = icmp sgt i64 %rv.rv122, -1
  br i1 %eq.not.not, label %jf.then_L453, label %jf.else136

jf.else136:                                       ; preds = %jf.then_L451
  %lstr.bcpladdr137 = ashr exact i64 ptrtoint (ptr @lstr.global.83 to i64), 3
  %rtap147 = tail call i64 @dumpheap(i64 %lstr.bcpladdr137, i64 %0)
  %lg.value150 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn153 = inttoptr i64 %lg.value150 to ptr
  %rtap156 = tail call i64 %rtap_ep_p_fn153(i64 60, i64 42)
  br label %jf.then_L453

common.ret:                                       ; preds = %entry, %jf.then_L453
  ret i64 -4985279381848933680

jf.then_L453:                                     ; preds = %jf.else136, %jf.then_L451
  %rtap164 = tail call i64 @add_to_free_list(i64 %sub)
  %rtap172 = tail call i64 @coalesce(i64 %sub)
  br label %common.ret
}

define range(i64 0, 9223372036854775805) i64 @maxvec() section ".text.BLIB" {
entry:
  %ll.static.value.i = load i64, ptr @itemn.global.63, align 8
  %eq.not.i = icmp eq i64 %ll.static.value.i, 0
  br i1 %eq.not.i, label %jf.else.i, label %init_heap.exit

jf.else.i:                                        ; preds = %entry
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 9, i64 0, i64 8388608, i64 3, i64 34, i64 0, i64 0)
  store i64 %fnap.i, ptr @itemn.global.63, align 8
  %if_cond26.i = icmp sgt i64 %fnap.i, -1
  br i1 %if_cond26.i, label %jf.then_L422.i, label %jf.else27.i

jf.else27.i:                                      ; preds = %jf.else.i
  %neg.i = sub i64 0, %fnap.i
  %lg.value33.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 256), align 4
  %rtap_ep_p_fn36.i = inttoptr i64 %lg.value33.i to ptr
  %rtap.i = tail call i64 %rtap_ep_p_fn36.i(i64 60, i64 %neg.i)
  %ll.static.value39.pre.i = load i64, ptr @itemn.global.63, align 8
  br label %jf.then_L422.i

jf.then_L422.i:                                   ; preds = %jf.else27.i, %jf.else.i
  %ll.static.value39.i = phi i64 [ %ll.static.value39.pre.i, %jf.else27.i ], [ %fnap.i, %jf.else.i ]
  %shift.result44.i = lshr i64 %ll.static.value39.i, 3
  store i64 %shift.result44.i, ptr @itemn.global.63, align 8
  %add.i = add nuw nsw i64 %shift.result44.i, 1048576
  store i64 %add.i, ptr @itemn.global.64, align 8
  store i64 %shift.result44.i, ptr @itemn.global.65, align 8
  %rv.llvmaddr.i = and i64 %ll.static.value39.i, -8
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %0 = and i64 %rv.rv.i, -9223372036854775808
  %xor77.i = or disjoint i64 %0, 1048576
  store i64 %xor77.i, ptr %rv.lv.i, align 8
  %ll.static.value93.i = load i64, ptr @itemn.global.65, align 8
  %rv.llvmaddr96.i = shl i64 %ll.static.value93.i, 3
  %rv.lv97.i = inttoptr i64 %rv.llvmaddr96.i to ptr
  %rv.rv98.i = load i64, ptr %rv.lv97.i, align 8
  %xor118.i = or i64 %rv.rv98.i, -9223372036854775808
  store i64 %xor118.i, ptr %rv.lv97.i, align 8
  %ll.static.value127.i = load i64, ptr @itemn.global.65, align 8
  %add132.i = shl i64 %ll.static.value127.i, 3
  %stind.llvmaddr136.i = add i64 %add132.i, 8
  %stind.lv137.i = inttoptr i64 %stind.llvmaddr136.i to ptr
  store i64 0, ptr %stind.lv137.i, align 8
  %ll.static.value139.i = load i64, ptr @itemn.global.65, align 8
  %add144.i = shl i64 %ll.static.value139.i, 3
  %stind.llvmaddr148.i = add i64 %add144.i, 16
  %stind.lv149.i = inttoptr i64 %stind.llvmaddr148.i to ptr
  store i64 0, ptr %stind.lv149.i, align 8
  br label %init_heap.exit

init_heap.exit:                                   ; preds = %entry, %jf.then_L422.i
  %ll.static.value = load i64, ptr @itemn.global.65, align 8
  %eq = icmp eq i64 %ll.static.value, 0
  br i1 %eq, label %jt.then_L457, label %lab_L455

lab_L455:                                         ; preds = %init_heap.exit, %lab_L455
  %STK1.0 = phi i64 [ %rv.rv40, %lab_L455 ], [ %ll.static.value, %init_heap.exit ]
  %STK.0 = phi i64 [ %spec.select, %lab_L455 ], [ 0, %init_heap.exit ]
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
  br i1 %eq48.not, label %jt.then_L457, label %lab_L455

jt.then_L457:                                     ; preds = %lab_L455, %init_heap.exit
  %STK.2 = phi i64 [ 0, %init_heap.exit ], [ %spec.select, %lab_L455 ]
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.scmp.i64.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.smax.i128(i128, i128) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) }
attributes #3 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
