; ModuleID = 'blib'
source_filename = "blib"

@__bcpl_global_vector = external local_unnamed_addr global [256 x i64], section "BCPLGVEC"
@lstr.global = private global [14 x i8] c"\0D<<mess:%-%n>>", section ".rodata.blib", align 8
@itemn.global = internal global [16 x i64] [i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70], section ".rodata.blib"
@lstr.global.20 = private global [51 x i8] c"2Error: rdargs format specified too many arguments\0A", section ".rodata.blib", align 8
@lstr.global.21 = private global [10 x i8] c"\09 (yes/no)", section ".rodata.blib", align 8
@lstr.global.22 = private global [4 x i8] c"\03 > ", section ".rodata.blib", align 8
@lstr.global.23 = private global [4 x i8] c"\03yes", section ".rodata.blib", align 8
@lstr.global.24 = private global [2 x i8] c"\01y", section ".rodata.blib", align 8
@lstr.global.27 = private global [2 x i8] c"\01?", section ".rodata.blib", align 8
@lstr.global.28 = private global [3 x i8] c"\02: ", section ".rodata.blib", align 8
@lstr.global.39 = private global [11 x i8] c"\0A%10.5f %n\0A", section ".rodata.blib", align 8
@lstr.global.40 = private global [11 x i8] c"\0A%10.5f %n\0A", section ".rodata.blib", align 8
@lstr.global.41 = private global [56 x i8] c"7ERROR sys_flt operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".rodata.blib", align 8
@lstr.global.43 = private global [63 x i8] c">ERROR sys package=%n operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".rodata.blib", align 8

@__bcpl_gv43 = alias ptr, ptr @deplete
@__bcpl_gv89 = alias ptr, ptr @writes
@__bcpl_gv3 = alias ptr, ptr @sys
@__bcpl_gv94 = alias ptr, ptr @writef
@__bcpl_gv83 = alias ptr, ptr @readn
@__bcpl_gv116 = alias ptr, ptr @copy_bytes
@__bcpl_gv115 = alias ptr, ptr @clear_words
@__bcpl_gv114 = alias ptr, ptr @copy_words
@__bcpl_gv99 = alias ptr, ptr @copystring
@__bcpl_gv100 = alias ptr, ptr @string_to_number
@__bcpl_gv104 = alias ptr, ptr @findarg
@__bcpl_gv103 = alias ptr, ptr @rditem
@__bcpl_gv26 = alias ptr, ptr @rdargs2
@__bcpl_gv102 = alias ptr, ptr @rdargs
@__bcpl_gv98 = alias ptr, ptr @compstring
@__bcpl_gv97 = alias ptr, ptr @compch
@__bcpl_gv84 = alias ptr, ptr @newline
@__bcpl_gv87 = alias ptr, ptr @writehex
@__bcpl_gv88 = alias ptr, ptr @writeoct
@__bcpl_gv86 = alias ptr, ptr @writen
@__bcpl_gv85 = alias ptr, ptr @writed
@__bcpl_gv96 = alias ptr, ptr @capitalch
@__bcpl_gv34 = alias ptr, ptr @randno

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define range(i64 -3074457345618258601, 3074457345618258604) i64 @randno(i64 %0) #0 section ".text.blib" {
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

define noundef i64 @write_format(i64 %0, i64 %1) local_unnamed_addr section ".text.blib" {
entry:
  %stack.vec.i = alloca [21 x i64], align 8
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %le.not = icmp eq i8 %getbyte.char, 0
  br i1 %le.not, label %jf.then_L037, label %lab_L035.preheader

lab_L035.preheader:                               ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %getbyte.string, i64 1
  %rv.llvmaddr = shl i64 %1, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %stack.vecaddr.i = ptrtoint ptr %stack.vec.i to i64
  %stack.bcpladdr.i = ashr exact i64 %stack.vecaddr.i, 3
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global to i64), 3
  br label %lab_L035

lab_L035:                                         ; preds = %lab_L035.preheader, %jump.target_L036
  %STK2.0 = phi i64 [ %STK2.8, %jump.target_L036 ], [ 1, %lab_L035.preheader ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %add = add nsw i64 %STK2.0, 1
  %eq = icmp eq i8 %getbyte.char19, 37
  br i1 %eq, label %jt.then_L041, label %jt.else

jt.else:                                          ; preds = %lab_L035
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value45 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value45 to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  br label %jump.target_L036

jt.then_L041:                                     ; preds = %lab_L035
  %getbyte.charptr55 = getelementptr i8, ptr %getbyte.string, i64 %add
  %getbyte.char56 = load i8, ptr %getbyte.charptr55, align 1
  %getbyte.charword57 = zext i8 %getbyte.char56 to i64
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.llvmaddr64 = shl i64 %rv.rv, 3
  %rv.lv65 = inttoptr i64 %rv.llvmaddr64 to ptr
  %rv.rv66 = load i64, ptr %rv.lv65, align 8
  br label %lab_L038.outer

lab_L038.outer:                                   ; preds = %lab_L060, %jt.then_L041
  %if_cond277.ph = phi i1 [ true, %jt.then_L041 ], [ false, %lab_L060 ]
  %STK25.0.ph = phi i64 [ 0, %jt.then_L041 ], [ %sub227, %lab_L060 ]
  %STK24.0.ph = phi i64 [ 0, %jt.then_L041 ], [ %sub, %lab_L060 ]
  %STK22.0.ph = phi i64 [ %getbyte.charword57, %jt.then_L041 ], [ %getbyte.charword248, %lab_L060 ]
  %STK2.1.ph = phi i64 [ %add, %jt.then_L041 ], [ %add235, %lab_L060 ]
  br label %lab_L038

lab_L038:                                         ; preds = %lab_L038.backedge, %lab_L038.outer
  %if_cond277 = phi i1 [ %if_cond277.ph, %lab_L038.outer ], [ false, %lab_L038.backedge ]
  %STK24.0 = phi i64 [ %STK24.0.ph, %lab_L038.outer ], [ %sub, %lab_L038.backedge ]
  %STK22.0 = phi i64 [ %STK22.0.ph, %lab_L038.outer ], [ %STK22.0.be, %lab_L038.backedge ]
  %STK2.1 = phi i64 [ %STK2.1.ph, %lab_L038.outer ], [ %STK2.1.be, %lab_L038.backedge ]
  %lg.value71 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn74 = inttoptr i64 %lg.value71 to ptr
  %fnap = call i64 %rtap_ep_p_fn74(i64 %STK22.0)
  switch i64 %fnap, label %lab_L044 [
    i64 80, label %lab_L093
    i64 70, label %lab_L090
    i64 69, label %lab_L089
    i64 77, label %lab_L087
    i64 45, label %lab_L086
    i64 43, label %lab_L085
    i64 36, label %lab_L085
    i64 66, label %lf_L040
    i64 90, label %lab_L079
    i64 85, label %lab_L078
    i64 78, label %lf_L039.loopexit1488
    i64 88, label %lab_L076
    i64 79, label %lab_L075
    i64 35, label %lf_L039.loopexit1395
    i64 67, label %lf_L039
    i64 84, label %lab_L072
    i64 83, label %lf_L039.loopexit
    i64 73, label %lab_L070
    i64 68, label %lab_L064
    i64 57, label %lab_L057.preheader
    i64 56, label %lab_L057.preheader
    i64 55, label %lab_L057.preheader
    i64 54, label %lab_L057.preheader
    i64 53, label %lab_L057.preheader
    i64 52, label %lab_L057.preheader
    i64 51, label %lab_L057.preheader
    i64 50, label %lab_L057.preheader
    i64 49, label %lab_L057.preheader
    i64 48, label %lab_L057.preheader
  ]

lab_L057.preheader:                               ; preds = %lab_L038, %lab_L038, %lab_L038, %lab_L038, %lab_L038, %lab_L038, %lab_L038, %lab_L038, %lab_L038, %lab_L038
  br label %lab_L057

lab_L044:                                         ; preds = %lab_L038
  %lg.value80 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn83 = inttoptr i64 %lg.value80 to ptr
  %rtap85 = call i64 %rtap_ep_p_fn83(i64 %STK22.0)
  %add91 = add i64 %STK2.1, 1
  br label %jump.target_L036

lab_L057:                                         ; preds = %lab_L057.preheader, %lab_L057
  %STK24.2 = phi i64 [ %sub, %lab_L057 ], [ %STK24.0, %lab_L057.preheader ]
  %STK22.2 = phi i64 [ %getbyte.charword130, %lab_L057 ], [ %STK22.0, %lab_L057.preheader ]
  %STK2.3 = phi i64 [ %add117, %lab_L057 ], [ %STK2.1, %lab_L057.preheader ]
  %mul = mul i64 %STK24.2, 10
  %add105 = add nsw i64 %STK22.2, -48
  %sub = add i64 %add105, %mul
  %add117 = add i64 %STK2.3, 1
  %getbyte.charptr128 = getelementptr i8, ptr %getbyte.string, i64 %add117
  %getbyte.char129 = load i8, ptr %getbyte.charptr128, align 1
  %getbyte.charword130 = zext i8 %getbyte.char129 to i64
  %2 = add i8 %getbyte.char129, -48
  %or.cond = icmp ult i8 %2, 10
  br i1 %or.cond, label %lab_L057, label %lab_L046

lab_L046:                                         ; preds = %lab_L057
  %eq162.not = icmp eq i8 %getbyte.char129, 46
  br i1 %eq162.not, label %jf.else167, label %lab_L038.backedge

lab_L038.backedge:                                ; preds = %lab_L046, %jf.else167
  %STK22.0.be = phi i64 [ %getbyte.charword130, %lab_L046 ], [ %getbyte.charword186, %jf.else167 ]
  %STK2.1.be = phi i64 [ %add117, %lab_L046 ], [ %add173, %jf.else167 ]
  br label %lab_L038

jf.else167:                                       ; preds = %lab_L046
  %add173 = add i64 %STK2.3, 2
  %getbyte.charptr184 = getelementptr i8, ptr %getbyte.string, i64 %add173
  %getbyte.char185 = load i8, ptr %getbyte.charptr184, align 1
  %getbyte.charword186 = zext i8 %getbyte.char185 to i64
  %3 = add i8 %getbyte.char185, -58
  %or.cond1170 = icmp ult i8 %3, -10
  br i1 %or.cond1170, label %lab_L038.backedge, label %lab_L060

lab_L060:                                         ; preds = %jf.else167, %lab_L060
  %STK25.1 = phi i64 [ %sub227, %lab_L060 ], [ %STK25.0.ph, %jf.else167 ]
  %STK22.3 = phi i64 [ %getbyte.charword248, %lab_L060 ], [ %getbyte.charword186, %jf.else167 ]
  %STK2.4 = phi i64 [ %add235, %lab_L060 ], [ %add173, %jf.else167 ]
  %mul216 = mul i64 %STK25.1, 10
  %add222 = add nsw i64 %STK22.3, -48
  %sub227 = add i64 %add222, %mul216
  %add235 = add i64 %STK2.4, 1
  %getbyte.charptr246 = getelementptr i8, ptr %getbyte.string, i64 %add235
  %getbyte.char247 = load i8, ptr %getbyte.charptr246, align 1
  %getbyte.charword248 = zext i8 %getbyte.char247 to i64
  %4 = add i8 %getbyte.char247, -48
  %or.cond1171 = icmp ult i8 %4, 10
  br i1 %or.cond1171, label %lab_L060, label %lab_L038.outer

lab_L064:                                         ; preds = %lab_L038
  br i1 %if_cond277, label %lab_L070.thread, label %jf.else278

lab_L070.thread:                                  ; preds = %lab_L064
  %lg.value4071394 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), align 4
  br label %jt.else488

jf.else278:                                       ; preds = %lab_L064
  %gr = icmp slt i64 %STK25.0.ph, 1
  br i1 %gr, label %jt.then_L067, label %lab_L066

lab_L066:                                         ; preds = %jf.else278, %lab_L066
  %STK280.0 = phi i64 [ %add307, %lab_L066 ], [ 1, %jf.else278 ]
  %STK279.0 = phi i64 [ %mul299, %lab_L066 ], [ 1, %jf.else278 ]
  %mul299 = mul i64 %STK279.0, 10
  %add307 = add i64 %STK280.0, 1
  %le316.not = icmp sgt i64 %add307, %STK25.0.ph
  br i1 %le316.not, label %jt.then_L067, label %lab_L066

jt.then_L067:                                     ; preds = %lab_L066, %jf.else278
  %STK279.1 = phi i64 [ 1, %jf.else278 ], [ %mul299, %lab_L066 ]
  %rv.rv66.frozen = freeze i64 %rv.rv66
  %STK279.1.frozen = freeze i64 %STK279.1
  %div = sdiv i64 %rv.rv66.frozen, %STK279.1.frozen
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %stack.vec.i)
  %neg.i = sub i64 0, %div
  %if_cond.i = icmp slt i64 %rv.rv66, 0
  %spec.select.i = select i1 %if_cond.i, i64 %div, i64 %neg.i
  br label %lab_L105.i

lab_L105.i:                                       ; preds = %lab_L105.i, %jt.then_L067
  %STK7.1.i = phi i64 [ %spec.select.i, %jt.then_L067 ], [ %div.i, %lab_L105.i ]
  %STK5.0.i = phi i64 [ 0, %jt.then_L067 ], [ %add45.i, %lab_L105.i ]
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
  br i1 %if_cond51.not.i, label %lab_L106.i, label %lab_L105.i

lab_L106.i:                                       ; preds = %lab_L105.i
  %6 = xor i64 %STK25.0.ph, -1
  %rv.rv66.lobit = ashr i64 %rv.rv66, 63
  %sub340 = add i64 %rv.rv66.lobit, %6
  %spec.select209.i = add i64 %sub340, %STK24.0
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L110.i, label %lab_L109.i

lab_L109.i:                                       ; preds = %lab_L106.i, %lab_L109.i
  %STK71.0.i = phi i64 [ %add105.i, %lab_L109.i ], [ %add70.i, %lab_L106.i ]
  %lg.value94.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn97.i = inttoptr i64 %lg.value94.i to ptr
  %rtap99.i = call i64 %rtap_ep_p_fn97.i(i64 32)
  %add105.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add105.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L110.i, label %lab_L109.i

jt.then_L110.i:                                   ; preds = %lab_L109.i, %lab_L106.i
  br i1 %if_cond.i, label %jt.else128.i, label %jf.then_L115.i

jt.else128.i:                                     ; preds = %jt.then_L110.i
  %lg.value130.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn133.i = inttoptr i64 %lg.value130.i to ptr
  %rtap135.i = call i64 %rtap_ep_p_fn133.i(i64 45)
  br label %jf.then_L115.i

jf.then_L115.i:                                   ; preds = %jt.else128.i, %jt.then_L110.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L116.i

lab_L116.i:                                       ; preds = %jf.then_L115.i, %lab_L116.i
  %STK142.0.i = phi i64 [ %add178.i, %lab_L116.i ], [ %STK5.0.i, %jf.then_L115.i ]
  %add159.i = add i64 %STK142.0.i, %stack.bcpladdr.i
  %rv.llvmaddr.i = shl i64 %add159.i, 3
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %add165.i = add i64 %rv.rv.i, 48
  %lg.value167.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn170.i = inttoptr i64 %lg.value167.i to ptr
  %rtap172.i = call i64 %rtap_ep_p_fn170.i(i64 %add165.i)
  %add178.i = add nsw i64 %STK142.0.i, -1
  %ge.not.i = icmp eq i64 %STK142.0.i, 0
  br i1 %ge.not.i, label %writedz.exit, label %lab_L116.i

writedz.exit:                                     ; preds = %lab_L116.i, %jf.then_L115.i
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %stack.vec.i)
  %lg.value360 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn363 = inttoptr i64 %lg.value360 to ptr
  %rtap365 = call i64 %rtap_ep_p_fn363(i64 46)
  %7 = mul i64 %div, %STK279.1.frozen
  %mod.decomposed = sub i64 %rv.rv66.frozen, %7
  %abs.result.128 = call i64 @llvm.abs.i64(i64 %mod.decomposed, i1 true)
  %lg.value377 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 736), align 4
  %rtap_ep_p_fn380 = inttoptr i64 %lg.value377 to ptr
  %rtap383 = call i64 %rtap_ep_p_fn380(i64 %abs.result.128, i64 %STK25.0.ph)
  %rv.rv389 = load i64, ptr %rv.lv, align 8
  %add394 = add i64 %rv.rv389, 1
  store i64 %add394, ptr %rv.lv, align 8
  %add403 = add i64 %STK2.1, 1
  br label %jump.target_L036

lab_L070:                                         ; preds = %lab_L038
  %lg.value407 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), align 4
  br i1 %if_cond277, label %jt.else488, label %jt.then_L081

lab_L072:                                         ; preds = %lab_L038
  %lg.value421 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 720), align 4
  br i1 %if_cond277, label %jt.else488, label %jt.then_L081

lab_L075:                                         ; preds = %lab_L038
  %lg.value442 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), align 4
  br i1 %if_cond277, label %jt.else488, label %jt.then_L081

lab_L076:                                         ; preds = %lab_L038
  %lg.value449 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  br i1 %if_cond277, label %jt.else488, label %jt.then_L081

lab_L078:                                         ; preds = %lab_L038
  %lg.value463 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 728), align 4
  br i1 %if_cond277, label %jt.else488, label %jt.then_L081

lab_L079:                                         ; preds = %lab_L038
  %lg.value470 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 736), align 4
  br i1 %if_cond277, label %jt.else488, label %jt.then_L081

lf_L040:                                          ; preds = %lab_L038
  br i1 %if_cond277, label %jt.else488, label %jt.then_L081

jt.else488:                                       ; preds = %lab_L070.thread, %lab_L070, %lab_L072, %lab_L075, %lab_L076, %lab_L078, %lab_L079, %lf_L040
  %STK23.1.ph1392 = phi i64 [ %lg.value470, %lab_L079 ], [ ptrtoint (ptr @writebin to i64), %lf_L040 ], [ %lg.value463, %lab_L078 ], [ %lg.value449, %lab_L076 ], [ %lg.value442, %lab_L075 ], [ %lg.value421, %lab_L072 ], [ %lg.value407, %lab_L070 ], [ %lg.value4071394, %lab_L070.thread ]
  %add494 = add i64 %STK2.1, 1
  %getbyte.charptr505 = getelementptr i8, ptr %getbyte.string, i64 %add494
  %getbyte.char506 = load i8, ptr %getbyte.charptr505, align 1
  %getbyte.charword507 = zext i8 %getbyte.char506 to i64
  %lg.value509 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn512 = inttoptr i64 %lg.value509 to ptr
  %fnap514 = call i64 %rtap_ep_p_fn512(i64 %getbyte.charword507)
  %8 = add i64 %fnap514, -58
  %or.cond1172 = icmp ult i64 %8, -10
  %__res_a.0.v = select i1 %or.cond1172, i64 -55, i64 -48
  %__res_a.0 = add i64 %__res_a.0.v, %fnap514
  br label %jt.then_L081

jt.then_L081:                                     ; preds = %lab_L070, %lab_L072, %lab_L075, %lab_L076, %lab_L078, %lab_L079, %jt.else488, %lf_L040
  %STK23.1.ph1391 = phi i64 [ ptrtoint (ptr @writebin to i64), %lf_L040 ], [ %STK23.1.ph1392, %jt.else488 ], [ %lg.value470, %lab_L079 ], [ %lg.value463, %lab_L078 ], [ %lg.value449, %lab_L076 ], [ %lg.value442, %lab_L075 ], [ %lg.value421, %lab_L072 ], [ %lg.value407, %lab_L070 ]
  %STK24.3 = phi i64 [ %STK24.0, %lf_L040 ], [ %__res_a.0, %jt.else488 ], [ %STK24.0, %lab_L079 ], [ %STK24.0, %lab_L078 ], [ %STK24.0, %lab_L076 ], [ %STK24.0, %lab_L075 ], [ %STK24.0, %lab_L072 ], [ %STK24.0, %lab_L070 ]
  %STK2.6 = phi i64 [ %STK2.1, %lf_L040 ], [ %add494, %jt.else488 ], [ %STK2.1, %lab_L079 ], [ %STK2.1, %lab_L078 ], [ %STK2.1, %lab_L076 ], [ %STK2.1, %lab_L075 ], [ %STK2.1, %lab_L072 ], [ %STK2.1, %lab_L070 ]
  %rtap_ep_p_fn571 = inttoptr i64 %STK23.1.ph1391 to ptr
  %rtap574 = call i64 %rtap_ep_p_fn571(i64 %rv.rv66, i64 %STK24.3)
  %rv.rv580 = load i64, ptr %rv.lv, align 8
  %add585 = add i64 %rv.rv580, 1
  store i64 %add585, ptr %rv.lv, align 8
  %add598 = add i64 %STK2.6, 1
  br label %jump.target_L036

lf_L039.loopexit1395:                             ; preds = %lab_L038
  br label %lf_L039

lf_L039.loopexit1488:                             ; preds = %lab_L038
  br label %lf_L039

lf_L039.loopexit:                                 ; preds = %lab_L038
  br label %lf_L039

lf_L039:                                          ; preds = %lab_L038, %lf_L039.loopexit, %lf_L039.loopexit1488, %lf_L039.loopexit1395
  %STK23.1.ph1185.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1008), %lf_L039.loopexit1395 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 688), %lf_L039.loopexit1488 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), %lf_L039.loopexit ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), %lab_L038 ]
  %STK23.1.ph1185 = load i64, ptr %STK23.1.ph1185.in, align 4
  %rtap_ep_p_fn608 = inttoptr i64 %STK23.1.ph1185 to ptr
  %rtap611 = call i64 %rtap_ep_p_fn608(i64 %rv.rv66, i64 0)
  %rv.rv617 = load i64, ptr %rv.lv, align 8
  %add622 = add i64 %rv.rv617, 1
  store i64 %add622, ptr %rv.lv, align 8
  %add635 = add i64 %STK2.1, 1
  br label %jump.target_L036

lab_L085:                                         ; preds = %lab_L038, %lab_L038
  %rv.rv644 = load i64, ptr %rv.lv, align 8
  %add649 = add i64 %rv.rv644, 1
  store i64 %add649, ptr %rv.lv, align 8
  %add662 = add i64 %STK2.1, 1
  br label %jump.target_L036

lab_L086:                                         ; preds = %lab_L038
  %rv.rv671 = load i64, ptr %rv.lv, align 8
  %sub676 = add i64 %rv.rv671, -1
  store i64 %sub676, ptr %rv.lv, align 8
  %add689 = add i64 %STK2.1, 1
  br label %jump.target_L036

lab_L087:                                         ; preds = %lab_L038
  %stack.vec = alloca [33 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %rv.rv699 = load i64, ptr %rv.lv, align 8
  %add704 = add i64 %rv.rv699, 1
  store i64 %add704, ptr %rv.lv, align 8
  %lg.value717 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 744), align 4
  %rtap_ep_p_fn720 = inttoptr i64 %lg.value717 to ptr
  %fnap724 = call i64 %rtap_ep_p_fn720(i64 %rv.rv66, i64 %stack.bcpladdr, i64 32)
  %if_cond727.not = icmp eq i64 %fnap724, 0
  %spec.select = select i1 %if_cond727.not, i64 %lstr.bcpladdr, i64 %stack.bcpladdr
  %rtap741 = call i64 @write_format(i64 %spec.select, i64 %1)
  %add747 = add i64 %STK2.1, 1
  br label %jump.target_L036

lab_L089:                                         ; preds = %lab_L038
  %rv.rv756 = load i64, ptr %rv.lv, align 8
  %add761 = add i64 %rv.rv756, 1
  store i64 %add761, ptr %rv.lv, align 8
  %lg.value775 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1440), align 4
  %rtap_ep_p_fn778 = inttoptr i64 %lg.value775 to ptr
  %rtap782 = call i64 %rtap_ep_p_fn778(i64 %rv.rv66, i64 %STK24.0, i64 %STK25.0.ph)
  %add788 = add i64 %STK2.1, 1
  br label %jump.target_L036

lab_L090:                                         ; preds = %lab_L038
  %rv.rv797 = load i64, ptr %rv.lv, align 8
  %add802 = add i64 %rv.rv797, 1
  store i64 %add802, ptr %rv.lv, align 8
  br i1 %if_cond277, label %jf.then_L091, label %jf.else814

jf.else814:                                       ; preds = %lab_L090
  %lg.value821 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 584), align 4
  %rtap_ep_p_fn824 = inttoptr i64 %lg.value821 to ptr
  %rtap828 = call i64 %rtap_ep_p_fn824(i64 %rv.rv66, i64 %STK24.0, i64 %STK25.0.ph)
  br label %jump.target_L092

jf.then_L091:                                     ; preds = %lab_L090
  %rtap840 = call i64 @write_format(i64 %rv.rv66, i64 %1)
  br label %jump.target_L092

jump.target_L092:                                 ; preds = %jf.then_L091, %jf.else814
  %add846 = add i64 %STK2.1, 1
  br label %jump.target_L036

lab_L093:                                         ; preds = %lab_L038
  %ne = icmp ne i64 %rv.rv66, 1
  %booltoword855 = sext i1 %ne to i64
  %rv.rv862 = load i64, ptr %rv.lv, align 8
  %add867 = add i64 %rv.rv862, 1
  store i64 %add867, ptr %rv.lv, align 8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK2.1
  %getbyte.char892 = load i8, ptr %gep, align 1
  %getbyte.charword893 = zext i8 %getbyte.char892 to i64
  %add901 = add i64 %STK2.1, 2
  %eq909.not = icmp eq i8 %getbyte.char892, 92
  br i1 %eq909.not, label %jf.else914, label %jf.then_L094

jf.else914:                                       ; preds = %lab_L093
  %getbyte.char927 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword928 = zext i8 %getbyte.char927 to i64
  %gr932 = icmp sgt i64 %add901, %getbyte.charword928
  br i1 %gr932, label %jump.target_L036, label %lab_L096

lab_L096:                                         ; preds = %jf.else914, %lab_L097
  %getbyte.char10101389 = phi i8 [ %getbyte.char1010, %lab_L097 ], [ %getbyte.char927, %jf.else914 ]
  %STK916.0 = phi i64 [ %STK916.1, %lab_L097 ], [ %booltoword855, %jf.else914 ]
  %STK2.7 = phi i64 [ %add955, %lab_L097 ], [ %add901, %jf.else914 ]
  %getbyte.charptr946 = getelementptr i8, ptr %getbyte.string, i64 %STK2.7
  %getbyte.char947 = load i8, ptr %getbyte.charptr946, align 1
  %getbyte.charword948 = zext i8 %getbyte.char947 to i64
  %add955 = add nsw i64 %STK2.7, 1
  %eq963.not = icmp eq i8 %getbyte.char947, 92
  br i1 %eq963.not, label %jf.else968, label %jf.then_L099

jf.else968:                                       ; preds = %lab_L096
  %not = xor i64 %STK916.0, -1
  %eq980 = icmp eq i64 %booltoword855, %not
  br i1 %eq980, label %jump.target_L036, label %lab_L097

jf.then_L099:                                     ; preds = %lab_L096
  %if_cond990.not = icmp eq i64 %STK916.0, 0
  br i1 %if_cond990.not, label %jt.else991, label %lab_L097

jt.else991:                                       ; preds = %jf.then_L099
  %lg.value994 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn997 = inttoptr i64 %lg.value994 to ptr
  %rtap999 = call i64 %rtap_ep_p_fn997(i64 %getbyte.charword948)
  %getbyte.char1010.pre = load i8, ptr %getbyte.string, align 8
  br label %lab_L097

lab_L097:                                         ; preds = %jf.else968, %jt.else991, %jf.then_L099
  %getbyte.char1010 = phi i8 [ %getbyte.char10101389, %jf.then_L099 ], [ %getbyte.char1010.pre, %jt.else991 ], [ %getbyte.char10101389, %jf.else968 ]
  %STK916.1 = phi i64 [ -1, %jf.then_L099 ], [ 0, %jt.else991 ], [ %not, %jf.else968 ]
  %getbyte.charword1011 = zext i8 %getbyte.char1010 to i64
  %gr1015.not.not = icmp slt i64 %STK2.7, %getbyte.charword1011
  br i1 %gr1015.not.not, label %lab_L096, label %jump.target_L036

jf.then_L094:                                     ; preds = %lab_L093
  br i1 %ne, label %jf.else1026, label %jump.target_L036

jf.else1026:                                      ; preds = %jf.then_L094
  %lg.value1029 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn1032 = inttoptr i64 %lg.value1029 to ptr
  %rtap1034 = call i64 %rtap_ep_p_fn1032(i64 %getbyte.charword893)
  br label %jump.target_L036

jump.target_L036:                                 ; preds = %lab_L097, %jf.else968, %jf.then_L094, %jf.else1026, %jf.else914, %jump.target_L092, %lab_L089, %lab_L087, %lab_L086, %lab_L085, %lf_L039, %jt.then_L081, %writedz.exit, %lab_L044, %jt.else
  %STK2.8 = phi i64 [ %add91, %lab_L044 ], [ %add598, %jt.then_L081 ], [ %add635, %lf_L039 ], [ %add403, %writedz.exit ], [ %add662, %lab_L085 ], [ %add689, %lab_L086 ], [ %add747, %lab_L087 ], [ %add788, %lab_L089 ], [ %add846, %jump.target_L092 ], [ %add901, %jf.then_L094 ], [ %add901, %jf.else1026 ], [ %add901, %jf.else914 ], [ %add, %jt.else ], [ %add955, %jf.else968 ], [ %add955, %lab_L097 ]
  %getbyte.char1048 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword1049 = zext i8 %getbyte.char1048 to i64
  %le1053.not = icmp sgt i64 %STK2.8, %getbyte.charword1049
  br i1 %le1053.not, label %jf.then_L037, label %lab_L035

jf.then_L037:                                     ; preds = %jump.target_L036, %entry
  store i64 %lg.value, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  ret i64 -4985279381848933680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @capitalch(i64 %0) #1 section ".text.blib" {
entry:
  %1 = add i64 %0, -123
  %or.cond = icmp ult i64 %1, -26
  %sub = add nsw i64 %0, -32
  %common.ret.op = select i1 %or.cond, i64 %0, i64 %sub
  ret i64 %common.ret.op
}

define noundef i64 @writedz(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr section ".text.blib" {
entry:
  %stack.vec = alloca [21 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %neg = sub i64 0, %0
  %if_cond = icmp eq i64 %3, 0
  %spec.select = select i1 %if_cond, i64 %neg, i64 %0
  %not.if_cond = xor i1 %if_cond, true
  %sub = sext i1 %not.if_cond to i64
  br label %lab_L105

lab_L105:                                         ; preds = %lab_L105, %entry
  %STK7.1 = phi i64 [ %spec.select, %entry ], [ %div, %lab_L105 ]
  %STK5.0 = phi i64 [ 0, %entry ], [ %add45, %lab_L105 ]
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
  br i1 %if_cond51.not, label %lab_L106, label %lab_L105

lab_L106:                                         ; preds = %lab_L105
  %spec.select209 = add i64 %1, %sub
  %if_cond60 = icmp eq i64 %2, 0
  %or.cond = select i1 %if_cond, i1 true, i1 %if_cond60
  br i1 %or.cond, label %jf.then_L108, label %jf.else61

jf.else61:                                        ; preds = %lab_L106
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 45)
  br label %jf.then_L108

jf.then_L108:                                     ; preds = %jf.else61, %lab_L106
  %add70 = add i64 %STK5.0, 2
  %gr = icmp sgt i64 %add70, %spec.select209
  br i1 %gr, label %jt.then_L110, label %lab_L109.preheader

lab_L109.preheader:                               ; preds = %jf.then_L108
  %. = select i1 %if_cond60, i64 32, i64 48
  br label %lab_L109

lab_L109:                                         ; preds = %lab_L109.preheader, %lab_L109
  %STK71.0 = phi i64 [ %add105, %lab_L109 ], [ %add70, %lab_L109.preheader ]
  %lg.value94 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn97 = inttoptr i64 %lg.value94 to ptr
  %rtap99 = call i64 %rtap_ep_p_fn97(i64 %.)
  %add105 = add i64 %STK71.0, 1
  %le.not = icmp sgt i64 %add105, %spec.select209
  br i1 %le.not, label %jt.then_L110, label %lab_L109

jt.then_L110:                                     ; preds = %lab_L109, %jf.then_L108
  %or.cond210 = select i1 %not.if_cond, i1 %if_cond60, i1 false
  br i1 %or.cond210, label %jt.else128, label %jf.then_L115

jt.else128:                                       ; preds = %jt.then_L110
  %lg.value130 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn133 = inttoptr i64 %lg.value130 to ptr
  %rtap135 = call i64 %rtap_ep_p_fn133(i64 45)
  br label %jf.then_L115

jf.then_L115:                                     ; preds = %jt.else128, %jt.then_L110
  %ls = icmp slt i64 %STK5.0, 0
  br i1 %ls, label %jt.then_L117, label %lab_L116

lab_L116:                                         ; preds = %jf.then_L115, %lab_L116
  %STK142.0 = phi i64 [ %add178, %lab_L116 ], [ %STK5.0, %jf.then_L115 ]
  %add159 = add i64 %STK142.0, %stack.bcpladdr
  %rv.llvmaddr = shl i64 %add159, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %add165 = add i64 %rv.rv, 48
  %lg.value167 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn170 = inttoptr i64 %lg.value167 to ptr
  %rtap172 = call i64 %rtap_ep_p_fn170(i64 %add165)
  %add178 = add nsw i64 %STK142.0, -1
  %ge.not = icmp eq i64 %STK142.0, 0
  br i1 %ge.not, label %jt.then_L117, label %lab_L116

jt.then_L117:                                     ; preds = %lab_L116, %jf.then_L115
  ret i64 -4985279381848933680
}

define noundef i64 @writed(i64 %0, i64 %1) section ".text.blib" {
entry:
  %stack.vec.i = alloca [21 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %stack.vec.i)
  %stack.vecaddr.i = ptrtoint ptr %stack.vec.i to i64
  %stack.bcpladdr.i = ashr exact i64 %stack.vecaddr.i, 3
  %2 = call i64 @llvm.abs.i64(i64 %0, i1 false)
  %spec.select.i = sub i64 0, %2
  br label %lab_L105.i

lab_L105.i:                                       ; preds = %lab_L105.i, %entry
  %STK7.1.i = phi i64 [ %spec.select.i, %entry ], [ %div.i, %lab_L105.i ]
  %STK5.0.i = phi i64 [ 0, %entry ], [ %add45.i, %lab_L105.i ]
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
  br i1 %if_cond51.not.i, label %lab_L106.i, label %lab_L105.i

lab_L106.i:                                       ; preds = %lab_L105.i
  %if_cond.i = icmp slt i64 %0, 0
  %.lobit = ashr i64 %0, 63
  %spec.select209.i = add i64 %1, %.lobit
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L110.i, label %lab_L109.i

lab_L109.i:                                       ; preds = %lab_L106.i, %lab_L109.i
  %STK71.0.i = phi i64 [ %add105.i, %lab_L109.i ], [ %add70.i, %lab_L106.i ]
  %lg.value94.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn97.i = inttoptr i64 %lg.value94.i to ptr
  %rtap99.i = call i64 %rtap_ep_p_fn97.i(i64 32)
  %add105.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add105.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L110.i, label %lab_L109.i

jt.then_L110.i:                                   ; preds = %lab_L109.i, %lab_L106.i
  br i1 %if_cond.i, label %jt.else128.i, label %jf.then_L115.i

jt.else128.i:                                     ; preds = %jt.then_L110.i
  %lg.value130.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn133.i = inttoptr i64 %lg.value130.i to ptr
  %rtap135.i = call i64 %rtap_ep_p_fn133.i(i64 45)
  br label %jf.then_L115.i

jf.then_L115.i:                                   ; preds = %jt.else128.i, %jt.then_L110.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L116.i

lab_L116.i:                                       ; preds = %jf.then_L115.i, %lab_L116.i
  %STK142.0.i = phi i64 [ %add178.i, %lab_L116.i ], [ %STK5.0.i, %jf.then_L115.i ]
  %add159.i = add i64 %STK142.0.i, %stack.bcpladdr.i
  %rv.llvmaddr.i = shl i64 %add159.i, 3
  %rv.lv.i = inttoptr i64 %rv.llvmaddr.i to ptr
  %rv.rv.i = load i64, ptr %rv.lv.i, align 8
  %add165.i = add i64 %rv.rv.i, 48
  %lg.value167.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn170.i = inttoptr i64 %lg.value167.i to ptr
  %rtap172.i = call i64 %rtap_ep_p_fn170.i(i64 %add165.i)
  %add178.i = add nsw i64 %STK142.0.i, -1
  %ge.not.i = icmp eq i64 %STK142.0.i, 0
  br i1 %ge.not.i, label %writedz.exit, label %lab_L116.i

writedz.exit:                                     ; preds = %lab_L116.i, %jf.then_L115.i
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %stack.vec.i)
  ret i64 -4985279381848933680
}

define noundef i64 @writen(i64 %0) section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %0, i64 0)
  ret i64 -4985279381848933680
}

define noundef i64 @writeoct(i64 %0, i64 %1) section ".text.blib" {
entry:
  %gr = icmp slt i64 %1, 2
  br i1 %gr, label %jf.then_L120, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 3
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then_L120

jf.then_L120:                                     ; preds = %jf.else, %entry
  %logand = and i64 %0, 7
  %add = or disjoint i64 %logand, 48
  %lg.value30 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn33 = inttoptr i64 %lg.value30 to ptr
  %rtap35 = tail call i64 %rtap_ep_p_fn33(i64 %add)
  ret i64 -4985279381848933680
}

define noundef i64 @writehex(i64 %0, i64 %1) section ".text.blib" {
entry:
  %gr = icmp slt i64 %1, 2
  br i1 %gr, label %jf.then_L121, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 4
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then_L121

jf.then_L121:                                     ; preds = %jf.else, %entry
  %logand = shl i64 %0, 3
  %add39 = and i64 %logand, 120
  %lll.bcpladdr40 = add i64 %add39, ptrtoint (ptr @itemn.global to i64)
  %rv.lv = inttoptr i64 %lll.bcpladdr40 to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %lg.value31 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn34 = inttoptr i64 %lg.value31 to ptr
  %rtap36 = tail call i64 %rtap_ep_p_fn34(i64 %rv.rv)
  ret i64 -4985279381848933680
}

define noundef i64 @writebin(i64 %0, i64 %1) section ".text.blib" {
entry:
  %gr = icmp slt i64 %1, 2
  br i1 %gr, label %jf.then_L123, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 1
  %sub = add nsw i64 %1, -1
  %rtap = tail call i64 @writebin(i64 %shift.result10, i64 %sub)
  br label %jf.then_L123

jf.then_L123:                                     ; preds = %jf.else, %entry
  %logand = and i64 %0, 1
  %add = or disjoint i64 %logand, 48
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn32 = inttoptr i64 %lg.value to ptr
  %rtap34 = tail call i64 %rtap_ep_p_fn32(i64 %add)
  ret i64 -4985279381848933680
}

define noundef i64 @newline() section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 10)
  ret i64 -4985279381848933680
}

define i64 @compch(i64 %0, i64 %1) section ".text.blib" {
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

define i64 @compstring(i64 %0, i64 %1) section ".text.blib" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.llvmaddr10 = shl i64 %1, 3
  %getbyte.string11 = inttoptr i64 %getbyte.llvmaddr10 to ptr
  %getbyte.char13 = load i8, ptr %getbyte.string11, align 8
  %ls.not = icmp ult i8 %getbyte.char, %getbyte.char13
  %. = select i1 %ls.not, i64 %0, i64 %1
  %getbyte.llvmaddr34 = shl i64 %., 3
  %getbyte.string35 = inttoptr i64 %getbyte.llvmaddr34 to ptr
  %getbyte.char37 = load i8, ptr %getbyte.string35, align 8
  %getbyte.charword38 = zext i8 %getbyte.char37 to i64
  %gr = icmp eq i8 %getbyte.char37, 0
  br i1 %gr, label %jt.then_L127, label %lab_L126

lab_L126:                                         ; preds = %entry, %lab_L129
  %STK28.0 = phi i64 [ %add, %lab_L129 ], [ 1, %entry ]
  %getbyte.charptr58 = getelementptr i8, ptr %getbyte.string, i64 %STK28.0
  %getbyte.char59 = load i8, ptr %getbyte.charptr58, align 1
  %getbyte.charword60 = zext i8 %getbyte.char59 to i64
  %getbyte.charptr70 = getelementptr i8, ptr %getbyte.string11, i64 %STK28.0
  %getbyte.char71 = load i8, ptr %getbyte.charptr70, align 1
  %getbyte.charword72 = zext i8 %getbyte.char71 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword60, i64 %getbyte.charword72)
  %if_cond80 = icmp eq i64 %fnap, 0
  br i1 %if_cond80, label %lab_L129, label %common.ret

common.ret:                                       ; preds = %lab_L126, %jf.then_L131, %jt.then_L127
  %common.ret.op = phi i64 [ 0, %jt.then_L127 ], [ %.144, %jf.then_L131 ], [ %fnap, %lab_L126 ]
  ret i64 %common.ret.op

lab_L129:                                         ; preds = %lab_L126
  %add = add nuw nsw i64 %STK28.0, 1
  %le.not.not = icmp samesign ult i64 %STK28.0, %getbyte.charword38
  br i1 %le.not.not, label %lab_L126, label %jt.then_L127

jt.then_L127:                                     ; preds = %lab_L129, %entry
  %eq.not = icmp eq i8 %getbyte.char13, %getbyte.char
  br i1 %eq.not, label %common.ret, label %jf.then_L131

jf.then_L131:                                     ; preds = %jt.then_L127
  %eq120.not = icmp eq i64 %0, %.
  %.144 = select i1 %eq120.not, i64 -1, i64 1
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @getkeylen(i64 %0, i64 %1, i64 %2, i64 returned %3) local_unnamed_addr #2 section ".text.blib" {
entry:
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %jt.then_L135, label %lab_L133.preheader

lab_L133.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  br label %lab_L133

lab_L133:                                         ; preds = %lab_L133.preheader, %jf.else
  %STK4.0 = phi i64 [ %add, %jf.else ], [ 1, %lab_L133.preheader ]
  %STK2.0 = phi i64 [ %spec.select, %jf.else ], [ %2, %lab_L133.preheader ]
  %if_cond13 = icmp eq i64 %STK2.0, 0
  br i1 %if_cond13, label %jt.then_L135, label %jf.else

jf.else:                                          ; preds = %lab_L133
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK4.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %eq.not = icmp eq i8 %getbyte.char, 44
  %sub = sext i1 %eq.not to i64
  %spec.select = add i64 %STK2.0, %sub
  %add = add i64 %STK4.0, 1
  %gr46.not = icmp sgt i64 %add, %1
  br i1 %gr46.not, label %jt.then_L135, label %lab_L133

jt.then_L135:                                     ; preds = %jf.else, %lab_L133, %entry
  %STK4.1 = phi i64 [ 1, %entry ], [ %add, %jf.else ], [ %STK4.0, %lab_L133 ]
  %le.not = icmp sgt i64 %STK4.1, %1
  br i1 %le.not, label %jt.then_L135.jf.then_L139_crit_edge, label %lab_L137.preheader

jt.then_L135.jf.then_L139_crit_edge:              ; preds = %jt.then_L135
  %.pre = shl i64 %3, 3
  %.pre204 = inttoptr i64 %.pre to ptr
  br label %jf.then_L139

lab_L137.preheader:                               ; preds = %jt.then_L135
  %getbyte.llvmaddr69 = shl i64 %0, 3
  %getbyte.string70 = inttoptr i64 %getbyte.llvmaddr69 to ptr
  %putbyte.llvmaddr = shl i64 %3, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L137

lab_L137:                                         ; preds = %lab_L137.preheader, %jt.then_L140
  %STK5.0 = phi i64 [ %STK5.1, %jt.then_L140 ], [ 0, %lab_L137.preheader ]
  %STK4.2 = phi i64 [ %add148, %jt.then_L140 ], [ %STK4.1, %lab_L137.preheader ]
  %getbyte.charptr71 = getelementptr i8, ptr %getbyte.string70, i64 %STK4.2
  %getbyte.char72 = load i8, ptr %getbyte.charptr71, align 1
  switch i8 %getbyte.char72, label %jt.else118 [
    i8 47, label %jf.then_L139.loopexit.split.loop.exit201
    i8 61, label %jf.then_L139.loopexit.split.loop.exit201
    i8 44, label %jf.then_L139.loopexit.split.loop.exit201
    i8 10, label %jt.then_L140
  ]

jt.else118:                                       ; preds = %lab_L137
  %add124 = add i64 %STK5.0, 1
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %add124
  store i8 %getbyte.char72, ptr %putbyte.charptr, align 1
  br label %jt.then_L140

jt.then_L140:                                     ; preds = %lab_L137, %jt.else118
  %STK5.1 = phi i64 [ %add124, %jt.else118 ], [ %STK5.0, %lab_L137 ]
  %add148 = add i64 %STK4.2, 1
  %le157.not = icmp sgt i64 %add148, %1
  br i1 %le157.not, label %jf.then_L139.loopexit.split.loop.exit, label %lab_L137

jf.then_L139.loopexit.split.loop.exit:            ; preds = %jt.then_L140
  %extract.t200.le = trunc i64 %STK5.1 to i8
  br label %jf.then_L139

jf.then_L139.loopexit.split.loop.exit201:         ; preds = %lab_L137, %lab_L137, %lab_L137
  %extract.t.le = trunc i64 %STK5.0 to i8
  br label %jf.then_L139

jf.then_L139:                                     ; preds = %jt.then_L135.jf.then_L139_crit_edge, %jf.then_L139.loopexit.split.loop.exit, %jf.then_L139.loopexit.split.loop.exit201
  %putbyte.string173.pre-phi = phi ptr [ %.pre204, %jt.then_L135.jf.then_L139_crit_edge ], [ %putbyte.string, %jf.then_L139.loopexit.split.loop.exit ], [ %putbyte.string, %jf.then_L139.loopexit.split.loop.exit201 ]
  %STK5.2.off0 = phi i8 [ 0, %jt.then_L135.jf.then_L139_crit_edge ], [ %extract.t200.le, %jf.then_L139.loopexit.split.loop.exit ], [ %extract.t.le, %jf.then_L139.loopexit.split.loop.exit201 ]
  store i8 %STK5.2.off0, ptr %putbyte.string173.pre-phi, align 1
  ret i64 %3
}

define i64 @rdargs(i64 %0, i64 %1, i64 %2) section ".text.blib" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %fnap = tail call i64 @rdargslen(i64 %0, i64 %getbyte.charword, i64 %1, i64 %2)
  ret i64 %fnap
}

define i64 @rdargs2(i64 %0, i64 %1, i64 %2, i64 %3) section ".text.blib" {
entry:
  %stack.vec = alloca [64 x i64], align 8
  %stack.vec162 = ptrtoint ptr %stack.vec to i64
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr = icmp eq i8 %getbyte.char, 0
  br i1 %gr, label %jt.then_L142, label %lab_L141.preheader

lab_L141.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i8 %getbyte.char, 4
  %diff.check = icmp eq i64 %getbyte.llvmaddr, %stack.vec162
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %lab_L141.preheader182, label %vector.ph

vector.ph:                                        ; preds = %lab_L141.preheader
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
  br i1 %cmp.n, label %jt.then_L142, label %lab_L141.preheader182

lab_L141.preheader182:                            ; preds = %lab_L141.preheader, %middle.block
  %STK6.0.ph = phi i64 [ 1, %lab_L141.preheader ], [ %4, %middle.block ]
  %STK4.0.ph = phi i64 [ 0, %lab_L141.preheader ], [ %n.vec, %middle.block ]
  br label %lab_L141

lab_L141:                                         ; preds = %lab_L141.preheader182, %lab_L141
  %STK6.0 = phi i64 [ %add42, %lab_L141 ], [ %STK6.0.ph, %lab_L141.preheader182 ]
  %STK4.0 = phi i64 [ %add, %lab_L141 ], [ %STK4.0.ph, %lab_L141.preheader182 ]
  %add = add nuw nsw i64 %STK4.0, 1
  %getbyte.charptr29 = getelementptr i8, ptr %getbyte.string, i64 %STK6.0
  %getbyte.char30 = load i8, ptr %getbyte.charptr29, align 1
  %putbyte.charptr = getelementptr i8, ptr %stack.vec, i64 %add
  store i8 %getbyte.char30, ptr %putbyte.charptr, align 1
  %add42 = add nuw nsw i64 %STK6.0, 1
  %le.not.not = icmp samesign ult i64 %STK6.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L141, label %jt.then_L142, !llvm.loop !3

jt.then_L142:                                     ; preds = %lab_L141, %middle.block, %entry
  %STK4.1 = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ], [ %add, %lab_L141 ]
  %getbyte.llvmaddr62 = shl i64 %1, 3
  %getbyte.string63 = inttoptr i64 %getbyte.llvmaddr62 to ptr
  %getbyte.char65 = load i8, ptr %getbyte.string63, align 8
  %getbyte.charword66 = zext i8 %getbyte.char65 to i64
  %gr74 = icmp eq i8 %getbyte.char65, 0
  br i1 %gr74, label %jt.then_L146, label %lab_L145.preheader

lab_L145.preheader:                               ; preds = %jt.then_L142
  %min.iters.check168 = icmp ult i8 %getbyte.char65, 4
  br i1 %min.iters.check168, label %lab_L145.preheader181, label %vector.memcheck164

vector.memcheck164:                               ; preds = %lab_L145.preheader
  %9 = add i64 %STK4.1, %stack.vec162
  %10 = sub i64 %9, %getbyte.llvmaddr62
  %diff.check165 = icmp ult i64 %10, 4
  br i1 %diff.check165, label %lab_L145.preheader181, label %vector.ph169

vector.ph169:                                     ; preds = %vector.memcheck164
  %n.vec171 = and i64 %getbyte.charword66, 252
  %11 = or disjoint i64 %n.vec171, 1
  %12 = add i64 %STK4.1, %n.vec171
  %13 = getelementptr i8, ptr %stack.vec, i64 %STK4.1
  %invariant.gep = getelementptr i8, ptr %13, i64 1
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph169
  %index173 = phi i64 [ 0, %vector.ph169 ], [ %index.next177, %vector.body172 ]
  %offset.idx174 = or disjoint i64 %index173, 1
  %14 = getelementptr i8, ptr %getbyte.string63, i64 %offset.idx174
  %wide.load176 = load <4 x i8>, ptr %14, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index173
  store <4 x i8> %wide.load176, ptr %gep, align 1
  %index.next177 = add nuw i64 %index173, 4
  %15 = icmp eq i64 %index.next177, %n.vec171
  br i1 %15, label %middle.block166, label %vector.body172, !llvm.loop !4

middle.block166:                                  ; preds = %vector.body172
  %cmp.n178 = icmp eq i64 %n.vec171, %getbyte.charword66
  br i1 %cmp.n178, label %jt.then_L146, label %lab_L145.preheader181

lab_L145.preheader181:                            ; preds = %vector.memcheck164, %lab_L145.preheader, %middle.block166
  %STK56.0.ph = phi i64 [ 1, %lab_L145.preheader ], [ 1, %vector.memcheck164 ], [ %11, %middle.block166 ]
  %STK4.2.ph = phi i64 [ %STK4.1, %lab_L145.preheader ], [ %STK4.1, %vector.memcheck164 ], [ %12, %middle.block166 ]
  br label %lab_L145

lab_L145:                                         ; preds = %lab_L145.preheader181, %lab_L145
  %STK56.0 = phi i64 [ %add116, %lab_L145 ], [ %STK56.0.ph, %lab_L145.preheader181 ]
  %STK4.2 = phi i64 [ %add85, %lab_L145 ], [ %STK4.2.ph, %lab_L145.preheader181 ]
  %add85 = add nuw nsw i64 %STK4.2, 1
  %getbyte.charptr96 = getelementptr i8, ptr %getbyte.string63, i64 %STK56.0
  %getbyte.char97 = load i8, ptr %getbyte.charptr96, align 1
  %putbyte.charptr110 = getelementptr i8, ptr %stack.vec, i64 %add85
  store i8 %getbyte.char97, ptr %putbyte.charptr110, align 1
  %add116 = add nuw nsw i64 %STK56.0, 1
  %le125.not.not = icmp samesign ult i64 %STK56.0, %getbyte.charword66
  br i1 %le125.not.not, label %lab_L145, label %jt.then_L146, !llvm.loop !5

jt.then_L146:                                     ; preds = %lab_L145, %middle.block166, %jt.then_L142
  %STK4.3 = phi i64 [ %STK4.1, %jt.then_L142 ], [ %12, %middle.block166 ], [ %add85, %lab_L145 ]
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %fnap = call i64 @rdargslen(i64 %stack.bcpladdr, i64 %STK4.3, i64 %2, i64 %3)
  ret i64 %fnap
}

define i64 @rdargslen(i64 %0, i64 %1, i64 %2, i64 %3) section ".text.blib" {
entry:
  %stack.vec = alloca [31 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %stack.vec8 = alloca [128 x i64], align 8
  %stack.vecaddr9 = ptrtoint ptr %stack.vec8 to i64
  %stack.bcpladdr10 = ashr exact i64 %stack.vecaddr9, 3
  %add = add i64 %3, 1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 920), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 %2, i64 %add)
  %lg.value22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 920), align 4
  %rtap_ep_p_fn25 = inttoptr i64 %lg.value22 to ptr
  %rtap28 = call i64 %rtap_ep_p_fn25(i64 %stack.bcpladdr10, i64 128)
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %lab_L165.preheader, label %lab_L150.preheader

lab_L150.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  br label %lab_L150

lab_L150:                                         ; preds = %lab_L150.preheader, %lab_L153
  %STK29.0 = phi i64 [ %add266, %lab_L153 ], [ 1, %lab_L150.preheader ]
  %STK5.0 = phi i64 [ %STK5.1, %lab_L153 ], [ 0, %lab_L150.preheader ]
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK29.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  switch i8 %getbyte.char, label %lab_L153 [
    i8 47, label %jf.else
    i8 44, label %jf.else234
  ]

jf.else:                                          ; preds = %lab_L150
  %getbyte.charptr66 = getelementptr i8, ptr %getbyte.charptr, i64 1
  %getbyte.char67 = load i8, ptr %getbyte.charptr66, align 1
  %getbyte.charword68 = zext i8 %getbyte.char67 to i64
  %lg.value70 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn73 = inttoptr i64 %lg.value70 to ptr
  %fnap = call i64 %rtap_ep_p_fn73(i64 %getbyte.charword68)
  switch i64 %fnap, label %goto.phi.bb [
    i64 80, label %lab_L162
    i64 78, label %lab_L161
    i64 83, label %lab_L160
    i64 75, label %lab_L159
    i64 65, label %lab_L153.sink.split
  ]

lab_L159:                                         ; preds = %jf.else
  br label %lab_L153.sink.split

lab_L160:                                         ; preds = %jf.else
  br label %lab_L153.sink.split

lab_L161:                                         ; preds = %jf.else
  br label %lab_L153.sink.split

lab_L162:                                         ; preds = %jf.else
  br label %lab_L153.sink.split

jf.else234:                                       ; preds = %lab_L150
  %add240 = add i64 %STK5.0, 1
  %gr247 = icmp slt i64 %add240, 128
  br i1 %gr247, label %lab_L153, label %jf.else252

common.ret:                                       ; preds = %lab_L227, %jt.then_L198, %jf.else252
  %common.ret.op = phi i64 [ 0, %jf.else252 ], [ %STK4.41898, %jt.then_L198 ], [ 0, %lab_L227 ]
  ret i64 %common.ret.op

jf.else252:                                       ; preds = %jf.else234
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.20 to i64), 3
  %lg.value254 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 760), align 4
  %rtap_ep_p_fn257 = inttoptr i64 %lg.value254 to ptr
  %rtap259 = call i64 %rtap_ep_p_fn257(i64 %lstr.bcpladdr)
  br label %common.ret

lab_L153.sink.split:                              ; preds = %jf.else, %lab_L159, %lab_L160, %lab_L161, %lab_L162
  %.sink = phi i64 [ 16, %lab_L162 ], [ 8, %lab_L161 ], [ 4, %lab_L160 ], [ 2, %lab_L159 ], [ 1, %jf.else ]
  %add198 = add i64 %STK5.0, %stack.bcpladdr10
  %rv.llvmaddr201 = shl i64 %add198, 3
  %rv.lv202 = inttoptr i64 %rv.llvmaddr201 to ptr
  %rv.rv203 = load i64, ptr %rv.lv202, align 8
  %logor208 = or i64 %rv.rv203, %.sink
  store i64 %logor208, ptr %rv.lv202, align 8
  br label %lab_L153

lab_L153:                                         ; preds = %lab_L153.sink.split, %lab_L150, %jf.else234
  %STK5.1 = phi i64 [ %add240, %jf.else234 ], [ %STK5.0, %lab_L150 ], [ %STK5.0, %lab_L153.sink.split ]
  %add266 = add i64 %STK29.0, 1
  %le.not = icmp sgt i64 %add266, %1
  br i1 %le.not, label %jt.then_L151, label %lab_L150

jt.then_L151:                                     ; preds = %lab_L153
  %gr289 = icmp slt i64 %STK5.1, 0
  br i1 %gr289, label %jt.then_L166, label %lab_L165.preheader

lab_L165.preheader:                               ; preds = %entry, %jt.then_L151
  %STK5.21944 = phi i64 [ %STK5.1, %jt.then_L151 ], [ 0, %entry ]
  br label %lab_L165

lab_L165:                                         ; preds = %lab_L165.preheader, %lab_L168
  %STK280.0 = phi i64 [ %add330, %lab_L168 ], [ 0, %lab_L165.preheader ]
  %add301 = add i64 %STK280.0, %stack.bcpladdr10
  %rv.llvmaddr304 = shl i64 %add301, 3
  %rv.lv305 = inttoptr i64 %rv.llvmaddr304 to ptr
  %rv.rv306 = load i64, ptr %rv.lv305, align 8
  %logand = and i64 %rv.rv306, 12
  %eq315.not = icmp eq i64 %logand, 12
  br i1 %eq315.not, label %goto.phi.bb, label %lab_L168

lab_L168:                                         ; preds = %lab_L165
  %add330 = add i64 %STK280.0, 1
  %le339.not = icmp sgt i64 %add330, %STK5.21944
  br i1 %le339.not, label %jt.then_L166, label %lab_L165

jt.then_L166:                                     ; preds = %lab_L168, %jt.then_L151
  %gr2891948 = phi i1 [ true, %jt.then_L151 ], [ false, %lab_L168 ]
  %STK5.21945 = phi i64 [ %STK5.1, %jt.then_L151 ], [ %STK5.21944, %lab_L168 ]
  %add351 = add i64 %2, 1
  %add356 = add i64 %add351, %STK5.21945
  %getbyte.llvmaddr.i1878 = shl i64 %0, 3
  %getbyte.string.i1879 = inttoptr i64 %getbyte.llvmaddr.i1878 to ptr
  %lstr.bcpladdr1265 = ashr exact i64 ptrtoint (ptr @lstr.global.27 to i64), 3
  %lstr.bcpladdr1339 = ashr exact i64 ptrtoint (ptr @lstr.global.28 to i64), 3
  br label %lab_L170.outer

lab_L170.outer:                                   ; preds = %lab_L170.outer.backedge, %jt.then_L166
  %STK4.0.ph = phi i64 [ %add356, %jt.then_L166 ], [ %STK4.0.ph.be, %lab_L170.outer.backedge ]
  %sub.neg = sub i64 %2, %STK4.0.ph
  %sub371 = add i64 %sub.neg, %3
  %getbyte.llvmaddr65.i = shl i64 %STK4.0.ph, 3
  %getbyte.string66.i = inttoptr i64 %getbyte.llvmaddr65.i to ptr
  br label %lab_L170

lab_L170:                                         ; preds = %lab_L170.backedge, %lab_L170.outer
  %lg.value377 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn380 = inttoptr i64 %lg.value377 to ptr
  %fnap383 = call i64 %rtap_ep_p_fn380(i64 %STK4.0.ph, i64 %sub371)
  %lg.value388 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 920), align 4
  %rtap_ep_p_fn391 = inttoptr i64 %lg.value388 to ptr
  %rtap394 = call i64 %rtap_ep_p_fn391(i64 %stack.bcpladdr, i64 31)
  switch i64 %fnap383, label %goto.phi.bb.loopexit1977 [
    i64 2, label %lab_L215
    i64 1, label %lab_L202
    i64 4, label %lab_L175
    i64 3, label %lab_L175
    i64 0, label %lab_L175
  ]

lab_L175:                                         ; preds = %lab_L170, %lab_L170, %lab_L170
  br i1 %gr2891948, label %jt.then_L198, label %lab_L176

lab_L176:                                         ; preds = %lab_L175, %jf.then_L179
  %STK405.0 = phi i64 [ %STK405.2, %jf.then_L179 ], [ %STK5.21945, %lab_L175 ]
  %STK403.0 = phi i64 [ %add974, %jf.then_L179 ], [ 0, %lab_L175 ]
  %STK372.0 = phi i64 [ %STK372.2, %jf.then_L179 ], [ %sub371, %lab_L175 ]
  %STK5.3 = phi i64 [ %STK5.5, %jf.then_L179 ], [ %STK5.21945, %lab_L175 ]
  %STK4.1 = phi i64 [ %STK4.3, %jf.then_L179 ], [ %STK4.0.ph, %lab_L175 ]
  %add424 = add i64 %STK403.0, %stack.bcpladdr10
  %rv.llvmaddr427 = shl i64 %add424, 3
  %rv.lv428 = inttoptr i64 %rv.llvmaddr427 to ptr
  %rv.rv429 = load i64, ptr %rv.lv428, align 8
  %logand447 = and i64 %rv.rv429, 48
  %eq452.not = icmp eq i64 %logand447, 16
  br i1 %eq452.not, label %jf.else457, label %jf.then_L179

jf.else457:                                       ; preds = %lab_L176
  %lg.value459 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  %add463 = shl i64 %lg.value459, 3
  %rv.llvmaddr466 = add i64 %add463, 8
  %rv.lv467 = inttoptr i64 %rv.llvmaddr466 to ptr
  %rv.rv468 = load i64, ptr %rv.lv467, align 8
  %eq473.not = icmp eq i64 %rv.rv468, -1
  br i1 %eq473.not, label %jf.else478, label %jf.then_L179

jf.else478:                                       ; preds = %jf.else457
  %lg.value480 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %add484 = shl i64 %lg.value480, 3
  %rv.llvmaddr487 = add i64 %add484, 8
  %rv.lv488 = inttoptr i64 %rv.llvmaddr487 to ptr
  %rv.rv489 = load i64, ptr %rv.lv488, align 8
  %eq494.not = icmp eq i64 %rv.rv489, -1
  br i1 %eq494.not, label %jf.else499, label %jf.then_L179

jf.else499:                                       ; preds = %jf.else478
  br i1 %gr, label %jt.then_L135.i, label %lab_L133.preheader.i

lab_L133.preheader.i:                             ; preds = %jf.else499
  %getbyte.llvmaddr.i = shl i64 %0, 3
  %getbyte.string.i = inttoptr i64 %getbyte.llvmaddr.i to ptr
  br label %lab_L133.i

lab_L133.i:                                       ; preds = %jf.else.i, %lab_L133.preheader.i
  %STK4.0.i = phi i64 [ %add.i, %jf.else.i ], [ 1, %lab_L133.preheader.i ]
  %STK2.0.i = phi i64 [ %spec.select.i, %jf.else.i ], [ %STK403.0, %lab_L133.preheader.i ]
  %if_cond13.i = icmp eq i64 %STK2.0.i, 0
  br i1 %if_cond13.i, label %jt.then_L135.i, label %jf.else.i

jf.else.i:                                        ; preds = %lab_L133.i
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string.i, i64 %STK4.0.i
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %eq.not.i = icmp eq i8 %getbyte.char.i, 44
  %sub.i = sext i1 %eq.not.i to i64
  %spec.select.i = add i64 %STK2.0.i, %sub.i
  %add.i = add i64 %STK4.0.i, 1
  %gr46.not.i = icmp sgt i64 %add.i, %1
  br i1 %gr46.not.i, label %jt.then_L135.i, label %lab_L133.i

jt.then_L135.i:                                   ; preds = %jf.else.i, %lab_L133.i, %jf.else499
  %STK4.1.i = phi i64 [ 1, %jf.else499 ], [ %STK4.0.i, %lab_L133.i ], [ %add.i, %jf.else.i ]
  %le.not.i = icmp sgt i64 %STK4.1.i, %1
  br i1 %le.not.i, label %getkeylen.exit, label %lab_L137.preheader.i

lab_L137.preheader.i:                             ; preds = %jt.then_L135.i
  %getbyte.llvmaddr69.i = shl i64 %0, 3
  %getbyte.string70.i = inttoptr i64 %getbyte.llvmaddr69.i to ptr
  br label %lab_L137.i

lab_L137.i:                                       ; preds = %jt.then_L140.i, %lab_L137.preheader.i
  %STK5.0.i = phi i64 [ %STK5.1.i, %jt.then_L140.i ], [ 0, %lab_L137.preheader.i ]
  %STK4.2.i = phi i64 [ %add148.i, %jt.then_L140.i ], [ %STK4.1.i, %lab_L137.preheader.i ]
  %getbyte.charptr71.i = getelementptr i8, ptr %getbyte.string70.i, i64 %STK4.2.i
  %getbyte.char72.i = load i8, ptr %getbyte.charptr71.i, align 1
  switch i8 %getbyte.char72.i, label %jt.else118.i [
    i8 47, label %jf.then_L139.loopexit.split.loop.exit201.i
    i8 61, label %jf.then_L139.loopexit.split.loop.exit201.i
    i8 44, label %jf.then_L139.loopexit.split.loop.exit201.i
    i8 10, label %jt.then_L140.i
  ]

jt.else118.i:                                     ; preds = %lab_L137.i
  %add124.i = add i64 %STK5.0.i, 1
  %putbyte.charptr.i = getelementptr i8, ptr %stack.vec, i64 %add124.i
  store i8 %getbyte.char72.i, ptr %putbyte.charptr.i, align 1
  br label %jt.then_L140.i

jt.then_L140.i:                                   ; preds = %jt.else118.i, %lab_L137.i
  %STK5.1.i = phi i64 [ %add124.i, %jt.else118.i ], [ %STK5.0.i, %lab_L137.i ]
  %add148.i = add i64 %STK4.2.i, 1
  %le157.not.i = icmp sgt i64 %add148.i, %1
  br i1 %le157.not.i, label %jf.then_L139.loopexit.split.loop.exit.i, label %lab_L137.i

jf.then_L139.loopexit.split.loop.exit.i:          ; preds = %jt.then_L140.i
  %extract.t200.le.i = trunc i64 %STK5.1.i to i8
  br label %getkeylen.exit

jf.then_L139.loopexit.split.loop.exit201.i:       ; preds = %lab_L137.i, %lab_L137.i, %lab_L137.i
  %extract.t.le.i = trunc i64 %STK5.0.i to i8
  br label %getkeylen.exit

getkeylen.exit:                                   ; preds = %jt.then_L135.i, %jf.then_L139.loopexit.split.loop.exit.i, %jf.then_L139.loopexit.split.loop.exit201.i
  %STK5.2.off0.i = phi i8 [ %extract.t200.le.i, %jf.then_L139.loopexit.split.loop.exit.i ], [ %extract.t.le.i, %jf.then_L139.loopexit.split.loop.exit201.i ], [ 0, %jt.then_L135.i ]
  store i8 %STK5.2.off0.i, ptr %stack.vec, align 8
  %lg.value518 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn521 = inttoptr i64 %lg.value518 to ptr
  %rtap523 = call i64 %rtap_ep_p_fn521(i64 %stack.bcpladdr)
  %rv.rv535 = load i64, ptr %rv.lv428, align 8
  %logand540 = and i64 %rv.rv535, 4
  %eq545 = icmp eq i64 %logand540, 0
  br i1 %eq545, label %jt.then_L181, label %jt.else550

jt.else550:                                       ; preds = %getkeylen.exit
  %lstr.bcpladdr551 = ashr exact i64 ptrtoint (ptr @lstr.global.21 to i64), 3
  %lg.value553 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn556 = inttoptr i64 %lg.value553 to ptr
  %rtap558 = call i64 %rtap_ep_p_fn556(i64 %lstr.bcpladdr551)
  br label %jt.then_L181

jt.then_L181:                                     ; preds = %jt.else550, %getkeylen.exit
  %lstr.bcpladdr559 = ashr exact i64 ptrtoint (ptr @lstr.global.22 to i64), 3
  %lg.value561 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn564 = inttoptr i64 %lg.value561 to ptr
  %rtap566 = call i64 %rtap_ep_p_fn564(i64 %lstr.bcpladdr559)
  %lg.value567 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %lg.value569 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 344), align 4
  %rtap_ep_p_fn572 = inttoptr i64 %lg.value569 to ptr
  %rtap574 = call i64 %rtap_ep_p_fn572(i64 %lg.value567)
  %lg.value579 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn582 = inttoptr i64 %lg.value579 to ptr
  %fnap585 = call i64 %rtap_ep_p_fn582(i64 %STK4.1, i64 %STK372.0)
  switch i64 %fnap585, label %goto.phi.bb [
    i64 4, label %jf.then_L179
    i64 3, label %jf.then_L179
    i64 2, label %lab_L191
    i64 1, label %lab_L185
    i64 0, label %jf.then_L179
  ]

lab_L185:                                         ; preds = %jt.then_L181
  %logand598.mask = and i64 %rv.rv429, 4
  %if_cond606 = icmp eq i64 %logand598.mask, 0
  br i1 %if_cond606, label %jf.then_L186, label %jf.else607

jf.else607:                                       ; preds = %lab_L185
  %add615 = add i64 %STK403.0, %2
  %stind.llvmaddr619 = shl i64 %add615, 3
  %stind.lv620 = inttoptr i64 %stind.llvmaddr619 to ptr
  store i64 0, ptr %stind.lv620, align 8
  %lstr.bcpladdr623 = ashr exact i64 ptrtoint (ptr @lstr.global.23 to i64), 3
  %lg.value625 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 784), align 4
  %rtap_ep_p_fn628 = inttoptr i64 %lg.value625 to ptr
  %fnap631 = call i64 %rtap_ep_p_fn628(i64 %STK4.1, i64 %lstr.bcpladdr623)
  %eq636 = icmp eq i64 %fnap631, 0
  br i1 %eq636, label %jt.then_L188, label %jt.else641

jt.else641:                                       ; preds = %jf.else607
  %lstr.bcpladdr644 = ashr exact i64 ptrtoint (ptr @lstr.global.24 to i64), 3
  %lg.value646 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 784), align 4
  %rtap_ep_p_fn649 = inttoptr i64 %lg.value646 to ptr
  %fnap652 = call i64 %rtap_ep_p_fn649(i64 %STK4.1, i64 %lstr.bcpladdr644)
  %eq657.not = icmp eq i64 %fnap652, 0
  br i1 %eq657.not, label %jt.then_L188, label %jf.then_L187

jt.then_L188:                                     ; preds = %jt.else641, %jf.else607
  store i64 -1, ptr %stind.lv620, align 8
  br label %jf.then_L187

jf.then_L187:                                     ; preds = %jt.then_L188, %jt.else641
  %rv.rv687 = load i64, ptr %rv.lv428, align 8
  %logor692 = or i64 %rv.rv687, 32
  store i64 %logor692, ptr %rv.lv428, align 8
  br label %goto.phi.bb

jf.then_L186:                                     ; preds = %lab_L185
  %logand715.mask = and i64 %rv.rv429, 8
  %if_cond724 = icmp eq i64 %logand715.mask, 0
  br i1 %if_cond724, label %lab_L191, label %jf.else725

jf.else725:                                       ; preds = %jf.then_L186
  %add734 = add i64 %STK403.0, %2
  %stind.llvmaddr738 = shl i64 %add734, 3
  %stind.lv739 = inttoptr i64 %stind.llvmaddr738 to ptr
  store i64 %STK4.1, ptr %stind.lv739, align 8
  %lg.value742 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 800), align 4
  %rtap_ep_p_fn745 = inttoptr i64 %lg.value742 to ptr
  %fnap747 = call i64 %rtap_ep_p_fn745(i64 %STK4.1)
  %if_cond750.not = icmp eq i64 %fnap747, 0
  br i1 %if_cond750.not, label %goto.phi.bb, label %jt.then_L190

jt.then_L190:                                     ; preds = %jf.else725
  %lg.value756 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %stind.llvmaddr762 = shl i64 %STK4.1, 3
  %stind.lv763 = inttoptr i64 %stind.llvmaddr762 to ptr
  store i64 %lg.value756, ptr %stind.lv763, align 8
  store i64 %STK4.1, ptr %stind.lv739, align 8
  %rv.rv789 = load i64, ptr %rv.lv428, align 8
  %logor794 = or i64 %rv.rv789, 32
  store i64 %logor794, ptr %rv.lv428, align 8
  %add813 = add i64 %STK4.1, 1
  %sub821 = add i64 %STK372.0, -1
  br label %goto.phi.bb

lab_L191:                                         ; preds = %jf.then_L186, %jt.then_L181
  %add836 = add i64 %STK403.0, %2
  %stind.llvmaddr840 = shl i64 %add836, 3
  %stind.lv841 = inttoptr i64 %stind.llvmaddr840 to ptr
  store i64 %STK4.1, ptr %stind.lv841, align 8
  %rv.rv853 = load i64, ptr %rv.lv428, align 8
  %logor858 = or i64 %rv.rv853, 32
  store i64 %logor858, ptr %rv.lv428, align 8
  %getbyte.llvmaddr877 = shl i64 %STK4.1, 3
  %getbyte.string878 = inttoptr i64 %getbyte.llvmaddr877 to ptr
  %getbyte.char880 = load i8, ptr %getbyte.string878, align 8
  %4 = lshr i8 %getbyte.char880, 3
  %div = zext nneg i8 %4 to i64
  %add891 = add i64 %STK4.1, 1
  %add896 = add i64 %add891, %div
  %sub907.neg = add i64 %3, %2
  %sub911 = sub i64 %sub907.neg, %add896
  br label %lf_L180

lf_L180:                                          ; preds = %goto.phi.bb, %lab_L191
  %STK405.1 = phi i64 [ %STK405.4, %goto.phi.bb ], [ %STK405.0, %lab_L191 ]
  %STK403.1 = phi i64 [ %STK403.4, %goto.phi.bb ], [ %STK403.0, %lab_L191 ]
  %STK372.1 = phi i64 [ %STK372.4, %goto.phi.bb ], [ %sub911, %lab_L191 ]
  %STK5.4 = phi i64 [ %STK5.7, %goto.phi.bb ], [ %STK5.3, %lab_L191 ]
  %STK4.2 = phi i64 [ %STK4.5, %goto.phi.bb ], [ %add896, %lab_L191 ]
  %lg.value914 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn917 = inttoptr i64 %lg.value914 to ptr
  %rtap918 = call i64 %rtap_ep_p_fn917()
  br label %lab_L192

lab_L192:                                         ; preds = %lab_L192, %lf_L180
  %lg.value919 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn922 = inttoptr i64 %lg.value919 to ptr
  %fnap923 = call i64 %rtap_ep_p_fn922()
  switch i64 %fnap923, label %lab_L192 [
    i64 10, label %jf.then_L179.loopexit
    i64 59, label %jf.then_L179.loopexit
    i64 -1, label %jf.then_L179.loopexit
  ]

jf.then_L179.loopexit:                            ; preds = %lab_L192, %lab_L192, %lab_L192
  br label %jf.then_L179

jf.then_L179:                                     ; preds = %jf.then_L179.loopexit, %jt.then_L181, %jt.then_L181, %jt.then_L181, %jf.else478, %jf.else457, %lab_L176
  %STK405.2 = phi i64 [ %STK405.0, %lab_L176 ], [ %STK405.0, %jf.else457 ], [ %STK405.0, %jf.else478 ], [ %STK405.0, %jt.then_L181 ], [ %STK405.0, %jt.then_L181 ], [ %STK405.0, %jt.then_L181 ], [ %STK405.1, %jf.then_L179.loopexit ]
  %STK403.2 = phi i64 [ %STK403.0, %lab_L176 ], [ %STK403.0, %jf.else457 ], [ %STK403.0, %jf.else478 ], [ %STK403.0, %jt.then_L181 ], [ %STK403.0, %jt.then_L181 ], [ %STK403.0, %jt.then_L181 ], [ %STK403.1, %jf.then_L179.loopexit ]
  %STK372.2 = phi i64 [ %STK372.0, %lab_L176 ], [ %STK372.0, %jf.else457 ], [ %STK372.0, %jf.else478 ], [ %STK372.0, %jt.then_L181 ], [ %STK372.0, %jt.then_L181 ], [ %STK372.0, %jt.then_L181 ], [ %STK372.1, %jf.then_L179.loopexit ]
  %STK5.5 = phi i64 [ %STK5.3, %lab_L176 ], [ %STK5.3, %jf.else457 ], [ %STK5.3, %jf.else478 ], [ %STK5.3, %jt.then_L181 ], [ %STK5.3, %jt.then_L181 ], [ %STK5.3, %jt.then_L181 ], [ %STK5.4, %jf.then_L179.loopexit ]
  %STK4.3 = phi i64 [ %STK4.1, %lab_L176 ], [ %STK4.1, %jf.else457 ], [ %STK4.1, %jf.else478 ], [ %STK4.1, %jt.then_L181 ], [ %STK4.1, %jt.then_L181 ], [ %STK4.1, %jt.then_L181 ], [ %STK4.2, %jf.then_L179.loopexit ]
  %add974 = add i64 %STK403.2, 1
  %le983.not = icmp sgt i64 %add974, %STK405.2
  br i1 %le983.not, label %jt.then_L177, label %lab_L176

jt.then_L177:                                     ; preds = %jf.then_L179
  %gr998 = icmp slt i64 %STK5.5, 0
  br i1 %gr998, label %jt.then_L198, label %lab_L197

lab_L197:                                         ; preds = %jt.then_L177, %lab_L200
  %STK989.0 = phi i64 [ %add1040, %lab_L200 ], [ 0, %jt.then_L177 ]
  %add1010 = add i64 %STK989.0, %stack.bcpladdr10
  %rv.llvmaddr1013 = shl i64 %add1010, 3
  %rv.lv1014 = inttoptr i64 %rv.llvmaddr1013 to ptr
  %rv.rv1015 = load i64, ptr %rv.lv1014, align 8
  %logand1020 = and i64 %rv.rv1015, 33
  %eq1025.not = icmp eq i64 %logand1020, 1
  br i1 %eq1025.not, label %goto.phi.bb, label %lab_L200

lab_L200:                                         ; preds = %lab_L197
  %add1040 = add i64 %STK989.0, 1
  %le1049.not = icmp sgt i64 %add1040, %STK5.5
  br i1 %le1049.not, label %jt.then_L198, label %lab_L197

jt.then_L198:                                     ; preds = %lab_L200, %lab_L175, %jt.then_L177
  %STK4.41898 = phi i64 [ %STK4.3, %jt.then_L177 ], [ %STK4.0.ph, %lab_L175 ], [ %STK4.3, %lab_L200 ]
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

lab_L202:                                         ; preds = %lab_L170
  br i1 %gr, label %jf.else191.i, label %lab_L260.i

lab_L260.i:                                       ; preds = %lab_L202, %jf.then_L264.i
  %STK6.0.i = phi i64 [ %add167.i, %jf.then_L264.i ], [ 1, %lab_L202 ]
  %STK5.0.i1880 = phi i64 [ %STK5.1.i1887, %jf.then_L264.i ], [ 0, %lab_L202 ]
  %STK4.0.i1881 = phi i64 [ %STK4.2.i1886, %jf.then_L264.i ], [ 0, %lab_L202 ]
  %STK3.0.i = phi i64 [ %STK3.2.i, %jf.then_L264.i ], [ 0, %lab_L202 ]
  %getbyte.charptr.i1882 = getelementptr i8, ptr %getbyte.string.i1879, i64 %STK6.0.i
  %getbyte.char.i1883 = load i8, ptr %getbyte.charptr.i1882, align 1
  %getbyte.charword.i = zext i8 %getbyte.char.i1883 to i64
  %eq.not.i1884 = icmp eq i64 %STK3.0.i, 0
  br i1 %eq.not.i1884, label %jf.else.i1889, label %jf.then_L264.i

jf.else.i1889:                                    ; preds = %lab_L260.i
  switch i8 %getbyte.char.i1883, label %jf.then_L265.i [
    i8 61, label %jt.then_L266.i
    i8 47, label %jt.then_L266.i
    i8 44, label %jt.then_L266.i
  ]

jt.then_L266.i:                                   ; preds = %jf.else.i1889, %jf.else.i1889, %jf.else.i1889
  %getbyte.char68.i = load i8, ptr %getbyte.string66.i, align 8
  %getbyte.charword69.i = zext i8 %getbyte.char68.i to i64
  %eq75.not.i = icmp eq i64 %STK4.0.i1881, %getbyte.charword69.i
  br i1 %eq75.not.i, label %findarglen.exit, label %jf.then_L265.i

jf.then_L265.i:                                   ; preds = %jt.then_L266.i, %jf.else.i1889
  %add.i1890 = add i64 %STK4.0.i1881, 1
  %getbyte.charptr99.i = getelementptr i8, ptr %getbyte.string66.i, i64 %add.i1890
  %getbyte.char100.i = load i8, ptr %getbyte.charptr99.i, align 1
  %getbyte.charword101.i = zext i8 %getbyte.char100.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = call i64 %rtap_ep_p_fn.i(i64 %getbyte.charword.i, i64 %getbyte.charword101.i)
  %eq109.i = icmp ne i64 %fnap.i, 0
  %spec.select.i1891 = zext i1 %eq109.i to i64
  br label %jf.then_L264.i

jf.then_L264.i:                                   ; preds = %jf.then_L265.i, %lab_L260.i
  %STK4.1.i1885 = phi i64 [ %STK4.0.i1881, %lab_L260.i ], [ %add.i1890, %jf.then_L265.i ]
  %STK3.1.i = phi i64 [ %STK3.0.i, %lab_L260.i ], [ %spec.select.i1891, %jf.then_L265.i ]
  %eq122.not.i = icmp eq i8 %getbyte.char.i1883, 44
  %eq133.not.i = icmp eq i8 %getbyte.char.i1883, 61
  %or.cond.i = or i1 %eq122.not.i, %eq133.not.i
  %STK4.2.i1886 = select i1 %or.cond.i, i64 0, i64 %STK4.1.i1885
  %STK3.2.i = select i1 %or.cond.i, i64 0, i64 %STK3.1.i
  %add159.i = zext i1 %eq122.not.i to i64
  %STK5.1.i1887 = add i64 %STK5.0.i1880, %add159.i
  %add167.i = add i64 %STK6.0.i, 1
  %le.not.i1888 = icmp sgt i64 %add167.i, %1
  br i1 %le.not.i1888, label %jt.then_L261.i, label %lab_L260.i

jt.then_L261.i:                                   ; preds = %jf.then_L264.i
  %eq186.not.i = icmp eq i64 %STK3.2.i, 0
  br i1 %eq186.not.i, label %jf.else191.i, label %jf.then_L203

jf.else191.i:                                     ; preds = %lab_L202, %jt.then_L261.i
  %STK4.3241.i = phi i64 [ %STK4.2.i1886, %jt.then_L261.i ], [ 0, %lab_L202 ]
  %STK5.2240.i = phi i64 [ %STK5.1.i1887, %jt.then_L261.i ], [ 0, %lab_L202 ]
  %getbyte.char200.i = load i8, ptr %getbyte.string66.i, align 8
  %getbyte.charword201.i = zext i8 %getbyte.char200.i to i64
  %eq207.not.i = icmp eq i64 %STK4.3241.i, %getbyte.charword201.i
  br i1 %eq207.not.i, label %findarglen.exit, label %jf.then_L203

findarglen.exit:                                  ; preds = %jt.then_L266.i, %jf.else191.i
  %common.ret.op.i = phi i64 [ %STK5.2240.i, %jf.else191.i ], [ %STK5.0.i1880, %jt.then_L266.i ]
  %ge = icmp slt i64 %common.ret.op.i, 0
  br i1 %ge, label %jf.then_L203, label %jf.else1084

jf.else1084:                                      ; preds = %findarglen.exit
  %add1091 = add i64 %common.ret.op.i, %stack.bcpladdr10
  %rv.llvmaddr1094 = shl i64 %add1091, 3
  %rv.lv1095 = inttoptr i64 %rv.llvmaddr1094 to ptr
  %rv.rv1096 = load i64, ptr %rv.lv1095, align 8
  %logand1101.mask = and i64 %rv.rv1096, 32
  %if_cond1110 = icmp eq i64 %logand1101.mask, 0
  br i1 %if_cond1110, label %jf.then_L205, label %goto.phi.bb.loopexit1977

jf.then_L205:                                     ; preds = %jf.else1084
  %logand1132.mask = and i64 %rv.rv1096, 4
  %if_cond1141 = icmp eq i64 %logand1132.mask, 0
  br i1 %if_cond1141, label %jf.then_L206, label %jf.else1142

jf.else1142:                                      ; preds = %jf.then_L205
  %add1150 = add i64 %common.ret.op.i, %2
  %stind.llvmaddr1154 = shl i64 %add1150, 3
  %stind.lv1155 = inttoptr i64 %stind.llvmaddr1154 to ptr
  store i64 -1, ptr %stind.lv1155, align 8
  %rv.rv1167 = load i64, ptr %rv.lv1095, align 8
  %logor1172 = or i64 %rv.rv1167, 32
  store i64 %logor1172, ptr %rv.lv1095, align 8
  br label %lab_L170.backedge

lab_L170.backedge:                                ; preds = %jf.else1142, %jt.then_L212
  br label %lab_L170

jf.then_L206:                                     ; preds = %jf.then_L205
  %lg.value1191 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn1194 = inttoptr i64 %lg.value1191 to ptr
  %fnap1197 = call i64 %rtap_ep_p_fn1194(i64 %STK4.0.ph, i64 %sub371)
  %eq1204.not = icmp eq i64 %fnap1197, 5
  br i1 %eq1204.not, label %jf.else1209, label %jf.then_L207

jf.else1209:                                      ; preds = %jf.then_L206
  %lg.value1214 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn1217 = inttoptr i64 %lg.value1214 to ptr
  %fnap1220 = call i64 %rtap_ep_p_fn1217(i64 %STK4.0.ph, i64 %sub371)
  br label %jf.then_L207

jf.then_L207:                                     ; preds = %jf.else1209, %jf.then_L206
  %STK1198.0 = phi i64 [ %fnap1197, %jf.then_L206 ], [ %fnap1220, %jf.else1209 ]
  %STK1198.0.off = add i64 %STK1198.0, -1
  %switch = icmp ult i64 %STK1198.0.off, 2
  br i1 %switch, label %jt.then_L222, label %goto.phi.bb.loopexit1978

jf.then_L203:                                     ; preds = %jf.else191.i, %jt.then_L261.i, %findarglen.exit
  %common.ret.op.i1901 = phi i64 [ %common.ret.op.i, %findarglen.exit ], [ -1, %jt.then_L261.i ], [ -1, %jf.else191.i ]
  %lg.value1250 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn1253 = inttoptr i64 %lg.value1250 to ptr
  %fnap1254 = call i64 %rtap_ep_p_fn1253()
  %eq1259.not = icmp eq i64 %fnap1254, 10
  br i1 %eq1259.not, label %jf.else1264, label %jf.then_L209

jf.else1264:                                      ; preds = %jf.then_L203
  %lg.value1269 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 784), align 4
  %rtap_ep_p_fn1272 = inttoptr i64 %lg.value1269 to ptr
  %fnap1275 = call i64 %rtap_ep_p_fn1272(i64 %lstr.bcpladdr1265, i64 %STK4.0.ph)
  %eq1280.not = icmp eq i64 %fnap1275, 0
  br i1 %eq1280.not, label %jf.else1285, label %jf.then_L209

jf.else1285:                                      ; preds = %jf.else1264
  br i1 %gr, label %jt.then_L212, label %lab_L211

lab_L211:                                         ; preds = %jf.else1285, %lab_L211
  %STK1286.0 = phi i64 [ %add1324, %lab_L211 ], [ 1, %jf.else1285 ]
  %getbyte.charptr1309 = getelementptr i8, ptr %getbyte.string.i1879, i64 %STK1286.0
  %getbyte.char1310 = load i8, ptr %getbyte.charptr1309, align 1
  %getbyte.charword1311 = zext i8 %getbyte.char1310 to i64
  %lg.value1313 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn1316 = inttoptr i64 %lg.value1313 to ptr
  %rtap1318 = call i64 %rtap_ep_p_fn1316(i64 %getbyte.charword1311)
  %add1324 = add i64 %STK1286.0, 1
  %le1333.not = icmp sgt i64 %add1324, %1
  br i1 %le1333.not, label %jt.then_L212, label %lab_L211

jt.then_L212:                                     ; preds = %lab_L211, %jf.else1285
  %lg.value1341 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn1344 = inttoptr i64 %lg.value1341 to ptr
  %rtap1346 = call i64 %rtap_ep_p_fn1344(i64 %lstr.bcpladdr1339)
  %lg.value1347 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %lg.value1349 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 344), align 4
  %rtap_ep_p_fn1352 = inttoptr i64 %lg.value1349 to ptr
  %rtap1354 = call i64 %rtap_ep_p_fn1352(i64 %lg.value1347)
  br label %lab_L170.backedge

jf.then_L209:                                     ; preds = %jf.else1264, %jf.then_L203
  %lg.value1356 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn1359 = inttoptr i64 %lg.value1356 to ptr
  %rtap1360 = call i64 %rtap_ep_p_fn1359()
  br label %lab_L215

lab_L215:                                         ; preds = %lab_L170, %jf.then_L209
  %STK359.0 = phi i64 [ %common.ret.op.i1901, %jf.then_L209 ], [ -1, %lab_L170 ]
  br i1 %gr2891948, label %goto.phi.bb.loopexit1978, label %lab_L217

lab_L217:                                         ; preds = %lab_L215, %lab_L220
  %STK1371.0 = phi i64 [ %add1422, %lab_L220 ], [ 0, %lab_L215 ]
  %add1392 = add i64 %STK1371.0, %stack.bcpladdr10
  %rv.llvmaddr1395 = shl i64 %add1392, 3
  %rv.lv1396 = inttoptr i64 %rv.llvmaddr1395 to ptr
  %rv.rv1397 = load i64, ptr %rv.lv1396, align 8
  %logand1402 = and i64 %rv.rv1397, 38
  %eq1407.not = icmp eq i64 %logand1402, 0
  br i1 %eq1407.not, label %jf.then_L216, label %lab_L220

lab_L220:                                         ; preds = %lab_L217
  %add1422 = add i64 %STK1371.0, 1
  %le1431.not = icmp sgt i64 %add1422, %STK5.21945
  br i1 %le1431.not, label %jf.then_L216, label %lab_L217

jf.then_L216:                                     ; preds = %lab_L217, %lab_L220
  %STK359.1 = phi i64 [ %STK359.0, %lab_L220 ], [ %STK1371.0, %lab_L217 ]
  %ge1442 = icmp sgt i64 %STK359.1, -1
  br i1 %ge1442, label %jf.then_L216.jt.then_L222_crit_edge, label %goto.phi.bb.loopexit1978

jf.then_L216.jt.then_L222_crit_edge:              ; preds = %jf.then_L216
  %.pre = add i64 %STK359.1, %stack.bcpladdr10
  %.pre1940 = shl i64 %.pre, 3
  %.pre1941 = inttoptr i64 %.pre1940 to ptr
  br label %jt.then_L222

jt.then_L222:                                     ; preds = %jf.then_L216.jt.then_L222_crit_edge, %jf.then_L207
  %rv.lv1462.pre-phi = phi ptr [ %.pre1941, %jf.then_L216.jt.then_L222_crit_edge ], [ %rv.lv1095, %jf.then_L207 ]
  %STK359.11907 = phi i64 [ %STK359.1, %jf.then_L216.jt.then_L222_crit_edge ], [ %common.ret.op.i, %jf.then_L207 ]
  %rv.rv1463 = load i64, ptr %rv.lv1462.pre-phi, align 4
  %logand1468.mask = and i64 %rv.rv1463, 32
  %if_cond1477 = icmp eq i64 %logand1468.mask, 0
  br i1 %if_cond1477, label %jf.then_L223, label %goto.phi.bb.loopexit1978

jf.then_L223:                                     ; preds = %jt.then_L222
  %logand1499.mask = and i64 %rv.rv1463, 8
  %if_cond1508 = icmp eq i64 %logand1499.mask, 0
  br i1 %if_cond1508, label %jf.then_L224, label %jf.else1509

jf.else1509:                                      ; preds = %jf.then_L223
  %lg.value1512 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 800), align 4
  %rtap_ep_p_fn1515 = inttoptr i64 %lg.value1512 to ptr
  %fnap1517 = call i64 %rtap_ep_p_fn1515(i64 %STK4.0.ph)
  %if_cond1520.not = icmp eq i64 %fnap1517, 0
  br i1 %if_cond1520.not, label %goto.phi.bb.loopexit1978, label %jt.then_L225

jt.then_L225:                                     ; preds = %jf.else1509
  %lg.value1526 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  store i64 %lg.value1526, ptr %getbyte.string66.i, align 8
  %add1542 = add i64 %STK359.11907, %2
  %stind.llvmaddr1546 = shl i64 %add1542, 3
  %stind.lv1547 = inttoptr i64 %stind.llvmaddr1546 to ptr
  store i64 %STK4.0.ph, ptr %stind.lv1547, align 8
  %rv.rv1559 = load i64, ptr %rv.lv1462.pre-phi, align 4
  %logor1564 = or i64 %rv.rv1559, 32
  store i64 %logor1564, ptr %rv.lv1462.pre-phi, align 4
  %add1583 = add i64 %STK4.0.ph, 1
  br label %lab_L170.outer.backedge

jf.then_L224:                                     ; preds = %jf.then_L223
  %add1595 = add i64 %STK359.11907, %2
  %stind.llvmaddr1599 = shl i64 %add1595, 3
  %stind.lv1600 = inttoptr i64 %stind.llvmaddr1599 to ptr
  store i64 %STK4.0.ph, ptr %stind.lv1600, align 8
  %rv.rv1612 = load i64, ptr %rv.lv1462.pre-phi, align 4
  %logor1617 = or i64 %rv.rv1612, 32
  store i64 %logor1617, ptr %rv.lv1462.pre-phi, align 4
  %getbyte.char1639 = load i8, ptr %getbyte.string66.i, align 8
  %5 = lshr i8 %getbyte.char1639, 3
  %div1645 = zext nneg i8 %5 to i64
  %add1651 = add i64 %STK4.0.ph, 1
  %add1656 = add i64 %add1651, %div1645
  br label %lab_L170.outer.backedge

lab_L170.outer.backedge:                          ; preds = %jf.then_L224, %jt.then_L225
  %STK4.0.ph.be = phi i64 [ %add1583, %jt.then_L225 ], [ %add1656, %jf.then_L224 ]
  br label %lab_L170.outer

lf_L149:                                          ; preds = %goto.phi.bb
  %lg.value1664 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn1667 = inttoptr i64 %lg.value1664 to ptr
  %rtap1668 = call i64 %rtap_ep_p_fn1667()
  br label %lab_L226

lab_L226:                                         ; preds = %lab_L226, %lf_L149
  %lg.value1669 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn1672 = inttoptr i64 %lg.value1669 to ptr
  %fnap1673 = call i64 %rtap_ep_p_fn1672()
  switch i64 %fnap1673, label %lab_L226 [
    i64 10, label %lab_L227
    i64 59, label %lab_L227
    i64 -1, label %lab_L227
  ]

lab_L227:                                         ; preds = %lab_L226, %lab_L226, %lab_L226
  store i64 120, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

goto.phi.bb.loopexit1977:                         ; preds = %lab_L170, %jf.else1084
  br label %goto.phi.bb

goto.phi.bb.loopexit1978:                         ; preds = %lab_L215, %jf.then_L216, %jt.then_L222, %jf.else1509, %jf.then_L207
  br label %goto.phi.bb

goto.phi.bb:                                      ; preds = %jf.else, %lab_L165, %lab_L197, %goto.phi.bb.loopexit1978, %goto.phi.bb.loopexit1977, %jt.then_L181, %jf.else725, %jt.then_L190, %jf.then_L187
  %STK405.4 = phi i64 [ %STK405.0, %jt.then_L190 ], [ %STK405.0, %jf.then_L187 ], [ %STK405.0, %jf.else725 ], [ %STK405.0, %jt.then_L181 ], [ undef, %goto.phi.bb.loopexit1977 ], [ undef, %goto.phi.bb.loopexit1978 ], [ %STK405.2, %lab_L197 ], [ undef, %lab_L165 ], [ undef, %jf.else ]
  %STK403.4 = phi i64 [ %STK403.0, %jt.then_L190 ], [ %STK403.0, %jf.then_L187 ], [ %STK403.0, %jf.else725 ], [ %STK403.0, %jt.then_L181 ], [ undef, %goto.phi.bb.loopexit1977 ], [ undef, %goto.phi.bb.loopexit1978 ], [ %add974, %lab_L197 ], [ undef, %lab_L165 ], [ undef, %jf.else ]
  %STK372.4 = phi i64 [ %sub821, %jt.then_L190 ], [ %STK372.0, %jf.then_L187 ], [ %STK372.0, %jf.else725 ], [ %STK372.0, %jt.then_L181 ], [ %sub371, %goto.phi.bb.loopexit1977 ], [ %sub371, %goto.phi.bb.loopexit1978 ], [ %STK372.2, %lab_L197 ], [ undef, %lab_L165 ], [ undef, %jf.else ]
  %STK5.7 = phi i64 [ %STK5.3, %jt.then_L190 ], [ %STK5.3, %jf.then_L187 ], [ %STK5.3, %jf.else725 ], [ %STK5.3, %jt.then_L181 ], [ %STK5.21945, %goto.phi.bb.loopexit1977 ], [ %STK5.21945, %goto.phi.bb.loopexit1978 ], [ %STK5.5, %lab_L197 ], [ %STK5.21944, %lab_L165 ], [ %STK5.0, %jf.else ]
  %STK4.5 = phi i64 [ %add813, %jt.then_L190 ], [ %STK4.1, %jf.then_L187 ], [ %STK4.1, %jf.else725 ], [ %STK4.1, %jt.then_L181 ], [ %STK4.0.ph, %goto.phi.bb.loopexit1977 ], [ %STK4.0.ph, %goto.phi.bb.loopexit1978 ], [ %STK4.3, %lab_L197 ], [ 0, %lab_L165 ], [ 0, %jf.else ]
  %goto.phi = phi ptr [ blockaddress(@rdargslen, %lf_L180), %jt.then_L190 ], [ blockaddress(@rdargslen, %lf_L180), %jf.then_L187 ], [ blockaddress(@rdargslen, %lf_L149), %jf.else725 ], [ blockaddress(@rdargslen, %lf_L149), %jt.then_L181 ], [ blockaddress(@rdargslen, %lf_L149), %goto.phi.bb.loopexit1977 ], [ blockaddress(@rdargslen, %lf_L149), %goto.phi.bb.loopexit1978 ], [ blockaddress(@rdargslen, %lf_L149), %lab_L197 ], [ blockaddress(@rdargslen, %lf_L149), %lab_L165 ], [ blockaddress(@rdargslen, %lf_L149), %jf.else ]
  indirectbr ptr %goto.phi, [label %lf_L180, label %lf_L149]
}

define range(i64 -1, 6) i64 @rditem(i64 %0, i64 %1) section ".text.blib" {
entry:
  %add = shl i64 %1, 3
  %sub = or disjoint i64 %add, 7
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %gr = icmp slt i64 %1, 0
  br i1 %gr, label %jt.then_L231, label %lab_L230

lab_L230:                                         ; preds = %entry, %lab_L230
  %STK17.0 = phi i64 [ %add41, %lab_L230 ], [ 0, %entry ]
  %add34 = add i64 %STK17.0, %0
  %stind.llvmaddr = shl i64 %add34, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 0, ptr %stind.lv, align 8
  %add41 = add i64 %STK17.0, 1
  %le.not = icmp sgt i64 %add41, %1
  br i1 %le.not, label %jt.then_L231, label %lab_L230

jt.then_L231:                                     ; preds = %lab_L230, %entry
  switch i64 %fnap, label %jf.then_L236 [
    i64 32, label %lab_L234.preheader
    i64 9, label %lab_L234.preheader
    i64 13, label %lab_L234.preheader
  ]

lab_L234.preheader:                               ; preds = %jt.then_L231, %jt.then_L231, %jt.then_L231
  br label %lab_L234

lab_L234:                                         ; preds = %lab_L234.backedge, %lab_L234.preheader
  %lg.value85 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn88 = inttoptr i64 %lg.value85 to ptr
  %fnap89 = tail call i64 %rtap_ep_p_fn88()
  switch i64 %fnap89, label %jf.then_L236 [
    i64 32, label %lab_L234.backedge
    i64 9, label %lab_L234.backedge
    i64 13, label %lab_L234.backedge
  ]

lab_L234.backedge:                                ; preds = %lab_L234, %lab_L234, %lab_L234
  br label %lab_L234

jf.then_L236:                                     ; preds = %lab_L234, %jt.then_L231
  %STK15.0 = phi i64 [ %fnap, %jt.then_L231 ], [ %fnap89, %lab_L234 ]
  switch i64 %STK15.0, label %jt.else393 [
    i64 -1, label %common.ret
    i64 10, label %jf.else147
    i64 59, label %jf.else160
    i64 61, label %jf.else173
    i64 34, label %lab_L243.preheader
  ]

lab_L243.preheader:                               ; preds = %jf.then_L236
  %putbyte.llvmaddr = shl i64 %0, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L243.outer

common.ret:                                       ; preds = %jf.then_L247, %lab_L243, %lab_L243, %jt.else524, %lab_L251, %jt.else546, %jf.then_L236, %jf.else239, %jf.else173, %jf.else160, %jf.else147
  %common.ret.op = phi i64 [ 3, %jf.else147 ], [ 4, %jf.else160 ], [ 5, %jf.else173 ], [ 2, %jf.else239 ], [ 0, %jf.then_L236 ], [ 1, %jt.else546 ], [ 1, %jt.else524 ], [ -1, %lab_L251 ], [ -1, %lab_L243 ], [ -1, %lab_L243 ], [ -1, %jf.then_L247 ]
  ret i64 %common.ret.op

jf.else147:                                       ; preds = %jf.then_L236
  br label %common.ret

jf.else160:                                       ; preds = %jf.then_L236
  br label %common.ret

jf.else173:                                       ; preds = %jf.then_L236
  br label %common.ret

lab_L243:                                         ; preds = %lab_L243.outer, %lab_L243
  %lg.value187 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn190 = inttoptr i64 %lg.value187 to ptr
  %fnap191 = tail call i64 %rtap_ep_p_fn190()
  switch i64 %fnap191, label %jf.then_L246 [
    i64 13, label %lab_L243
    i64 10, label %common.ret
    i64 -1, label %common.ret
    i64 34, label %jf.else239
  ]

jf.else239:                                       ; preds = %lab_L243
  br label %common.ret

jf.then_L246:                                     ; preds = %lab_L243
  %eq247.not = icmp eq i64 %fnap191, 42
  %extract.t = trunc i64 %fnap191 to i8
  br i1 %eq247.not, label %jf.else252, label %jf.then_L247

jf.else252:                                       ; preds = %jf.then_L246
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
  %extract.t603 = trunc i64 %spec.select to i8
  %spec.select606 = select i1 %eq291.not, i8 34, i8 %extract.t603
  br label %jf.then_L247

jf.then_L247:                                     ; preds = %jf.else252, %jf.then_L246
  %STK15.2.off0 = phi i8 [ %extract.t, %jf.then_L246 ], [ %spec.select606, %jf.else252 ]
  %add304 = add i64 %STK2.0.ph, 1
  %gr313.not = icmp sgt i64 %add304, %sub
  br i1 %gr313.not, label %common.ret, label %jf.then_L250

jf.then_L250:                                     ; preds = %jf.then_L247
  %putbyte.char = trunc i64 %add304 to i8
  store i8 %putbyte.char, ptr %putbyte.string, align 8
  %putbyte.charptr338 = getelementptr i8, ptr %putbyte.string, i64 %add304
  store i8 %STK15.2.off0, ptr %putbyte.charptr338, align 1
  br label %lab_L243.outer

lab_L243.outer:                                   ; preds = %lab_L243.preheader, %jf.then_L250
  %STK2.0.ph = phi i64 [ 0, %lab_L243.preheader ], [ %add304, %jf.then_L250 ]
  br label %lab_L243

jt.else393:                                       ; preds = %jf.then_L236
  %extract.t604 = trunc i64 %STK15.0 to i8
  %putbyte.llvmaddr436 = shl i64 %0, 3
  %putbyte.string437 = inttoptr i64 %putbyte.llvmaddr436 to ptr
  br label %lab_L251

lab_L251:                                         ; preds = %jt.else393, %jt.else524
  %STK15.3.off0 = phi i8 [ %extract.t604, %jt.else393 ], [ %extract.t605, %jt.else524 ]
  %STK2.1 = phi i64 [ 0, %jt.else393 ], [ %add410, %jt.else524 ]
  %add410 = add i64 %STK2.1, 1
  %gr419.not = icmp sgt i64 %add410, %sub
  br i1 %gr419.not, label %common.ret, label %jf.then_L254

jf.then_L254:                                     ; preds = %lab_L251
  %putbyte.char435 = trunc i64 %add410 to i8
  store i8 %putbyte.char435, ptr %putbyte.string437, align 8
  %putbyte.charptr451 = getelementptr i8, ptr %putbyte.string437, i64 %add410
  store i8 %STK15.3.off0, ptr %putbyte.charptr451, align 1
  br label %lab_L255

lab_L255:                                         ; preds = %lab_L255, %jf.then_L254
  %lg.value452 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn455 = inttoptr i64 %lg.value452 to ptr
  %fnap456 = tail call i64 %rtap_ep_p_fn455()
  switch i64 %fnap456, label %jt.else524 [
    i64 13, label %lab_L255
    i64 10, label %jt.else546
    i64 32, label %jt.else546
    i64 9, label %jt.else546
    i64 59, label %jt.else546
    i64 61, label %jt.else546
  ]

jt.else524:                                       ; preds = %lab_L255
  %eq530.not = icmp eq i64 %fnap456, -1
  %extract.t605 = trunc i64 %fnap456 to i8
  br i1 %eq530.not, label %common.ret, label %lab_L251

jt.else546:                                       ; preds = %lab_L255, %lab_L255, %lab_L255, %lab_L255, %lab_L255
  %lg.value547 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn550 = inttoptr i64 %lg.value547 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn550()
  br label %common.ret
}

define i64 @findarg(i64 %0, i64 %1) section ".text.blib" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr.i = icmp eq i8 %getbyte.char, 0
  %.pre.i = shl i64 %1, 3
  %.pre244.i = inttoptr i64 %.pre.i to ptr
  br i1 %gr.i, label %jf.else191.i, label %lab_L260.i

lab_L260.i:                                       ; preds = %entry, %jf.then_L264.i
  %STK6.0.i = phi i64 [ %add167.i, %jf.then_L264.i ], [ 1, %entry ]
  %STK5.0.i = phi i64 [ %STK5.1.i, %jf.then_L264.i ], [ 0, %entry ]
  %STK4.0.i = phi i64 [ %STK4.2.i, %jf.then_L264.i ], [ 0, %entry ]
  %STK3.0.i = phi i64 [ %STK3.2.i, %jf.then_L264.i ], [ 0, %entry ]
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string, i64 %STK6.0.i
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %getbyte.charword.i = zext i8 %getbyte.char.i to i64
  %eq.not.i = icmp eq i64 %STK3.0.i, 0
  br i1 %eq.not.i, label %jf.else.i, label %jf.then_L264.i

jf.else.i:                                        ; preds = %lab_L260.i
  switch i8 %getbyte.char.i, label %jf.then_L265.i [
    i8 61, label %jt.then_L266.i
    i8 47, label %jt.then_L266.i
    i8 44, label %jt.then_L266.i
  ]

jt.then_L266.i:                                   ; preds = %jf.else.i, %jf.else.i, %jf.else.i
  %getbyte.char68.i = load i8, ptr %.pre244.i, align 8
  %getbyte.charword69.i = zext i8 %getbyte.char68.i to i64
  %eq75.not.i = icmp eq i64 %STK4.0.i, %getbyte.charword69.i
  br i1 %eq75.not.i, label %findarglen.exit, label %jf.then_L265.i

jf.then_L265.i:                                   ; preds = %jt.then_L266.i, %jf.else.i
  %add.i = add i64 %STK4.0.i, 1
  %getbyte.charptr99.i = getelementptr i8, ptr %.pre244.i, i64 %add.i
  %getbyte.char100.i = load i8, ptr %getbyte.charptr99.i, align 1
  %getbyte.charword101.i = zext i8 %getbyte.char100.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 %getbyte.charword.i, i64 %getbyte.charword101.i)
  %eq109.i = icmp ne i64 %fnap.i, 0
  %spec.select.i = zext i1 %eq109.i to i64
  br label %jf.then_L264.i

jf.then_L264.i:                                   ; preds = %jf.then_L265.i, %lab_L260.i
  %STK4.1.i = phi i64 [ %STK4.0.i, %lab_L260.i ], [ %add.i, %jf.then_L265.i ]
  %STK3.1.i = phi i64 [ %STK3.0.i, %lab_L260.i ], [ %spec.select.i, %jf.then_L265.i ]
  %eq122.not.i = icmp eq i8 %getbyte.char.i, 44
  %eq133.not.i = icmp eq i8 %getbyte.char.i, 61
  %or.cond.i = or i1 %eq122.not.i, %eq133.not.i
  %STK4.2.i = select i1 %or.cond.i, i64 0, i64 %STK4.1.i
  %STK3.2.i = select i1 %or.cond.i, i64 0, i64 %STK3.1.i
  %add159.i = zext i1 %eq122.not.i to i64
  %STK5.1.i = add i64 %STK5.0.i, %add159.i
  %add167.i = add nuw nsw i64 %STK6.0.i, 1
  %le.not.i.not = icmp samesign ult i64 %STK6.0.i, %getbyte.charword
  br i1 %le.not.i.not, label %lab_L260.i, label %jt.then_L261.i

jt.then_L261.i:                                   ; preds = %jf.then_L264.i
  %eq186.not.i = icmp eq i64 %STK3.2.i, 0
  br i1 %eq186.not.i, label %jf.else191.i, label %jf.then_L271.i

jf.else191.i:                                     ; preds = %entry, %jt.then_L261.i
  %STK4.3241.i = phi i64 [ %STK4.2.i, %jt.then_L261.i ], [ 0, %entry ]
  %STK5.2240.i = phi i64 [ %STK5.1.i, %jt.then_L261.i ], [ 0, %entry ]
  %getbyte.char200.i = load i8, ptr %.pre244.i, align 8
  %getbyte.charword201.i = zext i8 %getbyte.char200.i to i64
  %eq207.not.i = icmp eq i64 %STK4.3241.i, %getbyte.charword201.i
  br i1 %eq207.not.i, label %findarglen.exit, label %jf.then_L271.i

jf.then_L271.i:                                   ; preds = %jf.else191.i, %jt.then_L261.i
  br label %findarglen.exit

findarglen.exit:                                  ; preds = %jt.then_L266.i, %jf.else191.i, %jf.then_L271.i
  %common.ret.op.i = phi i64 [ -1, %jf.then_L271.i ], [ %STK5.2240.i, %jf.else191.i ], [ %STK5.0.i, %jt.then_L266.i ]
  ret i64 %common.ret.op.i
}

define i64 @findarglen(i64 %0, i64 %1, i64 %2) local_unnamed_addr section ".text.blib" {
entry:
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %entry.jf.else191_crit_edge, label %lab_L260.preheader

entry.jf.else191_crit_edge:                       ; preds = %entry
  %.pre = shl i64 %2, 3
  %.pre244 = inttoptr i64 %.pre to ptr
  br label %jf.else191

lab_L260.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.llvmaddr65 = shl i64 %2, 3
  %getbyte.string66 = inttoptr i64 %getbyte.llvmaddr65 to ptr
  br label %lab_L260

lab_L260:                                         ; preds = %lab_L260.preheader, %jf.then_L264
  %STK6.0 = phi i64 [ %add167, %jf.then_L264 ], [ 1, %lab_L260.preheader ]
  %STK5.0 = phi i64 [ %STK5.1, %jf.then_L264 ], [ 0, %lab_L260.preheader ]
  %STK4.0 = phi i64 [ %STK4.2, %jf.then_L264 ], [ 0, %lab_L260.preheader ]
  %STK3.0 = phi i64 [ %STK3.2, %jf.then_L264 ], [ 0, %lab_L260.preheader ]
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK6.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %getbyte.charword = zext i8 %getbyte.char to i64
  %eq.not = icmp eq i64 %STK3.0, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L264

jf.else:                                          ; preds = %lab_L260
  switch i8 %getbyte.char, label %jf.then_L265 [
    i8 61, label %jt.then_L266
    i8 47, label %jt.then_L266
    i8 44, label %jt.then_L266
  ]

jt.then_L266:                                     ; preds = %jf.else, %jf.else, %jf.else
  %getbyte.char68 = load i8, ptr %getbyte.string66, align 8
  %getbyte.charword69 = zext i8 %getbyte.char68 to i64
  %eq75.not = icmp eq i64 %STK4.0, %getbyte.charword69
  br i1 %eq75.not, label %common.ret, label %jf.then_L265

common.ret:                                       ; preds = %jt.then_L266, %jf.else191, %jf.then_L271
  %common.ret.op = phi i64 [ -1, %jf.then_L271 ], [ %STK5.2240, %jf.else191 ], [ %STK5.0, %jt.then_L266 ]
  ret i64 %common.ret.op

jf.then_L265:                                     ; preds = %jf.else, %jt.then_L266
  %add = add i64 %STK4.0, 1
  %getbyte.charptr99 = getelementptr i8, ptr %getbyte.string66, i64 %add
  %getbyte.char100 = load i8, ptr %getbyte.charptr99, align 1
  %getbyte.charword101 = zext i8 %getbyte.char100 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword, i64 %getbyte.charword101)
  %eq109 = icmp ne i64 %fnap, 0
  %spec.select = zext i1 %eq109 to i64
  br label %jf.then_L264

jf.then_L264:                                     ; preds = %jf.then_L265, %lab_L260
  %STK4.1 = phi i64 [ %STK4.0, %lab_L260 ], [ %add, %jf.then_L265 ]
  %STK3.1 = phi i64 [ %STK3.0, %lab_L260 ], [ %spec.select, %jf.then_L265 ]
  %eq122.not = icmp eq i8 %getbyte.char, 44
  %eq133.not = icmp eq i8 %getbyte.char, 61
  %or.cond = or i1 %eq122.not, %eq133.not
  %STK4.2 = select i1 %or.cond, i64 0, i64 %STK4.1
  %STK3.2 = select i1 %or.cond, i64 0, i64 %STK3.1
  %add159 = zext i1 %eq122.not to i64
  %STK5.1 = add i64 %STK5.0, %add159
  %add167 = add i64 %STK6.0, 1
  %le.not = icmp sgt i64 %add167, %1
  br i1 %le.not, label %jt.then_L261, label %lab_L260

jt.then_L261:                                     ; preds = %jf.then_L264
  %eq186.not = icmp eq i64 %STK3.2, 0
  br i1 %eq186.not, label %jf.else191, label %jf.then_L271

jf.else191:                                       ; preds = %entry.jf.else191_crit_edge, %jt.then_L261
  %getbyte.string198.pre-phi = phi ptr [ %.pre244, %entry.jf.else191_crit_edge ], [ %getbyte.string66, %jt.then_L261 ]
  %STK4.3241 = phi i64 [ 0, %entry.jf.else191_crit_edge ], [ %STK4.2, %jt.then_L261 ]
  %STK5.2240 = phi i64 [ 0, %entry.jf.else191_crit_edge ], [ %STK5.1, %jt.then_L261 ]
  %getbyte.char200 = load i8, ptr %getbyte.string198.pre-phi, align 1
  %getbyte.charword201 = zext i8 %getbyte.char200 to i64
  %eq207.not = icmp eq i64 %STK4.3241, %getbyte.charword201
  br i1 %eq207.not, label %common.ret, label %jf.then_L271

jf.then_L271:                                     ; preds = %jf.else191, %jt.then_L261
  br label %common.ret
}

define range(i64 -1, 1) i64 @string_to_number(i64 %0) section ".text.blib" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %if_cond.not = icmp eq i8 %getbyte.char, 0
  br i1 %if_cond.not, label %common.ret, label %jt.then_L272

common.ret.sink.split:                            ; preds = %jf.else62, %jf.else475
  %neg.sink = phi i64 [ %neg, %jf.else475 ], [ %getbyte.charword72, %jf.else62 ]
  store i64 %neg.sink, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

common.ret:                                       ; preds = %jump.target_L285, %common.ret.sink.split, %jt.then_L293, %jf.then_L281, %jf.else159, %jt.then_L275, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ -1, %jt.then_L275 ], [ -1, %jf.else159 ], [ -1, %jf.then_L281 ], [ -1, %jt.then_L293 ], [ -1, %common.ret.sink.split ], [ 0, %jump.target_L285 ]
  ret i64 %common.ret.op

jt.then_L272:                                     ; preds = %entry
  %getbyte.charptr20 = getelementptr i8, ptr %getbyte.string, i64 1
  %getbyte.char21 = load i8, ptr %getbyte.charptr20, align 1
  %getbyte.charword22 = zext i8 %getbyte.char21 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword22)
  %eq.not = icmp eq i64 %fnap, 39
  %eq37.not = icmp eq i8 %getbyte.char, 3
  %or.cond = and i1 %eq37.not, %eq.not
  br i1 %or.cond, label %jf.else42, label %jf.then_L273

jf.else42:                                        ; preds = %jt.then_L272
  %getbyte.charptr50 = getelementptr i8, ptr %getbyte.string, i64 3
  %getbyte.char51 = load i8, ptr %getbyte.charptr50, align 1
  %eq57.not = icmp eq i8 %getbyte.char51, 39
  br i1 %eq57.not, label %jf.else62, label %jf.then_L277

jf.else62:                                        ; preds = %jf.else42
  %getbyte.charptr70 = getelementptr i8, ptr %getbyte.string, i64 2
  %getbyte.char71 = load i8, ptr %getbyte.charptr70, align 2
  %getbyte.charword72 = zext i8 %getbyte.char71 to i64
  br label %common.ret.sink.split

jf.then_L273:                                     ; preds = %jt.then_L272
  switch i64 %fnap, label %jf.then_L274 [
    i64 43, label %jt.then_L275
    i64 45, label %jt.then_L275
  ]

jt.then_L275:                                     ; preds = %jf.then_L273, %jf.then_L273
  %eq114.not = icmp eq i8 %getbyte.char, 1
  br i1 %eq114.not, label %common.ret, label %jf.then_L276

jf.then_L276:                                     ; preds = %jt.then_L275
  %eq104 = icmp ne i64 %fnap, 45
  %getbyte.charptr137 = getelementptr i8, ptr %getbyte.string, i64 2
  %getbyte.char138 = load i8, ptr %getbyte.charptr137, align 2
  %getbyte.charword139 = zext i8 %getbyte.char138 to i64
  %lg.value141 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn144 = inttoptr i64 %lg.value141 to ptr
  %fnap146 = tail call i64 %rtap_ep_p_fn144(i64 %getbyte.charword139)
  br label %jf.then_L274

jf.then_L274:                                     ; preds = %jf.then_L273, %jf.then_L276
  %STK7.0 = phi i64 [ %fnap146, %jf.then_L276 ], [ %fnap, %jf.then_L273 ]
  %STK5.0 = phi i1 [ %eq104, %jf.then_L276 ], [ true, %jf.then_L273 ]
  %STK1.0 = phi i64 [ 2, %jf.then_L276 ], [ 1, %jf.then_L273 ]
  %eq154.not = icmp eq i64 %STK7.0, 35
  br i1 %eq154.not, label %jf.else159, label %jf.then_L277

jf.else159:                                       ; preds = %jf.then_L274
  %eq168.not = icmp eq i64 %STK1.0, %getbyte.charword
  br i1 %eq168.not, label %common.ret, label %jf.then_L278

jf.then_L278:                                     ; preds = %jf.else159
  %add181 = add nuw nsw i64 %STK1.0, 1
  %getbyte.charptr192 = getelementptr i8, ptr %getbyte.string, i64 %add181
  %getbyte.char193 = load i8, ptr %getbyte.charptr192, align 1
  %getbyte.charword194 = zext i8 %getbyte.char193 to i64
  %lg.value196 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn199 = inttoptr i64 %lg.value196 to ptr
  %fnap201 = tail call i64 %rtap_ep_p_fn199(i64 %getbyte.charword194)
  switch i64 %fnap201, label %jf.then_L277 [
    i64 88, label %jf.else247
    i64 66, label %jf.then_L281
    i64 79, label %jf.then_L281
  ]

jf.else247:                                       ; preds = %jf.then_L278
  br label %jf.then_L281

jf.then_L281:                                     ; preds = %jf.then_L278, %jf.then_L278, %jf.else247
  %STK6.0 = phi i64 [ 16, %jf.else247 ], [ 8, %jf.then_L278 ], [ 8, %jf.then_L278 ]
  %eq269.not = icmp eq i64 %add181, %getbyte.charword
  br i1 %eq269.not, label %common.ret, label %jf.then_L283

jf.then_L283:                                     ; preds = %jf.then_L281
  %eq255.not = icmp eq i64 %fnap201, 66
  %spec.select = select i1 %eq255.not, i64 2, i64 %STK6.0
  %add282 = add nuw nsw i64 %STK1.0, 2
  %getbyte.charptr293 = getelementptr i8, ptr %getbyte.string, i64 %add282
  %getbyte.char294 = load i8, ptr %getbyte.charptr293, align 1
  %getbyte.charword295 = zext i8 %getbyte.char294 to i64
  %lg.value297 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn300 = inttoptr i64 %lg.value297 to ptr
  %fnap302 = tail call i64 %rtap_ep_p_fn300(i64 %getbyte.charword295)
  br label %jf.then_L277

jf.then_L277:                                     ; preds = %jf.else42, %jf.then_L278, %jf.then_L283, %jf.then_L274
  %STK5.0534 = phi i1 [ %STK5.0, %jf.then_L274 ], [ %STK5.0, %jf.then_L283 ], [ %STK5.0, %jf.then_L278 ], [ true, %jf.else42 ]
  %STK7.1 = phi i64 [ %STK7.0, %jf.then_L274 ], [ %fnap302, %jf.then_L283 ], [ %fnap201, %jf.then_L278 ], [ 39, %jf.else42 ]
  %STK6.2 = phi i64 [ 10, %jf.then_L274 ], [ %spec.select, %jf.then_L283 ], [ 8, %jf.then_L278 ], [ 10, %jf.else42 ]
  %STK1.1 = phi i64 [ %STK1.0, %jf.then_L274 ], [ %add282, %jf.then_L283 ], [ %add181, %jf.then_L278 ], [ 1, %jf.else42 ]
  br label %lab_L284

lab_L284:                                         ; preds = %jt.else449, %jf.then_L277
  %STK7.2 = phi i64 [ %STK7.1, %jf.then_L277 ], [ %fnap467, %jt.else449 ]
  %STK1.2 = phi i64 [ %STK1.1, %jf.then_L277 ], [ %add436, %jt.else449 ]
  %1 = add i64 %STK7.2, -58
  %or.cond528 = icmp ult i64 %1, -10
  br i1 %or.cond528, label %jf.then_L286, label %jf.else325

jf.else325:                                       ; preds = %lab_L284
  %sub = add nsw i64 %STK7.2, -48
  br label %jump.target_L285

jf.then_L286:                                     ; preds = %lab_L284
  %2 = add i64 %STK7.2, -91
  %or.cond529 = icmp ult i64 %2, -26
  %eq373.not = icmp eq i64 %STK7.2, 95
  %. = select i1 %eq373.not, i64 -1, i64 1000
  %add364 = add nsw i64 %STK7.2, -55
  %__res_a.1 = select i1 %or.cond529, i64 %., i64 %add364
  br label %jump.target_L285

jump.target_L285:                                 ; preds = %jf.then_L286, %jf.else325
  %__res_a.2 = phi i64 [ %__res_a.1, %jf.then_L286 ], [ %sub, %jf.else325 ]
  %ls = icmp slt i64 %__res_a.2, %STK6.2
  br i1 %ls, label %jt.then_L291, label %common.ret

jt.then_L291:                                     ; preds = %jump.target_L285
  %ge = icmp slt i64 %__res_a.2, 0
  br i1 %ge, label %jf.then_L292, label %jf.else416

jf.else416:                                       ; preds = %jt.then_L291
  %lg.value419 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %mul = mul i64 %lg.value419, %STK6.2
  %add428 = add i64 %mul, %__res_a.2
  store i64 %add428, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L292

jf.then_L292:                                     ; preds = %jf.else416, %jt.then_L291
  %gr.not = icmp ult i64 %STK1.2, %getbyte.charword
  br i1 %gr.not, label %jt.else449, label %jt.then_L293

jt.else449:                                       ; preds = %jf.then_L292
  %add436 = add nuw nsw i64 %STK1.2, 1
  %getbyte.charptr458 = getelementptr i8, ptr %getbyte.string, i64 %add436
  %getbyte.char459 = load i8, ptr %getbyte.charptr458, align 1
  %getbyte.charword460 = zext i8 %getbyte.char459 to i64
  %lg.value462 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn465 = inttoptr i64 %lg.value462 to ptr
  %fnap467 = tail call i64 %rtap_ep_p_fn465(i64 %getbyte.charword460)
  br label %lab_L284

jt.then_L293:                                     ; preds = %jf.then_L292
  br i1 %STK5.0534, label %common.ret, label %jf.else475

jf.else475:                                       ; preds = %jt.then_L293
  %lg.value476 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %neg = sub i64 0, %lg.value476
  br label %common.ret.sink.split
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @copystring(i64 %0, i64 %1) #2 section ".text.blib" {
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
  br i1 %or.cond, label %lab_L295.preheader, label %vector.ph

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
  br i1 %cmp.n, label %jt.then_L296, label %lab_L295.preheader

lab_L295.preheader:                               ; preds = %entry, %middle.block
  %STK2.0.ph = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ]
  br label %lab_L295

lab_L295:                                         ; preds = %lab_L295.preheader, %lab_L295
  %STK2.0 = phi i64 [ %add, %lab_L295 ], [ %STK2.0.ph, %lab_L295.preheader ]
  %getbyte.charptr19 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char20 = load i8, ptr %getbyte.charptr19, align 1
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %STK2.0
  store i8 %getbyte.char20, ptr %putbyte.charptr, align 1
  %add = add nuw nsw i64 %STK2.0, 1
  %le.not.not = icmp samesign ult i64 %STK2.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L295, label %jt.then_L296, !llvm.loop !7

jt.then_L296:                                     ; preds = %lab_L295, %middle.block
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @copy_words(i64 %0, i64 %1, i64 %2) #2 section ".text.blib" {
entry:
  %sub = add i64 %2, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L300, label %lab_L299

lab_L299:                                         ; preds = %entry, %lab_L299
  %STK3.0 = phi i64 [ %add35, %lab_L299 ], [ 0, %entry ]
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
  br i1 %le.not, label %jt.then_L300, label %lab_L299

jt.then_L300:                                     ; preds = %lab_L299, %entry
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none)
define noundef i64 @clear_words(i64 %0, i64 %1) #3 section ".text.blib" {
entry:
  %sub = add i64 %1, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L304, label %lab_L303

lab_L303:                                         ; preds = %entry, %lab_L303
  %STK2.0 = phi i64 [ %add26, %lab_L303 ], [ 0, %entry ]
  %add = add i64 %STK2.0, %0
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 0, ptr %stind.lv, align 8
  %add26 = add i64 %STK2.0, 1
  %le.not = icmp sgt i64 %add26, %sub
  br i1 %le.not, label %jt.then_L304, label %lab_L303

jt.then_L304:                                     ; preds = %lab_L303, %entry
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @copy_bytes(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #2 section ".text.blib" {
entry:
  %spec.select = tail call i64 @llvm.smin.i64(i64 %0, i64 %3)
  %sub = add i64 %spec.select, -1
  %gr26 = icmp slt i64 %sub, 0
  br i1 %gr26, label %jt.then_L309, label %lab_L308.preheader

lab_L308.preheader:                               ; preds = %entry
  %or.cond = icmp slt i64 %spec.select, 8
  br i1 %or.cond, label %lab_L308.preheader165, label %vector.ph

vector.ph:                                        ; preds = %lab_L308.preheader
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
  br i1 %cmp.n, label %jt.then_L309, label %lab_L308.preheader165

lab_L308.preheader165:                            ; preds = %lab_L308.preheader, %middle.block
  %STK13.0.ph = phi i64 [ 0, %lab_L308.preheader ], [ %n.vec, %middle.block ]
  br label %lab_L308

lab_L308:                                         ; preds = %lab_L308.preheader165, %lab_L308
  %STK13.0 = phi i64 [ %add54, %lab_L308 ], [ %STK13.0.ph, %lab_L308.preheader165 ]
  %9 = getelementptr i8, ptr null, i64 %STK13.0
  %getbyte.charptr = getelementptr i8, ptr %9, i64 %1
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %putbyte.charptr = getelementptr i8, ptr %9, i64 %4
  store i8 %getbyte.char, ptr %putbyte.charptr, align 1
  %add54 = add i64 %STK13.0, 1
  %le.not = icmp sgt i64 %add54, %sub
  br i1 %le.not, label %jt.then_L309, label %lab_L308, !llvm.loop !9

jt.then_L309:                                     ; preds = %lab_L308, %middle.block, %entry
  %sub75 = add i64 %3, -1
  %gr83 = icmp sgt i64 %spec.select, %sub75
  br i1 %gr83, label %jt.then_L313, label %lab_L312.preheader

lab_L312.preheader:                               ; preds = %jt.then_L309
  %putbyte.char103 = trunc i64 %2 to i8
  %invariant.gep = getelementptr i8, ptr null, i64 %4
  %10 = sext i64 %sub75 to i128
  %11 = add nsw i128 %10, 1
  %12 = add i64 %spec.select, 1
  %13 = sext i64 %12 to i128
  %smax152 = tail call i128 @llvm.smax.i128(i128 %11, i128 %13)
  %14 = trunc i128 %smax152 to i64
  %15 = sub i64 %14, %spec.select
  %min.iters.check155 = icmp ult i64 %15, 24
  br i1 %min.iters.check155, label %lab_L312.preheader164, label %vector.scevcheck151

vector.scevcheck151:                              ; preds = %lab_L312.preheader
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
  br i1 %25, label %lab_L312.preheader164, label %vector.ph156

vector.ph156:                                     ; preds = %vector.scevcheck151
  %n.vec158 = and i64 %15, -4
  %26 = add i64 %spec.select, %n.vec158
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %putbyte.char103, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %27 = getelementptr i8, ptr %invariant.gep, i64 %spec.select
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph156
  %index160 = phi i64 [ 0, %vector.ph156 ], [ %index.next161, %vector.body159 ]
  %28 = getelementptr i8, ptr %27, i64 %index160
  store <4 x i8> %broadcast.splat, ptr %28, align 1
  %index.next161 = add nuw i64 %index160, 4
  %29 = icmp eq i64 %index.next161, %n.vec158
  br i1 %29, label %middle.block153, label %vector.body159, !llvm.loop !10

middle.block153:                                  ; preds = %vector.body159
  %cmp.n162 = icmp eq i64 %15, %n.vec158
  br i1 %cmp.n162, label %jt.then_L313, label %lab_L312.preheader164

lab_L312.preheader164:                            ; preds = %vector.scevcheck151, %lab_L312.preheader, %middle.block153
  %STK69.0.ph = phi i64 [ %spec.select, %lab_L312.preheader ], [ %spec.select, %vector.scevcheck151 ], [ %26, %middle.block153 ]
  br label %lab_L312

lab_L312:                                         ; preds = %lab_L312.preheader164, %lab_L312
  %STK69.0 = phi i64 [ %add112, %lab_L312 ], [ %STK69.0.ph, %lab_L312.preheader164 ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK69.0
  store i8 %putbyte.char103, ptr %gep, align 1
  %add112 = add i64 %STK69.0, 1
  %le121.not = icmp sgt i64 %add112, %sub75
  br i1 %le121.not, label %jt.then_L313, label %lab_L312, !llvm.loop !11

jt.then_L313:                                     ; preds = %lab_L312, %middle.block153, %jt.then_L309
  %sub133 = sub i64 %0, %spec.select
  ret i64 %sub133
}

define i64 @readn() section ".text.blib" {
entry:
  %lg.value138 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn139 = inttoptr i64 %lg.value138 to ptr
  %fnap140 = tail call i64 %rtap_ep_p_fn139()
  %0 = add i64 %fnap140, -48
  %or.cond141 = icmp ult i64 %0, 10
  br i1 %or.cond141, label %jt.then_L317, label %jf.then_L318

jf.then_L318:                                     ; preds = %entry, %lab_L323
  %fnap142 = phi i64 [ %fnap, %lab_L323 ], [ %fnap140, %entry ]
  switch i64 %fnap142, label %common.ret [
    i64 43, label %lab_L325.loopexit
    i64 45, label %lab_L325
    i64 10, label %lab_L323
    i64 9, label %lab_L323
    i64 32, label %lab_L323
  ]

common.ret:                                       ; preds = %jf.then_L318, %jf.then_L328
  %storemerge = phi i64 [ 0, %jf.then_L328 ], [ -1, %jf.then_L318 ]
  %common.ret.op = phi i64 [ %spec.select, %jf.then_L328 ], [ 0, %jf.then_L318 ]
  %lg.value114 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn117 = inttoptr i64 %lg.value114 to ptr
  %rtap118 = tail call i64 %rtap_ep_p_fn117()
  store i64 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  ret i64 %common.ret.op

lab_L323:                                         ; preds = %jf.then_L318, %jf.then_L318, %jf.then_L318
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %1 = add i64 %fnap, -48
  %or.cond = icmp ult i64 %1, 10
  br i1 %or.cond, label %jt.then_L317, label %jf.then_L318

lab_L325.loopexit:                                ; preds = %jf.then_L318
  br label %lab_L325

lab_L325:                                         ; preds = %jf.then_L318, %lab_L325.loopexit
  %2 = phi i1 [ true, %lab_L325.loopexit ], [ false, %jf.then_L318 ]
  %lg.value29 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn32 = inttoptr i64 %lg.value29 to ptr
  %fnap33 = tail call i64 %rtap_ep_p_fn32()
  br label %jt.then_L317

jt.then_L317:                                     ; preds = %lab_L323, %entry, %lab_L325
  %STK2.1 = phi i1 [ %2, %lab_L325 ], [ true, %entry ], [ true, %lab_L323 ]
  %STK1.0 = phi i64 [ %fnap33, %lab_L325 ], [ %fnap140, %entry ], [ %fnap, %lab_L323 ]
  %3 = add i64 %STK1.0, -58
  %or.cond133 = icmp ult i64 %3, -10
  br i1 %or.cond133, label %jf.then_L328, label %lab_L326

lab_L326:                                         ; preds = %jt.then_L317, %lab_L326
  %STK1.1 = phi i64 [ %fnap80, %lab_L326 ], [ %STK1.0, %jt.then_L317 ]
  %STK.0 = phi i64 [ %sub, %lab_L326 ], [ 0, %jt.then_L317 ]
  %mul = mul i64 %STK.0, 10
  %add = add nsw i64 %STK1.1, -48
  %sub = add i64 %add, %mul
  %lg.value76 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn79 = inttoptr i64 %lg.value76 to ptr
  %fnap80 = tail call i64 %rtap_ep_p_fn79()
  %4 = add i64 %fnap80, -48
  %or.cond134 = icmp ult i64 %4, 10
  br i1 %or.cond134, label %lab_L326, label %jf.then_L328

jf.then_L328:                                     ; preds = %lab_L326, %jt.then_L317
  %STK.1 = phi i64 [ 0, %jt.then_L317 ], [ %sub, %lab_L326 ]
  %neg = sub i64 0, %STK.1
  %spec.select = select i1 %STK2.1, i64 %STK.1, i64 %neg
  br label %common.ret
}

define noundef i64 @writef(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10) section ".text.blib" {
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

define i64 @sys_flt(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr section ".text.blib" {
entry:
  switch i64 %0, label %lab_L372 [
    i64 17, label %lab_L371
    i64 15, label %lab_L370
    i64 18, label %lab_L369
    i64 16, label %lab_L368
    i64 14, label %lab_L367
    i64 13, label %lab_L366
    i64 12, label %lab_L365
    i64 11, label %lab_L364
    i64 10, label %lab_L363
    i64 9, label %lab_L362
    i64 7, label %lab_L361
    i64 6, label %lab_L360
    i64 5, label %lab_L357
    i64 4, label %lab_L356
    i64 3, label %lab_L355
    i64 2, label %lab_L343
    i64 1, label %lab_L336
    i64 0, label %jump.target_L334
  ]

lab_L336:                                         ; preds = %entry
  %float.itof = sitofp i64 %1 to double
  %gr = icmp slt i64 %2, 1
  br i1 %gr, label %jf.then_L339, label %lab_L337

lab_L337:                                         ; preds = %lab_L336, %lab_L337
  %frhs = phi double [ %fresult, %lab_L337 ], [ %float.itof, %lab_L336 ]
  %STK2.0 = phi i64 [ %sub, %lab_L337 ], [ %2, %lab_L336 ]
  %fresult = fmul double %frhs, 1.000000e+01
  %sub = add nsw i64 %STK2.0, -1
  %gr37 = icmp samesign ugt i64 %STK2.0, 1
  br i1 %gr37, label %lab_L337, label %jf.then_L339.thread

jf.then_L339.thread:                              ; preds = %lab_L337
  %STK5.1535 = bitcast double %fresult to i64
  br label %jump.target_L334

jf.then_L339:                                     ; preds = %lab_L336
  %STK5.1 = bitcast double %float.itof to i64
  %if_cond50 = icmp sgt i64 %2, -1
  br i1 %if_cond50, label %jump.target_L334, label %lab_L340

lab_L340:                                         ; preds = %jf.then_L339, %lab_L340
  %flhs58 = phi double [ %fresult59, %lab_L340 ], [ %float.itof, %jf.then_L339 ]
  %STK2.2 = phi i64 [ %add, %lab_L340 ], [ %2, %jf.then_L339 ]
  %fresult59 = fdiv double %flhs58, 1.000000e+01
  %add = add nuw nsw i64 %STK2.2, 1
  %ls74.not = icmp eq i64 %STK2.2, -1
  br i1 %ls74.not, label %jump.target_L334.loopexit, label %lab_L340

lab_L343:                                         ; preds = %entry
  %flhs90 = bitcast i64 %1 to double
  %comparison = fcmp ult double %flhs90, 0.000000e+00
  %fresult116 = fneg double %flhs90
  %fneg = bitcast double %fresult116 to i64
  %STK82.0 = select i1 %comparison, i64 %fneg, i64 %1
  %flhs125 = bitcast i64 %STK82.0 to double
  %comparison126 = fcmp ult double %flhs125, 1.000000e+01
  br i1 %comparison126, label %jf.then_L349, label %lab_L347.preheader

lab_L347.preheader:                               ; preds = %lab_L343
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.39 to i64), 3
  br label %lab_L347

lab_L347:                                         ; preds = %lab_L347.preheader, %lab_L347
  %STK83.0 = phi i64 [ %add148, %lab_L347 ], [ 0, %lab_L347.preheader ]
  %STK82.1 = phi double [ %fresult139, %lab_L347 ], [ %flhs125, %lab_L347.preheader ]
  %fresult139 = fdiv double %STK82.1, 1.000000e+01
  %fdiv140 = bitcast double %fresult139 to i64
  %add148 = add i64 %STK83.0, 1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lstr.bcpladdr, i64 %fdiv140, i64 %add148)
  %comparison166 = fcmp ult double %fresult139, 1.000000e+01
  br i1 %comparison166, label %jf.then_L349, label %lab_L347

jf.then_L349:                                     ; preds = %lab_L347, %lab_L343
  %flhs178.pre-phi = phi double [ %flhs125, %lab_L343 ], [ %fresult139, %lab_L347 ]
  %STK83.1 = phi i64 [ 0, %lab_L343 ], [ %add148, %lab_L347 ]
  %STK82.2 = phi i64 [ %STK82.0, %lab_L343 ], [ %fdiv140, %lab_L347 ]
  %comparison179 = fcmp ugt double %flhs178.pre-phi, 1.000000e+00
  br i1 %comparison179, label %jf.then_L352, label %lab_L350.preheader

lab_L350.preheader:                               ; preds = %jf.then_L349
  %lstr.bcpladdr203 = ashr exact i64 ptrtoint (ptr @lstr.global.40 to i64), 3
  br label %lab_L350

lab_L350:                                         ; preds = %lab_L350.preheader, %lab_L350
  %STK83.2 = phi i64 [ %sub200, %lab_L350 ], [ %STK83.1, %lab_L350.preheader ]
  %STK82.3 = phi double [ %fresult191, %lab_L350 ], [ %flhs178.pre-phi, %lab_L350.preheader ]
  %fresult191 = fmul double %STK82.3, 1.000000e+01
  %fmul192 = bitcast double %fresult191 to i64
  %sub200 = add i64 %STK83.2, -1
  %lg.value209 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn212 = inttoptr i64 %lg.value209 to ptr
  %rtap216 = tail call i64 %rtap_ep_p_fn212(i64 %lstr.bcpladdr203, i64 %fmul192, i64 %sub200)
  %comparison224 = fcmp ugt double %fresult191, 1.000000e+00
  br i1 %comparison224, label %jf.then_L352, label %lab_L350

jf.then_L352:                                     ; preds = %lab_L350, %jf.then_L349
  %flhs250.pre-phi = phi double [ %flhs178.pre-phi, %jf.then_L349 ], [ %fresult191, %lab_L350 ]
  %STK83.3 = phi i64 [ %STK83.1, %jf.then_L349 ], [ %sub200, %lab_L350 ]
  %STK82.4 = phi i64 [ %STK82.2, %jf.then_L349 ], [ %fmul192, %lab_L350 ]
  store i64 %STK83.3, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %fresult251 = fneg double %flhs250.pre-phi
  %fneg252 = bitcast double %fresult251 to i64
  %__res_a.1 = select i1 %comparison, i64 %fneg252, i64 %STK82.4
  br label %jump.target_L334

lab_L355:                                         ; preds = %entry
  %float.itof263 = sitofp i64 %1 to double
  %float264 = bitcast double %float.itof263 to i64
  br label %jump.target_L334

lab_L356:                                         ; preds = %entry
  %fix.ftoi = bitcast i64 %1 to double
  %fix270 = fptosi double %fix.ftoi to i64
  br label %jump.target_L334

lab_L357:                                         ; preds = %entry
  %flhs280 = bitcast i64 %1 to double
  %comparison281 = fcmp ult double %flhs280, 0.000000e+00
  %fresult295 = fneg double %flhs280
  %fneg296 = bitcast double %fresult295 to i64
  %__res_a.2 = select i1 %comparison281, i64 %fneg296, i64 %1
  br label %jump.target_L334

lab_L360:                                         ; preds = %entry
  %frhs310 = bitcast i64 %1 to double
  %flhs311 = bitcast i64 %2 to double
  %fresult312 = fmul double %frhs310, %flhs311
  %fmul313 = bitcast double %fresult312 to i64
  br label %jump.target_L334

lab_L361:                                         ; preds = %entry
  %frhs323 = bitcast i64 %2 to double
  %flhs324 = bitcast i64 %1 to double
  %fresult325 = fdiv double %flhs324, %frhs323
  %fdiv326 = bitcast double %fresult325 to i64
  br label %jump.target_L334

lab_L362:                                         ; preds = %entry
  %frhs336 = bitcast i64 %1 to double
  %flhs337 = bitcast i64 %2 to double
  %fresult338 = fadd double %frhs336, %flhs337
  %fadd = bitcast double %fresult338 to i64
  br label %jump.target_L334

lab_L363:                                         ; preds = %entry
  %frhs348 = bitcast i64 %2 to double
  %flhs349 = bitcast i64 %1 to double
  %fresult350 = fsub double %flhs349, %frhs348
  %fsub = bitcast double %fresult350 to i64
  br label %jump.target_L334

lab_L364:                                         ; preds = %entry
  br label %jump.target_L334

lab_L365:                                         ; preds = %entry
  %flhs361 = bitcast i64 %1 to double
  %fresult362 = fneg double %flhs361
  %fneg363 = bitcast double %fresult362 to i64
  br label %jump.target_L334

lab_L366:                                         ; preds = %entry
  %frhs373 = bitcast i64 %1 to double
  %flhs374 = bitcast i64 %2 to double
  %comparison375 = fcmp oeq double %flhs374, %frhs373
  %feq = sext i1 %comparison375 to i64
  br label %jump.target_L334

lab_L367:                                         ; preds = %entry
  %frhs385 = bitcast i64 %1 to double
  %flhs386 = bitcast i64 %2 to double
  %comparison387 = fcmp one double %flhs386, %frhs385
  %fne = sext i1 %comparison387 to i64
  br label %jump.target_L334

lab_L368:                                         ; preds = %entry
  %frhs397 = bitcast i64 %2 to double
  %flhs398 = bitcast i64 %1 to double
  %comparison399 = fcmp ogt double %flhs398, %frhs397
  %fgr = sext i1 %comparison399 to i64
  br label %jump.target_L334

lab_L369:                                         ; preds = %entry
  %frhs409 = bitcast i64 %2 to double
  %flhs410 = bitcast i64 %1 to double
  %comparison411 = fcmp oge double %flhs410, %frhs409
  %fge412 = sext i1 %comparison411 to i64
  br label %jump.target_L334

lab_L370:                                         ; preds = %entry
  %frhs422 = bitcast i64 %2 to double
  %flhs423 = bitcast i64 %1 to double
  %comparison424 = fcmp olt double %flhs423, %frhs422
  %fls = sext i1 %comparison424 to i64
  br label %jump.target_L334

lab_L371:                                         ; preds = %entry
  %frhs434 = bitcast i64 %2 to double
  %flhs435 = bitcast i64 %1 to double
  %comparison436 = fcmp ole double %flhs435, %frhs434
  %fle437 = sext i1 %comparison436 to i64
  br label %jump.target_L334

lab_L372:                                         ; preds = %entry
  %lstr.bcpladdr441 = ashr exact i64 ptrtoint (ptr @lstr.global.41 to i64), 3
  %lg.value453 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn456 = inttoptr i64 %lg.value453 to ptr
  %rtap463 = tail call i64 %rtap_ep_p_fn456(i64 %lstr.bcpladdr441, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  %lg.value465 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn468 = inttoptr i64 %lg.value465 to ptr
  %rtap470 = tail call i64 %rtap_ep_p_fn468(i64 1)
  br label %jump.target_L334

jump.target_L334.loopexit:                        ; preds = %lab_L340
  %fdiv.le = bitcast double %fresult59 to i64
  br label %jump.target_L334

jump.target_L334:                                 ; preds = %jump.target_L334.loopexit, %jf.then_L339.thread, %entry, %jf.then_L339, %lab_L372, %lab_L371, %lab_L370, %lab_L369, %lab_L368, %lab_L367, %lab_L366, %lab_L365, %lab_L364, %lab_L363, %lab_L362, %lab_L361, %lab_L360, %lab_L357, %lab_L356, %lab_L355, %jf.then_L352
  %STK5.3 = phi i64 [ -4985279381848933680, %lab_L372 ], [ %STK5.1, %jf.then_L339 ], [ %__res_a.1, %jf.then_L352 ], [ %float264, %lab_L355 ], [ %fix270, %lab_L356 ], [ %__res_a.2, %lab_L357 ], [ %fmul313, %lab_L360 ], [ %fdiv326, %lab_L361 ], [ %fadd, %lab_L362 ], [ %fsub, %lab_L363 ], [ %1, %lab_L364 ], [ %fneg363, %lab_L365 ], [ %feq, %lab_L366 ], [ %fne, %lab_L367 ], [ %fgr, %lab_L368 ], [ %fge412, %lab_L369 ], [ %fls, %lab_L370 ], [ %fle437, %lab_L371 ], [ -1, %entry ], [ %STK5.1535, %jf.then_L339.thread ], [ %fdiv.le, %jump.target_L334.loopexit ]
  ret i64 %STK5.3
}

define i64 @sys(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) section ".text.blib" {
entry:
  switch i64 %0, label %lab_L380 [
    i64 63, label %lab_L379
    i64 11, label %lab_L378
    i64 10, label %lab_L377
  ]

lab_L377:                                         ; preds = %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  br label %jump.target_L376

lab_L378:                                         ; preds = %entry
  %lg.value13 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn16 = inttoptr i64 %lg.value13 to ptr
  %fnap17 = tail call i64 %rtap_ep_p_fn16(i64 %1)
  br label %jump.target_L376

lab_L379:                                         ; preds = %entry
  %fnap39 = tail call i64 @sys_flt(i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  br label %jump.target_L376

lab_L380:                                         ; preds = %entry
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.43 to i64), 3
  %lg.value56 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn59 = inttoptr i64 %lg.value56 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn59(i64 %lstr.bcpladdr, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  %lg.value68 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn71 = inttoptr i64 %lg.value68 to ptr
  %rtap73 = tail call i64 %rtap_ep_p_fn71(i64 1)
  br label %jump.target_L376

jump.target_L376:                                 ; preds = %lab_L380, %lab_L379, %lab_L378, %lab_L377
  %STK6.0 = phi i64 [ -4985279381848933680, %lab_L380 ], [ %fnap, %lab_L377 ], [ %fnap17, %lab_L378 ], [ %fnap39, %lab_L379 ]
  ret i64 %STK6.0
}

define noundef i64 @writes(i64 %0) section ".text.blib" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr = icmp eq i8 %getbyte.char, 0
  br i1 %gr, label %jt.then_L382, label %lab_L381

lab_L381:                                         ; preds = %entry, %lab_L381
  %STK1.0 = phi i64 [ %add, %lab_L381 ], [ 1, %entry ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK1.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  %add = add nuw nsw i64 %STK1.0, 1
  %le.not.not = icmp samesign ult i64 %STK1.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L381, label %jt.then_L382

jt.then_L382:                                     ; preds = %lab_L381, %entry
  ret i64 -4985279381848933680
}

define noundef i64 @deplete(i64 %0) section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 1)
  ret i64 -4985279381848933680
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.smax.i128(i128, i128) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) }
attributes #3 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
