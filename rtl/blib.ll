; ModuleID = 'blib'
source_filename = "blib"

@__bcpl_global_vector = external local_unnamed_addr global [256 x i64], section "BCPLGVEC"
@itemn.global = private global [16 x i64] [i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70], section ".rodata.blib"
@__bcpl_global = weak local_unnamed_addr global i64 83, section "BCPLGVEC"
@__bcpl_value = weak local_unnamed_addr global i64 ptrtoint (ptr @readn to i64), section "BCPLGVEC"
@__bcpl_global.7 = weak local_unnamed_addr global i64 84, section "BCPLGVEC"
@__bcpl_value.8 = weak local_unnamed_addr global i64 ptrtoint (ptr @newline to i64), section "BCPLGVEC"
@__bcpl_global.9 = weak local_unnamed_addr global i64 89, section "BCPLGVEC"
@__bcpl_value.10 = weak local_unnamed_addr global i64 ptrtoint (ptr @writes to i64), section "BCPLGVEC"
@__bcpl_global.11 = weak local_unnamed_addr global i64 87, section "BCPLGVEC"
@__bcpl_value.12 = weak local_unnamed_addr global i64 ptrtoint (ptr @writehex to i64), section "BCPLGVEC"
@__bcpl_global.13 = weak local_unnamed_addr global i64 88, section "BCPLGVEC"
@__bcpl_value.14 = weak local_unnamed_addr global i64 ptrtoint (ptr @writeoct to i64), section "BCPLGVEC"
@__bcpl_global.15 = weak local_unnamed_addr global i64 86, section "BCPLGVEC"
@__bcpl_value.16 = weak local_unnamed_addr global i64 ptrtoint (ptr @writen to i64), section "BCPLGVEC"
@__bcpl_global.17 = weak local_unnamed_addr global i64 85, section "BCPLGVEC"
@__bcpl_value.18 = weak local_unnamed_addr global i64 ptrtoint (ptr @writed to i64), section "BCPLGVEC"

define i64 @writed(i64 %0, i64 %1) section ".text.blib" {
entry:
  %stack.vec = alloca [3 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %2 = call i64 @llvm.abs.i64(i64 %0, i1 false)
  %spec.select = sub i64 0, %2
  %.lobit = ashr i64 %0, 63
  br label %label24

label24:                                          ; preds = %label24, %entry
  %STK4.1 = phi i64 [ %spec.select, %entry ], [ %div, %label24 ]
  %STK138.promoted = phi i64 [ 0, %entry ], [ %add53, %label24 ]
  %STK4.1.frozen = freeze i64 %STK4.1
  %div = sdiv i64 %STK4.1.frozen, 10
  %3 = mul i64 %div, 10
  %mod.decomposed = sub i64 %STK4.1.frozen, %3
  %neg32 = sub nsw i64 0, %mod.decomposed
  %add = add i64 %STK138.promoted, %stack.bcpladdr
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 %neg32, ptr %stind.lv, align 8
  %add53 = add i64 %STK138.promoted, 1
  %4 = add i64 %STK4.1, -10
  %eq = icmp ult i64 %4, -19
  br i1 %eq, label %label24, label %label67

label67:                                          ; preds = %label24
  %if_cond = icmp slt i64 %0, 0
  %spec.select202 = add i64 %.lobit, %1
  %add73 = add i64 %STK138.promoted, 2
  %gr = icmp sgt i64 %add73, %spec.select202
  br i1 %gr, label %label112, label %label87

label87:                                          ; preds = %label67, %label87
  %add97203 = phi i64 [ %add97, %label87 ], [ %add73, %label67 ]
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 32)
  %add97 = add i64 %add97203, 1
  %le.not = icmp sgt i64 %add97, %spec.select202
  br i1 %le.not, label %label112, label %label87

label112:                                         ; preds = %label87, %label67
  br i1 %if_cond, label %jf.else123, label %label131

jf.else123:                                       ; preds = %label112
  %lg.value125 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn128 = inttoptr i64 %lg.value125 to ptr
  %rtap130 = call i64 %rtap_ep_p_fn128(i64 45)
  br label %label131

label131:                                         ; preds = %jf.else123, %label112
  %ls144 = icmp slt i64 %STK138.promoted, 0
  br i1 %ls144, label %label191, label %label150

label150:                                         ; preds = %label131, %label150
  %add177204 = phi i64 [ %add177, %label150 ], [ %STK138.promoted, %label131 ]
  %add157 = add i64 %add177204, %stack.bcpladdr
  %rv.llvmaddr = shl i64 %add157, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %add163 = add i64 %rv.rv, 48
  %lg.value165 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn168 = inttoptr i64 %lg.value165 to ptr
  %rtap170 = call i64 %rtap_ep_p_fn168(i64 %add163)
  %add177 = add nsw i64 %add177204, -1
  %ge = icmp sgt i64 %add177204, 0
  br i1 %ge, label %label150, label %label191

label191:                                         ; preds = %label150, %label131
  ret i64 -4985279381848933680
}

define i64 @writen(i64 %0) section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 85), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %0, i64 0)
  ret i64 -4985279381848933680
}

define i64 @writeoct(i64 %0, i64 %1) section ".text.blib" {
entry:
  %gr = icmp slt i64 %1, 2
  br i1 %gr, label %label, label %jf.else

jf.else:                                          ; preds = %entry
  %rshift = lshr i64 %0, 3
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 88), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %rshift, i64 %sub)
  br label %label

label:                                            ; preds = %jf.else, %entry
  %logand = and i64 %0, 7
  %add = or i64 %logand, 48
  %lg.value29 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn32 = inttoptr i64 %lg.value29 to ptr
  %rtap34 = tail call i64 %rtap_ep_p_fn32(i64 %add)
  ret i64 -4985279381848933680
}

define i64 @writehex(i64 %0, i64 %1) section ".text.blib" {
entry:
  %gr = icmp slt i64 %1, 2
  br i1 %gr, label %label, label %jf.else

jf.else:                                          ; preds = %entry
  %rshift = lshr i64 %0, 4
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 87), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %rshift, i64 %sub)
  br label %label

label:                                            ; preds = %jf.else, %entry
  %logand = shl i64 %0, 3
  %add38 = and i64 %logand, 120
  %2 = add i64 %add38, ptrtoint (ptr @itemn.global to i64)
  %rv.lv = inttoptr i64 %2 to ptr
  %rv.rv = load i64, ptr %rv.lv, align 8
  %lg.value30 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn33 = inttoptr i64 %lg.value30 to ptr
  %rtap35 = tail call i64 %rtap_ep_p_fn33(i64 %rv.rv)
  ret i64 -4985279381848933680
}

define i64 @writes(i64 %0) section ".text.blib" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr = icmp eq i8 %getbyte.char, 0
  br i1 %gr, label %label42, label %label

label:                                            ; preds = %entry, %label
  %STK1.0 = phi i64 [ %add, %label ], [ 1, %entry ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK1.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  %add = add nuw nsw i64 %STK1.0, 1
  %le.not.not = icmp ult i64 %STK1.0, %getbyte.charword
  br i1 %le.not.not, label %label, label %label42

label42:                                          ; preds = %label, %entry
  ret i64 -4985279381848933680
}

define i64 @newline() section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 41), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 10)
  ret i64 -4985279381848933680
}

define i64 @readn() section ".text.blib" {
entry:
  br label %label

label:                                            ; preds = %label.backedge, %entry
  %lg.value = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 38), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  switch i64 %fnap, label %label48 [
    i64 32, label %label.backedge
    i64 9, label %label.backedge
    i64 10, label %label.backedge
    i64 43, label %label37.loopexit
    i64 45, label %label37
  ]

label.backedge:                                   ; preds = %label, %label, %label
  br label %label

label37.loopexit:                                 ; preds = %label
  br label %label37

label37:                                          ; preds = %label, %label37.loopexit
  %STK1.0 = phi i64 [ 0, %label37.loopexit ], [ -1, %label ]
  %lg.value38 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 38), align 4
  %rtap_ep_p_fn41 = inttoptr i64 %lg.value38 to ptr
  %fnap42 = tail call i64 %rtap_ep_p_fn41()
  br label %label48

label48:                                          ; preds = %label, %label37
  %STK1.1 = phi i64 [ %STK1.0, %label37 ], [ 0, %label ]
  %STK2.0 = phi i64 [ %fnap42, %label37 ], [ %fnap, %label ]
  %0 = add i64 %STK2.0, -58
  %or.cond = icmp ult i64 %0, -10
  br i1 %or.cond, label %label117, label %label69

label69:                                          ; preds = %label48, %label69
  %STK.0 = phi i64 [ %sub, %label69 ], [ 0, %label48 ]
  %STK2.1 = phi i64 [ %fnap90, %label69 ], [ %STK2.0, %label48 ]
  %mul = mul i64 %STK.0, 10
  %add = add nsw i64 %STK2.1, -48
  %sub = add i64 %add, %mul
  %lg.value86 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 38), align 4
  %rtap_ep_p_fn89 = inttoptr i64 %lg.value86 to ptr
  %fnap90 = tail call i64 %rtap_ep_p_fn89()
  %1 = add i64 %fnap90, -48
  %or.cond148 = icmp ult i64 %1, 10
  br i1 %or.cond148, label %label69, label %label117

label117:                                         ; preds = %label69, %label48
  %STK.1 = phi i64 [ 0, %label48 ], [ %sub, %label69 ]
  %STK2.2 = phi i64 [ %STK2.0, %label48 ], [ %fnap90, %label69 ]
  %if_cond121 = icmp eq i64 %STK1.1, 0
  %neg = sub i64 0, %STK.1
  %spec.select = select i1 %if_cond121, i64 %STK.1, i64 %neg
  %lg.value130 = load i64, ptr getelementptr inbounds ([256 x i64], ptr @__bcpl_global_vector, i64 0, i64 40), align 4
  %rtap_ep_p_fn133 = inttoptr i64 %lg.value130 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn133(i64 %STK2.2)
  ret i64 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
