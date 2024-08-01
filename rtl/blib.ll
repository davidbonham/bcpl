; ModuleID = 'blib'
source_filename = "blib"

@__bcpl_global_vector = external local_unnamed_addr global [256 x i64], section "BCPLGVEC"
@itemn.global = internal global [16 x i64] [i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70], section ".rodata.blib"
@lstr.global = private global [15 x i8] c"\0E##Bad format##", section ".rodata.blib", align 8
@lstr.global.11 = private global [14 x i8] c"\0D<<mess:%-%n>>", section ".rodata.blib", align 8
@__bcpl_global = weak local_unnamed_addr global i64 94, section "BCPLGVEC"
@__bcpl_value = weak local_unnamed_addr global i64 ptrtoint (ptr @writef to i64), section "BCPLGVEC"
@__bcpl_global.13 = weak local_unnamed_addr global i64 83, section "BCPLGVEC"
@__bcpl_value.14 = weak local_unnamed_addr global i64 ptrtoint (ptr @readn to i64), section "BCPLGVEC"
@__bcpl_global.15 = weak local_unnamed_addr global i64 84, section "BCPLGVEC"
@__bcpl_value.16 = weak local_unnamed_addr global i64 ptrtoint (ptr @newline to i64), section "BCPLGVEC"
@__bcpl_global.17 = weak local_unnamed_addr global i64 89, section "BCPLGVEC"
@__bcpl_value.18 = weak local_unnamed_addr global i64 ptrtoint (ptr @writes to i64), section "BCPLGVEC"
@__bcpl_global.19 = weak local_unnamed_addr global i64 87, section "BCPLGVEC"
@__bcpl_value.20 = weak local_unnamed_addr global i64 ptrtoint (ptr @writehex to i64), section "BCPLGVEC"
@__bcpl_global.21 = weak local_unnamed_addr global i64 88, section "BCPLGVEC"
@__bcpl_value.22 = weak local_unnamed_addr global i64 ptrtoint (ptr @writeoct to i64), section "BCPLGVEC"
@__bcpl_global.23 = weak local_unnamed_addr global i64 86, section "BCPLGVEC"
@__bcpl_value.24 = weak local_unnamed_addr global i64 ptrtoint (ptr @writen to i64), section "BCPLGVEC"
@__bcpl_global.25 = weak local_unnamed_addr global i64 85, section "BCPLGVEC"
@__bcpl_value.26 = weak local_unnamed_addr global i64 ptrtoint (ptr @writed to i64), section "BCPLGVEC"

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
  %spec.select195 = add i64 %.lobit, %1
  %add67 = add i64 %STK131.promoted, 2
  %gr = icmp sgt i64 %add67, %spec.select195
  br i1 %gr, label %jt.then, label %lab81

lab81:                                            ; preds = %lab61, %lab81
  %add91196 = phi i64 [ %add91, %lab81 ], [ %add67, %lab61 ]
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 32)
  %add91 = add i64 %add91196, 1
  %le.not = icmp sgt i64 %add91, %spec.select195
  br i1 %le.not, label %jt.then, label %lab81

jt.then:                                          ; preds = %lab81, %lab61
  br i1 %if_cond, label %jf.else116, label %jf.then124

jf.else116:                                       ; preds = %jt.then
  %lg.value118 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
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
  %lg.value158 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn161 = inttoptr i64 %lg.value158 to ptr
  %rtap163 = call i64 %rtap_ep_p_fn161(i64 %add156)
  %add170 = add nsw i64 %add170197, -1
  %ge = icmp sgt i64 %add170197, 0
  br i1 %ge, label %lab143, label %jt.then184

jt.then184:                                       ; preds = %lab143, %jf.then124
  ret i64 -4985279381848933680
}

define noundef i64 @writen(i64 %0) section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 85), align 4
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
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 88), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then

jf.then:                                          ; preds = %jf.else, %entry
  %logand = and i64 %0, 7
  %add = or disjoint i64 %logand, 48
  %lg.value30 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
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
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 87), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then

jf.then:                                          ; preds = %jf.else, %entry
  %logand = shl i64 %0, 3
  %add39 = and i64 %logand, 120
  %lll.bcpladdr40 = add i64 %add39, ptrtoint (ptr @itemn.global to i64)
  %rv.lv = inttoptr i64 %lll.bcpladdr40 to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %lg.value31 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
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
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  %add = add nuw nsw i64 %STK1.0, 1
  %le.not.not = icmp ult i64 %STK1.0, %getbyte.charword
  br i1 %le.not.not, label %lab, label %jt.then

jt.then:                                          ; preds = %lab, %entry
  ret i64 -4985279381848933680
}

define noundef i64 @newline() section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 10)
  ret i64 -4985279381848933680
}

define i64 @readn() section ".text.blib" {
entry:
  br label %lab

lab:                                              ; preds = %lab.backedge, %entry
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 38), align 4
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
  %lg.value38 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 38), align 4
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
  %lg.value85 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 38), align 4
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
  %lg.value128 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 40), align 4
  %rtap_ep_p_fn131 = inttoptr i64 %lg.value128 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn131(i64 %STK2.2)
  ret i64 %spec.select
}

define noundef i64 @write_format(i64 %0, i64 %1) local_unnamed_addr section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 10), align 4
  %ls = icmp slt i64 %0, 1
  br i1 %ls, label %jf.then, label %jf.else

jf.else:                                          ; preds = %entry
  %lg.value10 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 9), align 4
  %add = shl i64 %lg.value10, 3
  %rv.llvmaddr = add i64 %add, 112
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %ls18 = icmp sgt i64 %rv.rv, %0
  br i1 %ls18, label %jt.then, label %jf.then

jf.then:                                          ; preds = %jf.else, %entry
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global to i64), 3
  br label %jt.then

jt.then:                                          ; preds = %jf.then, %jf.else
  %STK.0 = phi i64 [ %lstr.bcpladdr, %jf.then ], [ %0, %jf.else ]
  %getbyte.llvmaddr = shl i64 %STK.0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %le.not = icmp eq i8 %getbyte.char, 0
  br i1 %le.not, label %jf.then975, label %lab.preheader

lab.preheader:                                    ; preds = %jt.then
  %invariant.gep = getelementptr i8, ptr %getbyte.string, i64 1
  %rv.llvmaddr94 = shl i64 %1, 3
  %rv.lv95 = inttoptr i64 %rv.llvmaddr94 to ptr
  %lstr.bcpladdr627 = ashr exact i64 ptrtoint (ptr @lstr.global.11 to i64), 3
  br label %lab

lab:                                              ; preds = %lab.preheader, %jump.target953
  %STK2.0 = phi i64 [ %STK2.8, %jump.target953 ], [ 1, %lab.preheader ]
  %getbyte.charptr45 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char46 = load i8, ptr %getbyte.charptr45, align 1
  %add60 = add nsw i64 %STK2.0, 1
  %eq = icmp eq i8 %getbyte.char46, 37
  br i1 %eq, label %jt.then77, label %jt.else72

jt.else72:                                        ; preds = %lab
  %getbyte.charword47 = zext i8 %getbyte.char46 to i64
  %lg.value75 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value75 to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 %getbyte.charword47)
  br label %jump.target953

jt.then77:                                        ; preds = %lab
  %getbyte.charptr86 = getelementptr i8, ptr %getbyte.string, i64 %add60
  %getbyte.char87 = load i8, ptr %getbyte.charptr86, align 1
  %getbyte.charword88 = zext i8 %getbyte.char87 to i64
  %rv.rv96 = load i64, ptr %rv.lv95, align 8
  %rv.llvmaddr99 = shl i64 %rv.rv96, 3
  %rv.lv100 = inttoptr i64 %rv.llvmaddr99 to ptr
  %rv.rv101 = load i64, ptr %rv.lv100, align 8
  br label %lab104.outer

lab104.outer:                                     ; preds = %lab262, %jt.then77
  %lp.value721.ph = phi i64 [ 0, %jt.then77 ], [ %sub279, %lab262 ]
  %if_cond382.not.ph = phi i1 [ true, %jt.then77 ], [ false, %lab262 ]
  %lp.value719.ph = phi i64 [ 0, %jt.then77 ], [ %sub, %lab262 ]
  %getbyte.charword300.lcssa1077.ph = phi i64 [ %getbyte.charword88, %jt.then77 ], [ %getbyte.charword300, %lab262 ]
  %STK2.1.ph = phi i64 [ %add60, %jt.then77 ], [ %add287, %lab262 ]
  br label %lab104

lab104:                                           ; preds = %lab104.backedge, %lab104.outer
  %if_cond382.not = phi i1 [ %if_cond382.not.ph, %lab104.outer ], [ false, %lab104.backedge ]
  %lp.value719 = phi i64 [ %lp.value719.ph, %lab104.outer ], [ %sub, %lab104.backedge ]
  %getbyte.charword300.lcssa1077 = phi i64 [ %getbyte.charword300.lcssa1077.ph, %lab104.outer ], [ %getbyte.charword300.lcssa1077.be, %lab104.backedge ]
  %STK2.1 = phi i64 [ %STK2.1.ph, %lab104.outer ], [ %STK2.1.be, %lab104.backedge ]
  %lg.value107 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 96), align 4
  %rtap_ep_p_fn110 = inttoptr i64 %lg.value107 to ptr
  %fnap = call i64 %rtap_ep_p_fn110(i64 %getbyte.charword300.lcssa1077)
  switch i64 %fnap, label %lab114 [
    i64 80, label %lab754
    i64 70, label %lab693
    i64 69, label %lab651
    i64 77, label %lab590
    i64 45, label %lab562
    i64 43, label %lab534
    i64 36, label %lab534
    i64 78, label %"\C0\AD\DE495.loopexit1336"
    i64 88, label %"\C0\AD\DE.loopexit1337"
    i64 79, label %"\C0\AD\DE.loopexit1270"
    i64 67, label %"\C0\AD\DE495.loopexit1271"
    i64 83, label %"\C0\AD\DE495"
    i64 73, label %"\C0\AD\DE"
    i64 68, label %"\C0\AD\DE"
    i64 57, label %lab142.preheader
    i64 56, label %lab142.preheader
    i64 55, label %lab142.preheader
    i64 54, label %lab142.preheader
    i64 53, label %lab142.preheader
    i64 52, label %lab142.preheader
    i64 51, label %lab142.preheader
    i64 50, label %lab142.preheader
    i64 49, label %lab142.preheader
    i64 48, label %lab142.preheader
  ]

lab142.preheader:                                 ; preds = %lab104, %lab104, %lab104, %lab104, %lab104, %lab104, %lab104, %lab104, %lab104, %lab104
  br label %lab142

lab114:                                           ; preds = %lab104
  %lg.value117 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn120 = inttoptr i64 %lg.value117 to ptr
  %rtap122 = call i64 %rtap_ep_p_fn120(i64 %getbyte.charword300.lcssa1077)
  %add128 = add i64 %STK2.1, 1
  br label %jump.target953

lab142:                                           ; preds = %lab142.preheader, %lab142
  %sub1095 = phi i64 [ %sub, %lab142 ], [ %lp.value719, %lab142.preheader ]
  %getbyte.charword300.lcssa1080 = phi i64 [ %getbyte.charword178, %lab142 ], [ %getbyte.charword300.lcssa1077, %lab142.preheader ]
  %STK2.3 = phi i64 [ %add165, %lab142 ], [ %STK2.1, %lab142.preheader ]
  %mul = mul i64 %sub1095, 10
  %add153 = add nsw i64 %getbyte.charword300.lcssa1080, -48
  %sub = add i64 %add153, %mul
  %add165 = add i64 %STK2.3, 1
  %getbyte.charptr176 = getelementptr i8, ptr %getbyte.string, i64 %add165
  %getbyte.char177 = load i8, ptr %getbyte.charptr176, align 1
  %getbyte.charword178 = zext i8 %getbyte.char177 to i64
  %2 = add i8 %getbyte.char177, -48
  %or.cond = icmp ult i8 %2, 10
  br i1 %or.cond, label %lab142, label %lab207

lab207:                                           ; preds = %lab142
  %eq213.not = icmp eq i8 %getbyte.char177, 46
  br i1 %eq213.not, label %jf.else218, label %lab104.backedge

lab104.backedge:                                  ; preds = %lab207, %jf.else218
  %getbyte.charword300.lcssa1077.be = phi i64 [ %getbyte.charword178, %lab207 ], [ %getbyte.charword237, %jf.else218 ]
  %STK2.1.be = phi i64 [ %add165, %lab207 ], [ %add224, %jf.else218 ]
  br label %lab104

jf.else218:                                       ; preds = %lab207
  %add224 = add i64 %STK2.3, 2
  %getbyte.charptr235 = getelementptr i8, ptr %getbyte.string, i64 %add224
  %getbyte.char236 = load i8, ptr %getbyte.charptr235, align 1
  %getbyte.charword237 = zext i8 %getbyte.char236 to i64
  %3 = add i8 %getbyte.char236, -58
  %or.cond1037 = icmp ult i8 %3, -10
  br i1 %or.cond1037, label %lab104.backedge, label %lab262

lab262:                                           ; preds = %jf.else218, %lab262
  %getbyte.charword3001075 = phi i64 [ %getbyte.charword300, %lab262 ], [ %getbyte.charword237, %jf.else218 ]
  %sub2791074 = phi i64 [ %sub279, %lab262 ], [ %lp.value721.ph, %jf.else218 ]
  %STK2.4 = phi i64 [ %add287, %lab262 ], [ %add224, %jf.else218 ]
  %mul268 = mul i64 %sub2791074, 10
  %add274 = add nsw i64 %getbyte.charword3001075, -48
  %sub279 = add i64 %add274, %mul268
  %add287 = add i64 %STK2.4, 1
  %getbyte.charptr298 = getelementptr i8, ptr %getbyte.string, i64 %add287
  %getbyte.char299 = load i8, ptr %getbyte.charptr298, align 1
  %getbyte.charword300 = zext i8 %getbyte.char299 to i64
  %4 = add i8 %getbyte.char299, -48
  %or.cond1038 = icmp ult i8 %4, 10
  br i1 %or.cond1038, label %lab262, label %lab104.outer

"\C0\AD\DE.loopexit1270":                         ; preds = %lab104
  br label %"\C0\AD\DE"

"\C0\AD\DE.loopexit1337":                         ; preds = %lab104
  br label %"\C0\AD\DE"

"\C0\AD\DE":                                      ; preds = %lab104, %lab104, %"\C0\AD\DE.loopexit1337", %"\C0\AD\DE.loopexit1270"
  %lp.value465.in = phi ptr [ getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 88), %"\C0\AD\DE.loopexit1270" ], [ getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 87), %"\C0\AD\DE.loopexit1337" ], [ getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 85), %lab104 ], [ getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 85), %lab104 ]
  %lp.value465 = load i64, ptr %lp.value465.in, align 4
  br i1 %if_cond382.not, label %jt.else383, label %jt.then460

jt.else383:                                       ; preds = %"\C0\AD\DE"
  %add389 = add i64 %STK2.1, 1
  %getbyte.charptr400 = getelementptr i8, ptr %getbyte.string, i64 %add389
  %getbyte.char401 = load i8, ptr %getbyte.charptr400, align 1
  %getbyte.charword402 = zext i8 %getbyte.char401 to i64
  %lg.value404 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 96), align 4
  %rtap_ep_p_fn407 = inttoptr i64 %lg.value404 to ptr
  %fnap409 = call i64 %rtap_ep_p_fn407(i64 %getbyte.charword402)
  %5 = add i64 %fnap409, -58
  %or.cond1039 = icmp ult i64 %5, -10
  %__res_a.0.v = select i1 %or.cond1039, i64 -55, i64 -48
  %__res_a.0 = add i64 %__res_a.0.v, %fnap409
  br label %jt.then460

jt.then460:                                       ; preds = %jt.else383, %"\C0\AD\DE"
  %lp.value463 = phi i64 [ %lp.value719, %"\C0\AD\DE" ], [ %__res_a.0, %jt.else383 ]
  %STK2.6 = phi i64 [ %STK2.1, %"\C0\AD\DE" ], [ %add389, %jt.else383 ]
  %rtap_ep_p_fn468 = inttoptr i64 %lp.value465 to ptr
  %rtap471 = call i64 %rtap_ep_p_fn468(i64 %rv.rv101, i64 %lp.value463)
  %rv.rv477 = load i64, ptr %rv.lv95, align 8
  %add482 = add i64 %rv.rv477, 1
  store i64 %add482, ptr %rv.lv95, align 8
  %add491 = add i64 %STK2.6, 1
  br label %jump.target953

"\C0\AD\DE495.loopexit1271":                      ; preds = %lab104
  br label %"\C0\AD\DE495"

"\C0\AD\DE495.loopexit1336":                      ; preds = %lab104
  br label %"\C0\AD\DE495"

"\C0\AD\DE495":                                   ; preds = %lab104, %"\C0\AD\DE495.loopexit1336", %"\C0\AD\DE495.loopexit1271"
  %lp.value499.in = phi ptr [ getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), %"\C0\AD\DE495.loopexit1271" ], [ getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 86), %"\C0\AD\DE495.loopexit1336" ], [ getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 89), %lab104 ]
  %lp.value499 = load i64, ptr %lp.value499.in, align 4
  %rtap_ep_p_fn502 = inttoptr i64 %lp.value499 to ptr
  %rtap505 = call i64 %rtap_ep_p_fn502(i64 %rv.rv101, i64 0)
  %rv.rv511 = load i64, ptr %rv.lv95, align 8
  %add516 = add i64 %rv.rv511, 1
  store i64 %add516, ptr %rv.lv95, align 8
  %add529 = add i64 %STK2.1, 1
  br label %jump.target953

lab534:                                           ; preds = %lab104, %lab104
  %rv.rv540 = load i64, ptr %rv.lv95, align 8
  %add545 = add i64 %rv.rv540, 1
  store i64 %add545, ptr %rv.lv95, align 8
  %add558 = add i64 %STK2.1, 1
  br label %jump.target953

lab562:                                           ; preds = %lab104
  %rv.rv568 = load i64, ptr %rv.lv95, align 8
  %sub573 = add i64 %rv.rv568, -1
  store i64 %sub573, ptr %rv.lv95, align 8
  %add586 = add i64 %STK2.1, 1
  br label %jump.target953

lab590:                                           ; preds = %lab104
  %stack.vec = alloca [33 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %rv.rv597 = load i64, ptr %rv.lv95, align 8
  %add602 = add i64 %rv.rv597, 1
  store i64 %add602, ptr %rv.lv95, align 8
  %lg.value615 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 93), align 4
  %rtap_ep_p_fn618 = inttoptr i64 %lg.value615 to ptr
  %fnap622 = call i64 %rtap_ep_p_fn618(i64 %rv.rv101, i64 %stack.bcpladdr, i64 32)
  %if_cond625.not = icmp eq i64 %fnap622, 0
  %spec.select = select i1 %if_cond625.not, i64 %lstr.bcpladdr627, i64 %stack.bcpladdr
  %rtap641 = call i64 @write_format(i64 %spec.select, i64 %1)
  %add647 = add i64 %STK2.1, 1
  br label %jump.target953

lab651:                                           ; preds = %lab104
  %rv.rv657 = load i64, ptr %rv.lv95, align 8
  %add662 = add i64 %rv.rv657, 1
  store i64 %add662, ptr %rv.lv95, align 8
  %lg.value676 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 180), align 4
  %rtap_ep_p_fn679 = inttoptr i64 %lg.value676 to ptr
  %rtap683 = call i64 %rtap_ep_p_fn679(i64 %rv.rv101, i64 %lp.value719, i64 %lp.value721.ph)
  %add689 = add i64 %STK2.1, 1
  br label %jump.target953

lab693:                                           ; preds = %lab104
  %rv.rv699 = load i64, ptr %rv.lv95, align 8
  %add704 = add i64 %rv.rv699, 1
  store i64 %add704, ptr %rv.lv95, align 8
  br i1 %if_cond382.not, label %jf.then732, label %jf.else716

jf.else716:                                       ; preds = %lab693
  %lg.value723 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 73), align 4
  %rtap_ep_p_fn726 = inttoptr i64 %lg.value723 to ptr
  %rtap730 = call i64 %rtap_ep_p_fn726(i64 %rv.rv101, i64 %lp.value719, i64 %lp.value721.ph)
  br label %jump.target744

jf.then732:                                       ; preds = %lab693
  %rtap743 = call i64 @write_format(i64 %rv.rv101, i64 %1)
  br label %jump.target744

jump.target744:                                   ; preds = %jf.then732, %jf.else716
  %add750 = add i64 %STK2.1, 1
  br label %jump.target953

lab754:                                           ; preds = %lab104
  %ne = icmp ne i64 %rv.rv101, 1
  %booltoword760 = sext i1 %ne to i64
  %rv.rv767 = load i64, ptr %rv.lv95, align 8
  %add772 = add i64 %rv.rv767, 1
  store i64 %add772, ptr %rv.lv95, align 8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK2.1
  %getbyte.char797 = load i8, ptr %gep, align 1
  %getbyte.charword798 = zext i8 %getbyte.char797 to i64
  %add806 = add i64 %STK2.1, 2
  %eq814.not = icmp eq i8 %getbyte.char797, 92
  br i1 %eq814.not, label %jf.else819, label %jf.then933

jf.else819:                                       ; preds = %lab754
  %getbyte.char832 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword833 = zext i8 %getbyte.char832 to i64
  %gr = icmp sgt i64 %add806, %getbyte.charword833
  br i1 %gr, label %jump.target953, label %lab842

lab842:                                           ; preds = %jf.else819, %lab908
  %getbyte.char9191204 = phi i8 [ %getbyte.char919, %lab908 ], [ %getbyte.char832, %jf.else819 ]
  %lp.value8931136 = phi i64 [ %lp.value8931135, %lab908 ], [ %booltoword760, %jf.else819 ]
  %STK2.7 = phi i64 [ %add860, %lab908 ], [ %add806, %jf.else819 ]
  %getbyte.charptr851 = getelementptr i8, ptr %getbyte.string, i64 %STK2.7
  %getbyte.char852 = load i8, ptr %getbyte.charptr851, align 1
  %getbyte.charword853 = zext i8 %getbyte.char852 to i64
  %add860 = add nsw i64 %STK2.7, 1
  %eq868.not = icmp eq i8 %getbyte.char852, 92
  br i1 %eq868.not, label %jf.else873, label %jf.then892

jf.else873:                                       ; preds = %lab842
  %not = xor i64 %lp.value8931136, -1
  %eq885 = icmp eq i64 %booltoword760, %not
  br i1 %eq885, label %jump.target953, label %lab908

jf.then892:                                       ; preds = %lab842
  %if_cond896.not = icmp eq i64 %lp.value8931136, 0
  br i1 %if_cond896.not, label %jt.else897, label %lab908

jt.else897:                                       ; preds = %jf.then892
  %lg.value900 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn903 = inttoptr i64 %lg.value900 to ptr
  %rtap905 = call i64 %rtap_ep_p_fn903(i64 %getbyte.charword853)
  %getbyte.char919.pre = load i8, ptr %getbyte.string, align 8
  br label %lab908

lab908:                                           ; preds = %jf.else873, %jt.else897, %jf.then892
  %getbyte.char919 = phi i8 [ %getbyte.char9191204, %jf.else873 ], [ %getbyte.char919.pre, %jt.else897 ], [ %getbyte.char9191204, %jf.then892 ]
  %lp.value8931135 = phi i64 [ %not, %jf.else873 ], [ 0, %jt.else897 ], [ %lp.value8931136, %jf.then892 ]
  %getbyte.charword920 = zext i8 %getbyte.char919 to i64
  %gr924.not.not = icmp slt i64 %STK2.7, %getbyte.charword920
  br i1 %gr924.not.not, label %lab842, label %jump.target953

jf.then933:                                       ; preds = %lab754
  br i1 %ne, label %jf.else938, label %jump.target953

jf.else938:                                       ; preds = %jf.then933
  %lg.value941 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn944 = inttoptr i64 %lg.value941 to ptr
  %rtap946 = call i64 %rtap_ep_p_fn944(i64 %getbyte.charword798)
  br label %jump.target953

jump.target953:                                   ; preds = %lab908, %jf.else873, %jf.then933, %jf.else938, %jf.else819, %jump.target744, %lab651, %lab590, %lab562, %lab534, %"\C0\AD\DE495", %jt.then460, %lab114, %jt.else72
  %STK2.8 = phi i64 [ %add128, %lab114 ], [ %add491, %jt.then460 ], [ %add529, %"\C0\AD\DE495" ], [ %add558, %lab534 ], [ %add586, %lab562 ], [ %add647, %lab590 ], [ %add689, %lab651 ], [ %add750, %jump.target744 ], [ %add806, %jf.then933 ], [ %add806, %jf.else938 ], [ %add806, %jf.else819 ], [ %add60, %jt.else72 ], [ %add860, %jf.else873 ], [ %add860, %lab908 ]
  %getbyte.char964 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword965 = zext i8 %getbyte.char964 to i64
  %le969.not = icmp sgt i64 %STK2.8, %getbyte.charword965
  br i1 %le969.not, label %jf.then975, label %lab

jf.then975:                                       ; preds = %jump.target953, %jt.then
  store i64 %lg.value, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 10), align 4
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
