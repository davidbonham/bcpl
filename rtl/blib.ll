; ModuleID = 'blib'
source_filename = "blib"

@__bcpl_global_vector = external local_unnamed_addr global [256 x i64], section "BCPLGVEC"
@lstr.global = private global [14 x i8] c"\0D<<mess:%-%n>>", section ".rodata.blib", align 8
@lstr.global.7 = private global [11 x i8] c"\0A%10.5f %n\0A", section ".rodata.blib", align 8
@lstr.global.8 = private global [11 x i8] c"\0A%10.5f %n\0A", section ".rodata.blib", align 8
@lstr.global.9 = private global [56 x i8] c"7ERROR sys_flt operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".rodata.blib", align 8
@lstr.global.11 = private global [63 x i8] c">ERROR sys package=%n operation=%n a=%16x b=%16x c=%16x d=%16x\0A", section ".rodata.blib", align 8
@itemn.global = internal global [16 x i64] [i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70], section ".rodata.blib"
@lstr.global.29 = private global [51 x i8] c"2Error: rdargs format specified too many arguments\0A", section ".rodata.blib", align 8
@lstr.global.30 = private global [10 x i8] c"\09 (yes/no)", section ".rodata.blib", align 8
@lstr.global.31 = private global [4 x i8] c"\03 > ", section ".rodata.blib", align 8
@lstr.global.32 = private global [4 x i8] c"\03yes", section ".rodata.blib", align 8
@lstr.global.33 = private global [2 x i8] c"\01y", section ".rodata.blib", align 8
@lstr.global.36 = private global [2 x i8] c"\01?", section ".rodata.blib", align 8
@lstr.global.37 = private global [3 x i8] c"\02: ", section ".rodata.blib", align 8

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
@__bcpl_gv34 = alias ptr, ptr @randno
@__bcpl_gv96 = alias ptr, ptr @capitalch
@__bcpl_gv43 = alias ptr, ptr @deplete
@__bcpl_gv89 = alias ptr, ptr @writes
@__bcpl_gv3 = alias ptr, ptr @sys
@__bcpl_gv94 = alias ptr, ptr @writef
@__bcpl_gv83 = alias ptr, ptr @readn

define i64 @readn() section ".text.blib" {
entry:
  br label %lab_L012

lab_L012:                                         ; preds = %lab_L012.backedge, %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  switch i64 %fnap, label %jump.target_L016 [
    i64 32, label %lab_L012.backedge
    i64 9, label %lab_L012.backedge
    i64 10, label %lab_L012.backedge
    i64 43, label %lab_L018.loopexit
    i64 45, label %lab_L018
  ]

lab_L012.backedge:                                ; preds = %lab_L012, %lab_L012, %lab_L012
  br label %lab_L012

lab_L018.loopexit:                                ; preds = %lab_L012
  br label %lab_L018

lab_L018:                                         ; preds = %lab_L012, %lab_L018.loopexit
  %0 = phi i1 [ true, %lab_L018.loopexit ], [ false, %lab_L012 ]
  %lg.value34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn37 = inttoptr i64 %lg.value34 to ptr
  %fnap38 = tail call i64 %rtap_ep_p_fn37()
  br label %jump.target_L016

jump.target_L016:                                 ; preds = %lab_L012, %lab_L018
  %STK2.0 = phi i64 [ %fnap38, %lab_L018 ], [ %fnap, %lab_L012 ]
  %STK1.1 = phi i1 [ %0, %lab_L018 ], [ true, %lab_L012 ]
  %1 = add i64 %STK2.0, -58
  %or.cond = icmp ult i64 %1, -10
  br i1 %or.cond, label %jf.then_L021, label %lab_L019

lab_L019:                                         ; preds = %jump.target_L016, %lab_L019
  %STK2.1 = phi i64 [ %fnap83, %lab_L019 ], [ %STK2.0, %jump.target_L016 ]
  %STK.0 = phi i64 [ %sub, %lab_L019 ], [ 0, %jump.target_L016 ]
  %mul = mul i64 %STK.0, 10
  %add = add nsw i64 %STK2.1, -48
  %sub = add i64 %add, %mul
  %lg.value79 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn82 = inttoptr i64 %lg.value79 to ptr
  %fnap83 = tail call i64 %rtap_ep_p_fn82()
  %2 = add i64 %fnap83, -48
  %or.cond137 = icmp ult i64 %2, 10
  br i1 %or.cond137, label %lab_L019, label %jf.then_L021

jf.then_L021:                                     ; preds = %lab_L019, %jump.target_L016
  %STK2.2 = phi i64 [ %STK2.0, %jump.target_L016 ], [ %fnap83, %lab_L019 ]
  %STK.1 = phi i64 [ 0, %jump.target_L016 ], [ %sub, %lab_L019 ]
  %neg = sub i64 0, %STK.1
  %spec.select = select i1 %STK1.1, i64 %STK.1, i64 %neg
  %lg.value119 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn122 = inttoptr i64 %lg.value119 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn122(i64 %STK2.2)
  ret i64 %spec.select
}

define noundef i64 @write_format(i64 %0, i64 %1) local_unnamed_addr section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %le.not = icmp eq i8 %getbyte.char, 0
  br i1 %le.not, label %jf.then_L026, label %lab_L024.preheader

lab_L024.preheader:                               ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %getbyte.string, i64 1
  %rv.llvmaddr = shl i64 %1, 3
  %rv.lv = inttoptr i64 %rv.llvmaddr to ptr
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global to i64), 3
  br label %lab_L024

lab_L024:                                         ; preds = %lab_L024.preheader, %jump.target_L025
  %STK2.0 = phi i64 [ %STK2.8, %jump.target_L025 ], [ 1, %lab_L024.preheader ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %add = add nsw i64 %STK2.0, 1
  %eq = icmp eq i8 %getbyte.char19, 37
  br i1 %eq, label %jt.then_L030, label %jt.else

jt.else:                                          ; preds = %lab_L024
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value45 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value45 to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  br label %jump.target_L025

jt.then_L030:                                     ; preds = %lab_L024
  %getbyte.charptr55 = getelementptr i8, ptr %getbyte.string, i64 %add
  %getbyte.char56 = load i8, ptr %getbyte.charptr55, align 1
  %getbyte.charword57 = zext i8 %getbyte.char56 to i64
  %rv.rv = load i64, ptr %rv.lv, align 8
  %rv.llvmaddr64 = shl i64 %rv.rv, 3
  %rv.lv65 = inttoptr i64 %rv.llvmaddr64 to ptr
  %rv.rv66 = load i64, ptr %rv.lv65, align 8
  br label %lab_L027.outer

lab_L027.outer:                                   ; preds = %lab_L049, %jt.then_L030
  %if_cond319.not.ph = phi i1 [ true, %jt.then_L030 ], [ false, %lab_L049 ]
  %STK25.0.ph = phi i64 [ 0, %jt.then_L030 ], [ %sub227, %lab_L049 ]
  %STK24.0.ph = phi i64 [ 0, %jt.then_L030 ], [ %sub, %lab_L049 ]
  %STK22.0.ph = phi i64 [ %getbyte.charword57, %jt.then_L030 ], [ %getbyte.charword248, %lab_L049 ]
  %STK2.1.ph = phi i64 [ %add, %jt.then_L030 ], [ %add235, %lab_L049 ]
  br label %lab_L027

lab_L027:                                         ; preds = %lab_L027.backedge, %lab_L027.outer
  %if_cond319.not = phi i1 [ %if_cond319.not.ph, %lab_L027.outer ], [ false, %lab_L027.backedge ]
  %STK24.0 = phi i64 [ %STK24.0.ph, %lab_L027.outer ], [ %sub, %lab_L027.backedge ]
  %STK22.0 = phi i64 [ %STK22.0.ph, %lab_L027.outer ], [ %STK22.0.be, %lab_L027.backedge ]
  %STK2.1 = phi i64 [ %STK2.1.ph, %lab_L027.outer ], [ %STK2.1.be, %lab_L027.backedge ]
  %lg.value71 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn74 = inttoptr i64 %lg.value71 to ptr
  %fnap = call i64 %rtap_ep_p_fn74(i64 %STK22.0)
  switch i64 %fnap, label %lab_L033 [
    i64 80, label %lab_L072
    i64 70, label %lab_L069
    i64 69, label %lab_L068
    i64 77, label %lab_L066
    i64 45, label %lab_L065
    i64 43, label %lab_L064
    i64 36, label %lab_L064
    i64 78, label %lf_L028
    i64 88, label %lf_L029
    i64 79, label %lf_L029.loopexit1269
    i64 67, label %lf_L028.loopexit1270
    i64 83, label %lf_L028.loopexit
    i64 73, label %lf_L029.loopexit
    i64 68, label %lf_L029.loopexit
    i64 57, label %lab_L046.preheader
    i64 56, label %lab_L046.preheader
    i64 55, label %lab_L046.preheader
    i64 54, label %lab_L046.preheader
    i64 53, label %lab_L046.preheader
    i64 52, label %lab_L046.preheader
    i64 51, label %lab_L046.preheader
    i64 50, label %lab_L046.preheader
    i64 49, label %lab_L046.preheader
    i64 48, label %lab_L046.preheader
  ]

lab_L046.preheader:                               ; preds = %lab_L027, %lab_L027, %lab_L027, %lab_L027, %lab_L027, %lab_L027, %lab_L027, %lab_L027, %lab_L027, %lab_L027
  br label %lab_L046

lab_L033:                                         ; preds = %lab_L027
  %lg.value80 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn83 = inttoptr i64 %lg.value80 to ptr
  %rtap85 = call i64 %rtap_ep_p_fn83(i64 %STK22.0)
  %add91 = add i64 %STK2.1, 1
  br label %jump.target_L025

lab_L046:                                         ; preds = %lab_L046.preheader, %lab_L046
  %STK24.2 = phi i64 [ %sub, %lab_L046 ], [ %STK24.0, %lab_L046.preheader ]
  %STK22.2 = phi i64 [ %getbyte.charword130, %lab_L046 ], [ %STK22.0, %lab_L046.preheader ]
  %STK2.3 = phi i64 [ %add117, %lab_L046 ], [ %STK2.1, %lab_L046.preheader ]
  %mul = mul i64 %STK24.2, 10
  %add105 = add nsw i64 %STK22.2, -48
  %sub = add i64 %add105, %mul
  %add117 = add i64 %STK2.3, 1
  %getbyte.charptr128 = getelementptr i8, ptr %getbyte.string, i64 %add117
  %getbyte.char129 = load i8, ptr %getbyte.charptr128, align 1
  %getbyte.charword130 = zext i8 %getbyte.char129 to i64
  %2 = add i8 %getbyte.char129, -48
  %or.cond = icmp ult i8 %2, 10
  br i1 %or.cond, label %lab_L046, label %lab_L035

lab_L035:                                         ; preds = %lab_L046
  %eq162.not = icmp eq i8 %getbyte.char129, 46
  br i1 %eq162.not, label %jf.else167, label %lab_L027.backedge

lab_L027.backedge:                                ; preds = %lab_L035, %jf.else167
  %STK22.0.be = phi i64 [ %getbyte.charword130, %lab_L035 ], [ %getbyte.charword186, %jf.else167 ]
  %STK2.1.be = phi i64 [ %add117, %lab_L035 ], [ %add173, %jf.else167 ]
  br label %lab_L027

jf.else167:                                       ; preds = %lab_L035
  %add173 = add i64 %STK2.3, 2
  %getbyte.charptr184 = getelementptr i8, ptr %getbyte.string, i64 %add173
  %getbyte.char185 = load i8, ptr %getbyte.charptr184, align 1
  %getbyte.charword186 = zext i8 %getbyte.char185 to i64
  %3 = add i8 %getbyte.char185, -58
  %or.cond981 = icmp ult i8 %3, -10
  br i1 %or.cond981, label %lab_L027.backedge, label %lab_L049

lab_L049:                                         ; preds = %jf.else167, %lab_L049
  %STK25.1 = phi i64 [ %sub227, %lab_L049 ], [ %STK25.0.ph, %jf.else167 ]
  %STK22.3 = phi i64 [ %getbyte.charword248, %lab_L049 ], [ %getbyte.charword186, %jf.else167 ]
  %STK2.4 = phi i64 [ %add235, %lab_L049 ], [ %add173, %jf.else167 ]
  %mul216 = mul i64 %STK25.1, 10
  %add222 = add nsw i64 %STK22.3, -48
  %sub227 = add i64 %add222, %mul216
  %add235 = add i64 %STK2.4, 1
  %getbyte.charptr246 = getelementptr i8, ptr %getbyte.string, i64 %add235
  %getbyte.char247 = load i8, ptr %getbyte.charptr246, align 1
  %getbyte.charword248 = zext i8 %getbyte.char247 to i64
  %4 = add i8 %getbyte.char247, -48
  %or.cond982 = icmp ult i8 %4, 10
  br i1 %or.cond982, label %lab_L049, label %lab_L027.outer

lf_L029.loopexit:                                 ; preds = %lab_L027, %lab_L027
  br label %lf_L029

lf_L029.loopexit1269:                             ; preds = %lab_L027
  br label %lf_L029

lf_L029:                                          ; preds = %lab_L027, %lf_L029.loopexit1269, %lf_L029.loopexit
  %STK23.1.ph.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 680), %lf_L029.loopexit ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), %lf_L029.loopexit1269 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), %lab_L027 ]
  %STK23.1.ph = load i64, ptr %STK23.1.ph.in, align 4
  br i1 %if_cond319.not, label %jt.else320, label %jt.then_L060

jt.else320:                                       ; preds = %lf_L029
  %add326 = add i64 %STK2.1, 1
  %getbyte.charptr337 = getelementptr i8, ptr %getbyte.string, i64 %add326
  %getbyte.char338 = load i8, ptr %getbyte.charptr337, align 1
  %getbyte.charword339 = zext i8 %getbyte.char338 to i64
  %lg.value341 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn344 = inttoptr i64 %lg.value341 to ptr
  %fnap346 = call i64 %rtap_ep_p_fn344(i64 %getbyte.charword339)
  %5 = add i64 %fnap346, -58
  %or.cond983 = icmp ult i64 %5, -10
  %__res_a.0.v = select i1 %or.cond983, i64 -55, i64 -48
  %__res_a.0 = add i64 %__res_a.0.v, %fnap346
  br label %jt.then_L060

jt.then_L060:                                     ; preds = %jt.else320, %lf_L029
  %STK24.3 = phi i64 [ %STK24.0, %lf_L029 ], [ %__res_a.0, %jt.else320 ]
  %STK2.6 = phi i64 [ %STK2.1, %lf_L029 ], [ %add326, %jt.else320 ]
  %rtap_ep_p_fn403 = inttoptr i64 %STK23.1.ph to ptr
  %rtap406 = call i64 %rtap_ep_p_fn403(i64 %rv.rv66, i64 %STK24.3)
  %rv.rv412 = load i64, ptr %rv.lv, align 8
  %add417 = add i64 %rv.rv412, 1
  store i64 %add417, ptr %rv.lv, align 8
  %add426 = add i64 %STK2.6, 1
  br label %jump.target_L025

lf_L028.loopexit:                                 ; preds = %lab_L027
  br label %lf_L028

lf_L028.loopexit1270:                             ; preds = %lab_L027
  br label %lf_L028

lf_L028:                                          ; preds = %lab_L027, %lf_L028.loopexit1270, %lf_L028.loopexit
  %STK23.1.ph996.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), %lf_L028.loopexit ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), %lf_L028.loopexit1270 ], [ getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 688), %lab_L027 ]
  %STK23.1.ph996 = load i64, ptr %STK23.1.ph996.in, align 4
  %rtap_ep_p_fn436 = inttoptr i64 %STK23.1.ph996 to ptr
  %rtap439 = call i64 %rtap_ep_p_fn436(i64 %rv.rv66, i64 0)
  %rv.rv445 = load i64, ptr %rv.lv, align 8
  %add450 = add i64 %rv.rv445, 1
  store i64 %add450, ptr %rv.lv, align 8
  %add463 = add i64 %STK2.1, 1
  br label %jump.target_L025

lab_L064:                                         ; preds = %lab_L027, %lab_L027
  %rv.rv472 = load i64, ptr %rv.lv, align 8
  %add477 = add i64 %rv.rv472, 1
  store i64 %add477, ptr %rv.lv, align 8
  %add490 = add i64 %STK2.1, 1
  br label %jump.target_L025

lab_L065:                                         ; preds = %lab_L027
  %rv.rv499 = load i64, ptr %rv.lv, align 8
  %sub504 = add i64 %rv.rv499, -1
  store i64 %sub504, ptr %rv.lv, align 8
  %add517 = add i64 %STK2.1, 1
  br label %jump.target_L025

lab_L066:                                         ; preds = %lab_L027
  %stack.vec = alloca [33 x i64], align 8
  %stack.vecaddr = ptrtoint ptr %stack.vec to i64
  %stack.bcpladdr = ashr exact i64 %stack.vecaddr, 3
  %rv.rv527 = load i64, ptr %rv.lv, align 8
  %add532 = add i64 %rv.rv527, 1
  store i64 %add532, ptr %rv.lv, align 8
  %lg.value545 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 744), align 4
  %rtap_ep_p_fn548 = inttoptr i64 %lg.value545 to ptr
  %fnap552 = call i64 %rtap_ep_p_fn548(i64 %rv.rv66, i64 %stack.bcpladdr, i64 32)
  %if_cond555.not = icmp eq i64 %fnap552, 0
  %spec.select = select i1 %if_cond555.not, i64 %lstr.bcpladdr, i64 %stack.bcpladdr
  %rtap569 = call i64 @write_format(i64 %spec.select, i64 %1)
  %add575 = add i64 %STK2.1, 1
  br label %jump.target_L025

lab_L068:                                         ; preds = %lab_L027
  %rv.rv584 = load i64, ptr %rv.lv, align 8
  %add589 = add i64 %rv.rv584, 1
  store i64 %add589, ptr %rv.lv, align 8
  %lg.value603 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 1440), align 4
  %rtap_ep_p_fn606 = inttoptr i64 %lg.value603 to ptr
  %rtap610 = call i64 %rtap_ep_p_fn606(i64 %rv.rv66, i64 %STK24.0, i64 %STK25.0.ph)
  %add616 = add i64 %STK2.1, 1
  br label %jump.target_L025

lab_L069:                                         ; preds = %lab_L027
  %rv.rv625 = load i64, ptr %rv.lv, align 8
  %add630 = add i64 %rv.rv625, 1
  store i64 %add630, ptr %rv.lv, align 8
  br i1 %if_cond319.not, label %jf.then_L070, label %jf.else642

jf.else642:                                       ; preds = %lab_L069
  %lg.value649 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 584), align 4
  %rtap_ep_p_fn652 = inttoptr i64 %lg.value649 to ptr
  %rtap656 = call i64 %rtap_ep_p_fn652(i64 %rv.rv66, i64 %STK24.0, i64 %STK25.0.ph)
  br label %jump.target_L071

jf.then_L070:                                     ; preds = %lab_L069
  %rtap668 = call i64 @write_format(i64 %rv.rv66, i64 %1)
  br label %jump.target_L071

jump.target_L071:                                 ; preds = %jf.then_L070, %jf.else642
  %add674 = add i64 %STK2.1, 1
  br label %jump.target_L025

lab_L072:                                         ; preds = %lab_L027
  %ne = icmp ne i64 %rv.rv66, 1
  %booltoword683 = sext i1 %ne to i64
  %rv.rv690 = load i64, ptr %rv.lv, align 8
  %add695 = add i64 %rv.rv690, 1
  store i64 %add695, ptr %rv.lv, align 8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK2.1
  %getbyte.char720 = load i8, ptr %gep, align 1
  %getbyte.charword721 = zext i8 %getbyte.char720 to i64
  %add729 = add i64 %STK2.1, 2
  %eq737.not = icmp eq i8 %getbyte.char720, 92
  br i1 %eq737.not, label %jf.else742, label %jf.then_L073

jf.else742:                                       ; preds = %lab_L072
  %getbyte.char755 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword756 = zext i8 %getbyte.char755 to i64
  %gr = icmp sgt i64 %add729, %getbyte.charword756
  br i1 %gr, label %jump.target_L025, label %lab_L075

lab_L075:                                         ; preds = %jf.else742, %lab_L076
  %getbyte.char8371137 = phi i8 [ %getbyte.char837, %lab_L076 ], [ %getbyte.char755, %jf.else742 ]
  %STK744.0 = phi i64 [ %STK744.1, %lab_L076 ], [ %booltoword683, %jf.else742 ]
  %STK2.7 = phi i64 [ %add782, %lab_L076 ], [ %add729, %jf.else742 ]
  %getbyte.charptr773 = getelementptr i8, ptr %getbyte.string, i64 %STK2.7
  %getbyte.char774 = load i8, ptr %getbyte.charptr773, align 1
  %getbyte.charword775 = zext i8 %getbyte.char774 to i64
  %add782 = add nsw i64 %STK2.7, 1
  %eq790.not = icmp eq i8 %getbyte.char774, 92
  br i1 %eq790.not, label %jf.else795, label %jf.then_L078

jf.else795:                                       ; preds = %lab_L075
  %not = xor i64 %STK744.0, -1
  %eq807 = icmp eq i64 %booltoword683, %not
  br i1 %eq807, label %jump.target_L025, label %lab_L076

jf.then_L078:                                     ; preds = %lab_L075
  %if_cond817.not = icmp eq i64 %STK744.0, 0
  br i1 %if_cond817.not, label %jt.else818, label %lab_L076

jt.else818:                                       ; preds = %jf.then_L078
  %lg.value821 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn824 = inttoptr i64 %lg.value821 to ptr
  %rtap826 = call i64 %rtap_ep_p_fn824(i64 %getbyte.charword775)
  %getbyte.char837.pre = load i8, ptr %getbyte.string, align 8
  br label %lab_L076

lab_L076:                                         ; preds = %jf.else795, %jt.else818, %jf.then_L078
  %getbyte.char837 = phi i8 [ %getbyte.char8371137, %jf.then_L078 ], [ %getbyte.char837.pre, %jt.else818 ], [ %getbyte.char8371137, %jf.else795 ]
  %STK744.1 = phi i64 [ -1, %jf.then_L078 ], [ 0, %jt.else818 ], [ %not, %jf.else795 ]
  %getbyte.charword838 = zext i8 %getbyte.char837 to i64
  %gr842.not.not = icmp slt i64 %STK2.7, %getbyte.charword838
  br i1 %gr842.not.not, label %lab_L075, label %jump.target_L025

jf.then_L073:                                     ; preds = %lab_L072
  br i1 %ne, label %jf.else853, label %jump.target_L025

jf.else853:                                       ; preds = %jf.then_L073
  %lg.value856 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn859 = inttoptr i64 %lg.value856 to ptr
  %rtap861 = call i64 %rtap_ep_p_fn859(i64 %getbyte.charword721)
  br label %jump.target_L025

jump.target_L025:                                 ; preds = %lab_L076, %jf.else795, %jf.then_L073, %jf.else853, %jf.else742, %jump.target_L071, %lab_L068, %lab_L066, %lab_L065, %lab_L064, %lf_L028, %jt.then_L060, %lab_L033, %jt.else
  %STK2.8 = phi i64 [ %add91, %lab_L033 ], [ %add426, %jt.then_L060 ], [ %add463, %lf_L028 ], [ %add490, %lab_L064 ], [ %add517, %lab_L065 ], [ %add575, %lab_L066 ], [ %add616, %lab_L068 ], [ %add674, %jump.target_L071 ], [ %add729, %jf.then_L073 ], [ %add729, %jf.else853 ], [ %add729, %jf.else742 ], [ %add, %jt.else ], [ %add782, %jf.else795 ], [ %add782, %lab_L076 ]
  %getbyte.char875 = load i8, ptr %getbyte.string, align 8
  %getbyte.charword876 = zext i8 %getbyte.char875 to i64
  %le880.not = icmp sgt i64 %STK2.8, %getbyte.charword876
  br i1 %le880.not, label %jf.then_L026, label %lab_L024

jf.then_L026:                                     ; preds = %jump.target_L025, %entry
  store i64 %lg.value, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
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
  switch i64 %0, label %lab_L123 [
    i64 17, label %lab_L122
    i64 15, label %lab_L121
    i64 18, label %lab_L120
    i64 16, label %lab_L119
    i64 14, label %lab_L118
    i64 13, label %lab_L117
    i64 12, label %lab_L116
    i64 11, label %lab_L115
    i64 10, label %lab_L114
    i64 9, label %lab_L113
    i64 7, label %lab_L112
    i64 6, label %lab_L111
    i64 5, label %lab_L108
    i64 4, label %lab_L107
    i64 3, label %lab_L106
    i64 2, label %lab_L094
    i64 1, label %lab_L087
    i64 0, label %jump.target_L085
  ]

lab_L087:                                         ; preds = %entry
  %float.itof = sitofp i64 %1 to double
  %gr = icmp slt i64 %2, 1
  br i1 %gr, label %jf.then_L090, label %lab_L088

lab_L088:                                         ; preds = %lab_L087, %lab_L088
  %frhs = phi double [ %fresult, %lab_L088 ], [ %float.itof, %lab_L087 ]
  %STK2.0 = phi i64 [ %sub, %lab_L088 ], [ %2, %lab_L087 ]
  %fresult = fmul double %frhs, 1.000000e+01
  %sub = add nsw i64 %STK2.0, -1
  %gr37 = icmp samesign ugt i64 %STK2.0, 1
  br i1 %gr37, label %lab_L088, label %jf.then_L090.thread

jf.then_L090.thread:                              ; preds = %lab_L088
  %STK5.1535 = bitcast double %fresult to i64
  br label %jump.target_L085

jf.then_L090:                                     ; preds = %lab_L087
  %STK5.1 = bitcast double %float.itof to i64
  %if_cond50 = icmp sgt i64 %2, -1
  br i1 %if_cond50, label %jump.target_L085, label %lab_L091

lab_L091:                                         ; preds = %jf.then_L090, %lab_L091
  %flhs58 = phi double [ %fresult59, %lab_L091 ], [ %float.itof, %jf.then_L090 ]
  %STK2.2 = phi i64 [ %add, %lab_L091 ], [ %2, %jf.then_L090 ]
  %fresult59 = fdiv double %flhs58, 1.000000e+01
  %add = add nuw nsw i64 %STK2.2, 1
  %ls74.not = icmp eq i64 %STK2.2, -1
  br i1 %ls74.not, label %jump.target_L085.loopexit, label %lab_L091

lab_L094:                                         ; preds = %entry
  %flhs90 = bitcast i64 %1 to double
  %comparison = fcmp ult double %flhs90, 0.000000e+00
  %fresult116 = fneg double %flhs90
  %fneg = bitcast double %fresult116 to i64
  %STK82.0 = select i1 %comparison, i64 %fneg, i64 %1
  %flhs125 = bitcast i64 %STK82.0 to double
  %comparison126 = fcmp ult double %flhs125, 1.000000e+01
  br i1 %comparison126, label %jf.then_L100, label %lab_L098.preheader

lab_L098.preheader:                               ; preds = %lab_L094
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.7 to i64), 3
  br label %lab_L098

lab_L098:                                         ; preds = %lab_L098.preheader, %lab_L098
  %STK83.0 = phi i64 [ %add148, %lab_L098 ], [ 0, %lab_L098.preheader ]
  %STK82.1 = phi double [ %fresult139, %lab_L098 ], [ %flhs125, %lab_L098.preheader ]
  %fresult139 = fdiv double %STK82.1, 1.000000e+01
  %fdiv140 = bitcast double %fresult139 to i64
  %add148 = add i64 %STK83.0, 1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %lstr.bcpladdr, i64 %fdiv140, i64 %add148)
  %comparison166 = fcmp ult double %fresult139, 1.000000e+01
  br i1 %comparison166, label %jf.then_L100, label %lab_L098

jf.then_L100:                                     ; preds = %lab_L098, %lab_L094
  %flhs178.pre-phi = phi double [ %flhs125, %lab_L094 ], [ %fresult139, %lab_L098 ]
  %STK83.1 = phi i64 [ 0, %lab_L094 ], [ %add148, %lab_L098 ]
  %STK82.2 = phi i64 [ %STK82.0, %lab_L094 ], [ %fdiv140, %lab_L098 ]
  %comparison179 = fcmp ugt double %flhs178.pre-phi, 1.000000e+00
  br i1 %comparison179, label %jf.then_L103, label %lab_L101.preheader

lab_L101.preheader:                               ; preds = %jf.then_L100
  %lstr.bcpladdr203 = ashr exact i64 ptrtoint (ptr @lstr.global.8 to i64), 3
  br label %lab_L101

lab_L101:                                         ; preds = %lab_L101.preheader, %lab_L101
  %STK83.2 = phi i64 [ %sub200, %lab_L101 ], [ %STK83.1, %lab_L101.preheader ]
  %STK82.3 = phi double [ %fresult191, %lab_L101 ], [ %flhs178.pre-phi, %lab_L101.preheader ]
  %fresult191 = fmul double %STK82.3, 1.000000e+01
  %fmul192 = bitcast double %fresult191 to i64
  %sub200 = add i64 %STK83.2, -1
  %lg.value209 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn212 = inttoptr i64 %lg.value209 to ptr
  %rtap216 = tail call i64 %rtap_ep_p_fn212(i64 %lstr.bcpladdr203, i64 %fmul192, i64 %sub200)
  %comparison224 = fcmp ugt double %fresult191, 1.000000e+00
  br i1 %comparison224, label %jf.then_L103, label %lab_L101

jf.then_L103:                                     ; preds = %lab_L101, %jf.then_L100
  %flhs250.pre-phi = phi double [ %flhs178.pre-phi, %jf.then_L100 ], [ %fresult191, %lab_L101 ]
  %STK83.3 = phi i64 [ %STK83.1, %jf.then_L100 ], [ %sub200, %lab_L101 ]
  %STK82.4 = phi i64 [ %STK82.2, %jf.then_L100 ], [ %fmul192, %lab_L101 ]
  store i64 %STK83.3, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %fresult251 = fneg double %flhs250.pre-phi
  %fneg252 = bitcast double %fresult251 to i64
  %__res_a.1 = select i1 %comparison, i64 %fneg252, i64 %STK82.4
  br label %jump.target_L085

lab_L106:                                         ; preds = %entry
  %float.itof263 = sitofp i64 %1 to double
  %float264 = bitcast double %float.itof263 to i64
  br label %jump.target_L085

lab_L107:                                         ; preds = %entry
  %fix.ftoi = bitcast i64 %1 to double
  %fix270 = fptosi double %fix.ftoi to i64
  br label %jump.target_L085

lab_L108:                                         ; preds = %entry
  %flhs280 = bitcast i64 %1 to double
  %comparison281 = fcmp ult double %flhs280, 0.000000e+00
  %fresult295 = fneg double %flhs280
  %fneg296 = bitcast double %fresult295 to i64
  %__res_a.2 = select i1 %comparison281, i64 %fneg296, i64 %1
  br label %jump.target_L085

lab_L111:                                         ; preds = %entry
  %frhs310 = bitcast i64 %1 to double
  %flhs311 = bitcast i64 %2 to double
  %fresult312 = fmul double %frhs310, %flhs311
  %fmul313 = bitcast double %fresult312 to i64
  br label %jump.target_L085

lab_L112:                                         ; preds = %entry
  %frhs323 = bitcast i64 %2 to double
  %flhs324 = bitcast i64 %1 to double
  %fresult325 = fdiv double %flhs324, %frhs323
  %fdiv326 = bitcast double %fresult325 to i64
  br label %jump.target_L085

lab_L113:                                         ; preds = %entry
  %frhs336 = bitcast i64 %1 to double
  %flhs337 = bitcast i64 %2 to double
  %fresult338 = fadd double %frhs336, %flhs337
  %fadd = bitcast double %fresult338 to i64
  br label %jump.target_L085

lab_L114:                                         ; preds = %entry
  %frhs348 = bitcast i64 %2 to double
  %flhs349 = bitcast i64 %1 to double
  %fresult350 = fsub double %flhs349, %frhs348
  %fsub = bitcast double %fresult350 to i64
  br label %jump.target_L085

lab_L115:                                         ; preds = %entry
  br label %jump.target_L085

lab_L116:                                         ; preds = %entry
  %flhs361 = bitcast i64 %1 to double
  %fresult362 = fneg double %flhs361
  %fneg363 = bitcast double %fresult362 to i64
  br label %jump.target_L085

lab_L117:                                         ; preds = %entry
  %frhs373 = bitcast i64 %1 to double
  %flhs374 = bitcast i64 %2 to double
  %comparison375 = fcmp oeq double %flhs374, %frhs373
  %feq = sext i1 %comparison375 to i64
  br label %jump.target_L085

lab_L118:                                         ; preds = %entry
  %frhs385 = bitcast i64 %1 to double
  %flhs386 = bitcast i64 %2 to double
  %comparison387 = fcmp one double %flhs386, %frhs385
  %fne = sext i1 %comparison387 to i64
  br label %jump.target_L085

lab_L119:                                         ; preds = %entry
  %frhs397 = bitcast i64 %2 to double
  %flhs398 = bitcast i64 %1 to double
  %comparison399 = fcmp ogt double %flhs398, %frhs397
  %fgr = sext i1 %comparison399 to i64
  br label %jump.target_L085

lab_L120:                                         ; preds = %entry
  %frhs409 = bitcast i64 %2 to double
  %flhs410 = bitcast i64 %1 to double
  %comparison411 = fcmp oge double %flhs410, %frhs409
  %fge412 = sext i1 %comparison411 to i64
  br label %jump.target_L085

lab_L121:                                         ; preds = %entry
  %frhs422 = bitcast i64 %2 to double
  %flhs423 = bitcast i64 %1 to double
  %comparison424 = fcmp olt double %flhs423, %frhs422
  %fls = sext i1 %comparison424 to i64
  br label %jump.target_L085

lab_L122:                                         ; preds = %entry
  %frhs434 = bitcast i64 %2 to double
  %flhs435 = bitcast i64 %1 to double
  %comparison436 = fcmp ole double %flhs435, %frhs434
  %fle437 = sext i1 %comparison436 to i64
  br label %jump.target_L085

lab_L123:                                         ; preds = %entry
  %lstr.bcpladdr441 = ashr exact i64 ptrtoint (ptr @lstr.global.9 to i64), 3
  %lg.value453 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn456 = inttoptr i64 %lg.value453 to ptr
  %rtap463 = tail call i64 %rtap_ep_p_fn456(i64 %lstr.bcpladdr441, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  %lg.value465 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn468 = inttoptr i64 %lg.value465 to ptr
  %rtap470 = tail call i64 %rtap_ep_p_fn468(i64 1)
  br label %jump.target_L085

jump.target_L085.loopexit:                        ; preds = %lab_L091
  %fdiv.le = bitcast double %fresult59 to i64
  br label %jump.target_L085

jump.target_L085:                                 ; preds = %jump.target_L085.loopexit, %jf.then_L090.thread, %entry, %jf.then_L090, %lab_L123, %lab_L122, %lab_L121, %lab_L120, %lab_L119, %lab_L118, %lab_L117, %lab_L116, %lab_L115, %lab_L114, %lab_L113, %lab_L112, %lab_L111, %lab_L108, %lab_L107, %lab_L106, %jf.then_L103
  %STK5.3 = phi i64 [ -4985279381848933680, %lab_L123 ], [ %STK5.1, %jf.then_L090 ], [ %__res_a.1, %jf.then_L103 ], [ %float264, %lab_L106 ], [ %fix270, %lab_L107 ], [ %__res_a.2, %lab_L108 ], [ %fmul313, %lab_L111 ], [ %fdiv326, %lab_L112 ], [ %fadd, %lab_L113 ], [ %fsub, %lab_L114 ], [ %1, %lab_L115 ], [ %fneg363, %lab_L116 ], [ %feq, %lab_L117 ], [ %fne, %lab_L118 ], [ %fgr, %lab_L119 ], [ %fge412, %lab_L120 ], [ %fls, %lab_L121 ], [ %fle437, %lab_L122 ], [ -1, %entry ], [ %STK5.1535, %jf.then_L090.thread ], [ %fdiv.le, %jump.target_L085.loopexit ]
  ret i64 %STK5.3
}

define i64 @sys(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) section ".text.blib" {
entry:
  switch i64 %0, label %lab_L131 [
    i64 63, label %lab_L130
    i64 11, label %lab_L129
    i64 10, label %lab_L128
  ]

lab_L128:                                         ; preds = %entry
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  br label %jump.target_L127

lab_L129:                                         ; preds = %entry
  %lg.value13 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn16 = inttoptr i64 %lg.value13 to ptr
  %fnap17 = tail call i64 %rtap_ep_p_fn16(i64 %1)
  br label %jump.target_L127

lab_L130:                                         ; preds = %entry
  %fnap39 = tail call i64 @sys_flt(i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  br label %jump.target_L127

lab_L131:                                         ; preds = %entry
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.11 to i64), 3
  %lg.value56 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 752), align 4
  %rtap_ep_p_fn59 = inttoptr i64 %lg.value56 to ptr
  %rtap = tail call i64 %rtap_ep_p_fn59(i64 %lstr.bcpladdr, i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  %lg.value68 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn71 = inttoptr i64 %lg.value68 to ptr
  %rtap73 = tail call i64 %rtap_ep_p_fn71(i64 1)
  br label %jump.target_L127

jump.target_L127:                                 ; preds = %lab_L131, %lab_L130, %lab_L129, %lab_L128
  %STK6.0 = phi i64 [ -4985279381848933680, %lab_L131 ], [ %fnap, %lab_L128 ], [ %fnap17, %lab_L129 ], [ %fnap39, %lab_L130 ]
  ret i64 %STK6.0
}

define noundef i64 @writes(i64 %0) section ".text.blib" {
entry:
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.char = load i8, ptr %getbyte.string, align 8
  %getbyte.charword = zext i8 %getbyte.char to i64
  %gr = icmp eq i8 %getbyte.char, 0
  br i1 %gr, label %jt.then_L133, label %lab_L132

lab_L132:                                         ; preds = %entry, %lab_L132
  %STK1.0 = phi i64 [ %add, %lab_L132 ], [ 1, %entry ]
  %getbyte.charptr18 = getelementptr i8, ptr %getbyte.string, i64 %STK1.0
  %getbyte.char19 = load i8, ptr %getbyte.charptr18, align 1
  %getbyte.charword20 = zext i8 %getbyte.char19 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword20)
  %add = add nuw nsw i64 %STK1.0, 1
  %le.not.not = icmp samesign ult i64 %STK1.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L132, label %jt.then_L133

jt.then_L133:                                     ; preds = %lab_L132, %entry
  ret i64 -4985279381848933680
}

define noundef i64 @deplete(i64 %0) section ".text.blib" {
entry:
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 16), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 1)
  ret i64 -4985279381848933680
}

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
  br label %lab_L161

lab_L161:                                         ; preds = %lab_L161, %entry
  %STK7.1 = phi i64 [ %spec.select, %entry ], [ %div, %lab_L161 ]
  %STK5.0 = phi i64 [ 0, %entry ], [ %add45, %lab_L161 ]
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
  br i1 %if_cond51.not, label %lab_L162, label %lab_L161

lab_L162:                                         ; preds = %lab_L161
  %spec.select209 = add i64 %1, %sub
  %if_cond60 = icmp eq i64 %2, 0
  %or.cond = select i1 %if_cond, i1 true, i1 %if_cond60
  br i1 %or.cond, label %jf.then_L164, label %jf.else61

jf.else61:                                        ; preds = %lab_L162
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = call i64 %rtap_ep_p_fn(i64 45)
  br label %jf.then_L164

jf.then_L164:                                     ; preds = %jf.else61, %lab_L162
  %add70 = add i64 %STK5.0, 2
  %gr = icmp sgt i64 %add70, %spec.select209
  br i1 %gr, label %jt.then_L166, label %lab_L165.preheader

lab_L165.preheader:                               ; preds = %jf.then_L164
  %. = select i1 %if_cond60, i64 32, i64 48
  br label %lab_L165

lab_L165:                                         ; preds = %lab_L165.preheader, %lab_L165
  %STK71.0 = phi i64 [ %add105, %lab_L165 ], [ %add70, %lab_L165.preheader ]
  %lg.value94 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn97 = inttoptr i64 %lg.value94 to ptr
  %rtap99 = call i64 %rtap_ep_p_fn97(i64 %.)
  %add105 = add i64 %STK71.0, 1
  %le.not = icmp sgt i64 %add105, %spec.select209
  br i1 %le.not, label %jt.then_L166, label %lab_L165

jt.then_L166:                                     ; preds = %lab_L165, %jf.then_L164
  %or.cond210 = select i1 %not.if_cond, i1 %if_cond60, i1 false
  br i1 %or.cond210, label %jt.else128, label %jf.then_L171

jt.else128:                                       ; preds = %jt.then_L166
  %lg.value130 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn133 = inttoptr i64 %lg.value130 to ptr
  %rtap135 = call i64 %rtap_ep_p_fn133(i64 45)
  br label %jf.then_L171

jf.then_L171:                                     ; preds = %jt.else128, %jt.then_L166
  %ls = icmp slt i64 %STK5.0, 0
  br i1 %ls, label %jt.then_L173, label %lab_L172

lab_L172:                                         ; preds = %jf.then_L171, %lab_L172
  %STK142.0 = phi i64 [ %add178, %lab_L172 ], [ %STK5.0, %jf.then_L171 ]
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
  br i1 %ge.not, label %jt.then_L173, label %lab_L172

jt.then_L173:                                     ; preds = %lab_L172, %jf.then_L171
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
  br label %lab_L161.i

lab_L161.i:                                       ; preds = %lab_L161.i, %entry
  %STK7.1.i = phi i64 [ %spec.select.i, %entry ], [ %div.i, %lab_L161.i ]
  %STK5.0.i = phi i64 [ 0, %entry ], [ %add45.i, %lab_L161.i ]
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
  br i1 %if_cond51.not.i, label %lab_L162.i, label %lab_L161.i

lab_L162.i:                                       ; preds = %lab_L161.i
  %if_cond.i = icmp slt i64 %0, 0
  %.lobit = ashr i64 %0, 63
  %spec.select209.i = add i64 %1, %.lobit
  %add70.i = add i64 %STK5.0.i, 2
  %gr.i = icmp sgt i64 %add70.i, %spec.select209.i
  br i1 %gr.i, label %jt.then_L166.i, label %lab_L165.i

lab_L165.i:                                       ; preds = %lab_L162.i, %lab_L165.i
  %STK71.0.i = phi i64 [ %add105.i, %lab_L165.i ], [ %add70.i, %lab_L162.i ]
  %lg.value94.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn97.i = inttoptr i64 %lg.value94.i to ptr
  %rtap99.i = call i64 %rtap_ep_p_fn97.i(i64 32)
  %add105.i = add i64 %STK71.0.i, 1
  %le.not.i = icmp sgt i64 %add105.i, %spec.select209.i
  br i1 %le.not.i, label %jt.then_L166.i, label %lab_L165.i

jt.then_L166.i:                                   ; preds = %lab_L165.i, %lab_L162.i
  br i1 %if_cond.i, label %jt.else128.i, label %jf.then_L171.i

jt.else128.i:                                     ; preds = %jt.then_L166.i
  %lg.value130.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn133.i = inttoptr i64 %lg.value130.i to ptr
  %rtap135.i = call i64 %rtap_ep_p_fn133.i(i64 45)
  br label %jf.then_L171.i

jf.then_L171.i:                                   ; preds = %jt.else128.i, %jt.then_L166.i
  %ls.i = icmp slt i64 %STK5.0.i, 0
  br i1 %ls.i, label %writedz.exit, label %lab_L172.i

lab_L172.i:                                       ; preds = %jf.then_L171.i, %lab_L172.i
  %STK142.0.i = phi i64 [ %add178.i, %lab_L172.i ], [ %STK5.0.i, %jf.then_L171.i ]
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
  br i1 %ge.not.i, label %writedz.exit, label %lab_L172.i

writedz.exit:                                     ; preds = %lab_L172.i, %jf.then_L171.i
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
  br i1 %gr, label %jf.then_L176, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 3
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 704), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then_L176

jf.then_L176:                                     ; preds = %jf.else, %entry
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
  br i1 %gr, label %jf.then_L177, label %jf.else

jf.else:                                          ; preds = %entry
  %shift.result10 = lshr i64 %0, 4
  %sub = add nsw i64 %1, -1
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 696), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %rtap = tail call i64 %rtap_ep_p_fn(i64 %shift.result10, i64 %sub)
  br label %jf.then_L177

jf.then_L177:                                     ; preds = %jf.else, %entry
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
  br i1 %gr, label %jt.then_L182, label %lab_L181

lab_L181:                                         ; preds = %entry, %lab_L184
  %STK28.0 = phi i64 [ %add, %lab_L184 ], [ 1, %entry ]
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
  br i1 %if_cond80, label %lab_L184, label %common.ret

common.ret:                                       ; preds = %lab_L181, %jf.then_L186, %jt.then_L182
  %common.ret.op = phi i64 [ 0, %jt.then_L182 ], [ %.144, %jf.then_L186 ], [ %fnap, %lab_L181 ]
  ret i64 %common.ret.op

lab_L184:                                         ; preds = %lab_L181
  %add = add nuw nsw i64 %STK28.0, 1
  %le.not.not = icmp samesign ult i64 %STK28.0, %getbyte.charword38
  br i1 %le.not.not, label %lab_L181, label %jt.then_L182

jt.then_L182:                                     ; preds = %lab_L184, %entry
  %eq.not = icmp eq i8 %getbyte.char13, %getbyte.char
  br i1 %eq.not, label %common.ret, label %jf.then_L186

jf.then_L186:                                     ; preds = %jt.then_L182
  %eq120.not = icmp eq i64 %0, %.
  %.144 = select i1 %eq120.not, i64 -1, i64 1
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @getkeylen(i64 %0, i64 %1, i64 %2, i64 returned %3) local_unnamed_addr #2 section ".text.blib" {
entry:
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %jt.then_L190, label %lab_L188.preheader

lab_L188.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  br label %lab_L188

lab_L188:                                         ; preds = %lab_L188.preheader, %jf.else
  %STK4.0 = phi i64 [ %add, %jf.else ], [ 1, %lab_L188.preheader ]
  %STK2.0 = phi i64 [ %spec.select, %jf.else ], [ %2, %lab_L188.preheader ]
  %if_cond13 = icmp eq i64 %STK2.0, 0
  br i1 %if_cond13, label %jt.then_L190, label %jf.else

jf.else:                                          ; preds = %lab_L188
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK4.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %eq.not = icmp eq i8 %getbyte.char, 44
  %sub = sext i1 %eq.not to i64
  %spec.select = add i64 %STK2.0, %sub
  %add = add i64 %STK4.0, 1
  %gr46.not = icmp sgt i64 %add, %1
  br i1 %gr46.not, label %jt.then_L190, label %lab_L188

jt.then_L190:                                     ; preds = %jf.else, %lab_L188, %entry
  %STK4.1 = phi i64 [ 1, %entry ], [ %add, %jf.else ], [ %STK4.0, %lab_L188 ]
  %le.not = icmp sgt i64 %STK4.1, %1
  br i1 %le.not, label %jt.then_L190.jf.then_L194_crit_edge, label %lab_L192.preheader

jt.then_L190.jf.then_L194_crit_edge:              ; preds = %jt.then_L190
  %.pre = shl i64 %3, 3
  %.pre204 = inttoptr i64 %.pre to ptr
  br label %jf.then_L194

lab_L192.preheader:                               ; preds = %jt.then_L190
  %getbyte.llvmaddr69 = shl i64 %0, 3
  %getbyte.string70 = inttoptr i64 %getbyte.llvmaddr69 to ptr
  %putbyte.llvmaddr = shl i64 %3, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L192

lab_L192:                                         ; preds = %lab_L192.preheader, %jt.then_L195
  %STK5.0 = phi i64 [ %STK5.1, %jt.then_L195 ], [ 0, %lab_L192.preheader ]
  %STK4.2 = phi i64 [ %add148, %jt.then_L195 ], [ %STK4.1, %lab_L192.preheader ]
  %getbyte.charptr71 = getelementptr i8, ptr %getbyte.string70, i64 %STK4.2
  %getbyte.char72 = load i8, ptr %getbyte.charptr71, align 1
  switch i8 %getbyte.char72, label %jt.else118 [
    i8 47, label %jf.then_L194.loopexit.split.loop.exit201
    i8 61, label %jf.then_L194.loopexit.split.loop.exit201
    i8 44, label %jf.then_L194.loopexit.split.loop.exit201
    i8 10, label %jt.then_L195
  ]

jt.else118:                                       ; preds = %lab_L192
  %add124 = add i64 %STK5.0, 1
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %add124
  store i8 %getbyte.char72, ptr %putbyte.charptr, align 1
  br label %jt.then_L195

jt.then_L195:                                     ; preds = %lab_L192, %jt.else118
  %STK5.1 = phi i64 [ %add124, %jt.else118 ], [ %STK5.0, %lab_L192 ]
  %add148 = add i64 %STK4.2, 1
  %le157.not = icmp sgt i64 %add148, %1
  br i1 %le157.not, label %jf.then_L194.loopexit.split.loop.exit, label %lab_L192

jf.then_L194.loopexit.split.loop.exit:            ; preds = %jt.then_L195
  %extract.t200.le = trunc i64 %STK5.1 to i8
  br label %jf.then_L194

jf.then_L194.loopexit.split.loop.exit201:         ; preds = %lab_L192, %lab_L192, %lab_L192
  %extract.t.le = trunc i64 %STK5.0 to i8
  br label %jf.then_L194

jf.then_L194:                                     ; preds = %jt.then_L190.jf.then_L194_crit_edge, %jf.then_L194.loopexit.split.loop.exit, %jf.then_L194.loopexit.split.loop.exit201
  %putbyte.string173.pre-phi = phi ptr [ %.pre204, %jt.then_L190.jf.then_L194_crit_edge ], [ %putbyte.string, %jf.then_L194.loopexit.split.loop.exit ], [ %putbyte.string, %jf.then_L194.loopexit.split.loop.exit201 ]
  %STK5.2.off0 = phi i8 [ 0, %jt.then_L190.jf.then_L194_crit_edge ], [ %extract.t200.le, %jf.then_L194.loopexit.split.loop.exit ], [ %extract.t.le, %jf.then_L194.loopexit.split.loop.exit201 ]
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
  br i1 %gr, label %jt.then_L197, label %lab_L196.preheader

lab_L196.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i8 %getbyte.char, 4
  %diff.check = icmp eq i64 %getbyte.llvmaddr, %stack.vec162
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %lab_L196.preheader182, label %vector.ph

vector.ph:                                        ; preds = %lab_L196.preheader
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
  br i1 %cmp.n, label %jt.then_L197, label %lab_L196.preheader182

lab_L196.preheader182:                            ; preds = %lab_L196.preheader, %middle.block
  %STK6.0.ph = phi i64 [ 1, %lab_L196.preheader ], [ %4, %middle.block ]
  %STK4.0.ph = phi i64 [ 0, %lab_L196.preheader ], [ %n.vec, %middle.block ]
  br label %lab_L196

lab_L196:                                         ; preds = %lab_L196.preheader182, %lab_L196
  %STK6.0 = phi i64 [ %add42, %lab_L196 ], [ %STK6.0.ph, %lab_L196.preheader182 ]
  %STK4.0 = phi i64 [ %add, %lab_L196 ], [ %STK4.0.ph, %lab_L196.preheader182 ]
  %add = add nuw nsw i64 %STK4.0, 1
  %getbyte.charptr29 = getelementptr i8, ptr %getbyte.string, i64 %STK6.0
  %getbyte.char30 = load i8, ptr %getbyte.charptr29, align 1
  %putbyte.charptr = getelementptr i8, ptr %stack.vec, i64 %add
  store i8 %getbyte.char30, ptr %putbyte.charptr, align 1
  %add42 = add nuw nsw i64 %STK6.0, 1
  %le.not.not = icmp samesign ult i64 %STK6.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L196, label %jt.then_L197, !llvm.loop !3

jt.then_L197:                                     ; preds = %lab_L196, %middle.block, %entry
  %STK4.1 = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ], [ %add, %lab_L196 ]
  %getbyte.llvmaddr62 = shl i64 %1, 3
  %getbyte.string63 = inttoptr i64 %getbyte.llvmaddr62 to ptr
  %getbyte.char65 = load i8, ptr %getbyte.string63, align 8
  %getbyte.charword66 = zext i8 %getbyte.char65 to i64
  %gr74 = icmp eq i8 %getbyte.char65, 0
  br i1 %gr74, label %jt.then_L201, label %lab_L200.preheader

lab_L200.preheader:                               ; preds = %jt.then_L197
  %min.iters.check168 = icmp ult i8 %getbyte.char65, 4
  br i1 %min.iters.check168, label %lab_L200.preheader181, label %vector.memcheck164

vector.memcheck164:                               ; preds = %lab_L200.preheader
  %9 = add i64 %STK4.1, %stack.vec162
  %10 = sub i64 %9, %getbyte.llvmaddr62
  %diff.check165 = icmp ult i64 %10, 4
  br i1 %diff.check165, label %lab_L200.preheader181, label %vector.ph169

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
  br i1 %cmp.n178, label %jt.then_L201, label %lab_L200.preheader181

lab_L200.preheader181:                            ; preds = %vector.memcheck164, %lab_L200.preheader, %middle.block166
  %STK56.0.ph = phi i64 [ 1, %lab_L200.preheader ], [ 1, %vector.memcheck164 ], [ %11, %middle.block166 ]
  %STK4.2.ph = phi i64 [ %STK4.1, %lab_L200.preheader ], [ %STK4.1, %vector.memcheck164 ], [ %12, %middle.block166 ]
  br label %lab_L200

lab_L200:                                         ; preds = %lab_L200.preheader181, %lab_L200
  %STK56.0 = phi i64 [ %add116, %lab_L200 ], [ %STK56.0.ph, %lab_L200.preheader181 ]
  %STK4.2 = phi i64 [ %add85, %lab_L200 ], [ %STK4.2.ph, %lab_L200.preheader181 ]
  %add85 = add nuw nsw i64 %STK4.2, 1
  %getbyte.charptr96 = getelementptr i8, ptr %getbyte.string63, i64 %STK56.0
  %getbyte.char97 = load i8, ptr %getbyte.charptr96, align 1
  %putbyte.charptr110 = getelementptr i8, ptr %stack.vec, i64 %add85
  store i8 %getbyte.char97, ptr %putbyte.charptr110, align 1
  %add116 = add nuw nsw i64 %STK56.0, 1
  %le125.not.not = icmp samesign ult i64 %STK56.0, %getbyte.charword66
  br i1 %le125.not.not, label %lab_L200, label %jt.then_L201, !llvm.loop !5

jt.then_L201:                                     ; preds = %lab_L200, %middle.block166, %jt.then_L197
  %STK4.3 = phi i64 [ %STK4.1, %jt.then_L197 ], [ %12, %middle.block166 ], [ %add85, %lab_L200 ]
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
  br i1 %gr, label %lab_L220.preheader, label %lab_L205.preheader

lab_L205.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  br label %lab_L205

lab_L205:                                         ; preds = %lab_L205.preheader, %lab_L208
  %STK29.0 = phi i64 [ %add266, %lab_L208 ], [ 1, %lab_L205.preheader ]
  %STK5.0 = phi i64 [ %STK5.1, %lab_L208 ], [ 0, %lab_L205.preheader ]
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK29.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  switch i8 %getbyte.char, label %lab_L208 [
    i8 47, label %jf.else
    i8 44, label %jf.else234
  ]

jf.else:                                          ; preds = %lab_L205
  %getbyte.charptr66 = getelementptr i8, ptr %getbyte.charptr, i64 1
  %getbyte.char67 = load i8, ptr %getbyte.charptr66, align 1
  %getbyte.charword68 = zext i8 %getbyte.char67 to i64
  %lg.value70 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn73 = inttoptr i64 %lg.value70 to ptr
  %fnap = call i64 %rtap_ep_p_fn73(i64 %getbyte.charword68)
  switch i64 %fnap, label %goto.phi.bb [
    i64 80, label %lab_L217
    i64 78, label %lab_L216
    i64 83, label %lab_L215
    i64 75, label %lab_L214
    i64 65, label %lab_L208.sink.split
  ]

lab_L214:                                         ; preds = %jf.else
  br label %lab_L208.sink.split

lab_L215:                                         ; preds = %jf.else
  br label %lab_L208.sink.split

lab_L216:                                         ; preds = %jf.else
  br label %lab_L208.sink.split

lab_L217:                                         ; preds = %jf.else
  br label %lab_L208.sink.split

jf.else234:                                       ; preds = %lab_L205
  %add240 = add i64 %STK5.0, 1
  %gr247 = icmp slt i64 %add240, 128
  br i1 %gr247, label %lab_L208, label %jf.else252

common.ret:                                       ; preds = %lab_L282, %jt.then_L253, %jf.else252
  %common.ret.op = phi i64 [ 0, %jf.else252 ], [ %STK4.41898, %jt.then_L253 ], [ 0, %lab_L282 ]
  ret i64 %common.ret.op

jf.else252:                                       ; preds = %jf.else234
  %lstr.bcpladdr = ashr exact i64 ptrtoint (ptr @lstr.global.29 to i64), 3
  %lg.value254 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 760), align 4
  %rtap_ep_p_fn257 = inttoptr i64 %lg.value254 to ptr
  %rtap259 = call i64 %rtap_ep_p_fn257(i64 %lstr.bcpladdr)
  br label %common.ret

lab_L208.sink.split:                              ; preds = %jf.else, %lab_L214, %lab_L215, %lab_L216, %lab_L217
  %.sink = phi i64 [ 16, %lab_L217 ], [ 8, %lab_L216 ], [ 4, %lab_L215 ], [ 2, %lab_L214 ], [ 1, %jf.else ]
  %add198 = add i64 %STK5.0, %stack.bcpladdr10
  %rv.llvmaddr201 = shl i64 %add198, 3
  %rv.lv202 = inttoptr i64 %rv.llvmaddr201 to ptr
  %rv.rv203 = load i64, ptr %rv.lv202, align 8
  %logor208 = or i64 %rv.rv203, %.sink
  store i64 %logor208, ptr %rv.lv202, align 8
  br label %lab_L208

lab_L208:                                         ; preds = %lab_L208.sink.split, %lab_L205, %jf.else234
  %STK5.1 = phi i64 [ %add240, %jf.else234 ], [ %STK5.0, %lab_L205 ], [ %STK5.0, %lab_L208.sink.split ]
  %add266 = add i64 %STK29.0, 1
  %le.not = icmp sgt i64 %add266, %1
  br i1 %le.not, label %jt.then_L206, label %lab_L205

jt.then_L206:                                     ; preds = %lab_L208
  %gr289 = icmp slt i64 %STK5.1, 0
  br i1 %gr289, label %jt.then_L221, label %lab_L220.preheader

lab_L220.preheader:                               ; preds = %entry, %jt.then_L206
  %STK5.21944 = phi i64 [ %STK5.1, %jt.then_L206 ], [ 0, %entry ]
  br label %lab_L220

lab_L220:                                         ; preds = %lab_L220.preheader, %lab_L223
  %STK280.0 = phi i64 [ %add330, %lab_L223 ], [ 0, %lab_L220.preheader ]
  %add301 = add i64 %STK280.0, %stack.bcpladdr10
  %rv.llvmaddr304 = shl i64 %add301, 3
  %rv.lv305 = inttoptr i64 %rv.llvmaddr304 to ptr
  %rv.rv306 = load i64, ptr %rv.lv305, align 8
  %logand = and i64 %rv.rv306, 12
  %eq315.not = icmp eq i64 %logand, 12
  br i1 %eq315.not, label %goto.phi.bb, label %lab_L223

lab_L223:                                         ; preds = %lab_L220
  %add330 = add i64 %STK280.0, 1
  %le339.not = icmp sgt i64 %add330, %STK5.21944
  br i1 %le339.not, label %jt.then_L221, label %lab_L220

jt.then_L221:                                     ; preds = %lab_L223, %jt.then_L206
  %gr2891948 = phi i1 [ true, %jt.then_L206 ], [ false, %lab_L223 ]
  %STK5.21945 = phi i64 [ %STK5.1, %jt.then_L206 ], [ %STK5.21944, %lab_L223 ]
  %add351 = add i64 %2, 1
  %add356 = add i64 %add351, %STK5.21945
  %getbyte.llvmaddr.i1878 = shl i64 %0, 3
  %getbyte.string.i1879 = inttoptr i64 %getbyte.llvmaddr.i1878 to ptr
  %lstr.bcpladdr1265 = ashr exact i64 ptrtoint (ptr @lstr.global.36 to i64), 3
  %lstr.bcpladdr1339 = ashr exact i64 ptrtoint (ptr @lstr.global.37 to i64), 3
  br label %lab_L225.outer

lab_L225.outer:                                   ; preds = %lab_L225.outer.backedge, %jt.then_L221
  %STK4.0.ph = phi i64 [ %add356, %jt.then_L221 ], [ %STK4.0.ph.be, %lab_L225.outer.backedge ]
  %sub.neg = sub i64 %2, %STK4.0.ph
  %sub371 = add i64 %sub.neg, %3
  %getbyte.llvmaddr65.i = shl i64 %STK4.0.ph, 3
  %getbyte.string66.i = inttoptr i64 %getbyte.llvmaddr65.i to ptr
  br label %lab_L225

lab_L225:                                         ; preds = %lab_L225.backedge, %lab_L225.outer
  %lg.value377 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn380 = inttoptr i64 %lg.value377 to ptr
  %fnap383 = call i64 %rtap_ep_p_fn380(i64 %STK4.0.ph, i64 %sub371)
  %lg.value388 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 920), align 4
  %rtap_ep_p_fn391 = inttoptr i64 %lg.value388 to ptr
  %rtap394 = call i64 %rtap_ep_p_fn391(i64 %stack.bcpladdr, i64 31)
  switch i64 %fnap383, label %goto.phi.bb.loopexit1977 [
    i64 2, label %lab_L270
    i64 1, label %lab_L257
    i64 4, label %lab_L230
    i64 3, label %lab_L230
    i64 0, label %lab_L230
  ]

lab_L230:                                         ; preds = %lab_L225, %lab_L225, %lab_L225
  br i1 %gr2891948, label %jt.then_L253, label %lab_L231

lab_L231:                                         ; preds = %lab_L230, %jf.then_L234
  %STK405.0 = phi i64 [ %STK405.2, %jf.then_L234 ], [ %STK5.21945, %lab_L230 ]
  %STK403.0 = phi i64 [ %add974, %jf.then_L234 ], [ 0, %lab_L230 ]
  %STK372.0 = phi i64 [ %STK372.2, %jf.then_L234 ], [ %sub371, %lab_L230 ]
  %STK5.3 = phi i64 [ %STK5.5, %jf.then_L234 ], [ %STK5.21945, %lab_L230 ]
  %STK4.1 = phi i64 [ %STK4.3, %jf.then_L234 ], [ %STK4.0.ph, %lab_L230 ]
  %add424 = add i64 %STK403.0, %stack.bcpladdr10
  %rv.llvmaddr427 = shl i64 %add424, 3
  %rv.lv428 = inttoptr i64 %rv.llvmaddr427 to ptr
  %rv.rv429 = load i64, ptr %rv.lv428, align 8
  %logand447 = and i64 %rv.rv429, 48
  %eq452.not = icmp eq i64 %logand447, 16
  br i1 %eq452.not, label %jf.else457, label %jf.then_L234

jf.else457:                                       ; preds = %lab_L231
  %lg.value459 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 96), align 4
  %add463 = shl i64 %lg.value459, 3
  %rv.llvmaddr466 = add i64 %add463, 8
  %rv.lv467 = inttoptr i64 %rv.llvmaddr466 to ptr
  %rv.rv468 = load i64, ptr %rv.lv467, align 8
  %eq473.not = icmp eq i64 %rv.rv468, -1
  br i1 %eq473.not, label %jf.else478, label %jf.then_L234

jf.else478:                                       ; preds = %jf.else457
  %lg.value480 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %add484 = shl i64 %lg.value480, 3
  %rv.llvmaddr487 = add i64 %add484, 8
  %rv.lv488 = inttoptr i64 %rv.llvmaddr487 to ptr
  %rv.rv489 = load i64, ptr %rv.lv488, align 8
  %eq494.not = icmp eq i64 %rv.rv489, -1
  br i1 %eq494.not, label %jf.else499, label %jf.then_L234

jf.else499:                                       ; preds = %jf.else478
  br i1 %gr, label %jt.then_L190.i, label %lab_L188.preheader.i

lab_L188.preheader.i:                             ; preds = %jf.else499
  %getbyte.llvmaddr.i = shl i64 %0, 3
  %getbyte.string.i = inttoptr i64 %getbyte.llvmaddr.i to ptr
  br label %lab_L188.i

lab_L188.i:                                       ; preds = %jf.else.i, %lab_L188.preheader.i
  %STK4.0.i = phi i64 [ %add.i, %jf.else.i ], [ 1, %lab_L188.preheader.i ]
  %STK2.0.i = phi i64 [ %spec.select.i, %jf.else.i ], [ %STK403.0, %lab_L188.preheader.i ]
  %if_cond13.i = icmp eq i64 %STK2.0.i, 0
  br i1 %if_cond13.i, label %jt.then_L190.i, label %jf.else.i

jf.else.i:                                        ; preds = %lab_L188.i
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string.i, i64 %STK4.0.i
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %eq.not.i = icmp eq i8 %getbyte.char.i, 44
  %sub.i = sext i1 %eq.not.i to i64
  %spec.select.i = add i64 %STK2.0.i, %sub.i
  %add.i = add i64 %STK4.0.i, 1
  %gr46.not.i = icmp sgt i64 %add.i, %1
  br i1 %gr46.not.i, label %jt.then_L190.i, label %lab_L188.i

jt.then_L190.i:                                   ; preds = %jf.else.i, %lab_L188.i, %jf.else499
  %STK4.1.i = phi i64 [ 1, %jf.else499 ], [ %STK4.0.i, %lab_L188.i ], [ %add.i, %jf.else.i ]
  %le.not.i = icmp sgt i64 %STK4.1.i, %1
  br i1 %le.not.i, label %getkeylen.exit, label %lab_L192.preheader.i

lab_L192.preheader.i:                             ; preds = %jt.then_L190.i
  %getbyte.llvmaddr69.i = shl i64 %0, 3
  %getbyte.string70.i = inttoptr i64 %getbyte.llvmaddr69.i to ptr
  br label %lab_L192.i

lab_L192.i:                                       ; preds = %jt.then_L195.i, %lab_L192.preheader.i
  %STK5.0.i = phi i64 [ %STK5.1.i, %jt.then_L195.i ], [ 0, %lab_L192.preheader.i ]
  %STK4.2.i = phi i64 [ %add148.i, %jt.then_L195.i ], [ %STK4.1.i, %lab_L192.preheader.i ]
  %getbyte.charptr71.i = getelementptr i8, ptr %getbyte.string70.i, i64 %STK4.2.i
  %getbyte.char72.i = load i8, ptr %getbyte.charptr71.i, align 1
  switch i8 %getbyte.char72.i, label %jt.else118.i [
    i8 47, label %jf.then_L194.loopexit.split.loop.exit201.i
    i8 61, label %jf.then_L194.loopexit.split.loop.exit201.i
    i8 44, label %jf.then_L194.loopexit.split.loop.exit201.i
    i8 10, label %jt.then_L195.i
  ]

jt.else118.i:                                     ; preds = %lab_L192.i
  %add124.i = add i64 %STK5.0.i, 1
  %putbyte.charptr.i = getelementptr i8, ptr %stack.vec, i64 %add124.i
  store i8 %getbyte.char72.i, ptr %putbyte.charptr.i, align 1
  br label %jt.then_L195.i

jt.then_L195.i:                                   ; preds = %jt.else118.i, %lab_L192.i
  %STK5.1.i = phi i64 [ %add124.i, %jt.else118.i ], [ %STK5.0.i, %lab_L192.i ]
  %add148.i = add i64 %STK4.2.i, 1
  %le157.not.i = icmp sgt i64 %add148.i, %1
  br i1 %le157.not.i, label %jf.then_L194.loopexit.split.loop.exit.i, label %lab_L192.i

jf.then_L194.loopexit.split.loop.exit.i:          ; preds = %jt.then_L195.i
  %extract.t200.le.i = trunc i64 %STK5.1.i to i8
  br label %getkeylen.exit

jf.then_L194.loopexit.split.loop.exit201.i:       ; preds = %lab_L192.i, %lab_L192.i, %lab_L192.i
  %extract.t.le.i = trunc i64 %STK5.0.i to i8
  br label %getkeylen.exit

getkeylen.exit:                                   ; preds = %jt.then_L190.i, %jf.then_L194.loopexit.split.loop.exit.i, %jf.then_L194.loopexit.split.loop.exit201.i
  %STK5.2.off0.i = phi i8 [ %extract.t200.le.i, %jf.then_L194.loopexit.split.loop.exit.i ], [ %extract.t.le.i, %jf.then_L194.loopexit.split.loop.exit201.i ], [ 0, %jt.then_L190.i ]
  store i8 %STK5.2.off0.i, ptr %stack.vec, align 8
  %lg.value518 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn521 = inttoptr i64 %lg.value518 to ptr
  %rtap523 = call i64 %rtap_ep_p_fn521(i64 %stack.bcpladdr)
  %rv.rv535 = load i64, ptr %rv.lv428, align 8
  %logand540 = and i64 %rv.rv535, 4
  %eq545 = icmp eq i64 %logand540, 0
  br i1 %eq545, label %jt.then_L236, label %jt.else550

jt.else550:                                       ; preds = %getkeylen.exit
  %lstr.bcpladdr551 = ashr exact i64 ptrtoint (ptr @lstr.global.30 to i64), 3
  %lg.value553 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn556 = inttoptr i64 %lg.value553 to ptr
  %rtap558 = call i64 %rtap_ep_p_fn556(i64 %lstr.bcpladdr551)
  br label %jt.then_L236

jt.then_L236:                                     ; preds = %jt.else550, %getkeylen.exit
  %lstr.bcpladdr559 = ashr exact i64 ptrtoint (ptr @lstr.global.31 to i64), 3
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
    i64 4, label %jf.then_L234
    i64 3, label %jf.then_L234
    i64 2, label %lab_L246
    i64 1, label %lab_L240
    i64 0, label %jf.then_L234
  ]

lab_L240:                                         ; preds = %jt.then_L236
  %logand598.mask = and i64 %rv.rv429, 4
  %if_cond606 = icmp eq i64 %logand598.mask, 0
  br i1 %if_cond606, label %jf.then_L241, label %jf.else607

jf.else607:                                       ; preds = %lab_L240
  %add615 = add i64 %STK403.0, %2
  %stind.llvmaddr619 = shl i64 %add615, 3
  %stind.lv620 = inttoptr i64 %stind.llvmaddr619 to ptr
  store i64 0, ptr %stind.lv620, align 8
  %lstr.bcpladdr623 = ashr exact i64 ptrtoint (ptr @lstr.global.32 to i64), 3
  %lg.value625 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 784), align 4
  %rtap_ep_p_fn628 = inttoptr i64 %lg.value625 to ptr
  %fnap631 = call i64 %rtap_ep_p_fn628(i64 %STK4.1, i64 %lstr.bcpladdr623)
  %eq636 = icmp eq i64 %fnap631, 0
  br i1 %eq636, label %jt.then_L243, label %jt.else641

jt.else641:                                       ; preds = %jf.else607
  %lstr.bcpladdr644 = ashr exact i64 ptrtoint (ptr @lstr.global.33 to i64), 3
  %lg.value646 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 784), align 4
  %rtap_ep_p_fn649 = inttoptr i64 %lg.value646 to ptr
  %fnap652 = call i64 %rtap_ep_p_fn649(i64 %STK4.1, i64 %lstr.bcpladdr644)
  %eq657.not = icmp eq i64 %fnap652, 0
  br i1 %eq657.not, label %jt.then_L243, label %jf.then_L242

jt.then_L243:                                     ; preds = %jt.else641, %jf.else607
  store i64 -1, ptr %stind.lv620, align 8
  br label %jf.then_L242

jf.then_L242:                                     ; preds = %jt.then_L243, %jt.else641
  %rv.rv687 = load i64, ptr %rv.lv428, align 8
  %logor692 = or i64 %rv.rv687, 32
  store i64 %logor692, ptr %rv.lv428, align 8
  br label %goto.phi.bb

jf.then_L241:                                     ; preds = %lab_L240
  %logand715.mask = and i64 %rv.rv429, 8
  %if_cond724 = icmp eq i64 %logand715.mask, 0
  br i1 %if_cond724, label %lab_L246, label %jf.else725

jf.else725:                                       ; preds = %jf.then_L241
  %add734 = add i64 %STK403.0, %2
  %stind.llvmaddr738 = shl i64 %add734, 3
  %stind.lv739 = inttoptr i64 %stind.llvmaddr738 to ptr
  store i64 %STK4.1, ptr %stind.lv739, align 8
  %lg.value742 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 800), align 4
  %rtap_ep_p_fn745 = inttoptr i64 %lg.value742 to ptr
  %fnap747 = call i64 %rtap_ep_p_fn745(i64 %STK4.1)
  %if_cond750.not = icmp eq i64 %fnap747, 0
  br i1 %if_cond750.not, label %goto.phi.bb, label %jt.then_L245

jt.then_L245:                                     ; preds = %jf.else725
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

lab_L246:                                         ; preds = %jf.then_L241, %jt.then_L236
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
  br label %lf_L235

lf_L235:                                          ; preds = %goto.phi.bb, %lab_L246
  %STK405.1 = phi i64 [ %STK405.4, %goto.phi.bb ], [ %STK405.0, %lab_L246 ]
  %STK403.1 = phi i64 [ %STK403.4, %goto.phi.bb ], [ %STK403.0, %lab_L246 ]
  %STK372.1 = phi i64 [ %STK372.4, %goto.phi.bb ], [ %sub911, %lab_L246 ]
  %STK5.4 = phi i64 [ %STK5.7, %goto.phi.bb ], [ %STK5.3, %lab_L246 ]
  %STK4.2 = phi i64 [ %STK4.5, %goto.phi.bb ], [ %add896, %lab_L246 ]
  %lg.value914 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn917 = inttoptr i64 %lg.value914 to ptr
  %rtap918 = call i64 %rtap_ep_p_fn917()
  br label %lab_L247

lab_L247:                                         ; preds = %lab_L247, %lf_L235
  %lg.value919 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn922 = inttoptr i64 %lg.value919 to ptr
  %fnap923 = call i64 %rtap_ep_p_fn922()
  switch i64 %fnap923, label %lab_L247 [
    i64 10, label %jf.then_L234.loopexit
    i64 59, label %jf.then_L234.loopexit
    i64 -1, label %jf.then_L234.loopexit
  ]

jf.then_L234.loopexit:                            ; preds = %lab_L247, %lab_L247, %lab_L247
  br label %jf.then_L234

jf.then_L234:                                     ; preds = %jf.then_L234.loopexit, %jt.then_L236, %jt.then_L236, %jt.then_L236, %jf.else478, %jf.else457, %lab_L231
  %STK405.2 = phi i64 [ %STK405.0, %lab_L231 ], [ %STK405.0, %jf.else457 ], [ %STK405.0, %jf.else478 ], [ %STK405.0, %jt.then_L236 ], [ %STK405.0, %jt.then_L236 ], [ %STK405.0, %jt.then_L236 ], [ %STK405.1, %jf.then_L234.loopexit ]
  %STK403.2 = phi i64 [ %STK403.0, %lab_L231 ], [ %STK403.0, %jf.else457 ], [ %STK403.0, %jf.else478 ], [ %STK403.0, %jt.then_L236 ], [ %STK403.0, %jt.then_L236 ], [ %STK403.0, %jt.then_L236 ], [ %STK403.1, %jf.then_L234.loopexit ]
  %STK372.2 = phi i64 [ %STK372.0, %lab_L231 ], [ %STK372.0, %jf.else457 ], [ %STK372.0, %jf.else478 ], [ %STK372.0, %jt.then_L236 ], [ %STK372.0, %jt.then_L236 ], [ %STK372.0, %jt.then_L236 ], [ %STK372.1, %jf.then_L234.loopexit ]
  %STK5.5 = phi i64 [ %STK5.3, %lab_L231 ], [ %STK5.3, %jf.else457 ], [ %STK5.3, %jf.else478 ], [ %STK5.3, %jt.then_L236 ], [ %STK5.3, %jt.then_L236 ], [ %STK5.3, %jt.then_L236 ], [ %STK5.4, %jf.then_L234.loopexit ]
  %STK4.3 = phi i64 [ %STK4.1, %lab_L231 ], [ %STK4.1, %jf.else457 ], [ %STK4.1, %jf.else478 ], [ %STK4.1, %jt.then_L236 ], [ %STK4.1, %jt.then_L236 ], [ %STK4.1, %jt.then_L236 ], [ %STK4.2, %jf.then_L234.loopexit ]
  %add974 = add i64 %STK403.2, 1
  %le983.not = icmp sgt i64 %add974, %STK405.2
  br i1 %le983.not, label %jt.then_L232, label %lab_L231

jt.then_L232:                                     ; preds = %jf.then_L234
  %gr998 = icmp slt i64 %STK5.5, 0
  br i1 %gr998, label %jt.then_L253, label %lab_L252

lab_L252:                                         ; preds = %jt.then_L232, %lab_L255
  %STK989.0 = phi i64 [ %add1040, %lab_L255 ], [ 0, %jt.then_L232 ]
  %add1010 = add i64 %STK989.0, %stack.bcpladdr10
  %rv.llvmaddr1013 = shl i64 %add1010, 3
  %rv.lv1014 = inttoptr i64 %rv.llvmaddr1013 to ptr
  %rv.rv1015 = load i64, ptr %rv.lv1014, align 8
  %logand1020 = and i64 %rv.rv1015, 33
  %eq1025.not = icmp eq i64 %logand1020, 1
  br i1 %eq1025.not, label %goto.phi.bb, label %lab_L255

lab_L255:                                         ; preds = %lab_L252
  %add1040 = add i64 %STK989.0, 1
  %le1049.not = icmp sgt i64 %add1040, %STK5.5
  br i1 %le1049.not, label %jt.then_L253, label %lab_L252

jt.then_L253:                                     ; preds = %lab_L255, %lab_L230, %jt.then_L232
  %STK4.41898 = phi i64 [ %STK4.3, %jt.then_L232 ], [ %STK4.0.ph, %lab_L230 ], [ %STK4.3, %lab_L255 ]
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

lab_L257:                                         ; preds = %lab_L225
  br i1 %gr, label %jf.else191.i, label %lab_L315.i

lab_L315.i:                                       ; preds = %lab_L257, %jf.then_L319.i
  %STK6.0.i = phi i64 [ %add167.i, %jf.then_L319.i ], [ 1, %lab_L257 ]
  %STK5.0.i1880 = phi i64 [ %STK5.1.i1887, %jf.then_L319.i ], [ 0, %lab_L257 ]
  %STK4.0.i1881 = phi i64 [ %STK4.2.i1886, %jf.then_L319.i ], [ 0, %lab_L257 ]
  %STK3.0.i = phi i64 [ %STK3.2.i, %jf.then_L319.i ], [ 0, %lab_L257 ]
  %getbyte.charptr.i1882 = getelementptr i8, ptr %getbyte.string.i1879, i64 %STK6.0.i
  %getbyte.char.i1883 = load i8, ptr %getbyte.charptr.i1882, align 1
  %getbyte.charword.i = zext i8 %getbyte.char.i1883 to i64
  %eq.not.i1884 = icmp eq i64 %STK3.0.i, 0
  br i1 %eq.not.i1884, label %jf.else.i1889, label %jf.then_L319.i

jf.else.i1889:                                    ; preds = %lab_L315.i
  switch i8 %getbyte.char.i1883, label %jf.then_L320.i [
    i8 61, label %jt.then_L321.i
    i8 47, label %jt.then_L321.i
    i8 44, label %jt.then_L321.i
  ]

jt.then_L321.i:                                   ; preds = %jf.else.i1889, %jf.else.i1889, %jf.else.i1889
  %getbyte.char68.i = load i8, ptr %getbyte.string66.i, align 8
  %getbyte.charword69.i = zext i8 %getbyte.char68.i to i64
  %eq75.not.i = icmp eq i64 %STK4.0.i1881, %getbyte.charword69.i
  br i1 %eq75.not.i, label %findarglen.exit, label %jf.then_L320.i

jf.then_L320.i:                                   ; preds = %jt.then_L321.i, %jf.else.i1889
  %add.i1890 = add i64 %STK4.0.i1881, 1
  %getbyte.charptr99.i = getelementptr i8, ptr %getbyte.string66.i, i64 %add.i1890
  %getbyte.char100.i = load i8, ptr %getbyte.charptr99.i, align 1
  %getbyte.charword101.i = zext i8 %getbyte.char100.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = call i64 %rtap_ep_p_fn.i(i64 %getbyte.charword.i, i64 %getbyte.charword101.i)
  %eq109.i = icmp ne i64 %fnap.i, 0
  %spec.select.i1891 = zext i1 %eq109.i to i64
  br label %jf.then_L319.i

jf.then_L319.i:                                   ; preds = %jf.then_L320.i, %lab_L315.i
  %STK4.1.i1885 = phi i64 [ %STK4.0.i1881, %lab_L315.i ], [ %add.i1890, %jf.then_L320.i ]
  %STK3.1.i = phi i64 [ %STK3.0.i, %lab_L315.i ], [ %spec.select.i1891, %jf.then_L320.i ]
  %eq122.not.i = icmp eq i8 %getbyte.char.i1883, 44
  %eq133.not.i = icmp eq i8 %getbyte.char.i1883, 61
  %or.cond.i = or i1 %eq122.not.i, %eq133.not.i
  %STK4.2.i1886 = select i1 %or.cond.i, i64 0, i64 %STK4.1.i1885
  %STK3.2.i = select i1 %or.cond.i, i64 0, i64 %STK3.1.i
  %add159.i = zext i1 %eq122.not.i to i64
  %STK5.1.i1887 = add i64 %STK5.0.i1880, %add159.i
  %add167.i = add i64 %STK6.0.i, 1
  %le.not.i1888 = icmp sgt i64 %add167.i, %1
  br i1 %le.not.i1888, label %jt.then_L316.i, label %lab_L315.i

jt.then_L316.i:                                   ; preds = %jf.then_L319.i
  %eq186.not.i = icmp eq i64 %STK3.2.i, 0
  br i1 %eq186.not.i, label %jf.else191.i, label %jf.then_L258

jf.else191.i:                                     ; preds = %lab_L257, %jt.then_L316.i
  %STK4.3241.i = phi i64 [ %STK4.2.i1886, %jt.then_L316.i ], [ 0, %lab_L257 ]
  %STK5.2240.i = phi i64 [ %STK5.1.i1887, %jt.then_L316.i ], [ 0, %lab_L257 ]
  %getbyte.char200.i = load i8, ptr %getbyte.string66.i, align 8
  %getbyte.charword201.i = zext i8 %getbyte.char200.i to i64
  %eq207.not.i = icmp eq i64 %STK4.3241.i, %getbyte.charword201.i
  br i1 %eq207.not.i, label %findarglen.exit, label %jf.then_L258

findarglen.exit:                                  ; preds = %jt.then_L321.i, %jf.else191.i
  %common.ret.op.i = phi i64 [ %STK5.2240.i, %jf.else191.i ], [ %STK5.0.i1880, %jt.then_L321.i ]
  %ge = icmp slt i64 %common.ret.op.i, 0
  br i1 %ge, label %jf.then_L258, label %jf.else1084

jf.else1084:                                      ; preds = %findarglen.exit
  %add1091 = add i64 %common.ret.op.i, %stack.bcpladdr10
  %rv.llvmaddr1094 = shl i64 %add1091, 3
  %rv.lv1095 = inttoptr i64 %rv.llvmaddr1094 to ptr
  %rv.rv1096 = load i64, ptr %rv.lv1095, align 8
  %logand1101.mask = and i64 %rv.rv1096, 32
  %if_cond1110 = icmp eq i64 %logand1101.mask, 0
  br i1 %if_cond1110, label %jf.then_L260, label %goto.phi.bb.loopexit1977

jf.then_L260:                                     ; preds = %jf.else1084
  %logand1132.mask = and i64 %rv.rv1096, 4
  %if_cond1141 = icmp eq i64 %logand1132.mask, 0
  br i1 %if_cond1141, label %jf.then_L261, label %jf.else1142

jf.else1142:                                      ; preds = %jf.then_L260
  %add1150 = add i64 %common.ret.op.i, %2
  %stind.llvmaddr1154 = shl i64 %add1150, 3
  %stind.lv1155 = inttoptr i64 %stind.llvmaddr1154 to ptr
  store i64 -1, ptr %stind.lv1155, align 8
  %rv.rv1167 = load i64, ptr %rv.lv1095, align 8
  %logor1172 = or i64 %rv.rv1167, 32
  store i64 %logor1172, ptr %rv.lv1095, align 8
  br label %lab_L225.backedge

lab_L225.backedge:                                ; preds = %jf.else1142, %jt.then_L267
  br label %lab_L225

jf.then_L261:                                     ; preds = %jf.then_L260
  %lg.value1191 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn1194 = inttoptr i64 %lg.value1191 to ptr
  %fnap1197 = call i64 %rtap_ep_p_fn1194(i64 %STK4.0.ph, i64 %sub371)
  %eq1204.not = icmp eq i64 %fnap1197, 5
  br i1 %eq1204.not, label %jf.else1209, label %jf.then_L262

jf.else1209:                                      ; preds = %jf.then_L261
  %lg.value1214 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 824), align 4
  %rtap_ep_p_fn1217 = inttoptr i64 %lg.value1214 to ptr
  %fnap1220 = call i64 %rtap_ep_p_fn1217(i64 %STK4.0.ph, i64 %sub371)
  br label %jf.then_L262

jf.then_L262:                                     ; preds = %jf.else1209, %jf.then_L261
  %STK1198.0 = phi i64 [ %fnap1197, %jf.then_L261 ], [ %fnap1220, %jf.else1209 ]
  %STK1198.0.off = add i64 %STK1198.0, -1
  %switch = icmp ult i64 %STK1198.0.off, 2
  br i1 %switch, label %jt.then_L277, label %goto.phi.bb.loopexit1978

jf.then_L258:                                     ; preds = %jf.else191.i, %jt.then_L316.i, %findarglen.exit
  %common.ret.op.i1901 = phi i64 [ %common.ret.op.i, %findarglen.exit ], [ -1, %jt.then_L316.i ], [ -1, %jf.else191.i ]
  %lg.value1250 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn1253 = inttoptr i64 %lg.value1250 to ptr
  %fnap1254 = call i64 %rtap_ep_p_fn1253()
  %eq1259.not = icmp eq i64 %fnap1254, 10
  br i1 %eq1259.not, label %jf.else1264, label %jf.then_L264

jf.else1264:                                      ; preds = %jf.then_L258
  %lg.value1269 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 784), align 4
  %rtap_ep_p_fn1272 = inttoptr i64 %lg.value1269 to ptr
  %fnap1275 = call i64 %rtap_ep_p_fn1272(i64 %lstr.bcpladdr1265, i64 %STK4.0.ph)
  %eq1280.not = icmp eq i64 %fnap1275, 0
  br i1 %eq1280.not, label %jf.else1285, label %jf.then_L264

jf.else1285:                                      ; preds = %jf.else1264
  br i1 %gr, label %jt.then_L267, label %lab_L266

lab_L266:                                         ; preds = %jf.else1285, %lab_L266
  %STK1286.0 = phi i64 [ %add1324, %lab_L266 ], [ 1, %jf.else1285 ]
  %getbyte.charptr1309 = getelementptr i8, ptr %getbyte.string.i1879, i64 %STK1286.0
  %getbyte.char1310 = load i8, ptr %getbyte.charptr1309, align 1
  %getbyte.charword1311 = zext i8 %getbyte.char1310 to i64
  %lg.value1313 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 328), align 4
  %rtap_ep_p_fn1316 = inttoptr i64 %lg.value1313 to ptr
  %rtap1318 = call i64 %rtap_ep_p_fn1316(i64 %getbyte.charword1311)
  %add1324 = add i64 %STK1286.0, 1
  %le1333.not = icmp sgt i64 %add1324, %1
  br i1 %le1333.not, label %jt.then_L267, label %lab_L266

jt.then_L267:                                     ; preds = %lab_L266, %jf.else1285
  %lg.value1341 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 712), align 4
  %rtap_ep_p_fn1344 = inttoptr i64 %lg.value1341 to ptr
  %rtap1346 = call i64 %rtap_ep_p_fn1344(i64 %lstr.bcpladdr1339)
  %lg.value1347 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 104), align 4
  %lg.value1349 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 344), align 4
  %rtap_ep_p_fn1352 = inttoptr i64 %lg.value1349 to ptr
  %rtap1354 = call i64 %rtap_ep_p_fn1352(i64 %lg.value1347)
  br label %lab_L225.backedge

jf.then_L264:                                     ; preds = %jf.else1264, %jf.then_L258
  %lg.value1356 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn1359 = inttoptr i64 %lg.value1356 to ptr
  %rtap1360 = call i64 %rtap_ep_p_fn1359()
  br label %lab_L270

lab_L270:                                         ; preds = %lab_L225, %jf.then_L264
  %STK359.0 = phi i64 [ %common.ret.op.i1901, %jf.then_L264 ], [ -1, %lab_L225 ]
  br i1 %gr2891948, label %goto.phi.bb.loopexit1978, label %lab_L272

lab_L272:                                         ; preds = %lab_L270, %lab_L275
  %STK1371.0 = phi i64 [ %add1422, %lab_L275 ], [ 0, %lab_L270 ]
  %add1392 = add i64 %STK1371.0, %stack.bcpladdr10
  %rv.llvmaddr1395 = shl i64 %add1392, 3
  %rv.lv1396 = inttoptr i64 %rv.llvmaddr1395 to ptr
  %rv.rv1397 = load i64, ptr %rv.lv1396, align 8
  %logand1402 = and i64 %rv.rv1397, 38
  %eq1407.not = icmp eq i64 %logand1402, 0
  br i1 %eq1407.not, label %jf.then_L271, label %lab_L275

lab_L275:                                         ; preds = %lab_L272
  %add1422 = add i64 %STK1371.0, 1
  %le1431.not = icmp sgt i64 %add1422, %STK5.21945
  br i1 %le1431.not, label %jf.then_L271, label %lab_L272

jf.then_L271:                                     ; preds = %lab_L272, %lab_L275
  %STK359.1 = phi i64 [ %STK359.0, %lab_L275 ], [ %STK1371.0, %lab_L272 ]
  %ge1442 = icmp sgt i64 %STK359.1, -1
  br i1 %ge1442, label %jf.then_L271.jt.then_L277_crit_edge, label %goto.phi.bb.loopexit1978

jf.then_L271.jt.then_L277_crit_edge:              ; preds = %jf.then_L271
  %.pre = add i64 %STK359.1, %stack.bcpladdr10
  %.pre1940 = shl i64 %.pre, 3
  %.pre1941 = inttoptr i64 %.pre1940 to ptr
  br label %jt.then_L277

jt.then_L277:                                     ; preds = %jf.then_L271.jt.then_L277_crit_edge, %jf.then_L262
  %rv.lv1462.pre-phi = phi ptr [ %.pre1941, %jf.then_L271.jt.then_L277_crit_edge ], [ %rv.lv1095, %jf.then_L262 ]
  %STK359.11907 = phi i64 [ %STK359.1, %jf.then_L271.jt.then_L277_crit_edge ], [ %common.ret.op.i, %jf.then_L262 ]
  %rv.rv1463 = load i64, ptr %rv.lv1462.pre-phi, align 4
  %logand1468.mask = and i64 %rv.rv1463, 32
  %if_cond1477 = icmp eq i64 %logand1468.mask, 0
  br i1 %if_cond1477, label %jf.then_L278, label %goto.phi.bb.loopexit1978

jf.then_L278:                                     ; preds = %jt.then_L277
  %logand1499.mask = and i64 %rv.rv1463, 8
  %if_cond1508 = icmp eq i64 %logand1499.mask, 0
  br i1 %if_cond1508, label %jf.then_L279, label %jf.else1509

jf.else1509:                                      ; preds = %jf.then_L278
  %lg.value1512 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 800), align 4
  %rtap_ep_p_fn1515 = inttoptr i64 %lg.value1512 to ptr
  %fnap1517 = call i64 %rtap_ep_p_fn1515(i64 %STK4.0.ph)
  %if_cond1520.not = icmp eq i64 %fnap1517, 0
  br i1 %if_cond1520.not, label %goto.phi.bb.loopexit1978, label %jt.then_L280

jt.then_L280:                                     ; preds = %jf.else1509
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
  br label %lab_L225.outer.backedge

jf.then_L279:                                     ; preds = %jf.then_L278
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
  br label %lab_L225.outer.backedge

lab_L225.outer.backedge:                          ; preds = %jf.then_L279, %jt.then_L280
  %STK4.0.ph.be = phi i64 [ %add1583, %jt.then_L280 ], [ %add1656, %jf.then_L279 ]
  br label %lab_L225.outer

lf_L204:                                          ; preds = %goto.phi.bb
  %lg.value1664 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 320), align 4
  %rtap_ep_p_fn1667 = inttoptr i64 %lg.value1664 to ptr
  %rtap1668 = call i64 %rtap_ep_p_fn1667()
  br label %lab_L281

lab_L281:                                         ; preds = %lab_L281, %lf_L204
  %lg.value1669 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn1672 = inttoptr i64 %lg.value1669 to ptr
  %fnap1673 = call i64 %rtap_ep_p_fn1672()
  switch i64 %fnap1673, label %lab_L281 [
    i64 10, label %lab_L282
    i64 59, label %lab_L282
    i64 -1, label %lab_L282
  ]

lab_L282:                                         ; preds = %lab_L281, %lab_L281, %lab_L281
  store i64 120, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

goto.phi.bb.loopexit1977:                         ; preds = %lab_L225, %jf.else1084
  br label %goto.phi.bb

goto.phi.bb.loopexit1978:                         ; preds = %lab_L270, %jf.then_L271, %jt.then_L277, %jf.else1509, %jf.then_L262
  br label %goto.phi.bb

goto.phi.bb:                                      ; preds = %jf.else, %lab_L220, %lab_L252, %goto.phi.bb.loopexit1978, %goto.phi.bb.loopexit1977, %jt.then_L236, %jf.else725, %jt.then_L245, %jf.then_L242
  %STK405.4 = phi i64 [ %STK405.0, %jt.then_L245 ], [ %STK405.0, %jf.then_L242 ], [ %STK405.0, %jf.else725 ], [ %STK405.0, %jt.then_L236 ], [ undef, %goto.phi.bb.loopexit1977 ], [ undef, %goto.phi.bb.loopexit1978 ], [ %STK405.2, %lab_L252 ], [ undef, %lab_L220 ], [ undef, %jf.else ]
  %STK403.4 = phi i64 [ %STK403.0, %jt.then_L245 ], [ %STK403.0, %jf.then_L242 ], [ %STK403.0, %jf.else725 ], [ %STK403.0, %jt.then_L236 ], [ undef, %goto.phi.bb.loopexit1977 ], [ undef, %goto.phi.bb.loopexit1978 ], [ %add974, %lab_L252 ], [ undef, %lab_L220 ], [ undef, %jf.else ]
  %STK372.4 = phi i64 [ %sub821, %jt.then_L245 ], [ %STK372.0, %jf.then_L242 ], [ %STK372.0, %jf.else725 ], [ %STK372.0, %jt.then_L236 ], [ %sub371, %goto.phi.bb.loopexit1977 ], [ %sub371, %goto.phi.bb.loopexit1978 ], [ %STK372.2, %lab_L252 ], [ undef, %lab_L220 ], [ undef, %jf.else ]
  %STK5.7 = phi i64 [ %STK5.3, %jt.then_L245 ], [ %STK5.3, %jf.then_L242 ], [ %STK5.3, %jf.else725 ], [ %STK5.3, %jt.then_L236 ], [ %STK5.21945, %goto.phi.bb.loopexit1977 ], [ %STK5.21945, %goto.phi.bb.loopexit1978 ], [ %STK5.5, %lab_L252 ], [ %STK5.21944, %lab_L220 ], [ %STK5.0, %jf.else ]
  %STK4.5 = phi i64 [ %add813, %jt.then_L245 ], [ %STK4.1, %jf.then_L242 ], [ %STK4.1, %jf.else725 ], [ %STK4.1, %jt.then_L236 ], [ %STK4.0.ph, %goto.phi.bb.loopexit1977 ], [ %STK4.0.ph, %goto.phi.bb.loopexit1978 ], [ %STK4.3, %lab_L252 ], [ 0, %lab_L220 ], [ 0, %jf.else ]
  %goto.phi = phi ptr [ blockaddress(@rdargslen, %lf_L235), %jt.then_L245 ], [ blockaddress(@rdargslen, %lf_L235), %jf.then_L242 ], [ blockaddress(@rdargslen, %lf_L204), %jf.else725 ], [ blockaddress(@rdargslen, %lf_L204), %jt.then_L236 ], [ blockaddress(@rdargslen, %lf_L204), %goto.phi.bb.loopexit1977 ], [ blockaddress(@rdargslen, %lf_L204), %goto.phi.bb.loopexit1978 ], [ blockaddress(@rdargslen, %lf_L204), %lab_L252 ], [ blockaddress(@rdargslen, %lf_L204), %lab_L220 ], [ blockaddress(@rdargslen, %lf_L204), %jf.else ]
  indirectbr ptr %goto.phi, [label %lf_L235, label %lf_L204]
}

define range(i64 -1, 6) i64 @rditem(i64 %0, i64 %1) section ".text.blib" {
entry:
  %add = shl i64 %1, 3
  %sub = or disjoint i64 %add, 7
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn()
  %gr = icmp slt i64 %1, 0
  br i1 %gr, label %jt.then_L286, label %lab_L285

lab_L285:                                         ; preds = %entry, %lab_L285
  %STK17.0 = phi i64 [ %add41, %lab_L285 ], [ 0, %entry ]
  %add34 = add i64 %STK17.0, %0
  %stind.llvmaddr = shl i64 %add34, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 0, ptr %stind.lv, align 8
  %add41 = add i64 %STK17.0, 1
  %le.not = icmp sgt i64 %add41, %1
  br i1 %le.not, label %jt.then_L286, label %lab_L285

jt.then_L286:                                     ; preds = %lab_L285, %entry
  switch i64 %fnap, label %jf.then_L291 [
    i64 32, label %lab_L289.preheader
    i64 9, label %lab_L289.preheader
    i64 13, label %lab_L289.preheader
  ]

lab_L289.preheader:                               ; preds = %jt.then_L286, %jt.then_L286, %jt.then_L286
  br label %lab_L289

lab_L289:                                         ; preds = %lab_L289.backedge, %lab_L289.preheader
  %lg.value85 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn88 = inttoptr i64 %lg.value85 to ptr
  %fnap89 = tail call i64 %rtap_ep_p_fn88()
  switch i64 %fnap89, label %jf.then_L291 [
    i64 32, label %lab_L289.backedge
    i64 9, label %lab_L289.backedge
    i64 13, label %lab_L289.backedge
  ]

lab_L289.backedge:                                ; preds = %lab_L289, %lab_L289, %lab_L289
  br label %lab_L289

jf.then_L291:                                     ; preds = %lab_L289, %jt.then_L286
  %STK15.0 = phi i64 [ %fnap, %jt.then_L286 ], [ %fnap89, %lab_L289 ]
  switch i64 %STK15.0, label %jt.else393 [
    i64 -1, label %common.ret
    i64 10, label %jf.else147
    i64 59, label %jf.else160
    i64 61, label %jf.else173
    i64 34, label %lab_L298.preheader
  ]

lab_L298.preheader:                               ; preds = %jf.then_L291
  %putbyte.llvmaddr = shl i64 %0, 3
  %putbyte.string = inttoptr i64 %putbyte.llvmaddr to ptr
  br label %lab_L298.outer

common.ret:                                       ; preds = %jf.then_L302, %lab_L298, %lab_L298, %jt.else524, %lab_L306, %jt.else546, %jf.then_L291, %jf.else239, %jf.else173, %jf.else160, %jf.else147
  %common.ret.op = phi i64 [ 3, %jf.else147 ], [ 4, %jf.else160 ], [ 5, %jf.else173 ], [ 2, %jf.else239 ], [ 0, %jf.then_L291 ], [ 1, %jt.else546 ], [ 1, %jt.else524 ], [ -1, %lab_L306 ], [ -1, %lab_L298 ], [ -1, %lab_L298 ], [ -1, %jf.then_L302 ]
  ret i64 %common.ret.op

jf.else147:                                       ; preds = %jf.then_L291
  br label %common.ret

jf.else160:                                       ; preds = %jf.then_L291
  br label %common.ret

jf.else173:                                       ; preds = %jf.then_L291
  br label %common.ret

lab_L298:                                         ; preds = %lab_L298.outer, %lab_L298
  %lg.value187 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn190 = inttoptr i64 %lg.value187 to ptr
  %fnap191 = tail call i64 %rtap_ep_p_fn190()
  switch i64 %fnap191, label %jf.then_L301 [
    i64 13, label %lab_L298
    i64 10, label %common.ret
    i64 -1, label %common.ret
    i64 34, label %jf.else239
  ]

jf.else239:                                       ; preds = %lab_L298
  br label %common.ret

jf.then_L301:                                     ; preds = %lab_L298
  %eq247.not = icmp eq i64 %fnap191, 42
  %extract.t = trunc i64 %fnap191 to i8
  br i1 %eq247.not, label %jf.else252, label %jf.then_L302

jf.else252:                                       ; preds = %jf.then_L301
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
  br label %jf.then_L302

jf.then_L302:                                     ; preds = %jf.else252, %jf.then_L301
  %STK15.2.off0 = phi i8 [ %extract.t, %jf.then_L301 ], [ %spec.select606, %jf.else252 ]
  %add304 = add i64 %STK2.0.ph, 1
  %gr313.not = icmp sgt i64 %add304, %sub
  br i1 %gr313.not, label %common.ret, label %jf.then_L305

jf.then_L305:                                     ; preds = %jf.then_L302
  %putbyte.char = trunc i64 %add304 to i8
  store i8 %putbyte.char, ptr %putbyte.string, align 8
  %putbyte.charptr338 = getelementptr i8, ptr %putbyte.string, i64 %add304
  store i8 %STK15.2.off0, ptr %putbyte.charptr338, align 1
  br label %lab_L298.outer

lab_L298.outer:                                   ; preds = %lab_L298.preheader, %jf.then_L305
  %STK2.0.ph = phi i64 [ 0, %lab_L298.preheader ], [ %add304, %jf.then_L305 ]
  br label %lab_L298

jt.else393:                                       ; preds = %jf.then_L291
  %extract.t604 = trunc i64 %STK15.0 to i8
  %putbyte.llvmaddr436 = shl i64 %0, 3
  %putbyte.string437 = inttoptr i64 %putbyte.llvmaddr436 to ptr
  br label %lab_L306

lab_L306:                                         ; preds = %jt.else393, %jt.else524
  %STK15.3.off0 = phi i8 [ %extract.t604, %jt.else393 ], [ %extract.t605, %jt.else524 ]
  %STK2.1 = phi i64 [ 0, %jt.else393 ], [ %add410, %jt.else524 ]
  %add410 = add i64 %STK2.1, 1
  %gr419.not = icmp sgt i64 %add410, %sub
  br i1 %gr419.not, label %common.ret, label %jf.then_L309

jf.then_L309:                                     ; preds = %lab_L306
  %putbyte.char435 = trunc i64 %add410 to i8
  store i8 %putbyte.char435, ptr %putbyte.string437, align 8
  %putbyte.charptr451 = getelementptr i8, ptr %putbyte.string437, i64 %add410
  store i8 %STK15.3.off0, ptr %putbyte.charptr451, align 1
  br label %lab_L310

lab_L310:                                         ; preds = %lab_L310, %jf.then_L309
  %lg.value452 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 304), align 4
  %rtap_ep_p_fn455 = inttoptr i64 %lg.value452 to ptr
  %fnap456 = tail call i64 %rtap_ep_p_fn455()
  switch i64 %fnap456, label %jt.else524 [
    i64 13, label %lab_L310
    i64 10, label %jt.else546
    i64 32, label %jt.else546
    i64 9, label %jt.else546
    i64 59, label %jt.else546
    i64 61, label %jt.else546
  ]

jt.else524:                                       ; preds = %lab_L310
  %eq530.not = icmp eq i64 %fnap456, -1
  %extract.t605 = trunc i64 %fnap456 to i8
  br i1 %eq530.not, label %common.ret, label %lab_L306

jt.else546:                                       ; preds = %lab_L310, %lab_L310, %lab_L310, %lab_L310, %lab_L310
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
  br i1 %gr.i, label %jf.else191.i, label %lab_L315.i

lab_L315.i:                                       ; preds = %entry, %jf.then_L319.i
  %STK6.0.i = phi i64 [ %add167.i, %jf.then_L319.i ], [ 1, %entry ]
  %STK5.0.i = phi i64 [ %STK5.1.i, %jf.then_L319.i ], [ 0, %entry ]
  %STK4.0.i = phi i64 [ %STK4.2.i, %jf.then_L319.i ], [ 0, %entry ]
  %STK3.0.i = phi i64 [ %STK3.2.i, %jf.then_L319.i ], [ 0, %entry ]
  %getbyte.charptr.i = getelementptr i8, ptr %getbyte.string, i64 %STK6.0.i
  %getbyte.char.i = load i8, ptr %getbyte.charptr.i, align 1
  %getbyte.charword.i = zext i8 %getbyte.char.i to i64
  %eq.not.i = icmp eq i64 %STK3.0.i, 0
  br i1 %eq.not.i, label %jf.else.i, label %jf.then_L319.i

jf.else.i:                                        ; preds = %lab_L315.i
  switch i8 %getbyte.char.i, label %jf.then_L320.i [
    i8 61, label %jt.then_L321.i
    i8 47, label %jt.then_L321.i
    i8 44, label %jt.then_L321.i
  ]

jt.then_L321.i:                                   ; preds = %jf.else.i, %jf.else.i, %jf.else.i
  %getbyte.char68.i = load i8, ptr %.pre244.i, align 8
  %getbyte.charword69.i = zext i8 %getbyte.char68.i to i64
  %eq75.not.i = icmp eq i64 %STK4.0.i, %getbyte.charword69.i
  br i1 %eq75.not.i, label %findarglen.exit, label %jf.then_L320.i

jf.then_L320.i:                                   ; preds = %jt.then_L321.i, %jf.else.i
  %add.i = add i64 %STK4.0.i, 1
  %getbyte.charptr99.i = getelementptr i8, ptr %.pre244.i, i64 %add.i
  %getbyte.char100.i = load i8, ptr %getbyte.charptr99.i, align 1
  %getbyte.charword101.i = zext i8 %getbyte.char100.i to i64
  %lg.value.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn.i = inttoptr i64 %lg.value.i to ptr
  %fnap.i = tail call i64 %rtap_ep_p_fn.i(i64 %getbyte.charword.i, i64 %getbyte.charword101.i)
  %eq109.i = icmp ne i64 %fnap.i, 0
  %spec.select.i = zext i1 %eq109.i to i64
  br label %jf.then_L319.i

jf.then_L319.i:                                   ; preds = %jf.then_L320.i, %lab_L315.i
  %STK4.1.i = phi i64 [ %STK4.0.i, %lab_L315.i ], [ %add.i, %jf.then_L320.i ]
  %STK3.1.i = phi i64 [ %STK3.0.i, %lab_L315.i ], [ %spec.select.i, %jf.then_L320.i ]
  %eq122.not.i = icmp eq i8 %getbyte.char.i, 44
  %eq133.not.i = icmp eq i8 %getbyte.char.i, 61
  %or.cond.i = or i1 %eq122.not.i, %eq133.not.i
  %STK4.2.i = select i1 %or.cond.i, i64 0, i64 %STK4.1.i
  %STK3.2.i = select i1 %or.cond.i, i64 0, i64 %STK3.1.i
  %add159.i = zext i1 %eq122.not.i to i64
  %STK5.1.i = add i64 %STK5.0.i, %add159.i
  %add167.i = add nuw nsw i64 %STK6.0.i, 1
  %le.not.i.not = icmp samesign ult i64 %STK6.0.i, %getbyte.charword
  br i1 %le.not.i.not, label %lab_L315.i, label %jt.then_L316.i

jt.then_L316.i:                                   ; preds = %jf.then_L319.i
  %eq186.not.i = icmp eq i64 %STK3.2.i, 0
  br i1 %eq186.not.i, label %jf.else191.i, label %jf.then_L326.i

jf.else191.i:                                     ; preds = %entry, %jt.then_L316.i
  %STK4.3241.i = phi i64 [ %STK4.2.i, %jt.then_L316.i ], [ 0, %entry ]
  %STK5.2240.i = phi i64 [ %STK5.1.i, %jt.then_L316.i ], [ 0, %entry ]
  %getbyte.char200.i = load i8, ptr %.pre244.i, align 8
  %getbyte.charword201.i = zext i8 %getbyte.char200.i to i64
  %eq207.not.i = icmp eq i64 %STK4.3241.i, %getbyte.charword201.i
  br i1 %eq207.not.i, label %findarglen.exit, label %jf.then_L326.i

jf.then_L326.i:                                   ; preds = %jf.else191.i, %jt.then_L316.i
  br label %findarglen.exit

findarglen.exit:                                  ; preds = %jt.then_L321.i, %jf.else191.i, %jf.then_L326.i
  %common.ret.op.i = phi i64 [ -1, %jf.then_L326.i ], [ %STK5.2240.i, %jf.else191.i ], [ %STK5.0.i, %jt.then_L321.i ]
  ret i64 %common.ret.op.i
}

define i64 @findarglen(i64 %0, i64 %1, i64 %2) local_unnamed_addr section ".text.blib" {
entry:
  %gr = icmp slt i64 %1, 1
  br i1 %gr, label %entry.jf.else191_crit_edge, label %lab_L315.preheader

entry.jf.else191_crit_edge:                       ; preds = %entry
  %.pre = shl i64 %2, 3
  %.pre244 = inttoptr i64 %.pre to ptr
  br label %jf.else191

lab_L315.preheader:                               ; preds = %entry
  %getbyte.llvmaddr = shl i64 %0, 3
  %getbyte.string = inttoptr i64 %getbyte.llvmaddr to ptr
  %getbyte.llvmaddr65 = shl i64 %2, 3
  %getbyte.string66 = inttoptr i64 %getbyte.llvmaddr65 to ptr
  br label %lab_L315

lab_L315:                                         ; preds = %lab_L315.preheader, %jf.then_L319
  %STK6.0 = phi i64 [ %add167, %jf.then_L319 ], [ 1, %lab_L315.preheader ]
  %STK5.0 = phi i64 [ %STK5.1, %jf.then_L319 ], [ 0, %lab_L315.preheader ]
  %STK4.0 = phi i64 [ %STK4.2, %jf.then_L319 ], [ 0, %lab_L315.preheader ]
  %STK3.0 = phi i64 [ %STK3.2, %jf.then_L319 ], [ 0, %lab_L315.preheader ]
  %getbyte.charptr = getelementptr i8, ptr %getbyte.string, i64 %STK6.0
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %getbyte.charword = zext i8 %getbyte.char to i64
  %eq.not = icmp eq i64 %STK3.0, 0
  br i1 %eq.not, label %jf.else, label %jf.then_L319

jf.else:                                          ; preds = %lab_L315
  switch i8 %getbyte.char, label %jf.then_L320 [
    i8 61, label %jt.then_L321
    i8 47, label %jt.then_L321
    i8 44, label %jt.then_L321
  ]

jt.then_L321:                                     ; preds = %jf.else, %jf.else, %jf.else
  %getbyte.char68 = load i8, ptr %getbyte.string66, align 8
  %getbyte.charword69 = zext i8 %getbyte.char68 to i64
  %eq75.not = icmp eq i64 %STK4.0, %getbyte.charword69
  br i1 %eq75.not, label %common.ret, label %jf.then_L320

common.ret:                                       ; preds = %jt.then_L321, %jf.else191, %jf.then_L326
  %common.ret.op = phi i64 [ -1, %jf.then_L326 ], [ %STK5.2240, %jf.else191 ], [ %STK5.0, %jt.then_L321 ]
  ret i64 %common.ret.op

jf.then_L320:                                     ; preds = %jf.else, %jt.then_L321
  %add = add i64 %STK4.0, 1
  %getbyte.charptr99 = getelementptr i8, ptr %getbyte.string66, i64 %add
  %getbyte.char100 = load i8, ptr %getbyte.charptr99, align 1
  %getbyte.charword101 = zext i8 %getbyte.char100 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 776), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword, i64 %getbyte.charword101)
  %eq109 = icmp ne i64 %fnap, 0
  %spec.select = zext i1 %eq109 to i64
  br label %jf.then_L319

jf.then_L319:                                     ; preds = %jf.then_L320, %lab_L315
  %STK4.1 = phi i64 [ %STK4.0, %lab_L315 ], [ %add, %jf.then_L320 ]
  %STK3.1 = phi i64 [ %STK3.0, %lab_L315 ], [ %spec.select, %jf.then_L320 ]
  %eq122.not = icmp eq i8 %getbyte.char, 44
  %eq133.not = icmp eq i8 %getbyte.char, 61
  %or.cond = or i1 %eq122.not, %eq133.not
  %STK4.2 = select i1 %or.cond, i64 0, i64 %STK4.1
  %STK3.2 = select i1 %or.cond, i64 0, i64 %STK3.1
  %add159 = zext i1 %eq122.not to i64
  %STK5.1 = add i64 %STK5.0, %add159
  %add167 = add i64 %STK6.0, 1
  %le.not = icmp sgt i64 %add167, %1
  br i1 %le.not, label %jt.then_L316, label %lab_L315

jt.then_L316:                                     ; preds = %jf.then_L319
  %eq186.not = icmp eq i64 %STK3.2, 0
  br i1 %eq186.not, label %jf.else191, label %jf.then_L326

jf.else191:                                       ; preds = %entry.jf.else191_crit_edge, %jt.then_L316
  %getbyte.string198.pre-phi = phi ptr [ %.pre244, %entry.jf.else191_crit_edge ], [ %getbyte.string66, %jt.then_L316 ]
  %STK4.3241 = phi i64 [ 0, %entry.jf.else191_crit_edge ], [ %STK4.2, %jt.then_L316 ]
  %STK5.2240 = phi i64 [ 0, %entry.jf.else191_crit_edge ], [ %STK5.1, %jt.then_L316 ]
  %getbyte.char200 = load i8, ptr %getbyte.string198.pre-phi, align 1
  %getbyte.charword201 = zext i8 %getbyte.char200 to i64
  %eq207.not = icmp eq i64 %STK4.3241, %getbyte.charword201
  br i1 %eq207.not, label %common.ret, label %jf.then_L326

jf.then_L326:                                     ; preds = %jf.else191, %jt.then_L316
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
  br i1 %if_cond.not, label %common.ret, label %jt.then_L327

common.ret.sink.split:                            ; preds = %jf.else62, %jf.else475
  %neg.sink = phi i64 [ %neg, %jf.else475 ], [ %getbyte.charword72, %jf.else62 ]
  store i64 %neg.sink, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %common.ret

common.ret:                                       ; preds = %jump.target_L340, %common.ret.sink.split, %jt.then_L348, %jf.then_L336, %jf.else159, %jt.then_L330, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ -1, %jt.then_L330 ], [ -1, %jf.else159 ], [ -1, %jf.then_L336 ], [ -1, %jt.then_L348 ], [ -1, %common.ret.sink.split ], [ 0, %jump.target_L340 ]
  ret i64 %common.ret.op

jt.then_L327:                                     ; preds = %entry
  %getbyte.charptr20 = getelementptr i8, ptr %getbyte.string, i64 1
  %getbyte.char21 = load i8, ptr %getbyte.charptr20, align 1
  %getbyte.charword22 = zext i8 %getbyte.char21 to i64
  %lg.value = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn = inttoptr i64 %lg.value to ptr
  %fnap = tail call i64 %rtap_ep_p_fn(i64 %getbyte.charword22)
  %eq.not = icmp eq i64 %fnap, 39
  %eq37.not = icmp eq i8 %getbyte.char, 3
  %or.cond = and i1 %eq37.not, %eq.not
  br i1 %or.cond, label %jf.else42, label %jf.then_L328

jf.else42:                                        ; preds = %jt.then_L327
  %getbyte.charptr50 = getelementptr i8, ptr %getbyte.string, i64 3
  %getbyte.char51 = load i8, ptr %getbyte.charptr50, align 1
  %eq57.not = icmp eq i8 %getbyte.char51, 39
  br i1 %eq57.not, label %jf.else62, label %jf.then_L332

jf.else62:                                        ; preds = %jf.else42
  %getbyte.charptr70 = getelementptr i8, ptr %getbyte.string, i64 2
  %getbyte.char71 = load i8, ptr %getbyte.charptr70, align 2
  %getbyte.charword72 = zext i8 %getbyte.char71 to i64
  br label %common.ret.sink.split

jf.then_L328:                                     ; preds = %jt.then_L327
  switch i64 %fnap, label %jf.then_L329 [
    i64 43, label %jt.then_L330
    i64 45, label %jt.then_L330
  ]

jt.then_L330:                                     ; preds = %jf.then_L328, %jf.then_L328
  %eq114.not = icmp eq i8 %getbyte.char, 1
  br i1 %eq114.not, label %common.ret, label %jf.then_L331

jf.then_L331:                                     ; preds = %jt.then_L330
  %eq104 = icmp ne i64 %fnap, 45
  %getbyte.charptr137 = getelementptr i8, ptr %getbyte.string, i64 2
  %getbyte.char138 = load i8, ptr %getbyte.charptr137, align 2
  %getbyte.charword139 = zext i8 %getbyte.char138 to i64
  %lg.value141 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn144 = inttoptr i64 %lg.value141 to ptr
  %fnap146 = tail call i64 %rtap_ep_p_fn144(i64 %getbyte.charword139)
  br label %jf.then_L329

jf.then_L329:                                     ; preds = %jf.then_L328, %jf.then_L331
  %STK7.0 = phi i64 [ %fnap146, %jf.then_L331 ], [ %fnap, %jf.then_L328 ]
  %STK5.0 = phi i1 [ %eq104, %jf.then_L331 ], [ true, %jf.then_L328 ]
  %STK1.0 = phi i64 [ 2, %jf.then_L331 ], [ 1, %jf.then_L328 ]
  %eq154.not = icmp eq i64 %STK7.0, 35
  br i1 %eq154.not, label %jf.else159, label %jf.then_L332

jf.else159:                                       ; preds = %jf.then_L329
  %eq168.not = icmp eq i64 %STK1.0, %getbyte.charword
  br i1 %eq168.not, label %common.ret, label %jf.then_L333

jf.then_L333:                                     ; preds = %jf.else159
  %add181 = add nuw nsw i64 %STK1.0, 1
  %getbyte.charptr192 = getelementptr i8, ptr %getbyte.string, i64 %add181
  %getbyte.char193 = load i8, ptr %getbyte.charptr192, align 1
  %getbyte.charword194 = zext i8 %getbyte.char193 to i64
  %lg.value196 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn199 = inttoptr i64 %lg.value196 to ptr
  %fnap201 = tail call i64 %rtap_ep_p_fn199(i64 %getbyte.charword194)
  switch i64 %fnap201, label %jf.then_L332 [
    i64 88, label %jf.else247
    i64 66, label %jf.then_L336
    i64 79, label %jf.then_L336
  ]

jf.else247:                                       ; preds = %jf.then_L333
  br label %jf.then_L336

jf.then_L336:                                     ; preds = %jf.then_L333, %jf.then_L333, %jf.else247
  %STK6.0 = phi i64 [ 16, %jf.else247 ], [ 8, %jf.then_L333 ], [ 8, %jf.then_L333 ]
  %eq269.not = icmp eq i64 %add181, %getbyte.charword
  br i1 %eq269.not, label %common.ret, label %jf.then_L338

jf.then_L338:                                     ; preds = %jf.then_L336
  %eq255.not = icmp eq i64 %fnap201, 66
  %spec.select = select i1 %eq255.not, i64 2, i64 %STK6.0
  %add282 = add nuw nsw i64 %STK1.0, 2
  %getbyte.charptr293 = getelementptr i8, ptr %getbyte.string, i64 %add282
  %getbyte.char294 = load i8, ptr %getbyte.charptr293, align 1
  %getbyte.charword295 = zext i8 %getbyte.char294 to i64
  %lg.value297 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn300 = inttoptr i64 %lg.value297 to ptr
  %fnap302 = tail call i64 %rtap_ep_p_fn300(i64 %getbyte.charword295)
  br label %jf.then_L332

jf.then_L332:                                     ; preds = %jf.else42, %jf.then_L333, %jf.then_L338, %jf.then_L329
  %STK5.0534 = phi i1 [ %STK5.0, %jf.then_L329 ], [ %STK5.0, %jf.then_L338 ], [ %STK5.0, %jf.then_L333 ], [ true, %jf.else42 ]
  %STK7.1 = phi i64 [ %STK7.0, %jf.then_L329 ], [ %fnap302, %jf.then_L338 ], [ %fnap201, %jf.then_L333 ], [ 39, %jf.else42 ]
  %STK6.2 = phi i64 [ 10, %jf.then_L329 ], [ %spec.select, %jf.then_L338 ], [ 8, %jf.then_L333 ], [ 10, %jf.else42 ]
  %STK1.1 = phi i64 [ %STK1.0, %jf.then_L329 ], [ %add282, %jf.then_L338 ], [ %add181, %jf.then_L333 ], [ 1, %jf.else42 ]
  br label %lab_L339

lab_L339:                                         ; preds = %jt.else449, %jf.then_L332
  %STK7.2 = phi i64 [ %STK7.1, %jf.then_L332 ], [ %fnap467, %jt.else449 ]
  %STK1.2 = phi i64 [ %STK1.1, %jf.then_L332 ], [ %add436, %jt.else449 ]
  %1 = add i64 %STK7.2, -58
  %or.cond528 = icmp ult i64 %1, -10
  br i1 %or.cond528, label %jf.then_L341, label %jf.else325

jf.else325:                                       ; preds = %lab_L339
  %sub = add nsw i64 %STK7.2, -48
  br label %jump.target_L340

jf.then_L341:                                     ; preds = %lab_L339
  %2 = add i64 %STK7.2, -91
  %or.cond529 = icmp ult i64 %2, -26
  %eq373.not = icmp eq i64 %STK7.2, 95
  %. = select i1 %eq373.not, i64 -1, i64 1000
  %add364 = add nsw i64 %STK7.2, -55
  %__res_a.1 = select i1 %or.cond529, i64 %., i64 %add364
  br label %jump.target_L340

jump.target_L340:                                 ; preds = %jf.then_L341, %jf.else325
  %__res_a.2 = phi i64 [ %__res_a.1, %jf.then_L341 ], [ %sub, %jf.else325 ]
  %ls = icmp slt i64 %__res_a.2, %STK6.2
  br i1 %ls, label %jt.then_L346, label %common.ret

jt.then_L346:                                     ; preds = %jump.target_L340
  %ge = icmp slt i64 %__res_a.2, 0
  br i1 %ge, label %jf.then_L347, label %jf.else416

jf.else416:                                       ; preds = %jt.then_L346
  %lg.value419 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  %mul = mul i64 %lg.value419, %STK6.2
  %add428 = add i64 %mul, %__res_a.2
  store i64 %add428, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 80), align 4
  br label %jf.then_L347

jf.then_L347:                                     ; preds = %jf.else416, %jt.then_L346
  %gr.not = icmp ult i64 %STK1.2, %getbyte.charword
  br i1 %gr.not, label %jt.else449, label %jt.then_L348

jt.else449:                                       ; preds = %jf.then_L347
  %add436 = add nuw nsw i64 %STK1.2, 1
  %getbyte.charptr458 = getelementptr i8, ptr %getbyte.string, i64 %add436
  %getbyte.char459 = load i8, ptr %getbyte.charptr458, align 1
  %getbyte.charword460 = zext i8 %getbyte.char459 to i64
  %lg.value462 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__bcpl_global_vector, i64 768), align 4
  %rtap_ep_p_fn465 = inttoptr i64 %lg.value462 to ptr
  %fnap467 = tail call i64 %rtap_ep_p_fn465(i64 %getbyte.charword460)
  br label %lab_L339

jt.then_L348:                                     ; preds = %jf.then_L347
  br i1 %STK5.0534, label %common.ret, label %jf.else475

jf.else475:                                       ; preds = %jt.then_L348
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
  br i1 %or.cond, label %lab_L350.preheader, label %vector.ph

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
  br i1 %cmp.n, label %jt.then_L351, label %lab_L350.preheader

lab_L350.preheader:                               ; preds = %entry, %middle.block
  %STK2.0.ph = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ]
  br label %lab_L350

lab_L350:                                         ; preds = %lab_L350.preheader, %lab_L350
  %STK2.0 = phi i64 [ %add, %lab_L350 ], [ %STK2.0.ph, %lab_L350.preheader ]
  %getbyte.charptr19 = getelementptr i8, ptr %getbyte.string, i64 %STK2.0
  %getbyte.char20 = load i8, ptr %getbyte.charptr19, align 1
  %putbyte.charptr = getelementptr i8, ptr %putbyte.string, i64 %STK2.0
  store i8 %getbyte.char20, ptr %putbyte.charptr, align 1
  %add = add nuw nsw i64 %STK2.0, 1
  %le.not.not = icmp samesign ult i64 %STK2.0, %getbyte.charword
  br i1 %le.not.not, label %lab_L350, label %jt.then_L351, !llvm.loop !7

jt.then_L351:                                     ; preds = %lab_L350, %middle.block
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @copy_words(i64 %0, i64 %1, i64 %2) #2 section ".text.blib" {
entry:
  %sub = add i64 %2, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L355, label %lab_L354

lab_L354:                                         ; preds = %entry, %lab_L354
  %STK3.0 = phi i64 [ %add35, %lab_L354 ], [ 0, %entry ]
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
  br i1 %le.not, label %jt.then_L355, label %lab_L354

jt.then_L355:                                     ; preds = %lab_L354, %entry
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none)
define noundef i64 @clear_words(i64 %0, i64 %1) #3 section ".text.blib" {
entry:
  %sub = add i64 %1, -1
  %gr = icmp slt i64 %sub, 0
  br i1 %gr, label %jt.then_L359, label %lab_L358

lab_L358:                                         ; preds = %entry, %lab_L358
  %STK2.0 = phi i64 [ %add26, %lab_L358 ], [ 0, %entry ]
  %add = add i64 %STK2.0, %0
  %stind.llvmaddr = shl i64 %add, 3
  %stind.lv = inttoptr i64 %stind.llvmaddr to ptr
  store i64 0, ptr %stind.lv, align 8
  %add26 = add i64 %STK2.0, 1
  %le.not = icmp sgt i64 %add26, %sub
  br i1 %le.not, label %jt.then_L359, label %lab_L358

jt.then_L359:                                     ; preds = %lab_L358, %entry
  ret i64 -4985279381848933680
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define i64 @copy_bytes(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #2 section ".text.blib" {
entry:
  %spec.select = tail call i64 @llvm.smin.i64(i64 %0, i64 %3)
  %sub = add i64 %spec.select, -1
  %gr26 = icmp slt i64 %sub, 0
  br i1 %gr26, label %jt.then_L364, label %lab_L363.preheader

lab_L363.preheader:                               ; preds = %entry
  %or.cond = icmp slt i64 %spec.select, 8
  br i1 %or.cond, label %lab_L363.preheader165, label %vector.ph

vector.ph:                                        ; preds = %lab_L363.preheader
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
  br i1 %cmp.n, label %jt.then_L364, label %lab_L363.preheader165

lab_L363.preheader165:                            ; preds = %lab_L363.preheader, %middle.block
  %STK13.0.ph = phi i64 [ 0, %lab_L363.preheader ], [ %n.vec, %middle.block ]
  br label %lab_L363

lab_L363:                                         ; preds = %lab_L363.preheader165, %lab_L363
  %STK13.0 = phi i64 [ %add54, %lab_L363 ], [ %STK13.0.ph, %lab_L363.preheader165 ]
  %9 = getelementptr i8, ptr null, i64 %STK13.0
  %getbyte.charptr = getelementptr i8, ptr %9, i64 %1
  %getbyte.char = load i8, ptr %getbyte.charptr, align 1
  %putbyte.charptr = getelementptr i8, ptr %9, i64 %4
  store i8 %getbyte.char, ptr %putbyte.charptr, align 1
  %add54 = add i64 %STK13.0, 1
  %le.not = icmp sgt i64 %add54, %sub
  br i1 %le.not, label %jt.then_L364, label %lab_L363, !llvm.loop !9

jt.then_L364:                                     ; preds = %lab_L363, %middle.block, %entry
  %sub75 = add i64 %3, -1
  %gr83 = icmp sgt i64 %spec.select, %sub75
  br i1 %gr83, label %jt.then_L368, label %lab_L367.preheader

lab_L367.preheader:                               ; preds = %jt.then_L364
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
  br i1 %min.iters.check155, label %lab_L367.preheader164, label %vector.scevcheck151

vector.scevcheck151:                              ; preds = %lab_L367.preheader
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
  br i1 %25, label %lab_L367.preheader164, label %vector.ph156

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
  br i1 %cmp.n162, label %jt.then_L368, label %lab_L367.preheader164

lab_L367.preheader164:                            ; preds = %vector.scevcheck151, %lab_L367.preheader, %middle.block153
  %STK69.0.ph = phi i64 [ %spec.select, %lab_L367.preheader ], [ %spec.select, %vector.scevcheck151 ], [ %26, %middle.block153 ]
  br label %lab_L367

lab_L367:                                         ; preds = %lab_L367.preheader164, %lab_L367
  %STK69.0 = phi i64 [ %add112, %lab_L367 ], [ %STK69.0.ph, %lab_L367.preheader164 ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %STK69.0
  store i8 %putbyte.char103, ptr %gep, align 1
  %add112 = add i64 %STK69.0, 1
  %le121.not = icmp sgt i64 %add112, %sub75
  br i1 %le121.not, label %jt.then_L368, label %lab_L367, !llvm.loop !11

jt.then_L368:                                     ; preds = %lab_L367, %middle.block153, %jt.then_L364
  %sub133 = sub i64 %0, %spec.select
  ret i64 %sub133
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) }
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
