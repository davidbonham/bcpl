; ModuleID = 'blib'
source_filename = "blib"

@__bcpl_global_vector = external local_unnamed_addr global [256 x i64], section "BCPLGVEC"
@itemn.global = internal global [16 x i64] [i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70], section ".rodata.blib"
@lstr.global = private global [14 x i8] c"\0D<<mess:%-%n>>", section ".rodata.blib", align 8
@lstr.global.16 = private global [56 x i8] c"7ERROR sys_flt operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".rodata.blib", align 8
@lstr.global.18 = private global [63 x i8] c">ERROR sys package=%n operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".rodata.blib", align 8

@__bcpl_gv3 = alias ptr, ptr @sys
@__bcpl_gv94 = alias ptr, ptr @writef
@__bcpl_gv83 = alias ptr, ptr @readn
@__bcpl_gv84 = alias ptr, ptr @newline
@__bcpl_gv89 = alias ptr, ptr @writes
@__bcpl_gv87 = alias ptr, ptr @writehex
@__bcpl_gv88 = alias ptr, ptr @writeoct
@__bcpl_gv86 = alias ptr, ptr @writen
@__bcpl_gv85 = alias ptr, ptr @writed
@__bcpl_gv34 = alias ptr, ptr @randno
@__bcpl_gv96 = alias ptr, ptr @capitalch

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @capitalch(i64 %0) #0 section ".text.blib" {
entry:
  %1 = add i64 %0, -123
  %or.cond = icmp ult i64 %1, -26
  %sub = add nsw i64 %0, -32
  %common.ret.op = select i1 %or.cond, i64 %0, i64 %sub
  ret i64 %common.ret.op
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define range(i64 -3074457345618258601, 3074457345618258604) i64 @randno(i64 %0) #1 section ".text.blib" {
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

define noundef i64 @writed(i64 %0, i64 %1) section ".text.blib" {
entry:
  %stack.vec = alloca [21 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %2 = call i64 @llvm.abs.i64(i64 %0, i1 false)
  %spec.select = sub i64 0, %2
  %.lobit = ashr i64 %0, 63
  br label %lab

lab:                                              ; preds = %lab, %entry
  %STK4.1 = phi i64 [ %spec.select, %entry ], [ %div, %lab ]
  %STK131.promoted = phi i64 [ 0, %entry ], [ %add47, %lab ]
  %STK4.1.frozen = freeze i64 %STK4.1
  %div = sdiv i64 %STK4.1.frozen, 10
  %3 = mul i64 %div, 10
  %mod.decomposed = sub i64 %STK4.1.frozen, %3
  %neg26 = sub nsw i64 0, %mod.decomposed
  %add = add i64 %STK131.promoted, %stack.bcpladdr
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %neg26, ptr %stind.lv, align 8
  %add47 = add i64 %STK131.promoted, 1
  %4 = add i64 %STK4.1, -10
  %eq = icmp ult i64 %4, -19
  br i1 %eq, label %lab, label %lab61

lab61:                                            ; preds = %lab
  %if_cond = icmp slt i64 %0, 0
  %spec.select195 = add i64 %1, %.lobit
  %add67 = add i64 %STK131.promoted, 2
  %gr = icmp sgt i64 %add67, %spec.select195
  br i1 %gr, label %jt.then, label %lab81

lab81:                                            ; preds = %lab61, %lab81
  %add91196 = phi i64 [ %add91, %lab81 ], [ %add67, %lab61 ]
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 32)
  %add91 = add i64 %add91196, 1
  %le.not = icmp sgt i64 %add91, %spec.select195
  br i1 %le.not, label %jt.then, label %lab81

jt.then:                                          ; preds = %lab81, %lab61
  br i1 %if_cond, label %jf.else116, label %jf.then124

jf.else116:                                       ; preds = %jt.then
  %lg.value118 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn121 = inttoptr i64 %lg.value118 to ptr
  %rtap123 = call i64 %rtap_ep_p_fn121(i64 45)
  br label %jf.then124

jf.then124:                                       ; preds = %jf.else116, %jt.then
  %ls137 = icmp slt i64 %STK131.promoted, 0
  br i1 %ls137, label %jt.then184, label %lab143

lab143:                                           ; preds = %jf.then124, %lab143
  %add170197 = phi i64 [ %add170, %lab143 ], [ %STK131.promoted, %jf.then124 ]
  %add150 = add i64 %add170197, %stack.bcpladdr
  %rv.llvmaddr = shl i64 %add150, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %add156 = add i64 %rv.rv, 48
  %lg.value158 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn161 = inttoptr i64 %lg.value158 to ptr
  %rtap163 = call i64 %rtap_ep_p_fn161(i64 %add156)
  %add170 = add nsw i64 %add170197, -1
  %ge.not = icmp eq i64 %add170197, 0
  br i1 %ge.not, label %jt.then184, label %lab143

jt.then184:                                       ; preds = %lab143, %jf.then124
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
  br i1 %gr, label %jf.then, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 3
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then

jf.then:                                          ; preds = %jf.else, %entry
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
  br i1 %gr, label %jf.then, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 4
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then

jf.then:                                          ; preds = %jf.else, %entry
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

define noundef i64 @writes(i64 %0) section ".text.blib" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr = icmp eq i8 %getbyte.char, 0
  br i1 %gr, label %jt.then, label %lab

lab:                                              ; preds = %entry, %lab
  %STK1.0 = phi i64 [ %add, %lab ], [ 1, %entry ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK1.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  %add = add nuw nsw i64 %STK1.0, 1
  %le.not.not = icmp samesign ult i64 %STK1.0, %getbyte.charword
  br i1 %le.not.not, label %lab, label %jt.then

jt.then:                                          ; preds = %lab, %entry
  ret i64 -4985279381848933680
}

define noundef i64 @newline() section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 10)
  ret i64 -4985279381848933680
}

define i64 @readn() section ".text.blib" {
entry:
  br label %lab

lab:                                              ; preds = %lab.backedge, %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  switch i64 %fnap, label %jump.target47 [
    i64 32, label %lab.backedge
    i64 9, label %lab.backedge
    i64 10, label %lab.backedge
    i64 43, label %lab37.loopexit
    i64 45, label %lab37
  ]

lab.backedge:                                     ; preds = %lab, %lab, %lab
  br label %lab

lab37.loopexit:                                   ; preds = %lab
  br label %lab37

lab37:                                            ; preds = %lab, %lab37.loopexit
  %0 = phi i1 [ true, %lab37.loopexit ], [ false, %lab ]
  %lg.value38 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn41 = inttoptr i64 %lg.value38 to ptr
  %fnap42 = tail call i64 %rtap_ep_p_fn41()
  br label %jump.target47

jump.target47:                                    ; preds = %lab, %lab37
  %STK1.1 = phi i1 [ %0, %lab37 ], [ true, %lab ]
  %STK2.0 = phi i64 [ %fnap42, %lab37 ], [ %fnap, %lab ]
  %1 = add i64 %STK2.0, -58
  %or.cond = icmp ult i64 %1, -10
  br i1 %or.cond, label %jf.then115, label %lab68

lab68:                                            ; preds = %jump.target47, %lab68
  %STK.0 = phi i64 [ %sub, %lab68 ], [ 0, %jump.target47 ]
  %STK2.1 = phi i64 [ %fnap89, %lab68 ], [ %STK2.0, %jump.target47 ]
  %mul = mul i64 %STK.0, 10
  %add = add nsw i64 %STK2.1, -48
  %sub = add i64 %add, %mul
  %lg.value85 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn88 = inttoptr i64 %lg.value85 to ptr
  %fnap89 = tail call i64 %rtap_ep_p_fn88()
  %2 = add i64 %fnap89, -48
  %or.cond146 = icmp ult i64 %2, 10
  br i1 %or.cond146, label %lab68, label %jf.then115

jf.then115:                                       ; preds = %lab68, %jump.target47
  %STK.1 = phi i64 [ 0, %jump.target47 ], [ %sub, %lab68 ]
  %STK2.2 = phi i64 [ %STK2.0, %jump.target47 ], [ %fnap89, %lab68 ]
  %neg = sub i64 0, %STK.1
  %spec.select = select i1 %STK1.1, i64 %STK.1, i64 %neg
  %lg.value128 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn131 = inttoptr i64 %lg.value128 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn131(i64 %STK2.2)
  ret i64 %spec.select
}

define noundef i64 @write_format(i64 %0, i64 %1) local_unnamed_addr section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %le.not = icmp eq i8 %getbyte.char, 0
  br i1 %le.not, label %jf.then938, label %lab.preheader

lab.preheader:                                    ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %getbyte.string, i64 1
  %rv.llvmaddr = shl i64 %1, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global to i64), 3
  br label %lab

lab:                                              ; preds = %lab.preheader, %jump.target916
  %STK2.0 = phi i64 [ %STK2.8, %jump.target916 ], [ 1, %lab.preheader ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %add = add nsw i64 %STK2.0, 1
  %eq = icmp eq i8 %getbyte.char19, 37
  br i1 %eq, label %jt.then, label %jt.else

jt.else:                                          ; preds = %lab
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value45 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value45 to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  br label %jump.target916

jt.then:                                          ; preds = %lab
  %getbyte.charptr55 = getelementptr i8, ptr %getbyte.string, i64 %add
  %getbyte.char56 = load i8, ptr %getbyte.charptr55, align 1
  %getbyte.charword57 = zext i8 %getbyte.char56 to i64
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.llvmaddr64 = shl i64 %rv.rv, 3
  %rv.lv65 = inttoptr i64 %rv.llvmaddr64 to ptr
  %rv.rv66 = load i64, ptr %rv.lv65, align 8
  br label %lab69.outer

lab69.outer:                                      ; preds = %lab226, %jt.then
  %lp.value684.ph = phi i64 [ 0, %jt.then ], [ %sub243, %lab226 ]
  %if_cond346.not.ph = phi i1 [ true, %jt.then ], [ false, %lab226 ]
  %lp.value682.ph = phi i64 [ 0, %jt.then ], [ %sub, %lab226 ]
  %getbyte.charword264.lcssa1038.ph = phi i64 [ %getbyte.charword57, %jt.then ], [ %getbyte.charword264, %lab226 ]
  %STK2.1.ph = phi i64 [ %add, %jt.then ], [ %add251, %lab226 ]
  br label %lab69

lab69:                                            ; preds = %lab69.backedge, %lab69.outer
  %if_cond346.not = phi i1 [ %if_cond346.not.ph, %lab69.outer ], [ false, %lab69.backedge ]
  %lp.value682 = phi i64 [ %lp.value682.ph, %lab69.outer ], [ %sub, %lab69.backedge ]
  %getbyte.charword264.lcssa1038 = phi i64 [ %getbyte.charword264.lcssa1038.ph, %lab69.outer ], [ %getbyte.charword264.lcssa1038.be, %lab69.backedge ]
  %STK2.1 = phi i64 [ %STK2.1.ph, %lab69.outer ], [ %STK2.1.be, %lab69.backedge ]
  %lg.value72 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn75 = inttoptr i64 %lg.value72 to ptr
  %fnap = call i64 %rtap_ep_p_fn75(i64 %getbyte.charword264.lcssa1038)
  switch i64 %fnap, label %lab79 [
    i64 80, label %lab717
    i64 70, label %lab656
    i64 69, label %lab614
    i64 77, label %lab554
    i64 45, label %lab526
    i64 43, label %lab498
    i64 36, label %lab498
    i64 78, label %"\C0\AD\DE459.loopexit1297"
    i64 88, label %"\C0\AD\DE.loopexit1298"
    i64 79, label %"\C0\AD\DE.loopexit1231"
    i64 67, label %"\C0\AD\DE459.loopexit1232"
    i64 83, label %"\C0\AD\DE459"
    i64 73, label %"\C0\AD\DE"
    i64 68, label %"\C0\AD\DE"
    i64 57, label %lab107.preheader
    i64 56, label %lab107.preheader
    i64 55, label %lab107.preheader
    i64 54, label %lab107.preheader
    i64 53, label %lab107.preheader
    i64 52, label %lab107.preheader
    i64 51, label %lab107.preheader
    i64 50, label %lab107.preheader
    i64 49, label %lab107.preheader
    i64 48, label %lab107.preheader
  ]

lab107.preheader:                                 ; preds = %lab69, %lab69, %lab69, %lab69, %lab69, %lab69, %lab69, %lab69, %lab69, %lab69
  br label %lab107

lab79:                                            ; preds = %lab69
  %lg.value82 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn85 = inttoptr i64 %lg.value82 to ptr
  %rtap87 = call i64 %rtap_ep_p_fn85(i64 %getbyte.charword264.lcssa1038)
  %add93 = add i64 %STK2.1, 1
  br label %jump.target916

lab107:                                           ; preds = %lab107.preheader, %lab107
  %sub1056 = phi i64 [ %sub, %lab107 ], [ %lp.value682, %lab107.preheader ]
  %getbyte.charword264.lcssa1041 = phi i64 [ %getbyte.charword143, %lab107 ], [ %getbyte.charword264.lcssa1038, %lab107.preheader ]
  %STK2.3 = phi i64 [ %add130, %lab107 ], [ %STK2.1, %lab107.preheader ]
  %mul = mul i64 %sub1056, 10
  %add118 = add nsw i64 %getbyte.charword264.lcssa1041, -48
  %sub = add i64 %add118, %mul
  %add130 = add i64 %STK2.3, 1
  %getbyte.charptr141 = getelementptr i8, ptr %getbyte.string, i64 %add130
  %getbyte.char142 = load i8, ptr %getbyte.charptr141, align 1
  %getbyte.charword143 = zext i8 %getbyte.char142 to i64
  %2 = add i8 %getbyte.char142, -48
  %or.cond = icmp ult i8 %2, 10
  br i1 %or.cond, label %lab107, label %lab171

lab171:                                           ; preds = %lab107
  %eq177.not = icmp eq i8 %getbyte.char142, 46
  br i1 %eq177.not, label %jf.else182, label %lab69.backedge

lab69.backedge:                                   ; preds = %lab171, %jf.else182
  %getbyte.charword264.lcssa1038.be = phi i64 [ %getbyte.charword143, %lab171 ], [ %getbyte.charword201, %jf.else182 ]
  %STK2.1.be = phi i64 [ %add130, %lab171 ], [ %add188, %jf.else182 ]
  br label %lab69

jf.else182:                                       ; preds = %lab171
  %add188 = add i64 %STK2.3, 2
  %getbyte.charptr199 = getelementptr i8, ptr %getbyte.string, i64 %add188
  %getbyte.char200 = load i8, ptr %getbyte.charptr199, align 1
  %getbyte.charword201 = zext i8 %getbyte.char200 to i64
  %3 = add i8 %getbyte.char200, -58
  %or.cond998 = icmp ult i8 %3, -10
  br i1 %or.cond998, label %lab69.backedge, label %lab226

lab226:                                           ; preds = %jf.else182, %lab226
  %getbyte.charword2641036 = phi i64 [ %getbyte.charword264, %lab226 ], [ %getbyte.charword201, %jf.else182 ]
  %sub2431035 = phi i64 [ %sub243, %lab226 ], [ %lp.value684.ph, %jf.else182 ]
  %STK2.4 = phi i64 [ %add251, %lab226 ], [ %add188, %jf.else182 ]
  %mul232 = mul i64 %sub2431035, 10
  %add238 = add nsw i64 %getbyte.charword2641036, -48
  %sub243 = add i64 %add238, %mul232
  %add251 = add i64 %STK2.4, 1
  %getbyte.charptr262 = getelementptr i8, ptr %getbyte.string, i64 %add251
  %getbyte.char263 = load i8, ptr %getbyte.charptr262, align 1
  %getbyte.charword264 = zext i8 %getbyte.char263 to i64
  %4 = add i8 %getbyte.char263, -48
  %or.cond999 = icmp ult i8 %4, 10
  br i1 %or.cond999, label %lab226, label %lab69.outer

"\C0\AD\DE.loopexit1231":                         ; preds = %lab69
  br label %"\C0\AD\DE"

"\C0\AD\DE.loopexit1298":                         ; preds = %lab69
  br label %"\C0\AD\DE"

"\C0\AD\DE":                                      ; preds = %lab69, %lab69, %"\C0\AD\DE.loopexit1298", %"\C0\AD\DE.loopexit1231"
  %lp.value429.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), %"\C0\AD\DE.loopexit1231" ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), %"\C0\AD\DE.loopexit1298" ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), %lab69 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), %lab69 ]
  %lp.value429 = load i64, ptr %lp.value429.in, align 4
  br i1 %if_cond346.not, label %jt.else347, label %jt.then424

jt.else347:                                       ; preds = %"\C0\AD\DE"
  %add353 = add i64 %STK2.1, 1
  %getbyte.charptr364 = getelementptr i8, ptr %getbyte.string, i64 %add353
  %getbyte.char365 = load i8, ptr %getbyte.charptr364, align 1
  %getbyte.charword366 = zext i8 %getbyte.char365 to i64
  %lg.value368 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn371 = inttoptr i64 %lg.value368 to ptr
  %fnap373 = call i64 %rtap_ep_p_fn371(i64 %getbyte.charword366)
  %5 = add i64 %fnap373, -58
  %or.cond1000 = icmp ult i64 %5, -10
  %__res_a.0.v = select i1 %or.cond1000, i64 -55, i64 -48
  %__res_a.0 = add i64 %__res_a.0.v, %fnap373
  br label %jt.then424

jt.then424:                                       ; preds = %jt.else347, %"\C0\AD\DE"
  %lp.value427 = phi i64 [ %lp.value682, %"\C0\AD\DE" ], [ %__res_a.0, %jt.else347 ]
  %STK2.6 = phi i64 [ %STK2.1, %"\C0\AD\DE" ], [ %add353, %jt.else347 ]
  %rtap_ep_p_fn432 = inttoptr i64 %lp.value429 to ptr
  %rtap435 = call i64 %rtap_ep_p_fn432(i64 %rv.rv66, i64 %lp.value427)
  %rv.rv441 = load i64, ptr %rv.lv, align 8
  %add446 = add i64 %rv.rv441, 1
  store i64 %add446, ptr %rv.lv, align 8
  %add455 = add i64 %STK2.6, 1
  br label %jump.target916

"\C0\AD\DE459.loopexit1232":                      ; preds = %lab69
  br label %"\C0\AD\DE459"

"\C0\AD\DE459.loopexit1297":                      ; preds = %lab69
  br label %"\C0\AD\DE459"

"\C0\AD\DE459":                                   ; preds = %lab69, %"\C0\AD\DE459.loopexit1297", %"\C0\AD\DE459.loopexit1232"
  %lp.value463.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), %"\C0\AD\DE459.loopexit1232" ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 688), %"\C0\AD\DE459.loopexit1297" ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), %lab69 ]
  %lp.value463 = load i64, ptr %lp.value463.in, align 4
  %rtap_ep_p_fn466 = inttoptr i64 %lp.value463 to ptr
  %rtap469 = call i64 %rtap_ep_p_fn466(i64 %rv.rv66, i64 0)
  %rv.rv475 = load i64, ptr %rv.lv, align 8
  %add480 = add i64 %rv.rv475, 1
  store i64 %add480, ptr %rv.lv, align 8
  %add493 = add i64 %STK2.1, 1
  br label %jump.target916

lab498:                                           ; preds = %lab69, %lab69
  %rv.rv504 = load i64, ptr %rv.lv, align 8
  %add509 = add i64 %rv.rv504, 1
  store i64 %add509, ptr %rv.lv, align 8
  %add522 = add i64 %STK2.1, 1
  br label %jump.target916

lab526:                                           ; preds = %lab69
  %rv.rv532 = load i64, ptr %rv.lv, align 8
  %sub537 = add i64 %rv.rv532, -1
  store i64 %sub537, ptr %rv.lv, align 8
  %add550 = add i64 %STK2.1, 1
  br label %jump.target916

lab554:                                           ; preds = %lab69
  %stack.vec = alloca [33 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %rv.rv561 = load i64, ptr %rv.lv, align 8
  %add566 = add i64 %rv.rv561, 1
  store i64 %add566, ptr %rv.lv, align 8
  %lg.value579 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 744), align 4
  %rtap_ep_p_fn582 = inttoptr i64 %lg.value579 to ptr
  %fnap586 = call i64 %rtap_ep_p_fn582(i64 %rv.rv66, i64 %stack.bcpladdr, i64 32)
  %if_cond589.not = icmp eq i64 %fnap586, 0
  %spec.select = select i1 %if_cond589.not, i64 %lstr.bcpladdr, i64 %stack.bcpladdr
  %rtap604 = call i64 @write_format(i64 %spec.select, i64 %1)
  %add610 = add i64 %STK2.1, 1
  br label %jump.target916

lab614:                                           ; preds = %lab69
  %rv.rv620 = load i64, ptr %rv.lv, align 8
  %add625 = add i64 %rv.rv620, 1
  store i64 %add625, ptr %rv.lv, align 8
  %lg.value639 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1440), align 4
  %rtap_ep_p_fn642 = inttoptr i64 %lg.value639 to ptr
  %rtap646 = call i64 %rtap_ep_p_fn642(i64 %rv.rv66, i64 %lp.value682, i64 %lp.value684.ph)
  %add652 = add i64 %STK2.1, 1
  br label %jump.target916

lab656:                                           ; preds = %lab69
  %rv.rv662 = load i64, ptr %rv.lv, align 8
  %add667 = add i64 %rv.rv662, 1
  store i64 %add667, ptr %rv.lv, align 8
  br i1 %if_cond346.not, label %jf.then695, label %jf.else679

jf.else679:                                       ; preds = %lab656
  %lg.value686 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 584), align 4
  %rtap_ep_p_fn689 = inttoptr i64 %lg.value686 to ptr
  %rtap693 = call i64 %rtap_ep_p_fn689(i64 %rv.rv66, i64 %lp.value682, i64 %lp.value684.ph)
  br label %jump.target707

jf.then695:                                       ; preds = %lab656
  %rtap706 = call i64 @write_format(i64 %rv.rv66, i64 %1)
  br label %jump.target707

jump.target707:                                   ; preds = %jf.then695, %jf.else679
  %add713 = add i64 %STK2.1, 1
  br label %jump.target916

lab717:                                           ; preds = %lab69
  %ne = icmp ne i64 %rv.rv66, 1
  %booltoword723 = sext i1 %ne to i64
  %rv.rv730 = load i64, ptr %rv.lv, align 8
  %add735 = add i64 %rv.rv730, 1
  store i64 %add735, ptr %rv.lv, align 8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK2.1
  %getbyte.char760 = load i8, ptr %gep, align 1
  %getbyte.charword761 = zext i8 %getbyte.char760 to i64
  %add769 = add i64 %STK2.1, 2
  %eq777.not = icmp eq i8 %getbyte.char760, 92
  br i1 %eq777.not, label %jf.else782, label %jf.then896

jf.else782:                                       ; preds = %lab717
  %getbyte.char795 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword796 = zext i8 %getbyte.char795 to i64
  %gr = icmp sgt i64 %add769, %getbyte.charword796
  br i1 %gr, label %jump.target916, label %lab805

lab805:                                           ; preds = %jf.else782, %lab871
  %getbyte.char8821165 = phi i8 [ %getbyte.char882, %lab871 ], [ %getbyte.char795, %jf.else782 ]
  %lp.value8561097 = phi i64 [ %lp.value8561096, %lab871 ], [ %booltoword723, %jf.else782 ]
  %STK2.7 = phi i64 [ %add823, %lab871 ], [ %add769, %jf.else782 ]
  %getbyte.charptr814 = getelementptr i8, ptr %getbyte.string, i64 %STK2.7
  %getbyte.char815 = load i8, ptr %getbyte.charptr814, align 1
  %getbyte.charword816 = zext i8 %getbyte.char815 to i64
  %add823 = add nsw i64 %STK2.7, 1
  %eq831.not = icmp eq i8 %getbyte.char815, 92
  br i1 %eq831.not, label %jf.else836, label %jf.then855

jf.else836:                                       ; preds = %lab805
  %not = xor i64 %lp.value8561097, -1
  %eq848 = icmp eq i64 %booltoword723, %not
  br i1 %eq848, label %jump.target916, label %lab871

jf.then855:                                       ; preds = %lab805
  %if_cond859.not = icmp eq i64 %lp.value8561097, 0
  br i1 %if_cond859.not, label %jt.else860, label %lab871

jt.else860:                                       ; preds = %jf.then855
  %lg.value863 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn866 = inttoptr i64 %lg.value863 to ptr
  %rtap868 = call i64 %rtap_ep_p_fn866(i64 %getbyte.charword816)
  %getbyte.char882.pre = load i8, ptr %getbyte.string, align 8
  br label %lab871

lab871:                                           ; preds = %jf.else836, %jt.else860, %jf.then855
  %getbyte.char882 = phi i8 [ %getbyte.char8821165, %jf.else836 ], [ %getbyte.char882.pre, %jt.else860 ], [ %getbyte.char8821165, %jf.then855 ]
  %lp.value8561096 = phi i64 [ %not, %jf.else836 ], [ 0, %jt.else860 ], [ %lp.value8561097, %jf.then855 ]
  %getbyte.charword883 = zext i8 %getbyte.char882 to i64
  %gr887.not.not = icmp slt i64 %STK2.7, %getbyte.charword883
  br i1 %gr887.not.not, label %lab805, label %jump.target916

jf.then896:                                       ; preds = %lab717
  br i1 %ne, label %jf.else901, label %jump.target916

jf.else901:                                       ; preds = %jf.then896
  %lg.value904 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn907 = inttoptr i64 %lg.value904 to ptr
  %rtap909 = call i64 %rtap_ep_p_fn907(i64 %getbyte.charword761)
  br label %jump.target916

jump.target916:                                   ; preds = %lab871, %jf.else836, %jf.then896, %jf.else901, %jf.else782, %jump.target707, %lab614, %lab554, %lab526, %lab498, %"\C0\AD\DE459", %jt.then424, %lab79, %jt.else
  %STK2.8 = phi i64 [ %add93, %lab79 ], [ %add455, %jt.then424 ], [ %add493, %"\C0\AD\DE459" ], [ %add522, %lab498 ], [ %add550, %lab526 ], [ %add610, %lab554 ], [ %add652, %lab614 ], [ %add713, %jump.target707 ], [ %add769, %jf.then896 ], [ %add769, %jf.else901 ], [ %add769, %jf.else782 ], [ %add, %jt.else ], [ %add823, %jf.else836 ], [ %add823, %lab871 ]
  %getbyte.char927 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword928 = zext i8 %getbyte.char927 to i64
  %le932.not = icmp sgt i64 %STK2.8, %getbyte.charword928
  br i1 %le932.not, label %jf.then938, label %lab

jf.then938:                                       ; preds = %jump.target916, %entry
  store i64 %lg.value, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  ret i64 -4985279381848933680
}

define noundef i64 @xwriteflt(i64 %0, i64 %1, i64 %2) local_unnamed_addr section ".text.blib" {
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
  br label %lab

lab:                                              ; preds = %lab, %entry
  %STK9.1 = phi i64 [ %spec.select, %entry ], [ %div, %lab ]
  %STK13.0 = phi i64 [ 0, %entry ], [ %add98, %lab ]
  %STK9.1.frozen = freeze i64 %STK9.1
  %div = sdiv i64 %STK9.1.frozen, 10
  %3 = mul i64 %div, 10
  %mod.decomposed = sub i64 %STK9.1.frozen, %3
  %add = add i64 %STK13.0, %stack.bcpladdr
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %mod.decomposed, ptr %stind.lv, align 8
  %add98 = add i64 %STK13.0, 1
  %STK9.1.off = add i64 %STK9.1, 9
  %if_cond105.not = icmp ult i64 %STK9.1.off, 19
  br i1 %if_cond105.not, label %lab106, label %lab

lab106:                                           ; preds = %lab
  %if_cond = icmp sgt i64 %fnap, -1
  %STK11.0 = select i1 %eq.not, i64 0, i64 %lg.value10
  %STK1.0 = call i64 @llvm.smax.i64(i64 %1, i64 4)
  %neg110 = sub i64 0, %STK11.0
  %sub = sub i64 %neg110, %STK2.0
  %le = icmp slt i64 %sub, 1
  %le151.not = icmp sgt i64 %sub, %add98
  %or.cond = or i1 %le, %le151.not
  br i1 %or.cond, label %jf.then301, label %jf.else156

jf.else156:                                       ; preds = %lab106
  %sub162 = add nuw i64 %sub, 2305843009213693951
  %add168 = add i64 %sub162, %stack.bcpladdr
  %rv.llvmaddr = shl i64 %add168, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %ge = icmp slt i64 %rv.rv, 5
  br i1 %ge, label %jf.then301, label %jf.else178

jf.else178:                                       ; preds = %jf.else156
  %ls193.not = icmp slt i64 %sub, %add98
  br i1 %ls193.not, label %lab199, label %jf.else278

lab199:                                           ; preds = %jf.else178, %lab199
  %div243710 = phi i64 [ %div243, %lab199 ], [ 1, %jf.else178 ]
  %add251709 = phi i64 [ %add251, %lab199 ], [ %sub, %jf.else178 ]
  %add206 = add i64 %add251709, %stack.bcpladdr
  %rv.llvmaddr209 = shl i64 %add206, 3
  %rv.lv210 = inttoptr i64 %rv.llvmaddr209 to ptr
  %rv.rv211 = load i64, ptr %rv.lv210, align 8
  %add217 = add i64 %div243710, %rv.rv211
  %add217.frozen = freeze i64 %add217
  %div243 = sdiv i64 %add217.frozen, 10
  %4 = mul i64 %div243, 10
  %mod224.decomposed = sub i64 %add217.frozen, %4
  store i64 %mod224.decomposed, ptr %rv.lv210, align 8
  %add251 = add nuw nsw i64 %add251709, 1
  %5 = add i64 %add217, -10
  %if_cond258 = icmp ult i64 %5, -19
  %ls266 = icmp slt i64 %add251, %add98
  %or.cond703 = and i1 %ls266, %if_cond258
  br i1 %or.cond703, label %lab199, label %jf.then273

jf.then273:                                       ; preds = %lab199
  %add217.off = add i64 %add217, 9
  %if_cond277 = icmp ult i64 %add217.off, 19
  br i1 %if_cond277, label %jf.then301, label %jf.else278

jf.else278:                                       ; preds = %jf.else178, %jf.then273
  %add286 = add i64 %add98, %stack.bcpladdr
  %stind.llvmaddr290 = shl i64 %add286, 3
  %stind.lv291 = inttoptr i64 %stind.llvmaddr290 to ptr
  store i64 1, ptr %stind.lv291, align 8
  %add297 = add i64 %STK13.0, 2
  br label %jf.then301

jf.then301:                                       ; preds = %jf.then273, %jf.else278, %jf.else156, %lab106
  %STK13.1 = phi i64 [ %add98, %lab106 ], [ %add98, %jf.else156 ], [ %add98, %jf.then273 ], [ %add297, %jf.else278 ]
  %sub307 = add i64 %STK13.1, -1
  %gr.not = icmp sgt i64 %sub307, %neg110
  %add335 = sub i64 1, %STK11.0
  %STK16.0 = select i1 %gr.not, i64 %STK13.1, i64 %add335
  %add344 = add nsw i64 %STK1.0, -1
  %sub349 = add i64 %add344, %sub
  br i1 %if_cond, label %jf.then468, label %jf.else356

jf.else356:                                       ; preds = %jf.then301
  %sub307.neg110 = call i64 @llvm.smax.i64(i64 %sub307, i64 %neg110)
  %gr388 = icmp sgt i64 %sub, %sub307.neg110
  br i1 %gr388, label %jf.then468, label %lab394

lab394:                                           ; preds = %jf.else356, %lab438
  %add444711 = phi i64 [ %add444, %lab438 ], [ %sub, %jf.else356 ]
  %le400 = icmp sgt i64 %add444711, -1
  %ls412.not = icmp slt i64 %add444711, %STK13.1
  %or.cond704 = and i1 %le400, %ls412.not
  br i1 %or.cond704, label %jf.else417, label %lab438

jf.else417:                                       ; preds = %lab394
  %add424 = add i64 %add444711, %stack.bcpladdr
  %rv.llvmaddr427 = shl i64 %add424, 3
  %rv.lv428 = inttoptr i64 %rv.llvmaddr427 to ptr
  %rv.rv429 = load i64, ptr %rv.lv428, align 8
  %if_cond432 = icmp eq i64 %rv.rv429, 0
  br i1 %if_cond432, label %lab438, label %jf.then468

lab438:                                           ; preds = %lab394, %jf.else417
  %add444 = add i64 %add444711, 1
  %le453.not = icmp sgt i64 %add444, %sub307.neg110
  br i1 %le453.not, label %jf.then468, label %lab394

jf.then468:                                       ; preds = %jf.else417, %lab438, %jf.else356, %jf.then301
  %if_cond523 = phi i64 [ 32, %jf.then301 ], [ 32, %jf.else356 ], [ 32, %lab438 ], [ 45, %jf.else417 ]
  %add476 = add i64 %STK16.0, 1
  %ls484 = icmp slt i64 %sub349, %add476
  br i1 %ls484, label %jt.then519, label %lab490

lab490:                                           ; preds = %jf.then468, %lab490
  %add503712 = phi i64 [ %add503, %lab490 ], [ %sub349, %jf.then468 ]
  %lg.value492 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn495 = inttoptr i64 %lg.value492 to ptr
  %rtap = call i64 %rtap_ep_p_fn495(i64 32)
  %add503 = add i64 %add503712, -1
  %ge512.not = icmp slt i64 %add503, %add476
  br i1 %ge512.not, label %jt.then519, label %lab490

jt.then519:                                       ; preds = %lab490, %jf.then468
  %lg.value535 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn538 = inttoptr i64 %lg.value535 to ptr
  %rtap540 = call i64 %rtap_ep_p_fn538(i64 %if_cond523)
  %sub547 = add i64 %STK16.0, -1
  %ls557 = icmp slt i64 %sub547, %sub
  br i1 %ls557, label %jt.then663, label %lab563

lab563:                                           ; preds = %jt.then519, %lab641
  %add647713 = phi i64 [ %add647, %lab641 ], [ %sub547, %jt.then519 ]
  %le569 = icmp sgt i64 %add647713, -1
  %ls581.not = icmp slt i64 %add647713, %STK13.1
  %or.cond706 = and i1 %le569, %ls581.not
  br i1 %or.cond706, label %jf.else586, label %jump.target620

jf.else586:                                       ; preds = %lab563
  %add593 = add i64 %add647713, %stack.bcpladdr
  %rv.llvmaddr596 = shl i64 %add593, 3
  %rv.lv597 = inttoptr i64 %rv.llvmaddr596 to ptr
  %rv.rv598 = load i64, ptr %rv.lv597, align 8
  %add603 = add i64 %rv.rv598, 48
  br label %jump.target620

jump.target620:                                   ; preds = %lab563, %jf.else586
  %.sink716 = phi i64 [ %add603, %jf.else586 ], [ 48, %lab563 ]
  %lg.value614 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn617 = inttoptr i64 %lg.value614 to ptr
  %rtap619 = call i64 %rtap_ep_p_fn617(i64 %.sink716)
  %eq627.not = icmp eq i64 %add647713, %neg110
  br i1 %eq627.not, label %jf.else632, label %lab641

jf.else632:                                       ; preds = %jump.target620
  %lg.value634 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn637 = inttoptr i64 %lg.value634 to ptr
  %rtap639 = call i64 %rtap_ep_p_fn637(i64 46)
  br label %lab641

lab641:                                           ; preds = %jump.target620, %jf.else632
  %add647 = add i64 %add647713, -1
  %ge656.not = icmp slt i64 %add647, %sub
  br i1 %ge656.not, label %jt.then663, label %lab563

jt.then663:                                       ; preds = %lab641, %jt.then519
  ret i64 -4985279381848933680
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
  switch i64 %0, label %lab117 [
    i64 10, label %lab96
    i64 3, label %lab87
    i64 1, label %lab9
    i64 0, label %jump.target144
  ]

lab9:                                             ; preds = %entry
  %float.itof = sitofp i64 %1 to double
  %gr = icmp slt i64 %2, 1
  br i1 %gr, label %jf.then, label %lab19

lab19:                                            ; preds = %lab9, %lab19
  %frhs = phi double [ %fresult, %lab19 ], [ %float.itof, %lab9 ]
  %STK2.0 = phi i64 [ %sub, %lab19 ], [ %2, %lab9 ]
  %fresult = fmul double %frhs, 1.000000e+01
  %sub = add nsw i64 %STK2.0, -1
  %gr40 = icmp samesign ugt i64 %STK2.0, 1
  br i1 %gr40, label %lab19, label %jf.then.thread

jf.then.thread:                                   ; preds = %lab19
  %STK5.1165 = bitcast double %fresult to i64
  br label %jump.target144

jf.then:                                          ; preds = %lab9
  %STK5.1 = bitcast double %float.itof to i64
  %if_cond53 = icmp sgt i64 %2, -1
  br i1 %if_cond53, label %jump.target144, label %lab55

lab55:                                            ; preds = %jf.then, %lab55
  %lhs60161.cast = phi double [ %fresult63, %lab55 ], [ %float.itof, %jf.then ]
  %STK2.2 = phi i64 [ %add, %lab55 ], [ %2, %jf.then ]
  %fresult63 = fdiv double %lhs60161.cast, 1.000000e+01
  %add = add nuw nsw i64 %STK2.2, 1
  %ls79.not = icmp eq i64 %STK2.2, -1
  br i1 %ls79.not, label %jump.target144.loopexit, label %lab55

lab87:                                            ; preds = %entry
  %float.itof91 = sitofp i64 %1 to double
  %float92 = bitcast double %float.itof91 to i64
  br label %jump.target144

lab96:                                            ; preds = %entry
  %float.itof100 = sitofp i64 %1 to double
  %float.itof106 = sitofp i64 %2 to double
  %fresult113 = fsub double %float.itof100, %float.itof106
  %fsub = bitcast double %fresult113 to i64
  br label %jump.target144

lab117:                                           ; preds = %entry
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.16 to i64), 3
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lstr.bcpladdr, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  %lg.value136 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn139 = inttoptr i64 %lg.value136 to ptr
  %rtap141 = tail call i64 %rtap_ep_p_fn139(i64 1)
  br label %jump.target144

jump.target144.loopexit:                          ; preds = %lab55
  %fdiv.le = bitcast double %fresult63 to i64
  br label %jump.target144

jump.target144:                                   ; preds = %jump.target144.loopexit, %jf.then.thread, %entry, %jf.then, %lab117, %lab96, %lab87
  %STK5.3 = phi i64 [ -4985279381848933680, %lab117 ], [ %STK5.1, %jf.then ], [ %float92, %lab87 ], [ %fsub, %lab96 ], [ -1, %entry ], [ %STK5.1165, %jf.then.thread ], [ %fdiv.le, %jump.target144.loopexit ]
  ret i64 %STK5.3
}

define i64 @sys(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) section ".text.blib" {
entry:
  switch i64 %0, label %lab45 [
    i64 63, label %lab22
    i64 11, label %lab11
    i64 10, label %lab
  ]

lab:                                              ; preds = %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  br label %jump.target79

lab11:                                            ; preds = %entry
  %lg.value14 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn17 = inttoptr i64 %lg.value14 to ptr
  %fnap18 = tail call i64 %rtap_ep_p_fn17(i64 %1)
  br label %jump.target79

lab22:                                            ; preds = %entry
  switch i64 %1, label %lab117.i [
    i64 10, label %lab96.i
    i64 3, label %lab87.i
    i64 1, label %lab9.i
    i64 0, label %jump.target79
  ]

lab9.i:                                           ; preds = %lab22
  %float.itof.i = sitofp i64 %2 to double
  %gr.i = icmp slt i64 %3, 1
  br i1 %gr.i, label %jf.then.i, label %lab19.i

lab19.i:                                          ; preds = %lab9.i, %lab19.i
  %frhs.i = phi double [ %fresult.i, %lab19.i ], [ %float.itof.i, %lab9.i ]
  %STK2.0.i = phi i64 [ %sub.i, %lab19.i ], [ %3, %lab9.i ]
  %fresult.i = fmul double %frhs.i, 1.000000e+01
  %sub.i = add nsw i64 %STK2.0.i, -1
  %gr40.i = icmp samesign ugt i64 %STK2.0.i, 1
  br i1 %gr40.i, label %lab19.i, label %jf.then.thread.i

jf.then.thread.i:                                 ; preds = %lab19.i
  %STK5.1165.i = bitcast double %fresult.i to i64
  br label %jump.target79

jf.then.i:                                        ; preds = %lab9.i
  %STK5.1.i = bitcast double %float.itof.i to i64
  %if_cond53.i = icmp sgt i64 %3, -1
  br i1 %if_cond53.i, label %jump.target79, label %lab55.i

lab55.i:                                          ; preds = %jf.then.i, %lab55.i
  %lhs60161.cast.i = phi double [ %fresult63.i, %lab55.i ], [ %float.itof.i, %jf.then.i ]
  %STK2.2.i = phi i64 [ %add.i, %lab55.i ], [ %3, %jf.then.i ]
  %fresult63.i = fdiv double %lhs60161.cast.i, 1.000000e+01
  %add.i = add nuw nsw i64 %STK2.2.i, 1
  %ls79.not.i = icmp eq i64 %STK2.2.i, -1
  br i1 %ls79.not.i, label %jump.target144.loopexit.i, label %lab55.i

lab87.i:                                          ; preds = %lab22
  %float.itof91.i = sitofp i64 %2 to double
  %float92.i = bitcast double %float.itof91.i to i64
  br label %jump.target79

lab96.i:                                          ; preds = %lab22
  %float.itof100.i = sitofp i64 %2 to double
  %float.itof106.i = sitofp i64 %3 to double
  %fresult113.i = fsub double %float.itof100.i, %float.itof106.i
  %fsub.i = bitcast double %fresult113.i to i64
  br label %jump.target79

lab117.i:                                         ; preds = %lab22
  %lstr.bcpladdr.i = ashr exact i64 ptrtoint (ptr @lstr.global.16 to i64), 3
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %rtap.i = tail call i64 %rtap_ep_p_fn.i(i64 %lstr.bcpladdr.i, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  %lg.value136.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn139.i = inttoptr i64 %lg.value136.i to ptr
  %rtap141.i = tail call i64 %rtap_ep_p_fn139.i(i64 1)
  br label %jump.target79

jump.target144.loopexit.i:                        ; preds = %lab55.i
  %fdiv.le.i = bitcast double %fresult63.i to i64
  br label %jump.target79

lab45:                                            ; preds = %entry
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.18 to i64), 3
  %lg.value59 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn62 = inttoptr i64 %lg.value59 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn62(i64 %lstr.bcpladdr, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  %lg.value71 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn74 = inttoptr i64 %lg.value71 to ptr
  %rtap76 = tail call i64 %rtap_ep_p_fn74(i64 1)
  br label %jump.target79

jump.target79:                                    ; preds = %jump.target144.loopexit.i, %lab117.i, %lab96.i, %lab87.i, %jf.then.i, %jf.then.thread.i, %lab22, %lab45, %lab11, %lab
  %STK6.0 = phi i64 [ -4985279381848933680, %lab45 ], [ %fnap, %lab ], [ %fnap18, %lab11 ], [ -4985279381848933680, %lab117.i ], [ %STK5.1.i, %jf.then.i ], [ %float92.i, %lab87.i ], [ %fsub.i, %lab96.i ], [ -1, %lab22 ], [ %STK5.1165.i, %jf.then.thread.i ], [ %fdiv.le.i, %jump.target144.loopexit.i ]
  ret i64 %STK6.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
