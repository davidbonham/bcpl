	.file	"BLIB"
	.section	.text.BLIB,"ax",@progbits
	.globl	randno                          # -- Begin function randno
	.p2align	4
	.type	randno,@function
randno:                                 # @randno
# %bb.0:                                # %entry
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	imulq	$2147001325, 1016(%rax), %rcx   # imm = 0x7FF8A3ED
	addq	$715136305, %rcx                # imm = 0x2AA01D31
	movq	%rcx, 1016(%rax)
	movabsq	$6148914691236517206, %rdx      # imm = 0x5555555555555556
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rsi
	shrq	$63, %rsi
	addq	%rdx, %rsi
	movq	%rsi, %rax
	negq	%rax
	cmpq	$-2, %rcx
	cmovgeq	%rsi, %rax
	cqto
	idivq	%rdi
	leaq	1(%rdx), %rax
	retq
.Lfunc_end0:
	.size	randno, .Lfunc_end0-randno
                                        # -- End function
	.globl	unpackstring                    # -- Begin function unpackstring
	.p2align	4
	.type	unpackstring,@function
unpackstring:                           # @unpackstring
# %bb.0:                                # %entry
	movzbl	(,%rdi,8), %eax
	addq	%rax, %rsi
	shlq	$3, %rsi
	.p2align	4
.LBB1_1:                                # %lab_L041
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rdi,8), %ecx
	movq	%rcx, (%rsi)
	addq	$-8, %rsi
	addq	$-1, %rax
	jb	.LBB1_1
# %bb.2:                                # %jt.then_L042
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end1:
	.size	unpackstring, .Lfunc_end1-unpackstring
                                        # -- End function
	.globl	packstring                      # -- Begin function packstring
	.p2align	4
	.type	packstring,@function
packstring:                             # @packstring
# %bb.0:                                # %entry
	pushq	%rbx
	movzbl	(,%rdi,8), %ebx
	shlq	$3, %rdi
	shlq	$3, %rsi
	movq	$-1, %rax
	.p2align	4
.LBB2_1:                                # %lab_L045
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %ecx
	movb	%cl, 1(%rsi,%rax)
	incq	%rax
	addq	$8, %rdi
	cmpq	%rbx, %rax
	jb	.LBB2_1
# %bb.2:                                # %jt.then_L046
	movl	%ebx, %eax
	andl	$-8, %eax
	leaq	7(%rax), %rcx
	cmpq	%rcx, %rbx
	jae	.LBB2_4
# %bb.3:                                # %lab_L049.preheader
	leaq	1(%rsi,%rbx), %rdi
	addq	$8, %rax
	leaq	2(%rbx), %rcx
	cmpq	%rcx, %rax
	cmovbeq	%rcx, %rax
	movq	%rbx, %rdx
	notq	%rdx
	addq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
.LBB2_4:                                # %jt.then_L050
	shrl	$3, %ebx
	movq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	packstring, .Lfunc_end2-packstring
                                        # -- End function
	.globl	write_format                    # -- Begin function write_format
	.p2align	4
	.type	write_format,@function
write_format:                           # @write_format
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp                      # imm = 0x128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, -80(%rbp)                 # 8-byte Spill
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	movq	80(%r13), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	cmpb	$0, (,%rdi,8)
	je	.LBB3_68
# %bb.1:                                # %lab_L053.preheader
	movq	%rdi, %r14
	leaq	(,%rdi,8), %r12
	movq	-80(%rbp), %rax                 # 8-byte Reload
	leaq	(,%rax,8), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	leaq	.Llstr.global(%rip), %rax
	sarq	$3, %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movl	$1, %r15d
	movl	$1008, %eax                     # imm = 0x3F0
	addq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movl	$328, %eax                      # imm = 0x148
	addq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movl	$688, %eax                      # imm = 0x2B0
	addq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movl	$712, %eax                      # imm = 0x2C8
	addq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	%r12, -48(%rbp)                 # 8-byte Spill
	jmp	.LBB3_2
	.p2align	4
.LBB3_66:                               # %jf.else1014
                                        #   in Loop: Header=BB3_2 Depth=1
	callq	*328(%r13)
.LBB3_67:                               # %jump.target_L054
                                        #   in Loop: Header=BB3_2 Depth=1
	movzbl	(%r12), %eax
	cmpq	%rax, %r15
	jg	.LBB3_68
.LBB3_2:                                # %lab_L053
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #       Child Loop BB3_5 Depth 3
                                        #         Child Loop BB3_11 Depth 4
                                        #       Child Loop BB3_15 Depth 3
                                        #     Child Loop BB3_60 Depth 2
                                        #     Child Loop BB3_23 Depth 2
                                        #     Child Loop BB3_25 Depth 2
                                        #     Child Loop BB3_28 Depth 2
                                        #     Child Loop BB3_32 Depth 2
	movzbl	(%r15,%r14,8), %edi
	incq	%r15
	cmpq	$37, %rdi
	jne	.LBB3_66
# %bb.3:                                # %jt.then_L059
                                        #   in Loop: Header=BB3_2 Depth=1
	movzbl	(%r15,%r14,8), %ebx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	(,%rax,8), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movb	$1, %r13b
	movq	$0, -72(%rbp)                   # 8-byte Folded Spill
	xorl	%r12d, %r12d
.LBB3_4:                                # %lab_L056.outer
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
                                        #         Child Loop BB3_11 Depth 4
                                        #       Child Loop BB3_15 Depth 3
	movq	%r15, %rax
	.p2align	4
.LBB3_5:                                # %lab_L056
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_11 Depth 4
	movq	%rax, %r15
	movq	%rbx, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*768(%rax)
	leaq	-48(%rax), %rcx
	cmpq	$10, %rcx
	jae	.LBB3_6
# %bb.10:                               # %lab_L075.preheader
                                        #   in Loop: Header=BB3_5 Depth=3
	incq	%r15
	.p2align	4
.LBB3_11:                               # %lab_L075
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r12,4), %rax
	leaq	-48(%rbx,%rax,2), %r12
	movzbl	(%r15,%r14,8), %ebx
	leal	-48(%rbx), %eax
	incq	%r15
	cmpb	$10, %al
	jb	.LBB3_11
# %bb.12:                               # %lab_L064
                                        #   in Loop: Header=BB3_5 Depth=3
	leaq	-1(%r15), %rax
	xorl	%r13d, %r13d
	cmpl	$46, %ebx
	jne	.LBB3_5
# %bb.13:                               # %jf.else165
                                        #   in Loop: Header=BB3_5 Depth=3
	movzbl	(%r15,%r14,8), %ebx
	leal	-58(%rbx), %eax
	xorl	%r13d, %r13d
	cmpb	$-10, %al
	movq	%r15, %rax
	jb	.LBB3_5
# %bb.14:                               # %lab_L078.preheader
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	.p2align	4
.LBB3_15:                               # %lab_L078
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	(%rcx,%rcx,4), %rax
	leaq	-48(%rbx,%rax,2), %rcx
	movzbl	1(%r15,%r14,8), %ebx
	incq	%r15
	leal	-48(%rbx), %eax
	cmpb	$10, %al
	jb	.LBB3_15
# %bb.16:                               #   in Loop: Header=BB3_4 Depth=2
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB3_4
	.p2align	4
.LBB3_6:                                # %lab_L056
                                        #   in Loop: Header=BB3_2 Depth=1
	addq	$-35, %rax
	cmpq	$55, %rax
	ja	.LBB3_8
# %bb.7:                                # %lab_L056
                                        #   in Loop: Header=BB3_2 Depth=1
	leaq	.LJTI3_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB3_44:                               # %lf_L057.loopexit1384
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-136(%rbp), %rax                # 8-byte Reload
	jmp	.LBB3_48
.LBB3_37:                               # %lab_L093
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	704(%rax), %rbx
	testb	$1, %r13b
	movq	%rax, %r13
	jne	.LBB3_19
	jmp	.LBB3_43
.LBB3_53:                               # %lab_L107
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-64(%rbp), %rax                 # 8-byte Reload
	incq	(%rax)
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%r12, %rsi
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	callq	*1440(%r13)
	jmp	.LBB3_9
.LBB3_40:                               # %lab_L097
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	736(%rax), %rbx
	testb	$1, %r13b
	movq	%rax, %r13
	jne	.LBB3_19
	jmp	.LBB3_43
.LBB3_34:                               # %lab_L088
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	680(%rax), %rbx
	testb	$1, %r13b
	movq	%rax, %r13
	jne	.LBB3_19
	jmp	.LBB3_43
.LBB3_17:                               # %lab_L082
                                        #   in Loop: Header=BB3_2 Depth=1
	testb	$1, %r13b
	je	.LBB3_20
# %bb.18:                               # %lab_L088.thread
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	movq	680(%r13), %rbx
	jmp	.LBB3_19
.LBB3_41:                               # %lf_L058
                                        #   in Loop: Header=BB3_2 Depth=1
	testb	$1, %r13b
	movq	writebin@GOTPCREL(%rip), %rbx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	jne	.LBB3_19
# %bb.42:                               #   in Loop: Header=BB3_2 Depth=1
	movq	writebin@GOTPCREL(%rip), %rbx
	jmp	.LBB3_43
.LBB3_36:                               # %lab_L090
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	720(%rax), %rbx
	testb	$1, %r13b
	movq	%rax, %r13
	jne	.LBB3_19
	jmp	.LBB3_43
.LBB3_47:                               # %lf_L057.loopexit1
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-128(%rbp), %rax                # 8-byte Reload
	jmp	.LBB3_48
.LBB3_38:                               # %lab_L094
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	696(%rax), %rbx
	testb	$1, %r13b
	movq	%rax, %r13
	je	.LBB3_43
.LBB3_19:                               # %jt.else485
                                        #   in Loop: Header=BB3_2 Depth=1
	movzbl	1(%r15,%r14,8), %edi
	incq	%r15
	callq	*768(%r13)
	movq	%rax, %r12
	addq	$-58, %rax
	leaq	-48(%r12), %rcx
	addq	$-55, %r12
	cmpq	$-10, %rax
	cmovaeq	%rcx, %r12
.LBB3_43:                               # %jt.then_L099
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%r12, %rsi
	callq	*%rbx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	incq	(%rax)
.LBB3_9:                                # %jump.target_L054
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%r15
	movq	-48(%rbp), %r12                 # 8-byte Reload
	jmp	.LBB3_67
.LBB3_52:                               # %lab_L105
                                        #   in Loop: Header=BB3_2 Depth=1
	leaq	-272(%rsp), %rbx
	movq	%rbx, %rsp
	sarq	$3, %rbx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	incq	(%rax)
	movl	$32, %edx
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rbx, %rsi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	callq	*744(%r13)
	testq	%rax, %rax
	cmoveq	-144(%rbp), %rbx                # 8-byte Folded Reload
	movq	%rbx, %rdi
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	callq	write_format@PLT
	jmp	.LBB3_9
.LBB3_51:                               # %lab_L104
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-64(%rbp), %rax                 # 8-byte Reload
	decq	(%rax)
	jmp	.LBB3_50
.LBB3_54:                               # %lab_L108
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-64(%rbp), %rax                 # 8-byte Reload
	incq	(%rax)
	testb	$1, %r13b
	je	.LBB3_55
# %bb.56:                               # %jf.then_L109
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	callq	write_format@PLT
	jmp	.LBB3_50
.LBB3_39:                               # %lab_L096
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	728(%rax), %rbx
	testb	$1, %r13b
	movq	%rax, %r13
	jne	.LBB3_19
	jmp	.LBB3_43
.LBB3_45:                               # %lf_L057.loopexit1477
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-120(%rbp), %rax                # 8-byte Reload
	jmp	.LBB3_48
.LBB3_57:                               # %lab_L111
                                        #   in Loop: Header=BB3_2 Depth=1
	xorl	%ebx, %ebx
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	cmpq	$1, %rdx
	setne	%cl
	movq	-64(%rbp), %rax                 # 8-byte Reload
	incq	(%rax)
	movq	%r15, %rax
	movzbl	1(%r15,%r14,8), %edi
	addq	$2, %r15
	cmpq	$92, %rdi
	jne	.LBB3_65
# %bb.58:                               # %jf.else903
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-48(%rbp), %r12                 # 8-byte Reload
	movq	%rax, %rdi
	movzbl	(%r12), %eax
	cmpq	%rax, %r15
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	jg	.LBB3_67
# %bb.59:                               # %lab_L114.preheader
                                        #   in Loop: Header=BB3_2 Depth=1
	movb	%cl, %bl
	negq	%rbx
	addq	$3, %rdi
	movq	%rbx, %rcx
	jmp	.LBB3_60
	.p2align	4
.LBB3_61:                               # %jf.else957
                                        #   in Loop: Header=BB3_60 Depth=2
	notq	%rcx
	cmpq	%rcx, %rbx
	je	.LBB3_67
.LBB3_64:                               # %lab_L115
                                        #   in Loop: Header=BB3_60 Depth=2
	movzbl	%al, %edx
	leaq	1(%r15), %rdi
	leaq	-1(%r15), %rsi
	cmpq	%rdx, %rsi
	jge	.LBB3_67
.LBB3_60:                               # %lab_L114
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %r15
	movzbl	-1(%rdi,%r14,8), %edi
	cmpq	$92, %rdi
	je	.LBB3_61
# %bb.62:                               # %jf.then_L117
                                        #   in Loop: Header=BB3_60 Depth=2
	testq	%rcx, %rcx
	movq	$-1, %rcx
	jne	.LBB3_64
# %bb.63:                               # %jt.else979
                                        #   in Loop: Header=BB3_60 Depth=2
	callq	*328(%r13)
	movzbl	(%r12), %eax
	xorl	%ecx, %ecx
	jmp	.LBB3_64
.LBB3_46:                               # %lf_L057.loopexit
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-112(%rbp), %rax                # 8-byte Reload
.LBB3_48:                               # %lf_L057
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	callq	*(%rax)
.LBB3_49:                               # %lab_L103
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-64(%rbp), %rax                 # 8-byte Reload
	incq	(%rax)
.LBB3_50:                               # %jump.target_L054
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%r15
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	movq	-48(%rbp), %r12                 # 8-byte Reload
	jmp	.LBB3_67
.LBB3_8:                                # %lab_L062
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	%rbx, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	callq	*328(%r13)
	jmp	.LBB3_9
.LBB3_20:                               # %jf.else276
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	testq	%rcx, %rcx
	jle	.LBB3_21
# %bb.22:                               # %lab_L084.preheader
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$1, %eax
	movl	$1, %r8d
	movabsq	$7378697629483820647, %rdi      # imm = 0x6666666666666667
	.p2align	4
.LBB3_23:                               # %lab_L084
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	%r8, %r8
	leaq	(%r8,%r8,4), %r8
	incq	%rax
	cmpq	%rcx, %rax
	jle	.LBB3_23
	jmp	.LBB3_24
.LBB3_55:                               # %jf.else805
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%r12, %rsi
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	callq	*584(%r13)
	jmp	.LBB3_9
.LBB3_65:                               # %jf.then_L112
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpq	$1, %rdx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	movq	-48(%rbp), %r12                 # 8-byte Reload
	jne	.LBB3_66
	jmp	.LBB3_67
.LBB3_21:                               #   in Loop: Header=BB3_2 Depth=1
	movl	$1, %r8d
	movabsq	$7378697629483820647, %rdi      # imm = 0x6666666666666667
.LBB3_24:                               # %jt.then_L085
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	%rsi, %rax
	cqto
	movq	%r8, -104(%rbp)                 # 8-byte Spill
	idivq	%r8
	movq	%rax, %rcx
	negq	%rcx
	testq	%rsi, %rsi
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	cmovsq	%rax, %rcx
	movq	$-1, %rax
	leaq	-328(%rbp), %rsi
	movq	$-1, %r13
	.p2align	4
.LBB3_25:                               # %lab_L123.i
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rbx
	movq	%rax, %r8
	movq	%rcx, %rax
	imulq	%rdi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx), %rax
	leaq	(%rax,%rax,4), %rax
	subq	%rcx, %rax
	movq	%rax, (%rsi)
	addq	$9, %rcx
	incq	%r13
	addq	$8, %rsi
	leaq	-1(%r8), %rax
	cmpq	$18, %rcx
	movq	%rdx, %rcx
	ja	.LBB3_25
# %bb.26:                               # %lab_L124.i
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	%r8, -88(%rbp)                  # 8-byte Spill
	movq	-72(%rbp), %rax                 # 8-byte Reload
	notq	%rax
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	sarq	$63, %rcx
	addq	%rax, %rcx
	addq	%r12, %rcx
	leaq	2(%r13), %r12
	cmpq	%rcx, %r12
	jg	.LBB3_29
# %bb.27:                               # %lab_L127.i.preheader
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	%rcx, -160(%rbp)                # 8-byte Spill
	.p2align	4
.LBB3_28:                               # %lab_L127.i
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*328(%rax)
	movq	-160(%rbp), %rcx                # 8-byte Reload
	incq	%r12
	cmpq	%rcx, %r12
	jle	.LBB3_28
.LBB3_29:                               # %jt.then_L128.i
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpq	$0, -56(%rbp)                   # 8-byte Folded Reload
	jns	.LBB3_31
# %bb.30:                               # %jt.else127.i
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$45, %edi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*328(%rax)
.LBB3_31:                               # %jf.then_L133.i
                                        #   in Loop: Header=BB3_2 Depth=1
	testq	%r13, %r13
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r12
	movq	-88(%rbp), %r13                 # 8-byte Reload
	js	.LBB3_33
	.p2align	4
.LBB3_32:                               # %lab_L134.i
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rdi
	addq	$48, %rdi
	callq	*328(%r12)
	addq	$-8, %rbx
	incq	%r13
	jne	.LBB3_32
.LBB3_33:                               # %writedz.exit
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$46, %edi
	callq	*328(%r12)
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	imulq	-104(%rbp), %rcx                # 8-byte Folded Reload
	movq	-56(%rbp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, %rdi
	negq	%rdi
	cmovsq	%rax, %rdi
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	callq	*736(%r12)
	movq	-64(%rbp), %rax                 # 8-byte Reload
	incq	(%rax)
	incq	%r15
	movq	%r12, %r13
	movq	-48(%rbp), %r12                 # 8-byte Reload
	jmp	.LBB3_67
.LBB3_68:                               # %jf.then_L055
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	%rax, 80(%r13)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	write_format, .Lfunc_end3-write_format
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.long	.LBB3_44-.LJTI3_0
	.long	.LBB3_49-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_49-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_51-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_41-.LJTI3_0
	.long	.LBB3_47-.LJTI3_0
	.long	.LBB3_17-.LJTI3_0
	.long	.LBB3_53-.LJTI3_0
	.long	.LBB3_54-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_34-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_52-.LJTI3_0
	.long	.LBB3_45-.LJTI3_0
	.long	.LBB3_37-.LJTI3_0
	.long	.LBB3_57-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_46-.LJTI3_0
	.long	.LBB3_36-.LJTI3_0
	.long	.LBB3_39-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_38-.LJTI3_0
	.long	.LBB3_8-.LJTI3_0
	.long	.LBB3_40-.LJTI3_0
                                        # -- End function
	.section	.text.BLIB,"ax",@progbits
	.globl	capitalch                       # -- Begin function capitalch
	.p2align	4
	.type	capitalch,@function
capitalch:                              # @capitalch
# %bb.0:                                # %entry
	leaq	-123(%rdi), %rcx
	leaq	-32(%rdi), %rax
	cmpq	$-26, %rcx
	cmovbq	%rdi, %rax
	retq
.Lfunc_end4:
	.size	capitalch, .Lfunc_end4-capitalch
                                        # -- End function
	.globl	writedz                         # -- Begin function writedz
	.p2align	4
	.type	writedz,@function
writedz:                                # @writedz
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r9
	movq	%rsi, %r14
	movq	%rdi, %rsi
	negq	%rsi
	xorl	%r8d, %r8d
	testq	%rcx, %rcx
	setne	%r8b
	cmovneq	%rdi, %rsi
	negq	%r8
	leaq	16(%rsp), %r12
	xorl	%r13d, %r13d
	movabsq	$7378697629483820647, %rdi      # imm = 0x6666666666666667
	.p2align	4
.LBB5_1:                                # %lab_L123
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	imulq	%rdi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx), %rax
	leaq	(%rax,%rax,4), %rax
	subq	%rsi, %rax
	movq	%rax, (%r12)
	addq	$9, %rsi
	addq	$8, %r12
	decq	%r13
	cmpq	$18, %rsi
	movq	%rdx, %rsi
	ja	.LBB5_1
# %bb.2:                                # %lab_L124
	testq	%rcx, %rcx
	sete	%al
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	addq	%r8, %r14
	movq	%r9, (%rsp)                     # 8-byte Spill
	testq	%r9, %r9
	sete	%cl
	orb	%al, %cl
	jne	.LBB5_4
# %bb.3:                                # %jf.else61
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$45, %edi
	callq	*328(%rax)
.LBB5_4:                                # %jf.then_L126
	movl	$1, %ebx
	subq	%r13, %rbx
	cmpq	%r14, %rbx
	jg	.LBB5_7
# %bb.5:                                # %lab_L127.preheader
	xorl	%r15d, %r15d
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	setne	%r15b
	shll	$4, %r15d
	orq	$32, %r15
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbp
	.p2align	4
.LBB5_6:                                # %lab_L127
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	*328(%rbp)
	incq	%rbx
	cmpq	%r14, %rbx
	jle	.LBB5_6
.LBB5_7:                                # %jt.then_L128
	movq	%r13, %rbx
	notq	%rbx
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	sete	%al
	movq	8(%rsp), %rcx                   # 8-byte Reload
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB5_9
# %bb.8:                                # %jt.else127
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$45, %edi
	callq	*328(%rax)
.LBB5_9:                                # %jf.then_L133
	testq	%rbx, %rbx
	js	.LBB5_12
# %bb.10:                               # %lab_L134.preheader
	addq	$-8, %r12
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	.p2align	4
.LBB5_11:                               # %lab_L134
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rdi
	addq	$48, %rdi
	callq	*328(%rbx)
	addq	$-8, %r12
	incq	%r13
	jne	.LBB5_11
.LBB5_12:                               # %jt.then_L135
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$184, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	writedz, .Lfunc_end5-writedz
	.cfi_endproc
                                        # -- End function
	.globl	writed                          # -- Begin function writed
	.p2align	4
	.type	writed,@function
writed:                                 # @writed
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdi, %rcx
	negq	%rcx
	cmovnsq	%rdi, %rcx
	movq	%rsp, %r15
	xorl	%r12d, %r12d
	movabsq	$7378697629483820647, %rsi      # imm = 0x6666666666666667
	.p2align	4
.LBB6_1:                                # %lab_L123.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	imulq	%rsi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx), %rax
	leaq	(%rax,%rax,4), %rax
	subq	%rcx, %rax
	movq	%rax, (%r15)
	addq	$9, %rcx
	addq	$8, %r15
	decq	%r12
	cmpq	$18, %rcx
	movq	%rdx, %rcx
	ja	.LBB6_1
# %bb.2:                                # %lab_L124.i
	movq	%rbx, %rax
	sarq	$63, %rax
	addq	%rax, %r14
	movl	$1, %r13d
	subq	%r12, %r13
	cmpq	%r14, %r13
	jg	.LBB6_5
# %bb.3:                                # %lab_L127.i.preheader
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbp
	.p2align	4
.LBB6_4:                                # %lab_L127.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	*328(%rbp)
	incq	%r13
	cmpq	%r14, %r13
	jle	.LBB6_4
.LBB6_5:                                # %jt.then_L128.i
	movq	%r12, %r14
	notq	%r14
	testq	%rbx, %rbx
	jns	.LBB6_7
# %bb.6:                                # %jt.else127.i
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$45, %edi
	callq	*328(%rax)
.LBB6_7:                                # %jf.then_L133.i
	testq	%r14, %r14
	js	.LBB6_10
# %bb.8:                                # %lab_L134.i.preheader
	addq	$-8, %r15
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	.p2align	4
.LBB6_9:                                # %lab_L134.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdi
	addq	$48, %rdi
	callq	*328(%rbx)
	addq	$-8, %r15
	incq	%r12
	jne	.LBB6_9
.LBB6_10:                               # %writedz.exit
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$168, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	writed, .Lfunc_end6-writed
	.cfi_endproc
                                        # -- End function
	.globl	writen                          # -- Begin function writen
	.p2align	4
	.type	writen,@function
writen:                                 # @writen
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	xorl	%esi, %esi
	callq	*680(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	writen, .Lfunc_end7-writen
	.cfi_endproc
                                        # -- End function
	.globl	writeoct                        # -- Begin function writeoct
	.p2align	4
	.type	writeoct,@function
writeoct:                               # @writeoct
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	$2, %rsi
	jl	.LBB8_2
# %bb.1:                                # %jf.else
	movq	%rdi, %rax
	shrq	$3, %rax
	decq	%rsi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rcx
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	*704(%rcx)
	movq	%rbx, %rdi
.LBB8_2:                                # %jf.then_L138
	andl	$7, %edi
	orq	$48, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*328(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	writeoct, .Lfunc_end8-writeoct
	.cfi_endproc
                                        # -- End function
	.globl	writehex                        # -- Begin function writehex
	.p2align	4
	.type	writehex,@function
writehex:                               # @writehex
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpq	$2, %rsi
	jl	.LBB9_2
# %bb.1:                                # %jf.else
	movq	%rbx, %rdi
	shrq	$4, %rdi
	decq	%rsi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*696(%rax)
.LBB9_2:                                # %jf.then_L139
	andl	$15, %ebx
	leaq	itemn.global(%rip), %rax
	movq	(%rax,%rbx,8), %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*328(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	writehex, .Lfunc_end9-writehex
	.cfi_endproc
                                        # -- End function
	.globl	writebin                        # -- Begin function writebin
	.p2align	4
	.type	writebin,@function
writebin:                               # @writebin
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	$2, %rsi
	jl	.LBB10_2
# %bb.1:                                # %jf.else
	movq	%rdi, %rax
	shrq	%rax
	decq	%rsi
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	writebin@PLT
	movq	%rbx, %rdi
.LBB10_2:                               # %jf.then_L141
	andl	$1, %edi
	orq	$48, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*328(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	writebin, .Lfunc_end10-writebin
	.cfi_endproc
                                        # -- End function
	.globl	newline                         # -- Begin function newline
	.p2align	4
	.type	newline,@function
newline:                                # @newline
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$10, %edi
	callq	*328(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	newline, .Lfunc_end11-newline
	.cfi_endproc
                                        # -- End function
	.globl	compch                          # -- Begin function compch
	.p2align	4
	.type	compch,@function
compch:                                 # @compch
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	callq	*768(%r15)
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	*768(%r15)
	subq	%rax, %r14
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	compch, .Lfunc_end12-compch
	.cfi_endproc
                                        # -- End function
	.globl	compstring                      # -- Begin function compstring
	.p2align	4
	.type	compstring,@function
compstring:                             # @compstring
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movzbl	(,%rdi,8), %eax
	movzbl	(,%rsi,8), %ecx
	movb	%al, 7(%rsp)                    # 1-byte Spill
	movb	%cl, 6(%rsp)                    # 1-byte Spill
	cmpb	%cl, %al
	movq	%rsi, %r15
	cmovbq	%rdi, %r15
	movzbl	(,%r15,8), %r13d
	testq	%r13, %r13
	je	.LBB13_4
# %bb.1:                                # %lab_L144.preheader
	movq	%rsi, %r14
	xorl	%ebp, %ebp
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r12
	.p2align	4
.LBB13_2:                               # %lab_L144
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rbp,%rbx,8), %edi
	movzbl	1(%rbp,%r14,8), %esi
	callq	*776(%r12)
	testq	%rax, %rax
	jne	.LBB13_7
# %bb.3:                                # %lab_L147
                                        #   in Loop: Header=BB13_2 Depth=1
	incq	%rbp
	cmpq	%r13, %rbp
	jb	.LBB13_2
.LBB13_4:                               # %jt.then_L145
	movzbl	6(%rsp), %eax                   # 1-byte Folded Reload
	cmpb	7(%rsp), %al                    # 1-byte Folded Reload
	jne	.LBB13_6
# %bb.5:
	xorl	%eax, %eax
	jmp	.LBB13_7
.LBB13_6:                               # %jf.then_L149
	xorl	%eax, %eax
	cmpq	%r15, %rbx
	setne	%al
	leaq	-1(%rax,%rax), %rax
.LBB13_7:                               # %common.ret
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	compstring, .Lfunc_end13-compstring
	.cfi_endproc
                                        # -- End function
	.globl	getkeylen                       # -- Begin function getkeylen
	.p2align	4
	.type	getkeylen,@function
getkeylen:                              # @getkeylen
# %bb.0:                                # %entry
	movq	%rcx, %rax
	movl	$1, %ecx
	testq	%rsi, %rsi
	jle	.LBB14_3
	.p2align	4
.LBB14_1:                               # %lab_L151
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	je	.LBB14_3
# %bb.2:                                # %jf.else
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%r8d, %r8d
	cmpb	$44, (%rcx,%rdi,8)
	sete	%r8b
	subq	%r8, %rdx
	incq	%rcx
	cmpq	%rsi, %rcx
	jle	.LBB14_1
.LBB14_3:                               # %jt.then_L153
	leaq	(,%rax,8), %rdx
	xorl	%r8d, %r8d
	jmp	.LBB14_4
	.p2align	4
.LBB14_10:                              # %jt.else118
                                        #   in Loop: Header=BB14_4 Depth=1
	movb	%r9b, 1(%rdx,%r8)
	incq	%r8
.LBB14_11:                              # %jt.then_L158
                                        #   in Loop: Header=BB14_4 Depth=1
	incq	%rcx
.LBB14_4:                               # %jt.then_L153
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	jg	.LBB14_12
# %bb.5:                                # %lab_L155
                                        #   in Loop: Header=BB14_4 Depth=1
	movzbl	(%rcx,%rdi,8), %r9d
	movzbl	%r9b, %r10d
	cmpl	$43, %r10d
	jg	.LBB14_7
# %bb.6:                                # %lab_L155
                                        #   in Loop: Header=BB14_4 Depth=1
	cmpl	$10, %r10d
	je	.LBB14_11
	jmp	.LBB14_10
	.p2align	4
.LBB14_7:                               # %lab_L155
                                        #   in Loop: Header=BB14_4 Depth=1
	cmpl	$44, %r10d
	je	.LBB14_12
# %bb.8:                                # %lab_L155
                                        #   in Loop: Header=BB14_4 Depth=1
	cmpl	$47, %r10d
	je	.LBB14_12
# %bb.9:                                # %lab_L155
                                        #   in Loop: Header=BB14_4 Depth=1
	cmpl	$61, %r10d
	jne	.LBB14_10
.LBB14_12:                              # %jf.then_L157
	movb	%r8b, (%rdx)
	retq
.Lfunc_end14:
	.size	getkeylen, .Lfunc_end14-getkeylen
                                        # -- End function
	.globl	rdargs                          # -- Begin function rdargs
	.p2align	4
	.type	rdargs,@function
rdargs:                                 # @rdargs
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movzbl	(,%rdi,8), %esi
	jmp	rdargslen@PLT                   # TAILCALL
.Lfunc_end15:
	.size	rdargs, .Lfunc_end15-rdargs
	.cfi_endproc
                                        # -- End function
	.globl	rdargs2                         # -- Begin function rdargs2
	.p2align	4
	.type	rdargs2,@function
rdargs2:                                # @rdargs2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$512, %rsp                      # imm = 0x200
	.cfi_def_cfa_offset 528
	.cfi_offset %rbx, -16
	movzbl	(,%rdi,8), %r8d
	testq	%r8, %r8
	je	.LBB16_1
# %bb.2:                                # %lab_L159.preheader
	shlq	$3, %rdi
	cmpb	$4, %r8b
	setb	%al
	movq	%rsp, %r9
	cmpq	%r9, %rdi
	sete	%r9b
	orb	%al, %r9b
	je	.LBB16_4
# %bb.3:
	movl	$1, %r9d
	xorl	%eax, %eax
	jmp	.LBB16_7
.LBB16_1:
	xorl	%eax, %eax
	jmp	.LBB16_9
.LBB16_4:                               # %vector.ph
	movl	%r8d, %eax
	andl	$-4, %eax
	leaq	1(%rax), %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB16_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	1(%rdi,%r10), %r11d
	movl	%r11d, 1(%rsp,%r10)
	addq	$4, %r10
	cmpq	%r10, %rax
	jne	.LBB16_5
# %bb.6:                                # %middle.block
	cmpl	%r8d, %eax
	je	.LBB16_9
.LBB16_7:                               # %lab_L159.preheader185
	decq	%r9
	.p2align	4
.LBB16_8:                               # %lab_L159
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rdi,%r9), %r10d
	movb	%r10b, 1(%rsp,%rax)
	incq	%rax
	incq	%r9
	cmpq	%r8, %r9
	jb	.LBB16_8
.LBB16_9:                               # %jt.then_L160
	movzbl	(,%rsi,8), %edi
	testq	%rdi, %rdi
	je	.LBB16_17
# %bb.10:                               # %lab_L163.preheader
	shlq	$3, %rsi
	movl	$1, %r8d
	cmpb	$4, %dil
	jb	.LBB16_15
# %bb.11:                               # %vector.memcheck167
	movq	%rsp, %r9
	addq	%rax, %r9
	subq	%rsi, %r9
	cmpq	$4, %r9
	jb	.LBB16_15
# %bb.12:                               # %vector.ph172
	movl	%edi, %r9d
	andl	$-4, %r9d
	leaq	1(%r9), %r8
	leaq	1(%rsp,%rax), %r10
	addq	%r9, %rax
	xorl	%r11d, %r11d
	.p2align	4
.LBB16_13:                              # %vector.body175
                                        # =>This Inner Loop Header: Depth=1
	movl	1(%rsi,%r11), %ebx
	movl	%ebx, (%r10,%r11)
	addq	$4, %r11
	cmpq	%r11, %r9
	jne	.LBB16_13
# %bb.14:                               # %middle.block169
	cmpl	%edi, %r9d
	je	.LBB16_17
.LBB16_15:                              # %lab_L163.preheader184
	decq	%r8
	.p2align	4
.LBB16_16:                              # %lab_L163
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rsi,%r8), %r9d
	movb	%r9b, 1(%rsp,%rax)
	incq	%rax
	incq	%r8
	cmpq	%rdi, %r8
	jb	.LBB16_16
.LBB16_17:                              # %jt.then_L164
	movq	%rsp, %rdi
	sarq	$3, %rdi
	movq	%rax, %rsi
	callq	rdargslen@PLT
	addq	$512, %rsp                      # imm = 0x200
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	rdargs2, .Lfunc_end16-rdargs2
	.cfi_endproc
                                        # -- End function
	.globl	rdargslen                       # -- Begin function rdargslen
	.p2align	4
	.type	rdargslen,@function
rdargslen:                              # @rdargslen
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$1400, %rsp                     # imm = 0x578
	.cfi_def_cfa_offset 1456
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rsi, %r15
	leaq	128(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	376(%rsp), %rbp
	sarq	$3, %rbp
	testq	%rcx, %rcx
	js	.LBB17_3
# %bb.1:                                # %lab_L321.i.preheader
	leaq	(,%rdx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4
.LBB17_2:                               # %lab_L321.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	incq	%rcx
	addq	$8, %rax
	cmpq	%r13, %rcx
	jle	.LBB17_2
.LBB17_3:                               # %lab_L321.i1863.preheader
	sarq	$3, 80(%rsp)                    # 8-byte Folded Spill
	leaq	(,%rbp,8), %rax
	movq	$-1, %rcx
	.p2align	4
.LBB17_4:                               # %lab_L321.i1863
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	incq	%rcx
	addq	$8, %rax
	cmpq	$127, %rcx
	jb	.LBB17_4
# %bb.5:                                # %clear_words.exit1870
	testq	%r15, %r15
	movabsq	$1152921504606849025, %r12      # imm = 0x1000000000000801
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	jle	.LBB17_21
# %bb.6:                                # %lab_L168.preheader
	movl	$1, %r14d
	xorl	%ebx, %ebx
	leaq	.LJTI17_0(%rip), %r12
	jmp	.LBB17_9
	.p2align	4
.LBB17_7:                               # %jf.else229
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	%rbx, %rax
	incq	%rax
	movq	%rax, %rbx
	cmpq	$128, %rax
	jge	.LBB17_85
.LBB17_8:                               # %lab_L171
                                        #   in Loop: Header=BB17_9 Depth=1
	incq	%r14
	cmpq	%r15, %r14
	jg	.LBB17_19
.LBB17_9:                               # %lab_L168
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rdi,8), %eax
	cmpl	$44, %eax
	je	.LBB17_7
# %bb.10:                               # %lab_L168
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpl	$47, %eax
	jne	.LBB17_8
# %bb.11:                               # %jf.else
                                        #   in Loop: Header=BB17_9 Depth=1
	movzbl	1(%r14,%rdi,8), %edi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*768(%rax)
	addq	$-65, %rax
	cmpq	$18, %rax
	ja	.LBB17_88
# %bb.12:                               # %jf.else
                                        #   in Loop: Header=BB17_9 Depth=1
	movslq	(%r12,%rax,4), %rax
	addq	%r12, %rax
	jmpq	*%rax
.LBB17_13:                              #   in Loop: Header=BB17_9 Depth=1
	movl	$1, %eax
	jmp	.LBB17_18
.LBB17_14:                              # %lab_L177
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	$2, %eax
	jmp	.LBB17_18
.LBB17_15:                              # %lab_L180
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	$16, %eax
	jmp	.LBB17_18
.LBB17_16:                              # %lab_L179
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	$8, %eax
	jmp	.LBB17_18
.LBB17_17:                              # %lab_L178
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	$4, %eax
	.p2align	4
.LBB17_18:                              # %lab_L171.sink.split
                                        #   in Loop: Header=BB17_9 Depth=1
	leaq	(%rbx,%rbp), %rcx
	orq	%rax, (,%rcx,8)
	movq	64(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB17_8
.LBB17_19:                              # %jt.then_L169
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	js	.LBB17_31
# %bb.20:
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movabsq	$1152921504606849025, %r12      # imm = 0x1000000000000801
	jmp	.LBB17_22
.LBB17_21:
	xorl	%edi, %edi
.LBB17_22:                              # %lab_L183.preheader
	leaq	(,%rbp,8), %rax
	leaq	.Ltmp0(%rip), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	xorl	%ecx, %ecx
	.p2align	4
.LBB17_23:                              # %lab_L183
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %esi
	notl	%esi
	testb	$12, %sil
	je	.LBB17_26
# %bb.24:                               # %lab_L186
                                        #   in Loop: Header=BB17_23 Depth=1
	incq	%rcx
	addq	$8, %rax
	cmpq	%rdi, %rcx
	jle	.LBB17_23
# %bb.25:
	movl	$0, 52(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB17_32
.LBB17_26:
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
                                        # implicit-def: $rax
                                        # implicit-def: $r13
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
	jmpq	*72(%rsp)                       # 8-byte Folded Reload
.Ltmp0:                                 # Block address taken
.LBB17_27:                              # %lf_L167
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	callq	*320(%rbx)
	.p2align	4
.LBB17_28:                              # %lab_L244
                                        # =>This Inner Loop Header: Depth=1
	callq	*304(%rbx)
	incq	%rax
	cmpq	$60, %rax
	ja	.LBB17_28
# %bb.29:                               # %lab_L244
                                        #   in Loop: Header=BB17_28 Depth=1
	btq	%rax, %r12
	jae	.LBB17_28
# %bb.30:                               # %lab_L245
	movq	$120, 80(%rbx)
	jmp	.LBB17_86
.LBB17_31:
	movb	$1, %al
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movabsq	$1152921504606849025, %r12      # imm = 0x1000000000000801
.LBB17_32:                              # %jt.then_L184
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	leaq	1(%rdx,%rdi), %rbx
	leaq	.Llstr.global.32(%rip), %rax
	sarq	$3, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	leaq	(,%rax,8), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	leaq	(,%rbp,8), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leaq	.Ltmp0(%rip), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
.LBB17_33:                              # %lab_L188.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_35 Depth 2
                                        #       Child Loop BB17_36 Depth 3
                                        #       Child Loop BB17_42 Depth 3
                                        #       Child Loop BB17_61 Depth 3
                                        #     Child Loop BB17_68 Depth 2
	subq	%rbx, %rdx
	addq	%r13, %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	leaq	(,%rbx,8), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	1(,%rbx,8), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB17_35
	.p2align	4
.LBB17_34:                              # %jt.then_L230
                                        #   in Loop: Header=BB17_35 Depth=2
	movq	112(%rsp), %rdi                 # 8-byte Reload
	callq	*712(%r12)
	movq	104(%r12), %rdi
	callq	*344(%r12)
	movq	%r12, %rax
	movabsq	$1152921504606849025, %r12      # imm = 0x1000000000000801
	movq	8(%rsp), %rbx                   # 8-byte Reload
.LBB17_35:                              # %lab_L188
                                        #   Parent Loop BB17_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_36 Depth 3
                                        #       Child Loop BB17_42 Depth 3
                                        #       Child Loop BB17_61 Depth 3
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	*824(%rax)
	movq	$-1, %rcx
	movq	96(%rsp), %rdx                  # 8-byte Reload
	.p2align	4
.LBB17_36:                              # %lab_L321.i1871
                                        #   Parent Loop BB17_33 Depth=1
                                        #     Parent Loop BB17_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	$0, (%rdx)
	incq	%rcx
	addq	$8, %rdx
	cmpq	$30, %rcx
	jb	.LBB17_36
# %bb.37:                               # %clear_words.exit1878
                                        #   in Loop: Header=BB17_35 Depth=2
	cmpq	$1, %rax
	movq	64(%rsp), %rdi                  # 8-byte Reload
	jne	.LBB17_62
# %bb.38:                               # %lab_L220
                                        #   in Loop: Header=BB17_35 Depth=2
	testq	%r15, %r15
	jle	.LBB17_48
# %bb.39:                               # %lab_L278.i.preheader
                                        #   in Loop: Header=BB17_35 Depth=2
	movl	$1, %r12d
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.LBB17_42
	.p2align	4
.LBB17_40:                              # %jf.then_L283.i
                                        #   in Loop: Header=BB17_42 Depth=3
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzbl	1(%rbx,%rax,8), %esi
	incq	%rbx
	movq	%r13, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*776(%rax)
	movq	64(%rsp), %rdi                  # 8-byte Reload
	xorl	%ecx, %ecx
	testq	%rax, %rax
	setne	%cl
.LBB17_41:                              # %jf.then_L282.i
                                        #   in Loop: Header=BB17_42 Depth=3
	xorl	%eax, %eax
	cmpq	$44, %r13
	sete	%al
	cmpq	$61, %r13
	sete	%dl
	orb	%al, %dl
	cmovneq	%rbp, %rbx
	cmovneq	%rbp, %rcx
	addq	%rax, %r14
	incq	%r12
	cmpq	%r15, %r12
	jg	.LBB17_47
.LBB17_42:                              # %lab_L278.i
                                        #   Parent Loop BB17_33 Depth=1
                                        #     Parent Loop BB17_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r12,%rdi,8), %r13d
	testq	%rcx, %rcx
	jne	.LBB17_41
# %bb.43:                               # %jf.else.i1895
                                        #   in Loop: Header=BB17_42 Depth=3
	cmpb	$61, %r13b
	ja	.LBB17_40
# %bb.44:                               # %jf.else.i1895
                                        #   in Loop: Header=BB17_42 Depth=3
	movabsq	$2306001338888093696, %rax      # imm = 0x2000900000000000
	btq	%r13, %rax
	jae	.LBB17_40
# %bb.45:                               # %jt.then_L284.i
                                        #   in Loop: Header=BB17_42 Depth=3
	movq	32(%rsp), %rax                  # 8-byte Reload
	movzbl	(%rax), %eax
	cmpq	%rax, %rbx
	jne	.LBB17_40
# %bb.46:                               #   in Loop: Header=BB17_35 Depth=2
	movq	88(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB17_50
	.p2align	4
.LBB17_47:                              # %jt.then_L279.i
                                        #   in Loop: Header=BB17_35 Depth=2
	movq	$-1, %r12
	testq	%rcx, %rcx
	movq	88(%rsp), %r13                  # 8-byte Reload
	jne	.LBB17_55
	jmp	.LBB17_49
	.p2align	4
.LBB17_48:                              #   in Loop: Header=BB17_35 Depth=2
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
.LBB17_49:                              # %jf.else191.i
                                        #   in Loop: Header=BB17_35 Depth=2
	movq	32(%rsp), %rax                  # 8-byte Reload
	movzbl	(%rax), %eax
	movq	$-1, %r12
	cmpq	%rax, %rbx
	jne	.LBB17_55
.LBB17_50:                              # %findarglen.exit
                                        #   in Loop: Header=BB17_35 Depth=2
	testq	%r14, %r14
	js	.LBB17_54
# %bb.51:                               # %jf.else1072
                                        #   in Loop: Header=BB17_35 Depth=2
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax), %rbx
	movq	(,%rbx,8), %rax
	testb	$32, %al
	jne	.LBB17_89
# %bb.52:                               # %jf.then_L223
                                        #   in Loop: Header=BB17_35 Depth=2
	shlq	$3, %rbx
	testb	$4, %al
	movabsq	$1152921504606849025, %r12      # imm = 0x1000000000000801
	je	.LBB17_78
# %bb.53:                               # %jf.else1130
                                        #   in Loop: Header=BB17_35 Depth=2
	addq	40(%rsp), %r14                  # 8-byte Folded Reload
	movq	$-1, (,%r14,8)
	orb	$32, (%rbx)
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	jmp	.LBB17_35
.LBB17_54:                              #   in Loop: Header=BB17_35 Depth=2
	movq	%r14, %r12
.LBB17_55:                              # %jf.then_L221
                                        #   in Loop: Header=BB17_35 Depth=2
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*304(%rax)
	cmpq	$10, %rax
	jne	.LBB17_65
# %bb.56:                               # %jf.else1251
                                        #   in Loop: Header=BB17_35 Depth=2
	movq	32(%rsp), %rax                  # 8-byte Reload
	movzbl	(%rax), %ebx
	testb	%bl, %bl
	je	.LBB17_65
# %bb.57:                               # %lab_L144.i
                                        #   in Loop: Header=BB17_35 Depth=2
	movq	120(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax), %esi
	movl	$63, %edi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*776(%rax)
	testq	%rax, %rax
	jne	.LBB17_65
# %bb.58:                               # %lab_L144.i
                                        #   in Loop: Header=BB17_35 Depth=2
	cmpb	$1, %bl
	jne	.LBB17_65
# %bb.59:                               # %jf.else1272
                                        #   in Loop: Header=BB17_35 Depth=2
	testq	%r15, %r15
	movq	64(%rsp), %r14                  # 8-byte Reload
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r12
	jle	.LBB17_34
# %bb.60:                               # %lab_L229.preheader
                                        #   in Loop: Header=BB17_35 Depth=2
	movl	$1, %ebx
	.p2align	4
.LBB17_61:                              # %lab_L229
                                        #   Parent Loop BB17_33 Depth=1
                                        #     Parent Loop BB17_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx,%r14,8), %edi
	callq	*328(%r12)
	incq	%rbx
	cmpq	%r15, %rbx
	jle	.LBB17_61
	jmp	.LBB17_34
	.p2align	4
.LBB17_62:                              # %clear_words.exit1878
                                        #   in Loop: Header=BB17_33 Depth=1
	leaq	-3(%rax), %rcx
	cmpq	$2, %rcx
	jb	.LBB17_83
# %bb.63:                               # %clear_words.exit1878
                                        #   in Loop: Header=BB17_33 Depth=1
	cmpq	$2, %rax
	jne	.LBB17_82
# %bb.64:                               # %lab_L233.loopexit
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	$-1, %r12
	jmp	.LBB17_66
	.p2align	4
.LBB17_65:                              # %jf.then_L227
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*320(%rax)
.LBB17_66:                              # %lab_L233
                                        #   in Loop: Header=BB17_33 Depth=1
	testq	%r12, %r12
	setns	%al
	orb	52(%rsp), %al                   # 1-byte Folded Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	jne	.LBB17_70
# %bb.67:                               # %lab_L235.preheader
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	xorl	%r14d, %r14d
	.p2align	4
.LBB17_68:                              # %lab_L235
                                        #   Parent Loop BB17_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$38, (%rax)
	je	.LBB17_71
# %bb.69:                               # %lab_L238
                                        #   in Loop: Header=BB17_68 Depth=2
	incq	%r14
	addq	$8, %rax
	cmpq	%rdi, %r14
	jle	.LBB17_68
.LBB17_70:                              #   in Loop: Header=BB17_33 Depth=1
	movq	%r12, %r14
.LBB17_71:                              # %jf.then_L234
                                        #   in Loop: Header=BB17_33 Depth=1
	testq	%r14, %r14
	movabsq	$1152921504606849025, %r12      # imm = 0x1000000000000801
	js	.LBB17_81
# %bb.72:                               # %jf.then_L234.jt.then_L240_crit_edge
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax), %rbx
	shlq	$3, %rbx
.LBB17_73:                              # %jt.then_L240
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	(%rbx), %rax
	testb	$32, %al
	jne	.LBB17_81
# %bb.74:                               # %jf.then_L241
                                        #   in Loop: Header=BB17_33 Depth=1
	testb	$8, %al
	jne	.LBB17_76
# %bb.75:                               # %jf.then_L242
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	%rdx, %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, (,%r14,8)
	orb	$32, (%rbx)
	movq	%rax, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movzbl	(%rax), %eax
	shrl	$3, %eax
	leaq	1(%rbx,%rax), %rbx
	jmp	.LBB17_33
.LBB17_76:                              # %jf.else1494
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	string_to_number@PLT
	testq	%rax, %rax
	je	.LBB17_87
# %bb.77:                               # %jt.then_L243
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	80(%rax), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, (%rcx)
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	%rdx, %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, (,%r14,8)
	orb	$32, (%rbx)
	incq	%rax
	movq	%rax, %rbx
	jmp	.LBB17_33
.LBB17_78:                              # %jf.then_L224
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*824(%rax)
	cmpq	$5, %rax
	jne	.LBB17_80
# %bb.79:                               # %jf.else1196
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*824(%rax)
.LBB17_80:                              # %jf.then_L225
                                        #   in Loop: Header=BB17_33 Depth=1
	decq	%rax
	cmpq	$2, %rax
	movq	24(%rsp), %rdi                  # 8-byte Reload
	jb	.LBB17_73
.LBB17_81:
                                        # implicit-def: $rax
                                        # implicit-def: $r13
	movq	16(%rsp), %rbp                  # 8-byte Reload
	jmpq	*72(%rsp)                       # 8-byte Folded Reload
.LBB17_82:                              # %clear_words.exit1878
	testq	%rax, %rax
	jne	.LBB17_87
.LBB17_83:                              # %lab_L193
	cmpb	$0, 52(%rsp)                    # 1-byte Folded Reload
	jne	.LBB17_136
# %bb.84:
	xorl	%r13d, %r13d
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	16(%rsp), %rbp                  # 8-byte Reload
	jmp	.LBB17_91
.LBB17_85:                              # %jf.else247
	leaq	.Llstr.global.23(%rip), %rdi
	sarq	$3, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*760(%rax)
.LBB17_86:                              # %common.ret
	xorl	%ebx, %ebx
	jmp	.LBB17_90
.LBB17_87:
                                        # implicit-def: $rax
                                        # implicit-def: $r13
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	jmpq	*72(%rsp)                       # 8-byte Folded Reload
.LBB17_88:                              # %goto.phi.bb.loopexit2
	leaq	.Ltmp0(%rip), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
                                        # implicit-def: $rax
                                        # implicit-def: $r13
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
	movabsq	$1152921504606849025, %r12      # imm = 0x1000000000000801
	movq	%rbx, %rdi
	jmpq	*72(%rsp)                       # 8-byte Folded Reload
.LBB17_89:
                                        # implicit-def: $rax
                                        # implicit-def: $r13
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movabsq	$1152921504606849025, %r12      # imm = 0x1000000000000801
	movq	24(%rsp), %rdi                  # 8-byte Reload
	jmpq	*72(%rsp)                       # 8-byte Folded Reload
.LBB17_91:                              # %lab_L194
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_99 Depth 2
                                        #     Child Loop BB17_110 Depth 2
	addq	%r13, %rbp
	movq	(,%rbp,8), %r14
	movl	%r14d, %eax
	andl	$48, %eax
	cmpl	$16, %eax
	jne	.LBB17_94
# %bb.92:                               # %jf.else451
                                        #   in Loop: Header=BB17_91 Depth=1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r8
	movq	96(%r8), %rax
	cmpq	$-1, (,%rax,8)
	jne	.LBB17_94
# %bb.95:                               # %jf.else472
                                        #   in Loop: Header=BB17_91 Depth=1
	movq	104(%r8), %rax
	cmpq	$-1, (,%rax,8)
	jne	.LBB17_94
# %bb.97:                               # %jf.else493
                                        #   in Loop: Header=BB17_91 Depth=1
	shlq	$3, %rbp
	movl	$1, %eax
	testq	%r15, %r15
	jle	.LBB17_101
# %bb.98:                               # %lab_L151.preheader.i
                                        #   in Loop: Header=BB17_91 Depth=1
	movq	%r13, %rcx
	.p2align	4
.LBB17_99:                              # %lab_L151.i
                                        #   Parent Loop BB17_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rcx, %rcx
	je	.LBB17_101
# %bb.100:                              # %jf.else.i
                                        #   in Loop: Header=BB17_99 Depth=2
	xorl	%edx, %edx
	cmpb	$44, (%rax,%rdi,8)
	sete	%dl
	subq	%rdx, %rcx
	incq	%rax
	cmpq	%r15, %rax
	jle	.LBB17_99
.LBB17_101:                             # %jt.then_L153.i
                                        #   in Loop: Header=BB17_91 Depth=1
	xorl	%ecx, %ecx
	cmpq	%r15, %rax
	jle	.LBB17_107
.LBB17_102:                             # %getkeylen.exit
                                        #   in Loop: Header=BB17_91 Depth=1
	movb	%cl, 128(%rsp)
	movq	80(%rsp), %rdi                  # 8-byte Reload
	callq	*712(%r8)
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	testb	$4, (%rbp)
	je	.LBB17_104
# %bb.103:                              # %jt.else544
                                        #   in Loop: Header=BB17_91 Depth=1
	leaq	.Llstr.global.24(%rip), %rdi
	sarq	$3, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*712(%rax)
.LBB17_104:                             # %jt.then_L199
                                        #   in Loop: Header=BB17_91 Depth=1
	leaq	.Llstr.global.25(%rip), %rdi
	sarq	$3, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbp
	callq	*712(%rbp)
	movq	104(%rbp), %rdi
	callq	*344(%rbp)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	*824(%rbp)
	leaq	.Ltmp0(%rip), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	cmpq	$4, %rax
	ja	.LBB17_124
# %bb.105:                              # %jt.then_L199
                                        #   in Loop: Header=BB17_91 Depth=1
	leaq	.LJTI17_1(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	64(%rsp), %rdi                  # 8-byte Reload
	jmpq	*%rax
.LBB17_94:                              #   in Loop: Header=BB17_91 Depth=1
	movq	16(%rsp), %rbp                  # 8-byte Reload
	incq	%r13
	cmpq	24(%rsp), %r13                  # 8-byte Folded Reload
	jle	.LBB17_91
	jmp	.LBB17_131
.LBB17_107:                             # %lab_L155.preheader.i
                                        #   in Loop: Header=BB17_91 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB17_110
	.p2align	4
.LBB17_108:                             # %jt.else118.i
                                        #   in Loop: Header=BB17_110 Depth=2
	movb	%dl, 129(%rsp,%rcx)
	incq	%rcx
.LBB17_109:                             # %jt.then_L158.i
                                        #   in Loop: Header=BB17_110 Depth=2
	incq	%rax
	cmpq	%r15, %rax
	jg	.LBB17_102
.LBB17_110:                             # %lab_L155.i
                                        #   Parent Loop BB17_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rdi,8), %edx
	movzbl	%dl, %esi
	cmpl	$43, %esi
	jg	.LBB17_112
# %bb.111:                              # %lab_L155.i
                                        #   in Loop: Header=BB17_110 Depth=2
	cmpl	$10, %esi
	je	.LBB17_109
	jmp	.LBB17_108
	.p2align	4
.LBB17_112:                             # %lab_L155.i
                                        #   in Loop: Header=BB17_110 Depth=2
	cmpl	$44, %esi
	je	.LBB17_102
# %bb.113:                              # %lab_L155.i
                                        #   in Loop: Header=BB17_110 Depth=2
	cmpl	$47, %esi
	je	.LBB17_102
# %bb.114:                              # %lab_L155.i
                                        #   in Loop: Header=BB17_110 Depth=2
	cmpl	$61, %esi
	jne	.LBB17_108
	jmp	.LBB17_102
.LBB17_115:                             # %lab_L203
	testb	$4, %r14b
	jne	.LBB17_118
# %bb.116:                              # %jf.then_L204
	testb	$8, %r14b
	jne	.LBB17_122
.LBB17_117:                             # %lab_L209
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	(%r13,%rcx), %rax
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rdx, (,%rax,8)
	movq	32(%rsp), %rax                  # 8-byte Reload
	orb	$32, (%rax)
	movzbl	(,%rdx,8), %eax
	shrl	$3, %eax
	leaq	1(%rdx,%rax), %rdx
	movq	88(%rsp), %rax                  # 8-byte Reload
	addq	%rcx, %rax
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	subq	%rdx, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rbp                  # 8-byte Reload
	jmp	.LBB17_126
.LBB17_118:                             # %jf.else599
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%r13,%rax), %r14
	movq	$0, (,%r14,8)
	shlq	$3, %r14
	leaq	.Llstr.global.26(%rip), %rsi
	sarq	$3, %rsi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	compstring@PLT
	testq	%rax, %rax
	je	.LBB17_120
# %bb.119:                              # %jt.else633
	leaq	.Llstr.global.27(%rip), %rsi
	sarq	$3, %rsi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	compstring@PLT
	testq	%rax, %rax
	jne	.LBB17_121
.LBB17_120:                             # %jt.then_L206
	movq	$-1, (%r14)
.LBB17_121:                             # %jf.then_L205
	movq	32(%rsp), %rax                  # 8-byte Reload
	orb	$32, (%rax)
	leaq	.Ltmp1(%rip), %rcx
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rbx, %rdi
	movq	16(%rsp), %rbp                  # 8-byte Reload
	jmpq	*%rcx
.LBB17_122:                             # %jf.else717
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	%r13, %rax
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	%r14, (,%rax,8)
	movq	%r14, %rdi
	callq	string_to_number@PLT
	testq	%rax, %rax
	je	.LBB17_124
# %bb.123:                              # %jt.then_L208
	movq	96(%rsp), %rcx                  # 8-byte Reload
	shlq	$3, %rcx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	80(%rax), %rax
	movq	%rax, (,%r14,8)
	movq	%r14, (%rcx)
	movq	32(%rsp), %rax                  # 8-byte Reload
	orb	$32, (%rax)
	incq	%r14
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	decq	56(%rsp)                        # 8-byte Folded Spill
	leaq	.Ltmp1(%rip), %rcx
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rbx, %rdi
	movq	16(%rsp), %rbp                  # 8-byte Reload
	jmpq	*%rcx
.LBB17_124:
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rbx, %rdi
	movq	16(%rsp), %rbp                  # 8-byte Reload
	jmpq	*72(%rsp)                       # 8-byte Folded Reload
.Ltmp1:                                 # Block address taken
.LBB17_125:                             # %lf_L198
	movq	%rdi, %rbx
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.LBB17_126:                             # %.split
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r14
	callq	*320(%r14)
	.p2align	4
.LBB17_127:                             # %lab_L210
                                        # =>This Inner Loop Header: Depth=1
	callq	*304(%r14)
	incq	%rax
	cmpq	$60, %rax
	ja	.LBB17_127
# %bb.128:                              # %lab_L210
                                        #   in Loop: Header=BB17_127 Depth=1
	btq	%rax, %r12
	jae	.LBB17_127
# %bb.129:                              # %jf.then_L197.loopexit
	movq	64(%rsp), %rdi                  # 8-byte Reload
	incq	%r13
	cmpq	24(%rsp), %r13                  # 8-byte Folded Reload
	jle	.LBB17_91
.LBB17_131:                             # %jt.then_L195
	testq	%rbx, %rbx
	js	.LBB17_135
# %bb.132:                              # %lab_L215.preheader
	leaq	(,%rbp,8), %rax
	xorl	%ecx, %ecx
	leaq	.Ltmp0(%rip), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	.p2align	4
.LBB17_133:                             # %lab_L215
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %edx
	andl	$33, %edx
	cmpl	$1, %edx
	je	.LBB17_137
# %bb.134:                              # %lab_L218
                                        #   in Loop: Header=BB17_133 Depth=1
	incq	%rcx
	addq	$8, %rax
	cmpq	%rbx, %rcx
	jle	.LBB17_133
.LBB17_135:
	movq	8(%rsp), %rbx                   # 8-byte Reload
.LBB17_136:                             # %jt.then_L216
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	$0, 80(%rax)
.LBB17_90:                              # %common.ret
	movq	%rbx, %rax
	addq	$1400, %rsp                     # imm = 0x578
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB17_137:
	.cfi_def_cfa_offset 1456
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	movq	%rbx, %rdi
	jmpq	*72(%rsp)                       # 8-byte Folded Reload
.Lfunc_end17:
	.size	rdargslen, .Lfunc_end17-rdargslen
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI17_0:
	.long	.LBB17_13-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_14-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_16-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_15-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_88-.LJTI17_0
	.long	.LBB17_17-.LJTI17_0
.LJTI17_1:
	.long	.LBB17_94-.LJTI17_1
	.long	.LBB17_115-.LJTI17_1
	.long	.LBB17_117-.LJTI17_1
	.long	.LBB17_94-.LJTI17_1
	.long	.LBB17_94-.LJTI17_1
                                        # -- End function
	.section	.text.BLIB,"ax",@progbits
	.globl	rditem                          # -- Begin function rditem
	.p2align	4
	.type	rditem,@function
rditem:                                 # @rditem
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	callq	*304(%r15)
	testq	%r14, %r14
	js	.LBB18_3
# %bb.1:                                # %lab_L248.preheader
	leaq	(,%rbx,8), %rcx
	xorl	%edx, %edx
	.p2align	4
.LBB18_2:                               # %lab_L248
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx)
	incq	%rdx
	addq	$8, %rcx
	cmpq	%r14, %rdx
	jle	.LBB18_2
.LBB18_3:                               # %jt.then_L249
	cmpq	$32, %rax
	ja	.LBB18_7
# %bb.4:                                # %jt.then_L249
	movabsq	$4294976000, %r12               # imm = 0x100002200
	.p2align	4
.LBB18_5:                               # %jt.then_L249
                                        # =>This Inner Loop Header: Depth=1
	btq	%rax, %r12
	jae	.LBB18_7
# %bb.6:                                # %lab_L252
                                        #   in Loop: Header=BB18_5 Depth=1
	callq	*304(%r15)
	cmpq	$32, %rax
	jbe	.LBB18_5
.LBB18_7:                               # %jf.then_L254
	leaq	7(,%r14,8), %r12
	cmpq	$33, %rax
	jle	.LBB18_8
# %bb.10:                               # %jf.then_L254
	cmpq	$61, %rax
	je	.LBB18_20
# %bb.11:                               # %jf.then_L254
	cmpq	$59, %rax
	je	.LBB18_19
# %bb.12:                               # %jf.then_L254
	cmpq	$34, %rax
	jne	.LBB18_29
# %bb.13:                               # %lab_L261.preheader
	leaq	(,%rbx,8), %r13
	xorl	%ebp, %ebp
	.p2align	4
.LBB18_14:                              # %lab_L261
                                        # =>This Inner Loop Header: Depth=1
	callq	*304(%r15)
	cmpq	$13, %rax
	je	.LBB18_14
# %bb.15:                               # %lab_L261
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	$-1, %rax
	je	.LBB18_16
# %bb.21:                               # %lab_L261
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	$10, %rax
	je	.LBB18_16
# %bb.22:                               # %lab_L261
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	$34, %rax
	je	.LBB18_23
# %bb.24:                               # %jf.then_L264
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	$42, %rax
	jne	.LBB18_26
# %bb.25:                               # %jf.else252
                                        #   in Loop: Header=BB18_14 Depth=1
	callq	*304(%r15)
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	*768(%r15)
	cmpq	$78, %rax
	movl	$10, %eax
	cmoveq	%rax, %r14
	movq	%r14, %rdi
	callq	*768(%r15)
	movq	%rax, %rcx
	movq	%r14, %rax
	movl	$34, %edx
	cmpq	$34, %rcx
	cmovel	%edx, %eax
.LBB18_26:                              # %jf.then_L265
                                        #   in Loop: Header=BB18_14 Depth=1
	incq	%rbp
	cmpq	%r12, %rbp
	jg	.LBB18_16
# %bb.27:                               # %jf.then_L268
                                        #   in Loop: Header=BB18_14 Depth=1
	movb	%bpl, (%r13)
	movb	%al, (%rbp,%rbx,8)
	jmp	.LBB18_14
.LBB18_8:                               # %jf.then_L254
	cmpq	$-1, %rax
	je	.LBB18_9
# %bb.28:                               # %jf.then_L254
	cmpq	$10, %rax
	jne	.LBB18_29
# %bb.18:                               # %jf.else147
	movl	$3, %ecx
	jmp	.LBB18_17
.LBB18_20:                              # %jf.else173
	movl	$5, %ecx
	jmp	.LBB18_17
.LBB18_19:                              # %jf.else160
	movl	$4, %ecx
	jmp	.LBB18_17
.LBB18_9:
	xorl	%ecx, %ecx
	jmp	.LBB18_17
.LBB18_29:                              # %jt.else393
	leaq	(,%rbx,8), %r14
	xorl	%r13d, %r13d
	movabsq	$2882303765812086272, %rbp      # imm = 0x2800000100000600
.LBB18_30:                              # %lab_L269
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_32 Depth 2
	incq	%r13
	cmpq	%r12, %r13
	jg	.LBB18_16
# %bb.31:                               # %jf.then_L272
                                        #   in Loop: Header=BB18_30 Depth=1
	movb	%r13b, (%r14)
	movb	%al, (%r13,%rbx,8)
	.p2align	4
.LBB18_32:                              # %lab_L273
                                        #   Parent Loop BB18_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	*304(%r15)
	cmpq	$13, %rax
	je	.LBB18_32
# %bb.33:                               # %lab_L273
                                        #   in Loop: Header=BB18_30 Depth=1
	cmpq	$61, %rax
	ja	.LBB18_35
# %bb.34:                               # %lab_L273
                                        #   in Loop: Header=BB18_30 Depth=1
	btq	%rax, %rbp
	jb	.LBB18_36
.LBB18_35:                              # %jt.else524
                                        #   in Loop: Header=BB18_30 Depth=1
	cmpq	$-1, %rax
	movl	$1, %ecx
	jne	.LBB18_30
	jmp	.LBB18_17
.LBB18_36:                              # %jt.else546
	callq	*320(%r15)
	movl	$1, %ecx
	jmp	.LBB18_17
.LBB18_16:                              # %common.ret.loopexit1
	movq	$-1, %rcx
	jmp	.LBB18_17
.LBB18_23:                              # %jf.else239
	movl	$2, %ecx
.LBB18_17:                              # %common.ret
	movq	%rcx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	rditem, .Lfunc_end18-rditem
	.cfi_endproc
                                        # -- End function
	.globl	findarg                         # -- Begin function findarg
	.p2align	4
	.type	findarg,@function
findarg:                                # @findarg
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movzbl	(,%rdi,8), %r13d
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	leaq	(,%rsi,8), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	testq	%r13, %r13
	je	.LBB19_1
# %bb.2:                                # %lab_L278.i.preheader
	movq	%rdi, %r15
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	jmp	.LBB19_3
	.p2align	4
.LBB19_7:                               # %jf.then_L283.i
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movzbl	1(%rbp,%rax,8), %esi
	incq	%rbp
	movq	%r12, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*776(%rax)
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	testq	%rax, %rax
	setne	%cl
.LBB19_8:                               # %jf.then_L282.i
                                        #   in Loop: Header=BB19_3 Depth=1
	xorl	%eax, %eax
	cmpq	$44, %r12
	sete	%al
	cmpq	$61, %r12
	sete	%dl
	orb	%al, %dl
	cmovneq	%rsi, %rbp
	cmovneq	%rsi, %rcx
	addq	%rax, %rbx
	incq	%r14
	cmpq	%r13, %r14
	jae	.LBB19_9
.LBB19_3:                               # %lab_L278.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%r14,%r15,8), %r12d
	testq	%rcx, %rcx
	jne	.LBB19_8
# %bb.4:                                # %jf.else.i
                                        #   in Loop: Header=BB19_3 Depth=1
	cmpb	$61, %r12b
	ja	.LBB19_7
# %bb.5:                                # %jf.else.i
                                        #   in Loop: Header=BB19_3 Depth=1
	movabsq	$2306001338888093696, %rax      # imm = 0x2000900000000000
	btq	%r12, %rax
	jae	.LBB19_7
# %bb.6:                                # %jt.then_L284.i
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzbl	(%rax), %eax
	cmpq	%rax, %rbp
	jne	.LBB19_7
	jmp	.LBB19_12
.LBB19_9:                               # %jt.then_L279.i
	testq	%rcx, %rcx
	jne	.LBB19_11
# %bb.10:                               # %jf.else191.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzbl	(%rax), %eax
	cmpq	%rax, %rbp
	je	.LBB19_12
.LBB19_11:                              # %jf.then_L289.i
	movq	$-1, %rbx
.LBB19_12:                              # %findarglen.exit
	movq	%rbx, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB19_1:
	.cfi_def_cfa_offset 80
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzbl	(%rax), %eax
	cmpq	%rax, %rbp
	jne	.LBB19_11
	jmp	.LBB19_12
.Lfunc_end19:
	.size	findarg, .Lfunc_end19-findarg
	.cfi_endproc
                                        # -- End function
	.globl	findarglen                      # -- Begin function findarglen
	.p2align	4
	.type	findarglen,@function
findarglen:                             # @findarglen
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	testq	%rsi, %rsi
	jle	.LBB20_1
# %bb.2:                                # %lab_L278.preheader
	movq	%rsi, %r15
	shlq	$3, %r12
	movl	$1, %ebx
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	movq	%rdi, (%rsp)                    # 8-byte Spill
	jmp	.LBB20_3
	.p2align	4
.LBB20_7:                               # %jf.then_L283
                                        #   in Loop: Header=BB20_3 Depth=1
	movzbl	1(%r12,%rbp), %esi
	incq	%rbp
	movq	%r13, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	callq	*776(%rax)
	xorl	%r9d, %r9d
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%ecx, %ecx
	testq	%rax, %rax
	setne	%cl
.LBB20_8:                               # %jf.then_L282
                                        #   in Loop: Header=BB20_3 Depth=1
	xorl	%eax, %eax
	cmpq	$44, %r13
	sete	%al
	cmpq	$61, %r13
	sete	%sil
	orb	%al, %sil
	cmovneq	%r9, %rbp
	cmovneq	%r9, %rcx
	addq	%rax, %r14
	incq	%rbx
	cmpq	%r15, %rbx
	jg	.LBB20_9
.LBB20_3:                               # %lab_L278
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rdi,8), %r13d
	testq	%rcx, %rcx
	jne	.LBB20_8
# %bb.4:                                # %jf.else
                                        #   in Loop: Header=BB20_3 Depth=1
	cmpb	$61, %r13b
	ja	.LBB20_7
# %bb.5:                                # %jf.else
                                        #   in Loop: Header=BB20_3 Depth=1
	movabsq	$2306001338888093696, %rax      # imm = 0x2000900000000000
	btq	%r13, %rax
	jae	.LBB20_7
# %bb.6:                                # %jt.then_L284
                                        #   in Loop: Header=BB20_3 Depth=1
	movzbl	(%r12), %eax
	cmpq	%rax, %rbp
	jne	.LBB20_7
	jmp	.LBB20_12
.LBB20_9:                               # %jt.then_L279
	testq	%rcx, %rcx
	jne	.LBB20_11
# %bb.10:                               # %jf.else191
	movzbl	(%r12), %eax
	cmpq	%rax, %rbp
	je	.LBB20_12
.LBB20_11:                              # %jf.then_L289
	movq	$-1, %r14
.LBB20_12:                              # %common.ret
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB20_1:                               # %entry.jf.else191_crit_edge
	.cfi_def_cfa_offset 64
	shlq	$3, %r12
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	movzbl	(%r12), %eax
	cmpq	%rax, %rbp
	jne	.LBB20_11
	jmp	.LBB20_12
.Lfunc_end20:
	.size	findarglen, .Lfunc_end20-findarglen
	.cfi_endproc
                                        # -- End function
	.globl	string_to_number                # -- Begin function string_to_number
	.p2align	4
	.type	string_to_number,@function
string_to_number:                       # @string_to_number
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movzbl	(,%rdi,8), %r12d
	testq	%r12, %r12
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	movq	$0, 80(%r15)
	je	.LBB21_5
# %bb.1:                                # %jt.then_L290
	movq	%rdi, %rbx
	leaq	(,%rdi,8), %r13
	movzbl	1(%r13), %edi
	callq	*768(%r15)
	cmpl	$3, %r12d
	jne	.LBB21_6
# %bb.2:                                # %jt.then_L290
	cmpq	$39, %rax
	jne	.LBB21_6
# %bb.3:                                # %jf.else42
	cmpb	$39, 3(%r13)
	jne	.LBB21_10
# %bb.4:                                # %jf.else62
	movzbl	2(%r13), %eax
	jmp	.LBB21_31
.LBB21_5:
	xorl	%r14d, %r14d
	jmp	.LBB21_32
.LBB21_6:                               # %jf.then_L291
	cmpq	$45, %rax
	je	.LBB21_8
# %bb.7:                                # %jf.then_L291
	cmpq	$43, %rax
	jne	.LBB21_11
.LBB21_8:                               # %jt.then_L293
	movq	$-1, %r14
	cmpl	$1, %r12d
	je	.LBB21_32
# %bb.9:                                # %jf.then_L294
	cmpq	$45, %rax
	setne	15(%rsp)                        # 1-byte Folded Spill
	movzbl	2(%r13), %edi
	callq	*768(%r15)
	movl	$2, %r13d
	movl	$10, %ebp
	cmpq	$35, %rax
	je	.LBB21_12
	jmp	.LBB21_22
.LBB21_10:
	movl	$1, %r13d
	movl	$10, %ebp
	movl	$39, %eax
	movb	$1, 15(%rsp)                    # 1-byte Folded Spill
	jmp	.LBB21_22
.LBB21_11:
	movl	$1, %r13d
	movb	$1, 15(%rsp)                    # 1-byte Folded Spill
	movl	$10, %ebp
	cmpq	$35, %rax
	jne	.LBB21_22
.LBB21_12:                              # %jf.else159
	movq	$-1, %r14
	cmpl	%r12d, %r13d
	je	.LBB21_32
# %bb.13:                               # %jf.then_L296
	leaq	1(%r13), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movzbl	1(%r13,%rbx,8), %edi
	callq	*768(%r15)
	movl	$8, %ebp
	cmpq	$66, %rax
	je	.LBB21_18
# %bb.14:                               # %jf.then_L296
	cmpq	$79, %rax
	je	.LBB21_18
# %bb.15:                               # %jf.then_L296
	cmpq	$88, %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	jne	.LBB21_21
# %bb.16:                               # %jf.else247
	movl	$16, %ebp
	jmp	.LBB21_19
.LBB21_18:
	movq	16(%rsp), %rcx                  # 8-byte Reload
.LBB21_19:                              # %jf.then_L299
	cmpl	%r12d, %ecx
	je	.LBB21_32
# %bb.20:                               # %jf.then_L301
	cmpq	$66, %rax
	movl	$2, %eax
	cmoveq	%rax, %rbp
	movzbl	2(%r13,%rbx,8), %edi
	addq	$2, %r13
	callq	*768(%r15)
	jmp	.LBB21_22
.LBB21_21:
	movq	%rcx, %r13
.LBB21_22:                              # %jf.then_L295
	xorl	%r14d, %r14d
	leaq	-58(%rax), %rcx
	cmpq	$-10, %rcx
	jb	.LBB21_23
	.p2align	4
.LBB21_24:                              # %jf.else325
	addq	$-48, %rax
	cmpq	%rbp, %rax
	jl	.LBB21_25
	jmp	.LBB21_32
	.p2align	4
.LBB21_23:                              # %jf.then_L304
	leaq	-91(%rax), %rcx
	xorl	%edx, %edx
	cmpq	$95, %rax
	sete	%dl
	negq	%rdx
	orq	$1000, %rdx                     # imm = 0x3E8
	addq	$-55, %rax
	cmpq	$-26, %rcx
	cmovbq	%rdx, %rax
	cmpq	%rbp, %rax
	jge	.LBB21_32
.LBB21_25:                              # %jt.then_L309
	testq	%rax, %rax
	js	.LBB21_27
# %bb.26:                               # %jf.else413
	movq	80(%r15), %rcx
	imulq	%rbp, %rcx
	addq	%rax, %rcx
	movq	%rcx, 80(%r15)
.LBB21_27:                              # %jf.then_L310
	cmpq	%r12, %r13
	jae	.LBB21_29
# %bb.28:                               # %jt.else446
	movzbl	1(%r13,%rbx,8), %edi
	incq	%r13
	callq	*768(%r15)
	leaq	-58(%rax), %rcx
	cmpq	$-10, %rcx
	jae	.LBB21_24
	jmp	.LBB21_23
.LBB21_29:                              # %jt.then_L311
	movq	$-1, %r14
	cmpb	$0, 15(%rsp)                    # 1-byte Folded Reload
	jne	.LBB21_32
# %bb.30:                               # %jf.else472
	xorl	%eax, %eax
	subq	80(%r15), %rax
.LBB21_31:                              # %common.ret.sink.split
	movq	%rax, 80(%r15)
	movq	$-1, %r14
.LBB21_32:                              # %common.ret
	movq	%r14, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	string_to_number, .Lfunc_end21-string_to_number
	.cfi_endproc
                                        # -- End function
	.globl	copystring                      # -- Begin function copystring
	.p2align	4
	.type	copystring,@function
copystring:                             # @copystring
# %bb.0:                                # %entry
	movzbl	(,%rdi,8), %eax
	shlq	$3, %rdi
	cmpq	$3, %rax
	setb	%cl
	shlq	$3, %rsi
	cmpq	%rdi, %rsi
	sete	%dl
	orb	%cl, %dl
	je	.LBB22_2
# %bb.1:
	xorl	%ecx, %ecx
	jmp	.LBB22_5
.LBB22_2:                               # %vector.ph
	leaq	1(%rax), %rdx
	movl	%edx, %ecx
	andl	$-4, %ecx
	xorl	%r8d, %r8d
	.p2align	4
.LBB22_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r8), %r9d
	movl	%r9d, (%rsi,%r8)
	addq	$4, %r8
	cmpq	%r8, %rcx
	jne	.LBB22_3
# %bb.4:                                # %middle.block
	cmpl	%ecx, %edx
	je	.LBB22_7
.LBB22_5:                               # %lab_L313.preheader
	decq	%rcx
	.p2align	4
.LBB22_6:                               # %lab_L313
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rdi,%rcx), %edx
	movb	%dl, 1(%rsi,%rcx)
	incq	%rcx
	cmpq	%rax, %rcx
	jb	.LBB22_6
.LBB22_7:                               # %jt.then_L314
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end22:
	.size	copystring, .Lfunc_end22-copystring
                                        # -- End function
	.globl	copy_words                      # -- Begin function copy_words
	.p2align	4
	.type	copy_words,@function
copy_words:                             # @copy_words
# %bb.0:                                # %entry
	decq	%rdx
	js	.LBB23_3
# %bb.1:                                # %lab_L317.preheader
	shlq	$3, %rsi
	shlq	$3, %rdi
	xorl	%eax, %eax
	.p2align	4
.LBB23_2:                               # %lab_L317
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rcx
	movq	%rcx, (%rsi)
	incq	%rax
	addq	$8, %rsi
	addq	$8, %rdi
	cmpq	%rdx, %rax
	jle	.LBB23_2
.LBB23_3:                               # %jt.then_L318
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end23:
	.size	copy_words, .Lfunc_end23-copy_words
                                        # -- End function
	.globl	clear_words                     # -- Begin function clear_words
	.p2align	4
	.type	clear_words,@function
clear_words:                            # @clear_words
# %bb.0:                                # %entry
	decq	%rsi
	js	.LBB24_3
# %bb.1:                                # %lab_L321.preheader
	shlq	$3, %rdi
	xorl	%eax, %eax
	.p2align	4
.LBB24_2:                               # %lab_L321
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rdi)
	incq	%rax
	addq	$8, %rdi
	cmpq	%rsi, %rax
	jle	.LBB24_2
.LBB24_3:                               # %jt.then_L322
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end24:
	.size	clear_words, .Lfunc_end24-clear_words
                                        # -- End function
	.globl	copy_bytes                      # -- Begin function copy_bytes
	.p2align	4
	.type	copy_bytes,@function
copy_bytes:                             # @copy_bytes
# %bb.0:                                # %entry
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rax
	cmpq	%rcx, %rdi
	movq	%rcx, %rdi
	cmovlq	%rax, %rdi
	movq	%rdi, %r9
	decq	%r9
	js	.LBB25_7
# %bb.1:                                # %lab_L326.preheader
	cmpq	$8, %rdi
	jge	.LBB25_3
# %bb.2:
	xorl	%r10d, %r10d
	jmp	.LBB25_6
.LBB25_3:                               # %vector.ph
	movabsq	$9223372036854775804, %r10      # imm = 0x7FFFFFFFFFFFFFFC
	andq	%rdi, %r10
	xorl	%r11d, %r11d
	.p2align	4
.LBB25_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r11), %ebx
	movl	%ebx, (%r8,%r11)
	addq	$4, %r11
	cmpq	%r11, %r10
	jne	.LBB25_4
# %bb.5:                                # %middle.block
	cmpq	%r10, %rdi
	je	.LBB25_7
	.p2align	4
.LBB25_6:                               # %lab_L326
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%r10), %r11d
	movb	%r11b, (%r8,%r10)
	incq	%r10
	cmpq	%r9, %r10
	jle	.LBB25_6
.LBB25_7:                               # %jt.then_L327
	decq	%rcx
	cmpq	%rcx, %rdi
	jg	.LBB25_14
# %bb.8:                                # %lab_L330.preheader
	movq	%rcx, %r10
	sarq	$63, %r10
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%r10, %r9
	adcq	$0, %r9
	leaq	1(%rdi), %r11
	movq	%r11, %rbx
	sarq	$63, %rbx
	cmpq	%rsi, %r11
	movq	%rbx, %r14
	sbbq	%r9, %r14
	cmovgeq	%r11, %rsi
	subq	%rdi, %rsi
	cmpq	$24, %rsi
	movq	%rdi, %r9
	jb	.LBB25_13
# %bb.9:                                # %vector.scevcheck154
	movq	%rcx, %r9
	addq	$1, %r9
	adcq	$0, %r10
	cmpq	%r9, %r11
	movq	%rbx, %r14
	sbbq	%r10, %r14
	cmovgeq	%rbx, %r10
	cmovgeq	%r11, %r9
	subq	%r11, %r9
	sbbq	%rbx, %r10
	leaq	1(%rdi,%r9), %r9
	cmpq	%r11, %r9
	setl	%r9b
	testq	%r10, %r10
	setne	%r10b
	orb	%r9b, %r10b
	movq	%rdi, %r9
	jne	.LBB25_13
# %bb.10:                               # %vector.ph159
	movq	%rsi, %r10
	andq	$-4, %r10
	leaq	(%rdi,%r10), %r9
	movzbl	%dl, %r11d
	movd	%r11d, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	leaq	(%r8,%rdi), %r11
	movq	%r10, %rbx
	.p2align	4
.LBB25_11:                              # %vector.body162
                                        # =>This Inner Loop Header: Depth=1
	movd	%xmm0, (%r11)
	addq	$4, %r11
	addq	$-4, %rbx
	jne	.LBB25_11
# %bb.12:                               # %middle.block156
	cmpq	%r10, %rsi
	je	.LBB25_14
	.p2align	4
.LBB25_13:                              # %lab_L330
                                        # =>This Inner Loop Header: Depth=1
	movb	%dl, (%r8,%r9)
	incq	%r9
	cmpq	%rcx, %r9
	jle	.LBB25_13
.LBB25_14:                              # %jt.then_L331
	subq	%rdi, %rax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end25:
	.size	copy_bytes, .Lfunc_end25-copy_bytes
                                        # -- End function
	.globl	readn                           # -- Begin function readn
	.p2align	4
	.type	readn,@function
readn:                                  # @readn
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r14
	callq	*304(%r14)
	movq	%rax, %rcx
	addq	$-48, %rcx
	movb	$1, %bpl
	cmpq	$10, %rcx
	jb	.LBB26_10
# %bb.1:                                # %jf.then_L336.preheader
	leaq	.LJTI26_0(%rip), %rbx
	.p2align	4
.LBB26_2:                               # %jf.then_L336
                                        # =>This Inner Loop Header: Depth=1
	addq	$-9, %rax
	cmpq	$36, %rax
	ja	.LBB26_4
# %bb.3:                                # %jf.then_L336
                                        #   in Loop: Header=BB26_2 Depth=1
	movslq	(%rbx,%rax,4), %rax
	addq	%rbx, %rax
	jmpq	*%rax
.LBB26_6:                               # %lab_L341
                                        #   in Loop: Header=BB26_2 Depth=1
	callq	*304(%r14)
	movq	%rax, %rcx
	addq	$-48, %rcx
	cmpq	$10, %rcx
	jae	.LBB26_2
.LBB26_10:                              # %jt.then_L335
	leaq	-58(%rax), %rcx
	xorl	%r15d, %r15d
	cmpq	$-10, %rcx
	jb	.LBB26_12
	.p2align	4
.LBB26_11:                              # %lab_L344
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%r15,4), %rcx
	leaq	-48(%rax,%rcx,2), %r15
	callq	*304(%r14)
	movq	%rax, %rcx
	addq	$-48, %rcx
	cmpq	$10, %rcx
	jb	.LBB26_11
.LBB26_12:                              # %jf.then_L346
	movq	%r15, %rbx
	negq	%rbx
	testb	%bpl, %bpl
	cmovneq	%r15, %rbx
	xorl	%r15d, %r15d
.LBB26_5:                               # %common.ret
	callq	*320(%r14)
	movq	%r15, 80(%r14)
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB26_4:                               # %common.ret.loopexit
	.cfi_def_cfa_offset 48
	movq	$-1, %r15
	xorl	%ebx, %ebx
	jmp	.LBB26_5
.LBB26_7:                               # %lab_L343.loopexit
	movb	$1, %bpl
	jmp	.LBB26_9
.LBB26_8:                               # %lab_L343.loopexit1
	xorl	%ebp, %ebp
.LBB26_9:                               # %lab_L343
	callq	*304(%r14)
	leaq	-58(%rax), %rcx
	xorl	%r15d, %r15d
	cmpq	$-10, %rcx
	jae	.LBB26_11
	jmp	.LBB26_12
.Lfunc_end26:
	.size	readn, .Lfunc_end26-readn
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI26_0:
	.long	.LBB26_6-.LJTI26_0
	.long	.LBB26_6-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_6-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_7-.LJTI26_0
	.long	.LBB26_4-.LJTI26_0
	.long	.LBB26_8-.LJTI26_0
                                        # -- End function
	.section	.text.BLIB,"ax",@progbits
	.globl	input                           # -- Begin function input
	.p2align	4
	.type	input,@function
input:                                  # @input
# %bb.0:                                # %entry
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	96(%rax), %rax
	retq
.Lfunc_end27:
	.size	input, .Lfunc_end27-input
                                        # -- End function
	.globl	output                          # -- Begin function output
	.p2align	4
	.type	output,@function
output:                                 # @output
# %bb.0:                                # %entry
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	104(%rax), %rax
	retq
.Lfunc_end28:
	.size	output, .Lfunc_end28-output
                                        # -- End function
	.globl	writeflt                        # -- Begin function writeflt
	.p2align	4
	.type	writeflt,@function
writeflt:                               # @writeflt
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rdx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	movl	$63, %edi
	movl	$2, %esi
	callq	*24(%r15)
	movq	%rax, %rcx
	movq	80(%r15), %rdi
	leaq	32(%rsp), %r9
	movq	%r9, %r12
	sarq	$3, %r12
	movq	%rax, %rsi
	negq	%rsi
	cmovsq	%rax, %rsi
	xorl	%r8d, %r8d
	testq	%r14, %r14
	cmovgq	%r14, %r8
	movl	$1, %r14d
	movabsq	$7378697629483820647, %r10      # imm = 0x6666666666666667
	.p2align	4
.LBB29_1:                               # %lab_L353
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	imulq	%r10
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx), %rax
	leaq	(%rax,%rax,4), %rax
	movq	%rsi, %r11
	subq	%rax, %r11
	movq	%r11, (%r9)
	addq	$9, %rsi
	incq	%r14
	addq	$8, %r9
	cmpq	$18, %rsi
	movq	%rdx, %rsi
	ja	.LBB29_1
# %bb.2:                                # %lab_L354
	testq	%rcx, %rcx
	cmoveq	%rcx, %rdi
	cmpq	$5, %rbx
	movl	$4, %r11d
	cmovgeq	%rbx, %r11
	movq	%rdi, %r13
	negq	%r13
	movq	%r13, %rsi
	subq	%r8, %rsi
	testq	%rsi, %rsi
	setle	%al
	leaq	-1(%r14), %rbx
	cmpq	%rbx, %rsi
	setg	%dl
	orb	%al, %dl
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	jne	.LBB29_3
# %bb.4:                                # %jf.else150
	leaq	(%rsi,%r12), %rax
	cmpq	$5, -8(,%rax,8)
	jge	.LBB29_6
.LBB29_3:
	movq	%rbx, %r14
	jmp	.LBB29_13
.LBB29_6:                               # %jf.else180
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rdi, (%rsp)                    # 8-byte Spill
	cmpq	%rbx, %rsi
	jge	.LBB29_10
# %bb.7:                                # %lab_L358.preheader
	movq	%r12, %r15
	subq	(%rsp), %r15                    # 8-byte Folded Reload
	subq	16(%rsp), %r15                  # 8-byte Folded Reload
	shlq	$3, %r15
	movl	$1, %r8d
	movq	8(%rsp), %rbp                   # 8-byte Reload
	.p2align	4
.LBB29_8:                               # %lab_L358
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdi
	leaq	(%rdi,%r8), %rsi
	movq	%rsi, %rax
	imulq	%r10
	leaq	9(%rdi,%r8), %rax
	movq	%rdx, %r8
	movq	%rdx, %rdi
	shrq	$63, %rdi
	sarq	$2, %r8
	addq	%rdi, %r8
	leaq	(%r8,%r8), %rdi
	leaq	(%rdi,%rdi,4), %rdi
	subq	%rdi, %rsi
	movq	%rsi, (%r15)
	cmpq	$19, %rax
	jb	.LBB29_11
# %bb.9:                                # %jf.else251
                                        #   in Loop: Header=BB29_8 Depth=1
	incq	%rbp
	addq	$8, %r15
	cmpq	%rbx, %rbp
	jl	.LBB29_8
.LBB29_10:                              # %jf.else268
	movq	$1, (%r9)
	jmp	.LBB29_12
.LBB29_11:
	movq	%rbx, %r14
.LBB29_12:                              # %jf.then_L357
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	16(%rsp), %r8                   # 8-byte Reload
.LBB29_13:                              # %jf.then_L357
	leaq	-1(%r14), %rax
	movl	$1, %ebx
	subq	%rdi, %rbx
	cmpq	%r13, %rax
	cmovgq	%r14, %rbx
	testq	%rcx, %rcx
	leaq	-1(%r11,%rsi), %r15
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	jns	.LBB29_15
# %bb.14:                               # %jf.else343
	cmpq	%r13, %rax
	cmovleq	%r13, %rax
	cmpq	%rax, %rsi
	jle	.LBB29_26
.LBB29_15:
	movl	$32, %eax
.LBB29_16:                              # %jf.then_L365
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	1(%rbx), %rbp
	cmpq	%rbp, %r15
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	jl	.LBB29_18
	.p2align	4
.LBB29_17:                              # %lab_L374
                                        # =>This Inner Loop Header: Depth=1
	movl	$32, %edi
	callq	*328(%r13)
	decq	%r15
	cmpq	%rbp, %r15
	jge	.LBB29_17
.LBB29_18:                              # %jt.then_L375
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	*328(%r13)
	decq	%rbx
	movq	8(%rsp), %rbp                   # 8-byte Reload
	cmpq	%rbp, %rbx
	movq	%r13, %r15
	movq	24(%rsp), %r13                  # 8-byte Reload
	jge	.LBB29_20
.LBB29_19:                              # %jt.then_L381
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$184, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB29_20:                              # %lab_L380.preheader
	.cfi_def_cfa_offset 240
	addq	%rbx, %r12
	shlq	$3, %r12
	jmp	.LBB29_22
	.p2align	4
.LBB29_21:                              # %lab_L383
                                        #   in Loop: Header=BB29_22 Depth=1
	decq	%rbx
	addq	$-8, %r12
	cmpq	%rbp, %rbx
	jl	.LBB29_19
.LBB29_22:                              # %lab_L380
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	sets	%al
	cmpq	%r14, %rbx
	setge	%cl
	movl	$48, %edi
	orb	%al, %cl
	jne	.LBB29_23
# %bb.24:                               # %jf.else554
                                        #   in Loop: Header=BB29_22 Depth=1
	movq	(%r12), %rdi
	addq	$48, %rdi
	callq	*328(%r15)
	cmpq	%rbx, %r13
	jne	.LBB29_21
	jmp	.LBB29_25
	.p2align	4
.LBB29_23:                              # %jump.target_L385
                                        #   in Loop: Header=BB29_22 Depth=1
	callq	*328(%r15)
	cmpq	%rbx, %r13
	jne	.LBB29_21
.LBB29_25:                              # %jf.else597
                                        #   in Loop: Header=BB29_22 Depth=1
	movl	$46, %edi
	callq	*328(%r15)
	jmp	.LBB29_21
.LBB29_26:                              # %lab_L366.preheader
	movq	%r12, %rcx
	subq	%rdi, %rcx
	subq	%r8, %rcx
	shlq	$3, %rcx
	movq	%rsi, %rdx
	jmp	.LBB29_28
	.p2align	4
.LBB29_27:                              # %lab_L369
                                        #   in Loop: Header=BB29_28 Depth=1
	incq	%rdx
	addq	$8, %rcx
	cmpq	%rax, %rdx
	jg	.LBB29_15
.LBB29_28:                              # %lab_L366
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	sets	%sil
	cmpq	%r14, %rdx
	setge	%dil
	orb	%sil, %dil
	jne	.LBB29_27
# %bb.29:                               # %jf.else399
                                        #   in Loop: Header=BB29_28 Depth=1
	cmpq	$0, (%rcx)
	je	.LBB29_27
# %bb.30:
	movl	$45, %eax
	jmp	.LBB29_16
.Lfunc_end29:
	.size	writeflt, .Lfunc_end29-writeflt
	.cfi_endproc
                                        # -- End function
	.globl	writez                          # -- Begin function writez
	.p2align	4
	.type	writez,@function
writez:                                 # @writez
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %rcx
	negq	%rcx
	cmovnsq	%rdi, %rcx
	movq	%rsp, %r14
	xorl	%r15d, %r15d
	movabsq	$7378697629483820647, %rsi      # imm = 0x6666666666666667
	.p2align	4
.LBB30_1:                               # %lab_L123.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	imulq	%rsi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx), %rax
	leaq	(%rax,%rax,4), %rax
	subq	%rcx, %rax
	movq	%rax, (%r14)
	addq	$9, %rcx
	addq	$8, %r14
	decq	%r15
	cmpq	$18, %rcx
	movq	%rdx, %rcx
	ja	.LBB30_1
# %bb.2:                                # %lab_L124.i
	movq	%rdi, %rax
	sarq	$63, %rax
	addq	%rax, %rbx
	testq	%rdi, %rdi
	jns	.LBB30_4
# %bb.3:                                # %jf.else61.i
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$45, %edi
	callq	*328(%rax)
.LBB30_4:                               # %jf.then_L126.i
	movq	%r15, %r12
	notq	%r12
	movl	$1, %r13d
	subq	%r15, %r13
	cmpq	%rbx, %r13
	jg	.LBB30_7
# %bb.5:                                # %lab_L127.i.preheader
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbp
	.p2align	4
.LBB30_6:                               # %lab_L127.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$48, %edi
	callq	*328(%rbp)
	incq	%r13
	cmpq	%rbx, %r13
	jle	.LBB30_6
.LBB30_7:                               # %jt.then_L128.i
	testq	%r12, %r12
	js	.LBB30_10
# %bb.8:                                # %lab_L134.i.preheader
	addq	$-8, %r14
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	.p2align	4
.LBB30_9:                               # %lab_L134.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	addq	$48, %rdi
	callq	*328(%rbx)
	addq	$-8, %r14
	incq	%r15
	jne	.LBB30_9
.LBB30_10:                              # %writedz.exit
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$168, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end30:
	.size	writez, .Lfunc_end30-writez
	.cfi_endproc
                                        # -- End function
	.globl	writef                          # -- Begin function writef
	.p2align	4
	.type	writef,@function
writef:                                 # @writef
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	160(%rsp), %rax
	movq	152(%rsp), %r10
	movq	144(%rsp), %r11
	movq	136(%rsp), %rbx
	movq	128(%rsp), %r14
	leaq	16(%rsp), %r15
	sarq	$3, %r15
	movq	%r15, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r9, 48(%rsp)
	movq	%r14, 56(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%r11, 72(%rsp)
	movq	%r10, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	8(%rsp), %rsi
	sarq	$3, %rsi
	callq	write_format@PLT
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$96, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end31:
	.size	writef, .Lfunc_end31-writef
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function sys_flt
.LCPI32_0:
	.quad	0x4024000000000000              # double 10
.LCPI32_1:
	.quad	0x3ff0000000000000              # double 1
	.section	.text.BLIB,"ax",@progbits
	.globl	sys_flt
	.p2align	4
	.type	sys_flt,@function
sys_flt:                                # @sys_flt
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rsi
	cmpq	$18, %rdi
	ja	.LBB32_31
# %bb.1:                                # %entry
	leaq	.LJTI32_0(%rip), %rdx
	movslq	(%rdx,%rsi,4), %rdi
	addq	%rdx, %rdi
	jmpq	*%rdi
.LBB32_2:
	movq	$-1, %rax
	jmp	.LBB32_34
.LBB32_25:                              # %lab_L423
	movq	%rax, %xmm0
	movq	%rcx, %xmm1
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
	setne	%al
	negq	%rax
	jmp	.LBB32_34
.LBB32_22:                              # %lab_L419
	movq	%rcx, %xmm0
	movq	%rax, %xmm1
	subsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.LBB32_34
.LBB32_32:                              # %lab_L411
	cvtsi2sd	%rax, %xmm0
	jmp	.LBB32_33
.LBB32_24:                              # %lab_L422
	movq	%rax, %xmm0
	movq	%rcx, %xmm1
	cmpeqsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.LBB32_34
.LBB32_17:                              # %lab_L412
	movq	%rax, %xmm0
	cvttsd2si	%xmm0, %rax
	jmp	.LBB32_34
.LBB32_23:                              # %lab_L421
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	xorq	%rcx, %rax
	jmp	.LBB32_34
.LBB32_9:                               # %lab_L399
	movq	%rax, %xmm1
	movabsq	$-9223372036854775808, %r12     # imm = 0x8000000000000000
	movq	%rax, %r14
	xorq	%r12, %r14
	xorpd	%xmm0, %xmm0
	movq	%xmm1, 8(%rsp)                  # 8-byte Folded Spill
	ucomisd	%xmm0, %xmm1
	cmovaeq	%rax, %r14
	movq	%r14, %xmm0
	ucomisd	.LCPI32_0(%rip), %xmm0
	jae	.LBB32_11
# %bb.10:
	xorl	%ebx, %ebx
	jmp	.LBB32_13
.LBB32_31:                              # %lab_L428
	leaq	.Llstr.global.47(%rip), %rdi
	sarq	$3, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	movq	%rax, %rdx
	callq	*752(%rbx)
	movl	$1, %edi
	callq	*16(%rbx)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	jmp	.LBB32_34
.LBB32_3:                               # %lab_L392
	cvtsi2sd	%rax, %xmm0
	testq	%rcx, %rcx
	jle	.LBB32_6
# %bb.4:                                # %lab_L393.preheader
	incq	%rcx
	movsd	.LCPI32_0(%rip), %xmm1          # xmm1 = [1.0E+1,0.0E+0]
	.p2align	4
.LBB32_5:                               # %lab_L393
                                        # =>This Inner Loop Header: Depth=1
	mulsd	%xmm1, %xmm0
	decq	%rcx
	cmpq	$1, %rcx
	ja	.LBB32_5
	jmp	.LBB32_33
.LBB32_18:                              # %lab_L413
	movq	%rax, %xmm0
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	xorq	%rax, %rcx
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmovbq	%rcx, %rax
	jmp	.LBB32_34
.LBB32_19:                              # %lab_L416
	movq	%rax, %xmm0
	movq	%rcx, %xmm1
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.LBB32_34
.LBB32_29:                              # %lab_L426
	movq	%rcx, %xmm0
	movq	%rax, %xmm1
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm0
	jmp	.LBB32_27
.LBB32_26:                              # %lab_L424
	movq	%rcx, %xmm0
	movq	%rax, %xmm1
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
.LBB32_27:                              # %jump.target_L390
	seta	%al
	negq	%rax
	jmp	.LBB32_34
.LBB32_21:                              # %lab_L418
	movq	%rax, %xmm0
	movq	%rcx, %xmm1
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.LBB32_34
.LBB32_20:                              # %lab_L417
	movq	%rcx, %xmm0
	movq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.LBB32_34
.LBB32_28:                              # %lab_L425
	movq	%rcx, %xmm0
	movq	%rax, %xmm1
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
	adcq	$-1, %rax
	jmp	.LBB32_34
.LBB32_30:                              # %lab_L427
	movq	%rcx, %xmm0
	movq	%rax, %xmm1
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm0
	adcq	$-1, %rax
	jmp	.LBB32_34
.LBB32_11:                              # %lab_L403.preheader
	leaq	.Llstr.global.45(%rip), %r15
	sarq	$3, %r15
	xorl	%ebx, %ebx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	.p2align	4
.LBB32_12:                              # %lab_L403
                                        # =>This Inner Loop Header: Depth=1
	movsd	.LCPI32_0(%rip), %xmm1          # xmm1 = [1.0E+1,0.0E+0]
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	%xmm0, %r14
	incq	%rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*752(%r13)
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI32_0(%rip), %xmm0
	jae	.LBB32_12
.LBB32_13:                              # %jf.then_L405
	movsd	.LCPI32_1(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	ucomisd	%xmm0, %xmm1
	jb	.LBB32_16
# %bb.14:                               # %lab_L406.preheader
	leaq	.Llstr.global.46(%rip), %r15
	sarq	$3, %r15
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	.p2align	4
.LBB32_15:                              # %lab_L406
                                        # =>This Inner Loop Header: Depth=1
	mulsd	.LCPI32_0(%rip), %xmm0
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	%xmm0, %r14
	decq	%rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*752(%r13)
	movsd	.LCPI32_1(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB32_15
.LBB32_16:                              # %jf.then_L408
	movq	%xmm0, %rax
	xorq	%r12, %rax
	xorpd	%xmm0, %xmm0
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rcx
	movq	%rbx, 80(%rcx)
	cmovaeq	%r14, %rax
	jmp	.LBB32_34
.LBB32_6:                               # %jf.then_L395
	jns	.LBB32_33
# %bb.7:                                # %lab_L396.preheader
	movsd	.LCPI32_0(%rip), %xmm1          # xmm1 = [1.0E+1,0.0E+0]
	.p2align	4
.LBB32_8:                               # %lab_L396
                                        # =>This Inner Loop Header: Depth=1
	divsd	%xmm1, %xmm0
	incq	%rcx
	jne	.LBB32_8
.LBB32_33:                              # %jump.target_L390.loopexit
	movq	%xmm0, %rax
.LBB32_34:                              # %jump.target_L390
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	sys_flt, .Lfunc_end32-sys_flt
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI32_0:
	.long	.LBB32_2-.LJTI32_0
	.long	.LBB32_3-.LJTI32_0
	.long	.LBB32_9-.LJTI32_0
	.long	.LBB32_32-.LJTI32_0
	.long	.LBB32_17-.LJTI32_0
	.long	.LBB32_18-.LJTI32_0
	.long	.LBB32_19-.LJTI32_0
	.long	.LBB32_20-.LJTI32_0
	.long	.LBB32_31-.LJTI32_0
	.long	.LBB32_21-.LJTI32_0
	.long	.LBB32_22-.LJTI32_0
	.long	.LBB32_34-.LJTI32_0
	.long	.LBB32_23-.LJTI32_0
	.long	.LBB32_24-.LJTI32_0
	.long	.LBB32_25-.LJTI32_0
	.long	.LBB32_29-.LJTI32_0
	.long	.LBB32_26-.LJTI32_0
	.long	.LBB32_30-.LJTI32_0
	.long	.LBB32_28-.LJTI32_0
                                        # -- End function
	.section	.text.BLIB,"ax",@progbits
	.globl	sys                             # -- Begin function sys
	.p2align	4
	.type	sys,@function
sys:                                    # @sys
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%r8, %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	cmpq	$63, %rdi
	je	.LBB33_5
# %bb.1:                                # %entry
	movq	%rdi, %rsi
	cmpq	$11, %rdi
	je	.LBB33_4
# %bb.2:                                # %entry
	cmpq	$10, %rsi
	jne	.LBB33_6
# %bb.3:                                # %lab_L433
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	jmpq	*304(%rax)                      # TAILCALL
.LBB33_4:                               # %lab_L434
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	%rdx, %rdi
	jmpq	*328(%rax)                      # TAILCALL
.LBB33_5:                               # %lab_L435
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	movq	%rax, %rcx
	movq	%r9, %r8
	jmp	sys_flt@PLT                     # TAILCALL
.LBB33_6:                               # %lab_L436
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	leaq	.Llstr.global.49(%rip), %rdi
	sarq	$3, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	movq	%r9, (%rsp)
	movq	%rax, %r9
	callq	*752(%rbx)
	movl	$1, %edi
	callq	*16(%rbx)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end33:
	.size	sys, .Lfunc_end33-sys
	.cfi_endproc
                                        # -- End function
	.globl	writes                          # -- Begin function writes
	.p2align	4
	.type	writes,@function
writes:                                 # @writes
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movzbl	(,%rdi,8), %r14d
	testq	%r14, %r14
	je	.LBB34_3
# %bb.1:                                # %lab_L437.preheader
	movq	%rdi, %rbx
	xorl	%r15d, %r15d
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r12
	.p2align	4
.LBB34_2:                               # %lab_L437
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%r15,%rbx,8), %edi
	callq	*328(%r12)
	incq	%r15
	cmpq	%r14, %r15
	jb	.LBB34_2
.LBB34_3:                               # %jt.then_L438
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	writes, .Lfunc_end34-writes
	.cfi_endproc
                                        # -- End function
	.globl	deplete                         # -- Begin function deplete
	.p2align	4
	.type	deplete,@function
deplete:                                # @deplete
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$1, %edi
	callq	*16(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end35:
	.size	deplete, .Lfunc_end35-deplete
	.cfi_endproc
                                        # -- End function
	.globl	abort                           # -- Begin function abort
	.p2align	4
	.type	abort,@function
abort:                                  # @abort
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %rsi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$60, %edi
	callq	*256(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end36:
	.size	abort, .Lfunc_end36-abort
	.cfi_endproc
                                        # -- End function
	.globl	fplus                           # -- Begin function fplus
	.p2align	4
	.type	fplus,@function
fplus:                                  # @fplus
# %bb.0:                                # %entry
	movq	%rdx, %rax
	movsd	(,%rdi,8), %xmm0                # xmm0 = mem[0],zero
	addsd	(,%rsi,8), %xmm0
	movsd	%xmm0, (,%rdx,8)
	retq
.Lfunc_end37:
	.size	fplus, .Lfunc_end37-fplus
                                        # -- End function
	.globl	fminus                          # -- Begin function fminus
	.p2align	4
	.type	fminus,@function
fminus:                                 # @fminus
# %bb.0:                                # %entry
	movq	%rdx, %rax
	movsd	(,%rdi,8), %xmm0                # xmm0 = mem[0],zero
	subsd	(,%rsi,8), %xmm0
	movsd	%xmm0, (,%rdx,8)
	retq
.Lfunc_end38:
	.size	fminus, .Lfunc_end38-fminus
                                        # -- End function
	.globl	fmult                           # -- Begin function fmult
	.p2align	4
	.type	fmult,@function
fmult:                                  # @fmult
# %bb.0:                                # %entry
	movq	%rdx, %rax
	movsd	(,%rdi,8), %xmm0                # xmm0 = mem[0],zero
	mulsd	(,%rsi,8), %xmm0
	movsd	%xmm0, (,%rdx,8)
	retq
.Lfunc_end39:
	.size	fmult, .Lfunc_end39-fmult
                                        # -- End function
	.globl	fdiv                            # -- Begin function fdiv
	.p2align	4
	.type	fdiv,@function
fdiv:                                   # @fdiv
# %bb.0:                                # %entry
	movq	%rdx, %rax
	movsd	(,%rdi,8), %xmm0                # xmm0 = mem[0],zero
	divsd	(,%rsi,8), %xmm0
	movsd	%xmm0, (,%rdx,8)
	retq
.Lfunc_end40:
	.size	fdiv, .Lfunc_end40-fdiv
                                        # -- End function
	.globl	fneg                            # -- Begin function fneg
	.p2align	4
	.type	fneg,@function
fneg:                                   # @fneg
# %bb.0:                                # %entry
	movq	%rsi, %rax
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	xorq	(,%rdi,8), %rcx
	movq	%rcx, (,%rsi,8)
	retq
.Lfunc_end41:
	.size	fneg, .Lfunc_end41-fneg
                                        # -- End function
	.globl	ffix                            # -- Begin function ffix
	.p2align	4
	.type	ffix,@function
ffix:                                   # @ffix
# %bb.0:                                # %entry
	cvttsd2si	(,%rdi,8), %rax
	retq
.Lfunc_end42:
	.size	ffix, .Lfunc_end42-ffix
                                        # -- End function
	.globl	ffloat                          # -- Begin function ffloat
	.p2align	4
	.type	ffloat,@function
ffloat:                                 # @ffloat
# %bb.0:                                # %entry
	movq	%rsi, %rax
	cvtsi2sdq	(,%rdi,8), %xmm0
	movsd	%xmm0, (,%rsi,8)
	retq
.Lfunc_end43:
	.size	ffloat, .Lfunc_end43-ffloat
                                        # -- End function
	.globl	fcomp                           # -- Begin function fcomp
	.p2align	4
	.type	fcomp,@function
fcomp:                                  # @fcomp
# %bb.0:                                # %entry
	movq	(,%rdi,8), %rax
	cmpq	(,%rsi,8), %rax
	setl	%al
	setg	%cl
	subb	%al, %cl
	movsbq	%cl, %rax
	retq
.Lfunc_end44:
	.size	fcomp, .Lfunc_end44-fcomp
                                        # -- End function
	.globl	fabs                            # -- Begin function fabs
	.p2align	4
	.type	fabs,@function
fabs:                                   # @fabs
# %bb.0:                                # %entry
	movq	%rsi, %rax
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	andq	(,%rdi,8), %rcx
	movq	%rcx, (,%rsi,8)
	retq
.Lfunc_end45:
	.size	fabs, .Lfunc_end45-fabs
                                        # -- End function
	.globl	blib.dumpheap                   # -- Begin function blib.dumpheap
	.p2align	4
	.type	blib.dumpheap,@function
blib.dumpheap:                          # @blib.dumpheap
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	itemn.global.65(%rip), %rbx
	leaq	.Llstr.global.72(%rip), %rdi
	sarq	$3, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	callq	*712(%r15)
	movq	itemn.global.63(%rip), %rdx
	testq	%rdx, %rdx
	je	.LBB46_1
# %bb.2:                                # %jf.then_L464
	leaq	.Llstr.global.74(%rip), %rdi
	sarq	$3, %rdi
	movq	itemn.global.64(%rip), %rcx
	leaq	(,%rdx,8), %r8
	leaq	(,%rcx,8), %r9
	movl	$1048576, %esi                  # imm = 0x100000
	callq	*752(%r15)
	leaq	.Llstr.global.75(%rip), %rdi
	sarq	$3, %rdi
	callq	*712(%r15)
	leaq	.Llstr.global.76(%rip), %rdi
	sarq	$3, %rdi
	callq	*712(%r15)
	leaq	.Llstr.global.77(%rip), %rax
	sarq	$3, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	jmp	.LBB46_3
	.p2align	4
.LBB46_13:                              # %lab_L472.4
                                        #   in Loop: Header=BB46_3 Depth=1
	addq	%rbp, %r14
	cmpq	%r12, %rbp
	cmovaq	%rbp, %r12
	callq	*672(%r15)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	8(%rax), %rbx
	testq	%rbx, %rbx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	je	.LBB46_14
.LBB46_3:                               # %lab_L465
                                        # =>This Inner Loop Header: Depth=1
	incq	%rsi
	leaq	(,%rbx,8), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	(,%rbx,8), %rbp
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	andq	%rcx, %rbp
	leaq	(%rbp,%rbx), %r8
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	callq	*752(%r15)
	movq	itemn.global.64(%rip), %rax
	cmpq	%rax, %rbx
	jl	.LBB46_4
# %bb.5:                                # %lab_L472
                                        #   in Loop: Header=BB46_3 Depth=1
	leaq	1(%rbx), %rcx
	cmpq	%rax, %rcx
	jl	.LBB46_6
.LBB46_7:                               # %lab_L472.1
                                        #   in Loop: Header=BB46_3 Depth=1
	leaq	2(%rbx), %rcx
	cmpq	%rax, %rcx
	jl	.LBB46_8
.LBB46_9:                               # %lab_L472.2
                                        #   in Loop: Header=BB46_3 Depth=1
	leaq	3(%rbx), %rcx
	cmpq	%rax, %rcx
	jl	.LBB46_10
.LBB46_11:                              # %lab_L472.3
                                        #   in Loop: Header=BB46_3 Depth=1
	addq	$4, %rbx
	cmpq	%rax, %rbx
	jge	.LBB46_13
	jmp	.LBB46_12
	.p2align	4
.LBB46_4:                               # %jf.else188
                                        #   in Loop: Header=BB46_3 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rdi
	movl	$16, %esi
	callq	*696(%r15)
	movl	$32, %edi
	callq	*328(%r15)
	movq	itemn.global.64(%rip), %rax
	leaq	1(%rbx), %rcx
	cmpq	%rax, %rcx
	jge	.LBB46_7
.LBB46_6:                               # %jf.else188.1
                                        #   in Loop: Header=BB46_3 Depth=1
	movq	(,%rcx,8), %rdi
	movl	$16, %esi
	callq	*696(%r15)
	movl	$32, %edi
	callq	*328(%r15)
	movq	itemn.global.64(%rip), %rax
	leaq	2(%rbx), %rcx
	cmpq	%rax, %rcx
	jge	.LBB46_9
.LBB46_8:                               # %jf.else188.2
                                        #   in Loop: Header=BB46_3 Depth=1
	movq	(,%rcx,8), %rdi
	movl	$16, %esi
	callq	*696(%r15)
	movl	$32, %edi
	callq	*328(%r15)
	movq	itemn.global.64(%rip), %rax
	leaq	3(%rbx), %rcx
	cmpq	%rax, %rcx
	jge	.LBB46_11
.LBB46_10:                              # %jf.else188.3
                                        #   in Loop: Header=BB46_3 Depth=1
	movq	(,%rcx,8), %rdi
	movl	$16, %esi
	callq	*696(%r15)
	movl	$32, %edi
	callq	*328(%r15)
	movq	itemn.global.64(%rip), %rax
	addq	$4, %rbx
	cmpq	%rax, %rbx
	jge	.LBB46_13
.LBB46_12:                              # %jf.else188.4
                                        #   in Loop: Header=BB46_3 Depth=1
	movq	(,%rbx,8), %rdi
	movl	$16, %esi
	callq	*696(%r15)
	movl	$32, %edi
	callq	*328(%r15)
	jmp	.LBB46_13
.LBB46_14:                              # %lab_L466
	leaq	.Llstr.global.78(%rip), %rdi
	sarq	$3, %rdi
	movq	%rsi, %rbx
	callq	*712(%r15)
	leaq	.Llstr.global.79(%rip), %rdi
	sarq	$3, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	*752(%r15)
	leaq	.Llstr.global.80(%rip), %rdi
	sarq	$3, %rdi
	movq	itemn.global.66(%rip), %rsi
	movq	itemn.global.68(%rip), %rdx
	movq	itemn.global.67(%rip), %rcx
	movq	itemn.global.70(%rip), %r8
	movq	itemn.global.69(%rip), %r9
	callq	*752(%r15)
	jmp	.LBB46_15
.LBB46_1:                               # %jf.else
	leaq	.Llstr.global.73(%rip), %rdi
	sarq	$3, %rdi
	callq	*752(%r15)
.LBB46_15:                              # %common.ret
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end46:
	.size	blib.dumpheap, .Lfunc_end46-blib.dumpheap
	.cfi_endproc
                                        # -- End function
	.globl	blib.init_heap                  # -- Begin function blib.init_heap
	.p2align	4
	.type	blib.init_heap,@function
blib.init_heap:                         # @blib.init_heap
	.cfi_startproc
# %bb.0:                                # %entry
	cmpq	$0, itemn.global.63(%rip)
	je	.LBB47_1
# %bb.4:                                # %common.ret
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.LBB47_1:                               # %jf.else
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	movq	$0, (%rsp)
	movl	$9, %edi
	movl	$8388608, %edx                  # imm = 0x800000
	movl	$3, %ecx
	movl	$34, %r8d
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	callq	*256(%rbx)
	movq	%rax, itemn.global.63(%rip)
	testq	%rax, %rax
	jns	.LBB47_3
# %bb.2:                                # %jf.else27
	negq	%rax
	movl	$60, %edi
	movq	%rax, %rsi
	callq	*256(%rbx)
	movq	itemn.global.63(%rip), %rax
.LBB47_3:                               # %jf.then_L476
	movq	%rax, %rcx
	shrq	$3, %rcx
	movq	%rcx, itemn.global.63(%rip)
	leaq	1048576(%rcx), %rdx
	movq	%rdx, itemn.global.64(%rip)
	movq	%rcx, itemn.global.65(%rip)
	andq	$-8, %rax
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	movq	(%rax), %rdx
	andq	%rcx, %rdx
	orq	$1048576, %rdx                  # imm = 0x100000
	movq	%rdx, (%rax)
	movq	itemn.global.65(%rip), %rax
	orq	%rcx, (,%rax,8)
	movq	itemn.global.65(%rip), %rax
	movq	$0, 8(,%rax,8)
	movq	itemn.global.65(%rip), %rax
	movq	$0, 16(,%rax,8)
	movq	$0, itemn.global.66(%rip)
	movq	$0, itemn.global.67(%rip)
	movq	$0, itemn.global.68(%rip)
	movq	$0, itemn.global.69(%rip)
	movq	$0, itemn.global.70(%rip)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end47:
	.size	blib.init_heap, .Lfunc_end47-blib.init_heap
	.cfi_endproc
                                        # -- End function
	.globl	blib.finish_heap                # -- Begin function blib.finish_heap
	.p2align	4
	.type	blib.finish_heap,@function
blib.finish_heap:                       # @blib.finish_heap
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	itemn.global.63(%rip), %rsi
	shlq	$3, %rsi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$11, %edi
	movl	$8388608, %edx                  # imm = 0x800000
	callq	*256(%rax)
	movq	$0, itemn.global.63(%rip)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end48:
	.size	blib.finish_heap, .Lfunc_end48-blib.finish_heap
	.cfi_endproc
                                        # -- End function
	.globl	blib.add_to_free_list           # -- Begin function blib.add_to_free_list
	.p2align	4
	.type	blib.add_to_free_list,@function
blib.add_to_free_list:                  # @blib.add_to_free_list
# %bb.0:                                # %entry
	leaq	(,%rdi,8), %rax
	orb	$-128, 7(,%rdi,8)
	movq	itemn.global.65(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB49_1
# %bb.2:                                # %jf.else69
	cmpq	%rdi, %rcx
	jge	.LBB49_7
# %bb.3:                                # %lab_L480.preheader
	movq	%rcx, %rsi
	.p2align	4
.LBB49_4:                               # %lab_L480
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	movq	8(,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.LBB49_6
# %bb.5:                                # %lab_L480
                                        #   in Loop: Header=BB49_4 Depth=1
	cmpq	%rdi, %rsi
	jl	.LBB49_4
.LBB49_6:                               # %jf.then_L482
	testq	%rdx, %rdx
	je	.LBB49_7
# %bb.10:                               # %jf.then_L484
	leaq	8(,%rdx,8), %rcx
	movq	%rsi, 8(%rax)
	movq	%rdx, 16(%rax)
	movq	(%rcx), %rax
	testq	%rax, %rax
	je	.LBB49_12
# %bb.11:                               # %jf.else237
	movq	%rdi, 16(,%rax,8)
.LBB49_12:                              # %jf.then_L486
	movq	%rdi, (%rcx)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.LBB49_7:                               # %jf.else128
	movq	%rcx, 8(%rax)
	movq	$0, 16(%rax)
	movq	itemn.global.65(%rip), %rax
	testq	%rax, %rax
	je	.LBB49_9
# %bb.8:                                # %jf.else164
	movq	%rdi, 16(,%rax,8)
.LBB49_9:                               # %jf.then_L485
	movq	%rdi, itemn.global.65(%rip)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.LBB49_1:                               # %jf.else
	movq	%rdi, itemn.global.65(%rip)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end49:
	.size	blib.add_to_free_list, .Lfunc_end49-blib.add_to_free_list
                                        # -- End function
	.globl	blib.remove_from_free_list      # -- Begin function blib.remove_from_free_list
	.p2align	4
	.type	blib.remove_from_free_list,@function
blib.remove_from_free_list:             # @blib.remove_from_free_list
# %bb.0:                                # %entry
	leaq	16(,%rdi,8), %rax
	movq	8(,%rdi,8), %rcx
	movq	16(,%rdi,8), %rdx
	testq	%rdx, %rdx
	leaq	8(,%rdx,8), %rdx
	leaq	itemn.global.65(%rip), %rsi
	cmovneq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movq	8(,%rdi,8), %rcx
	testq	%rcx, %rcx
	je	.LBB50_2
# %bb.1:                                # %jf.else70
	movq	(%rax), %rdx
	movq	%rdx, 16(,%rcx,8)
.LBB50_2:                               # %jf.then_L490
	movq	$0, -8(%rax)
	movq	$0, (%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end50:
	.size	blib.remove_from_free_list, .Lfunc_end50-blib.remove_from_free_list
                                        # -- End function
	.globl	blib.coalesce                   # -- Begin function blib.coalesce
	.p2align	4
	.type	blib.coalesce,@function
blib.coalesce:                          # @blib.coalesce
# %bb.0:                                # %entry
	movq	%rdi, %rax
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	leaq	(,%rdi,8), %rdx
	movq	(,%rdi,8), %rsi
	andq	%rcx, %rsi
	addq	%rdi, %rsi
	cmpq	itemn.global.64(%rip), %rsi
	jge	.LBB51_5
# %bb.1:                                # %jf.else
	cmpq	$0, (,%rsi,8)
	jns	.LBB51_5
# %bb.2:                                # %jf.else32
	shlq	$3, %rsi
	leaq	16(%rsi), %rdi
	movq	8(%rsi), %r9
	movq	16(%rsi), %r10
	leaq	8(%rsi), %r8
	testq	%r10, %r10
	leaq	8(,%r10,8), %r10
	leaq	itemn.global.65(%rip), %r11
	cmovneq	%r10, %r11
	movq	%r9, (%r11)
	movq	8(%rsi), %r9
	testq	%r9, %r9
	je	.LBB51_4
# %bb.3:                                # %jf.else70.i
	movq	(%rdi), %r10
	movq	%r10, 16(,%r9,8)
.LBB51_4:                               # %blib.remove_from_free_list.exit
	movq	$0, (%r8)
	movq	$0, (%rdi)
	movq	(%rdx), %rdi
	movq	(%rsi), %rsi
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	leaq	1(%rcx), %r8
	andq	%rdi, %r8
	orq	%rsi, %r8
	movq	%r8, (%rdx)
.LBB51_5:                               # %jf.then_L492
	pushq	%rbx
	movq	16(%rdx), %rbx
	testq	%rbx, %rbx
	je	.LBB51_12
# %bb.6:                                # %jf.else111
	movq	(,%rbx,8), %rsi
	andq	%rcx, %rsi
	addq	%rbx, %rsi
	cmpq	%rax, %rsi
	jne	.LBB51_12
# %bb.7:                                # %jf.else158
	leaq	16(%rdx), %rdi
	leaq	(,%rbx,8), %rax
	leaq	8(%rdx), %r8
	movq	8(%rdx), %r9
	leaq	8(%rax), %rsi
	movq	%r9, 8(%rax)
	movq	8(%rdx), %r9
	testq	%r9, %r9
	je	.LBB51_9
# %bb.8:                                # %jf.else70.i301
	movq	(%rdi), %r10
	movq	%r10, 16(,%r9,8)
.LBB51_9:                               # %blib.remove_from_free_list.exit306
	movq	$0, (%r8)
	movq	$0, (%rdi)
	leaq	16(%rax), %rdi
	movq	16(%rax), %r8
	testq	%r8, %r8
	movq	(%rsi), %r9
	leaq	8(,%r8,8), %r8
	leaq	itemn.global.65(%rip), %r10
	cmovneq	%r8, %r10
	movq	%r9, (%r10)
	movq	(%rsi), %r8
	testq	%r8, %r8
	je	.LBB51_11
# %bb.10:                               # %jf.else70.i321
	movq	(%rdi), %r9
	movq	%r9, 16(,%r8,8)
.LBB51_11:                              # %blib.remove_from_free_list.exit326
	movq	$0, (%rsi)
	movq	$0, (%rdi)
	movq	(%rax), %rsi
	movq	(%rdx), %rdx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	incq	%rcx
	andq	%rsi, %rcx
	orq	%rdx, %rcx
	movq	%rcx, (%rax)
	movq	%rbx, %rdi
	callq	blib.add_to_free_list@PLT
	movq	%rbx, %rax
.LBB51_12:                              # %common.ret
	popq	%rbx
	retq
.Lfunc_end51:
	.size	blib.coalesce, .Lfunc_end51-blib.coalesce
                                        # -- End function
	.globl	blib.split_block                # -- Begin function blib.split_block
	.p2align	4
	.type	blib.split_block,@function
blib.split_block:                       # @blib.split_block
# %bb.0:                                # %entry
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	movq	(,%rdi,8), %rdx
	movq	%rdx, %rax
	andq	%rcx, %rax
	leaq	1(%rsi), %r8
	cmpq	%r8, %rax
	jl	.LBB52_2
# %bb.1:                                # %jf.else
	pushq	%rax
	leaq	(%rsi,%rdi), %rax
	shlq	$3, %rdi
	subq	%rsi, %rdx
	leaq	1(%rcx), %r8
	orq	%r8, %rdx
	movq	%rdx, (,%rax,8)
	andq	%rcx, %rsi
	andq	(%rdi), %r8
	orq	%rsi, %r8
	movq	%r8, (%rdi)
	movq	%rax, %rdi
	callq	blib.add_to_free_list@PLT
	addq	$8, %rsp
.LBB52_2:                               # %common.ret
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end52:
	.size	blib.split_block, .Lfunc_end52-blib.split_block
                                        # -- End function
	.globl	getvec                          # -- Begin function getvec
	.p2align	4
	.type	getvec,@function
getvec:                                 # @getvec
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	blib.init_heap@PLT
	movq	itemn.global.65(%rip), %rax
	testq	%rax, %rax
	je	.LBB53_5
# %bb.1:                                # %lab_L498.preheader
	leaq	1(%rbx), %r14
	leaq	3(%rbx), %r15
	leaq	4(%rbx), %rcx
	movabsq	$9223372036854775807, %r12      # imm = 0x7FFFFFFFFFFFFFFF
	.p2align	4
.LBB53_2:                               # %lab_L498
                                        # =>This Inner Loop Header: Depth=1
	leaq	(,%rax,8), %r13
	movq	(,%rax,8), %rdx
	andq	%r12, %rdx
	cmpq	%rcx, %rdx
	jge	.LBB53_6
# %bb.3:                                # %jf.then_L501
                                        #   in Loop: Header=BB53_2 Depth=1
	movq	8(%r13), %rax
	testq	%rax, %rax
	jne	.LBB53_2
.LBB53_5:
	xorl	%eax, %eax
	jmp	.LBB53_15
.LBB53_6:                               # %jf.else38
	leaq	16(%r13), %rdx
	movq	8(%r13), %rsi
	movq	16(%r13), %rdi
	leaq	8(%r13), %rbp
	testq	%rdi, %rdi
	leaq	8(,%rdi,8), %rdi
	leaq	itemn.global.65(%rip), %r8
	cmovneq	%rdi, %r8
	movq	%rsi, (%r8)
	movq	8(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB53_8
# %bb.7:                                # %jf.else70.i
	movq	(%rdx), %rdi
	movq	%rdi, 16(,%rsi,8)
.LBB53_8:                               # %blib.remove_from_free_list.exit
	movq	$0, (%rbp)
	movq	$0, (%rdx)
	movq	(%r13), %rdx
	movq	%rdx, %rsi
	andq	%r12, %rsi
	addq	$5, %rbx
	cmpq	%rbx, %rsi
	jl	.LBB53_10
# %bb.9:                                # %jf.else.i
	leaq	(%rax,%rcx), %rdi
	subq	%rcx, %rdx
	leaq	1(%r12), %rsi
	orq	%rsi, %rdx
	movq	%rdx, (,%rdi,8)
	andq	%r12, %rcx
	andq	(%r13), %rsi
	orq	%rcx, %rsi
	movq	%rsi, (%r13)
	movq	%rax, %rbx
	callq	blib.add_to_free_list@PLT
	movq	%rbx, %rax
	andq	(%r13), %r12
	movq	%r12, %rsi
.LBB53_10:                              # %blib.split_block.exit
	movq	%rsi, (%r13)
	movabsq	$3286577140387536, %rcx         # imm = 0xBAD1FDEFACED0
	movq	%rcx, (%rbp)
	addq	%rax, %r15
	movq	%rcx, (,%r15,8)
	incq	itemn.global.66(%rip)
	movq	itemn.global.70(%rip), %rcx
	addq	%r14, %rcx
	movq	%rcx, itemn.global.70(%rip)
	cmpq	itemn.global.69(%rip), %rcx
	jle	.LBB53_12
# %bb.11:                               # %jf.else151
	movq	%rcx, itemn.global.69(%rip)
.LBB53_12:                              # %jf.then_L502
	cmpq	itemn.global.68(%rip), %r14
	jle	.LBB53_14
# %bb.13:                               # %jf.else171
	movq	%r14, itemn.global.68(%rip)
.LBB53_14:                              # %jf.then_L503
	addq	$2, %rax
.LBB53_15:                              # %common.ret
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end53:
	.size	getvec, .Lfunc_end53-getvec
	.cfi_endproc
                                        # -- End function
	.globl	freevec                         # -- Begin function freevec
	.p2align	4
	.type	freevec,@function
freevec:                                # @freevec
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB54_10
# %bb.1:                                # %jf.else
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movabsq	$3286577140387536, %rax         # imm = 0xBAD1FDEFACED0
	leaq	-2(%rdi), %rbx
	movq	-16(,%rdi,8), %r15
	cmpq	%rax, -8(,%rdi,8)
	jne	.LBB54_3
# %bb.2:                                # %jt.else
	leaq	(%r14,%r15), %rcx
	cmpq	%rax, -24(,%rcx,8)
	je	.LBB54_4
.LBB54_3:                               # %jt.then_L507
	callq	blib.dumpheap@PLT
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$60, %edi
	movl	$42, %esi
	callq	*256(%rax)
.LBB54_4:                               # %jf.then_L506
	movabsq	$9223372036854775807, %r12      # imm = 0x7FFFFFFFFFFFFFFF
	leaq	-16(,%r14,8), %r14
	cmpq	itemn.global.63(%rip), %rbx
	jl	.LBB54_6
# %bb.5:                                # %jf.then_L506
	cmpq	itemn.global.64(%rip), %rbx
	jge	.LBB54_6
# %bb.7:                                # %jf.then_L508
	andq	%r12, %r15
	cmpq	$0, (%r14)
	js	.LBB54_8
.LBB54_9:                               # %jf.then_L510
	movq	%rbx, %rdi
	callq	blib.add_to_free_list@PLT
	movq	%rbx, %rdi
	callq	blib.coalesce@PLT
	incq	itemn.global.67(%rip)
	movq	itemn.global.70(%rip), %rax
	negq	%r15
	leaq	3(%rax,%r15), %rax
	movq	%rax, itemn.global.70(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
.LBB54_10:                              # %common.ret
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.LBB54_6:                               # %jt.then_L509
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	callq	blib.dumpheap@PLT
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$60, %edi
	movl	$42, %esi
	callq	*256(%rax)
	andq	%r12, %r15
	cmpq	$0, (%r14)
	jns	.LBB54_9
.LBB54_8:                               # %jf.else136
	callq	blib.dumpheap@PLT
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$60, %edi
	movl	$42, %esi
	callq	*256(%rax)
	jmp	.LBB54_9
.Lfunc_end54:
	.size	freevec, .Lfunc_end54-freevec
	.cfi_endproc
                                        # -- End function
	.globl	maxvec                          # -- Begin function maxvec
	.p2align	4
	.type	maxvec,@function
maxvec:                                 # @maxvec
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	blib.init_heap@PLT
	movq	itemn.global.65(%rip), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB55_3
# %bb.1:                                # %lab_L512.preheader
	movabsq	$9223372036854775807, %rdx      # imm = 0x7FFFFFFFFFFFFFFF
	.p2align	4
.LBB55_2:                               # %lab_L512
                                        # =>This Inner Loop Header: Depth=1
	movq	(,%rcx,8), %rsi
	andq	%rdx, %rsi
	addq	$-3, %rsi
	cmpq	%rax, %rsi
	cmovgq	%rsi, %rax
	movq	8(,%rcx,8), %rcx
	testq	%rcx, %rcx
	jne	.LBB55_2
.LBB55_3:                               # %jt.then_L514
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end55:
	.size	maxvec, .Lfunc_end55-maxvec
	.cfi_endproc
                                        # -- End function
	.globl	time                            # -- Begin function time
	.p2align	4
	.type	time,@function
time:                                   # @time
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r14
	xorl	%ebx, %ebx
	leaq	8(%rsp), %rdx
	movl	$228, %edi
	xorl	%esi, %esi
	callq	*256(%r14)
	movq	%rax, 80(%r14)
	testq	%rax, %rax
	jne	.LBB56_2
# %bb.1:                                # %jf.else
	imulq	$1000000000, 8(%rsp), %rbx      # imm = 0x3B9ACA00
	addq	16(%rsp), %rbx
.LBB56_2:                               # %common.ret
	movq	%rbx, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end56:
	.size	time, .Lfunc_end56-time
	.cfi_endproc
                                        # -- End function
	.globl	stacksize                       # -- Begin function stacksize
	.p2align	4
	.type	stacksize,@function
stacksize:                              # @stacksize
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	movq	%rsp, %rdx
	movl	$97, %edi
	movl	$3, %esi
	callq	*256(%rbx)
	movq	%rax, 80(%rbx)
	movq	(%rsp), %rdx
	shrq	$3, %rdx
	xorl	%ecx, %ecx
	testq	%rax, %rax
	cmoveq	%rdx, %rcx
	movq	%rcx, %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end57:
	.size	stacksize, .Lfunc_end57-stacksize
	.cfi_endproc
                                        # -- End function
	.globl	stop                            # -- Begin function stop
	.p2align	4
	.type	stop,@function
stop:                                   # @stop
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %rsi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$60, %edi
	callq	*256(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end58:
	.size	stop, .Lfunc_end58-stop
	.cfi_endproc
                                        # -- End function
	.globl	blib.allocate_dcb               # -- Begin function blib.allocate_dcb
	.p2align	4
	.type	blib.allocate_dcb,@function
blib.allocate_dcb:                      # @blib.allocate_dcb
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	movl	$127, %edi
	callq	*200(%rbx)
	testq	%rax, %rax
	je	.LBB59_1
# %bb.3:                                # %jf.then_L526
	movq	%rax, %r13
	movl	$5, %edi
	callq	*200(%rbx)
	testq	%rax, %rax
	je	.LBB59_4
# %bb.5:                                # %jf.then_L527
	movq	(,%rax,8), %rcx
	movl	%r15d, %edx
	andl	$3, %edx
	andl	$-15, %ecx
	andl	$1, %r12d
	shlq	$32, %rbp
	leaq	(%rbp,%rdx,2), %rdx
	leaq	(%rdx,%r12,8), %rdx
	orq	%rcx, %rdx
	movq	%rdx, (,%rax,8)
	movq	%r13, 8(,%rax,8)
	xorl	%ecx, %ecx
	cmpq	$2, %r15
	sete	%cl
	shlq	$42, %rcx
	movq	%rcx, 16(,%rax,8)
	andb	$-2, %dl
	movb	%dl, (,%rax,8)
	movq	%r14, 32(,%rax,8)
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, 24(,%rax,8)
	movq	itemn.global.99(%rip), %rcx
	movq	%rcx, 40(,%rax,8)
	movq	%rax, itemn.global.99(%rip)
	jmp	.LBB59_2
.LBB59_4:                               # %jf.else31
	movq	%r13, %rdi
	callq	*216(%rbx)
.LBB59_1:
	xorl	%eax, %eax
.LBB59_2:                               # %common.ret
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end59:
	.size	blib.allocate_dcb, .Lfunc_end59-blib.allocate_dcb
	.cfi_endproc
                                        # -- End function
	.globl	blib.block_flush                # -- Begin function blib.block_flush
	.p2align	4
	.type	blib.block_flush,@function
blib.block_flush:                       # @blib.block_flush
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	16(,%rdi,8), %ecx
	testq	%rcx, %rcx
	je	.LBB60_3
# %bb.1:                                # %jf.else
	leaq	16(,%rdi,8), %r14
	shlq	$3, %rdi
	movl	4(%rdi), %esi
	movq	8(%rdi), %rdx
	shlq	$3, %rdx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	callq	*256(%rbx)
	movl	$0, (%r14)
	testq	%rax, %rax
	jg	.LBB60_3
# %bb.2:                                # %jf.else124
	negq	%rax
	movq	%rax, 80(%rbx)
.LBB60_3:                               # %common.ret
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end60:
	.size	blib.block_flush, .Lfunc_end60-blib.block_flush
	.cfi_endproc
                                        # -- End function
	.globl	blib.block_write                # -- Begin function blib.block_write
	.p2align	4
	.type	blib.block_write,@function
blib.block_write:                       # @blib.block_write
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	16(,%rdi,8), %ecx
	testq	%rcx, %rcx
	je	.LBB61_3
# %bb.1:                                # %jf.else.i
	leaq	16(,%rdi,8), %r14
	shlq	$3, %rdi
	movl	4(%rdi), %esi
	movq	8(%rdi), %rdx
	shlq	$3, %rdx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	callq	*256(%rbx)
	movl	$0, (%r14)
	testq	%rax, %rax
	jg	.LBB61_3
# %bb.2:                                # %jf.else124.i
	negq	%rax
	movq	%rax, 80(%rbx)
.LBB61_3:                               # %blib.block_flush.exit
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end61:
	.size	blib.block_write, .Lfunc_end61-blib.block_write
	.cfi_endproc
                                        # -- End function
	.globl	xx                              # -- Begin function xx
	.p2align	4
	.type	xx,@function
xx:                                     # @xx
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	callq	*472(%rbx)
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	itemn.global.98(%rip), %rdi
	callq	*456(%rbx)
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	*752(%rbx)
	movq	104(%rbx), %rax
	movl	16(,%rax,8), %ecx
	testq	%rcx, %rcx
	je	.LBB62_3
# %bb.1:                                # %jf.else.i
	leaq	16(,%rax,8), %r14
	shlq	$3, %rax
	movl	4(%rax), %esi
	movq	8(%rax), %rdx
	shlq	$3, %rdx
	movl	$1, %edi
	callq	*256(%rbx)
	movl	$0, (%r14)
	testq	%rax, %rax
	jg	.LBB62_3
# %bb.2:                                # %jf.else124.i
	negq	%rax
	movq	%rax, 80(%rbx)
.LBB62_3:                               # %blib.block_flush.exit
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	*456(%rbx)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end62:
	.size	xx, .Lfunc_end62-xx
	.cfi_endproc
                                        # -- End function
	.globl	blib.block_close                # -- Begin function blib.block_close
	.p2align	4
	.type	blib.block_close,@function
blib.block_close:                       # @blib.block_close
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	(,%rdi,8), %r14
	movq	(,%rdi,8), %rsi
	testb	$6, %sil
	je	.LBB63_4
# %bb.1:                                # %jf.else13
	movl	16(%r14), %ecx
	testq	%rcx, %rcx
	je	.LBB63_4
# %bb.2:                                # %jf.else.i
	leaq	16(%r14), %r12
	shrq	$32, %rsi
	movq	8(%r14), %rdx
	shlq	$3, %rdx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	movl	$1, %edi
	callq	*256(%r15)
	movl	$0, (%r12)
	testq	%rax, %rax
	jle	.LBB63_3
.LBB63_4:                               # %jf.then_L536
	testb	$8, (%r14)
	jne	.LBB63_9
.LBB63_5:                               # %jt.else
	movq	itemn.global.99(%rip), %rax
	testq	%rax, %rax
	je	.LBB63_6
# %bb.10:                               # %lab_L538.preheader
	cmpq	%rax, %rbx
	jne	.LBB63_11
# %bb.13:                               # %jf.else74
	movq	40(%r14), %rax
	movq	%rax, itemn.global.99(%rip)
	jmp	.LBB63_14
.LBB63_6:
	movl	$224, %r15d
	addq	__bcpl_global_vector@GOTPCREL(%rip), %r15
.LBB63_7:                               # %common.ret.sink.split
	movl	$100, %ebx
	jmp	.LBB63_8
.LBB63_11:
	movl	$224, %r15d
	addq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	.p2align	4
.LBB63_16:                              # %jf.then_L541
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	40(,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB63_7
# %bb.15:                               # %lab_L538
                                        #   in Loop: Header=BB63_16 Depth=1
	cmpq	%rax, %rbx
	jne	.LBB63_16
# %bb.12:                               # %jf.then_L542
	movq	40(%r14), %rax
	movq	%rax, 40(,%rcx,8)
.LBB63_14:                              # %jump.target_L543
	movq	8(%r14), %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	leaq	216(%rax), %r15
	callq	*216(%rax)
	movq	$0, 8(%r14)
.LBB63_8:                               # %common.ret.sink.split
	movq	%rbx, %rdi
	callq	*(%r15)
.LBB63_9:                               # %common.ret
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB63_3:                               # %jf.else124.i
	.cfi_def_cfa_offset 48
	negq	%rax
	movq	%rax, 80(%r15)
	testb	$8, (%r14)
	je	.LBB63_5
	jmp	.LBB63_9
.Lfunc_end63:
	.size	blib.block_close, .Lfunc_end63-blib.block_close
	.cfi_endproc
                                        # -- End function
	.globl	blib.block_read                 # -- Begin function blib.block_read
	.p2align	4
	.type	blib.block_read,@function
blib.block_read:                        # @blib.block_read
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	(,%rdi,8), %r14
	movl	4(,%rdi,8), %esi
	movq	8(,%rdi,8), %rdx
	shlq	$3, %rdx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	movl	$1024, %ecx                     # imm = 0x400
	xorl	%edi, %edi
	callq	*256(%r15)
	movl	$0, 16(,%rbx,8)
	testq	%rax, %rax
	jle	.LBB64_1
# %bb.5:                                # %jf.then_L545
	leaq	16(,%rbx,8), %rcx
	shlq	$32, %rax
	movq	%rax, (%rcx)
	jmp	.LBB64_4
.LBB64_1:                               # %jf.else
	je	.LBB64_3
# %bb.2:                                # %jf.else93
	negq	%rax
	movq	%rax, 80(%r15)
.LBB64_3:                               # %jf.then_L546
	orb	$1, (%r14)
.LBB64_4:                               # %common.ret
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end64:
	.size	blib.block_read, .Lfunc_end64-blib.block_read
	.cfi_endproc
                                        # -- End function
	.globl	blib.tty_write                  # -- Begin function blib.tty_write
	.p2align	4
	.type	blib.tty_write,@function
blib.tty_write:                         # @blib.tty_write
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	16(,%rdi,8), %ecx
	testq	%rcx, %rcx
	je	.LBB65_3
# %bb.1:                                # %jf.else.i.i
	leaq	16(,%rdi,8), %r14
	shlq	$3, %rdi
	movl	4(%rdi), %esi
	movq	8(%rdi), %rdx
	shlq	$3, %rdx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	callq	*256(%rbx)
	movl	$0, (%r14)
	testq	%rax, %rax
	jg	.LBB65_3
# %bb.2:                                # %jf.else124.i.i
	negq	%rax
	movq	%rax, 80(%rbx)
.LBB65_3:                               # %blib.block_write.exit
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end65:
	.size	blib.tty_write, .Lfunc_end65-blib.tty_write
	.cfi_endproc
                                        # -- End function
	.globl	blib.tty_read                   # -- Begin function blib.tty_read
	.p2align	4
	.type	blib.tty_read,@function
blib.tty_read:                          # @blib.tty_read
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	(,%rdi,8), %r14
	movl	4(,%rdi,8), %esi
	movq	8(,%rdi,8), %rdx
	shlq	$3, %rdx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	movl	$1024, %ecx                     # imm = 0x400
	xorl	%edi, %edi
	callq	*256(%r15)
	movl	$0, 16(,%rbx,8)
	testq	%rax, %rax
	jle	.LBB66_1
# %bb.4:                                # %jf.then_L545.i
	leaq	16(,%rbx,8), %rcx
	shlq	$32, %rax
	movq	%rax, (%rcx)
	jmp	.LBB66_5
.LBB66_1:                               # %jf.else.i
	je	.LBB66_3
# %bb.2:                                # %jf.else93.i
	negq	%rax
	movq	%rax, 80(%r15)
.LBB66_3:                               # %jf.then_L546.i
	orb	$1, (%r14)
.LBB66_5:                               # %blib.block_read.exit
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end66:
	.size	blib.tty_read, .Lfunc_end66-blib.tty_read
	.cfi_endproc
                                        # -- End function
	.globl	blib.tty_write.108              # -- Begin function blib.tty_write.108
	.p2align	4
	.type	blib.tty_write.108,@function
blib.tty_write.108:                     # @blib.tty_write.108
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	16(,%rdi,8), %ecx
	testq	%rcx, %rcx
	je	.LBB67_3
# %bb.1:                                # %jf.else.i.i
	leaq	16(,%rdi,8), %r14
	shlq	$3, %rdi
	movl	4(%rdi), %esi
	movq	8(%rdi), %rdx
	shlq	$3, %rdx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	movl	$1, %edi
	callq	*256(%rbx)
	movl	$0, (%r14)
	testq	%rax, %rax
	jg	.LBB67_3
# %bb.2:                                # %jf.else124.i.i
	negq	%rax
	movq	%rax, 80(%rbx)
.LBB67_3:                               # %blib.block_write.exit
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end67:
	.size	blib.tty_write.108, .Lfunc_end67-blib.tty_write.108
	.cfi_endproc
                                        # -- End function
	.globl	blib.tty_close                  # -- Begin function blib.tty_close
	.p2align	4
	.type	blib.tty_close,@function
blib.tty_close:                         # @blib.tty_close
	.cfi_startproc
# %bb.0:                                # %entry
	jmp	blib.block_close@PLT            # TAILCALL
.Lfunc_end68:
	.size	blib.tty_close, .Lfunc_end68-blib.tty_close
	.cfi_endproc
                                        # -- End function
	.globl	blib.findfile                   # -- Begin function blib.findfile
	.p2align	4
	.type	blib.findfile,@function
blib.findfile:                          # @blib.findfile
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$256, %rsp                      # imm = 0x100
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movzbl	1(,%rdi,8), %eax
	cmpl	$33, %eax
	je	.LBB69_4
# %bb.1:                                # %entry
	cmpl	$42, %eax
	jne	.LBB69_6
# %bb.2:                                # %jf.else
	cmpq	$1, %rsi
	jne	.LBB69_17
# %bb.3:                                # %jf.else20
	movq	itemn.global.96(%rip), %rax
	jmp	.LBB69_34
.LBB69_4:                               # %jf.else44
	cmpq	$1, %rsi
	je	.LBB69_33
# %bb.5:                                # %jf.else44
	movq	itemn.global.98(%rip), %rax
	jmp	.LBB69_34
.LBB69_6:                               # %jf.then_L554
	leaq	(,%rdi,8), %rax
	movzbl	(%rax), %ecx
	testq	%rcx, %rcx
	je	.LBB69_19
# %bb.7:                                # %lab_L556.preheader
	movl	$1, %edx
	cmpb	$8, %cl
	jb	.LBB69_11
# %bb.8:                                # %vector.ph
	movl	%ecx, %r8d
	andl	$-4, %r8d
	leaq	1(%r8), %rdx
	xorl	%r9d, %r9d
	.p2align	4
.LBB69_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	1(%r9,%rdi,8), %r10d
	movl	%r10d, (%rsp,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB69_9
# %bb.10:                               # %middle.block
	cmpl	%ecx, %r8d
	je	.LBB69_13
.LBB69_11:                              # %lab_L556.preheader251
	decq	%rdx
	.p2align	4
.LBB69_12:                              # %lab_L556
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rdx,%rdi,8), %r8d
	movb	%r8b, (%rsp,%rdx)
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	.LBB69_12
.LBB69_13:                              # %jt.then_L557.loopexit
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movb	$0, (%rsp,%rax)
	cmpq	$1, %rsi
	je	.LBB69_20
.LBB69_14:                              # %jt.then_L557
	cmpq	$3, %rsi
	je	.LBB69_21
# %bb.15:                               # %jt.then_L557
	cmpq	$2, %rsi
	jne	.LBB69_26
# %bb.16:                               # %lab_L563
	movq	%rsi, %r14
	movl	$577, %edx                      # imm = 0x241
	jmp	.LBB69_22
.LBB69_17:                              # %jf.then_L553
	movq	itemn.global.97(%rip), %rax
	jmp	.LBB69_34
.LBB69_19:
	xorl	%eax, %eax
	movzbl	%al, %eax
	movb	$0, (%rsp,%rax)
	cmpq	$1, %rsi
	jne	.LBB69_14
.LBB69_20:
	movq	%rsi, %r14
	xorl	%edx, %edx
	jmp	.LBB69_22
.LBB69_21:                              # %lab_L564
	movq	%rsi, %r14
	movl	$2, %edx
.LBB69_22:                              # %jump.target_L561
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r12
	movq	%rsp, %rsi
	movl	$2, %edi
	movl	$438, %ecx                      # imm = 0x1B6
	callq	*256(%r12)
	movq	%rax, %rbx
	testq	%rax, %rax
	js	.LBB69_25
# %bb.23:                               # %jf.else179
	movq	%r14, %r13
	cmpq	$1, %r14
	jne	.LBB69_27
# %bb.24:                               # %jf.else179
	movq	blib.block_read@GOTPCREL(%rip), %r15
	jmp	.LBB69_28
.LBB69_25:                              # %jf.then_L566
	negq	%rbx
	movq	%rbx, 80(%r12)
	jmp	.LBB69_33
.LBB69_26:                              # %lab_L565
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	$2, 80(%rax)
	jmp	.LBB69_33
.LBB69_27:
	movq	blib.block_write@GOTPCREL(%rip), %r15
.LBB69_28:                              # %jf.else179
	movq	$0, 80(%r12)
	movl	$127, %edi
	callq	*200(%r12)
	testq	%rax, %rax
	je	.LBB69_33
# %bb.29:                               # %jf.then_L526.i
	movq	%rax, %r14
	movl	$5, %edi
	callq	*200(%r12)
	testq	%rax, %rax
	je	.LBB69_32
# %bb.30:                               # %jf.then_L527.i
	movq	(,%rax,8), %rcx
	movl	%r13d, %edx
	andl	$3, %edx
	andl	$-15, %ecx
	shlq	$32, %rbx
	leaq	(%rbx,%rdx,2), %rdx
	orq	%rcx, %rdx
	movq	%rdx, (,%rax,8)
	movq	%r14, 8(,%rax,8)
	xorl	%ecx, %ecx
	cmpq	$2, %r13
	sete	%cl
	shlq	$42, %rcx
	movq	%rcx, 16(,%rax,8)
	andb	$-10, %dl
	movb	%dl, (,%rax,8)
	movq	%r15, 32(,%rax,8)
	movq	blib.block_close@GOTPCREL(%rip), %rcx
	movq	%rcx, 24(,%rax,8)
	movq	itemn.global.99(%rip), %rcx
	movq	%rcx, 40(,%rax,8)
	movq	%rax, itemn.global.99(%rip)
	jmp	.LBB69_34
.LBB69_32:                              # %jf.else31.i
	movq	%r14, %rdi
	callq	*216(%r12)
.LBB69_33:                              # %common.ret
	xorl	%eax, %eax
.LBB69_34:                              # %common.ret
	addq	$256, %rsp                      # imm = 0x100
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end69:
	.size	blib.findfile, .Lfunc_end69-blib.findfile
	.cfi_endproc
                                        # -- End function
	.globl	blib.rditem_add                 # -- Begin function blib.rditem_add
	.p2align	4
	.type	blib.rditem_add,@function
blib.rditem_add:                        # @blib.rditem_add
# %bb.0:                                # %entry
	movq	itemn.global.96(%rip), %rax
	movq	16(,%rax,8), %rcx
	movq	%rcx, %rdx
	shrq	$42, %rdx
	jne	.LBB70_5
# %bb.1:                                # %jf.else
	movq	%rdi, %rsi
	andq	$-8, %rsi
	andl	$7, %edi
	movzbl	(%rsi,%rdi), %r10d
	testb	%r10b, %r10b
	je	.LBB70_5
# %bb.2:                                # %jt.then_L570.preheader
	leaq	16(,%rax,8), %rdx
	shlq	$3, %rax
	addq	$8, %rax
	leaq	1(%rdi,%rsi), %rsi
	movabsq	$-4294967296, %rdi              # imm = 0xFFFFFFFF00000000
	movabsq	$4294967296, %r8                # imm = 0x100000000
	movabsq	$4393751543808, %r9             # imm = 0x3FF00000000
	.p2align	4
.LBB70_3:                               # %jt.then_L570
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r11
	shrq	$32, %rcx
	movb	%r10b, (%rcx,%r11,8)
	movq	(%rdx), %r10
	movl	%r10d, %ecx
	andq	%rdi, %r10
	addq	%r8, %r10
	orq	%r10, %rcx
	movq	%rcx, (%rdx)
	cmpq	%r9, %r10
	ja	.LBB70_5
# %bb.4:                                # %jf.else213
                                        #   in Loop: Header=BB70_3 Depth=1
	movzbl	(%rsi), %r10d
	incq	%rsi
	testb	%r10b, %r10b
	jne	.LBB70_3
.LBB70_5:                               # %common.ret
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end70:
	.size	blib.rditem_add, .Lfunc_end70-blib.rditem_add
                                        # -- End function
	.globl	blib.rditem_end                 # -- Begin function blib.rditem_end
	.p2align	4
	.type	blib.rditem_end,@function
blib.rditem_end:                        # @blib.rditem_end
# %bb.0:                                # %entry
	movq	itemn.global.96(%rip), %rax
	movq	8(,%rax,8), %rcx
	movl	20(,%rax,8), %edx
	movb	$10, (%rdx,%rcx,8)
	movq	8(,%rax,8), %rcx
	movl	20(,%rax,8), %edx
	movb	$-1, 1(%rdx,%rcx,8)
	movl	20(,%rax,8), %ecx
	shlq	$32, %rcx
	movabsq	$8589934592, %rdx               # imm = 0x200000000
	addq	%rcx, %rdx
	shrq	$32, %rdx
	movl	%edx, 20(,%rax,8)
	orb	$16, (,%rax,8)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end71:
	.size	blib.rditem_end, .Lfunc_end71-blib.rditem_end
                                        # -- End function
	.globl	findinput                       # -- Begin function findinput
	.p2align	4
	.type	findinput,@function
findinput:                              # @findinput
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %esi
	jmp	blib.findfile@PLT               # TAILCALL
.Lfunc_end72:
	.size	findinput, .Lfunc_end72-findinput
	.cfi_endproc
                                        # -- End function
	.globl	findoutput                      # -- Begin function findoutput
	.p2align	4
	.type	findoutput,@function
findoutput:                             # @findoutput
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$2, %esi
	jmp	blib.findfile@PLT               # TAILCALL
.Lfunc_end73:
	.size	findoutput, .Lfunc_end73-findoutput
	.cfi_endproc
                                        # -- End function
	.globl	selectinput                     # -- Begin function selectinput
	.p2align	4
	.type	selectinput,@function
selectinput:                            # @selectinput
# %bb.0:                                # %entry
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	%rdi, 96(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end74:
	.size	selectinput, .Lfunc_end74-selectinput
                                        # -- End function
	.globl	selectoutput                    # -- Begin function selectoutput
	.p2align	4
	.type	selectoutput,@function
selectoutput:                           # @selectoutput
# %bb.0:                                # %entry
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	%rdi, 104(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end75:
	.size	selectoutput, .Lfunc_end75-selectoutput
                                        # -- End function
	.globl	rdch                            # -- Begin function rdch
	.p2align	4
	.type	rdch,@function
rdch:                                   # @rdch
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	callq	*464(%r15)
	movq	%rax, %rbx
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB76_1
# %bb.2:                                # %jf.then_L580
	movq	(,%r14,8), %rcx
	movq	$-1, %rax
	testb	$1, %cl
	je	.LBB76_3
.LBB76_9:                               # %common.ret
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB76_1:                               # %jf.else
	.cfi_def_cfa_offset 32
	movl	$101, %edi
	callq	*224(%r15)
	movq	(,%r14,8), %rcx
	movq	$-1, %rax
	testb	$1, %cl
	jne	.LBB76_9
.LBB76_3:                               # %jf.then_L581
	shlq	$3, %rbx
	movq	16(%rbx), %rdx
	movq	%rdx, %rsi
	shrq	$32, %rsi
	cmpl	%esi, %edx
	jne	.LBB76_5
# %bb.4:                                # %jf.else62
	movq	%r14, %rdi
	callq	*32(%rbx)
	movq	$-1, %rax
	movq	(%rbx), %rcx
.LBB76_5:                               # %jf.then_L582
	testb	$1, %cl
	jne	.LBB76_9
# %bb.6:                                # %jf.then_L583
	leaq	16(%rbx), %rcx
	movq	8(%rbx), %rax
	movq	(%rcx), %rdx
	movl	%edx, %esi
	movzbl	(%rsi,%rax,8), %eax
	incl	%edx
	cmpq	$255, %rax
	movl	%edx, (%rcx)
	jne	.LBB76_9
# %bb.7:                                # %jf.else203
	movq	(%rbx), %rcx
	movl	$255, %eax
	testb	$16, %cl
	je	.LBB76_9
# %bb.8:                                # %jf.else229
	andq	$-17, %rcx
	movq	%rcx, (%rbx)
	movq	$-1, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end76:
	.size	rdch, .Lfunc_end76-rdch
	.cfi_endproc
                                        # -- End function
	.globl	unrdch                          # -- Begin function unrdch
	.p2align	4
	.type	unrdch,@function
unrdch:                                 # @unrdch
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r14
	callq	*464(%r14)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB77_2
# %bb.1:                                # %jf.else
	movl	$101, %edi
	callq	*224(%r14)
.LBB77_2:                               # %jf.then_L586
	movq	16(,%rbx,8), %rax
	testl	%eax, %eax
	je	.LBB77_4
# %bb.3:                                # %jf.else28
	leaq	16(,%rbx,8), %rcx
	leal	-1(%rax), %edx
	movabsq	$-4294967296, %rsi              # imm = 0xFFFFFFFF00000000
	andq	%rax, %rsi
	orq	%rdx, %rsi
	movq	%rsi, (%rcx)
.LBB77_4:                               # %common.ret
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end77:
	.size	unrdch, .Lfunc_end77-unrdch
	.cfi_endproc
                                        # -- End function
	.globl	wrch                            # -- Begin function wrch
	.p2align	4
	.type	wrch,@function
wrch:                                   # @wrch
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	callq	*472(%r15)
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.LBB78_2
# %bb.1:                                # %jf.else
	movl	$102, %edi
	callq	*224(%r15)
.LBB78_2:                               # %jf.then_L589
	leaq	(,%r14,8), %r12
	leaq	16(,%r14,8), %r15
	movq	16(,%r14,8), %rcx
	movl	%ecx, %eax
	shrq	$32, %rcx
	cmpq	%rcx, %rax
	jne	.LBB78_3
.LBB78_6:                               # %jt.then_L591
	movq	%r14, %rdi
	callq	*32(%r12)
	movl	(%r15), %eax
	jmp	.LBB78_7
.LBB78_3:                               # %jt.else
	cmpq	$10, %rbx
	jne	.LBB78_7
# %bb.4:                                # %jf.else56
	cmpq	%r14, itemn.global.97(%rip)
	je	.LBB78_6
# %bb.5:                                # %jf.else56
	cmpq	%r14, itemn.global.98(%rip)
	je	.LBB78_6
.LBB78_7:                               # %jf.then_L590
	movq	8(%r12), %rcx
	movb	%bl, (%rax,%rcx,8)
	incl	(%r15)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end78:
	.size	wrch, .Lfunc_end78-wrch
	.cfi_endproc
                                        # -- End function
	.globl	endread                         # -- Begin function endread
	.p2align	4
	.type	endread,@function
endread:                                # @endread
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	callq	*464(%rbx)
	testq	%rax, %rax
	jne	.LBB79_2
# %bb.1:                                # %jf.else
	movl	$101, %edi
	callq	*224(%rbx)
.LBB79_2:                               # %jf.then_L594
	callq	*464(%rbx)
	movq	%rax, %rdi
	callq	blib.block_close@PLT
	xorl	%edi, %edi
	callq	*448(%rbx)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end79:
	.size	endread, .Lfunc_end79-endread
	.cfi_endproc
                                        # -- End function
	.globl	endwrite                        # -- Begin function endwrite
	.p2align	4
	.type	endwrite,@function
endwrite:                               # @endwrite
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rbx
	callq	*472(%rbx)
	testq	%rax, %rax
	jne	.LBB80_2
# %bb.1:                                # %jf.else
	movl	$102, %edi
	callq	*224(%rbx)
.LBB80_2:                               # %jf.then_L596
	callq	*472(%rbx)
	movq	%rax, %rdi
	callq	blib.block_close@PLT
	xorl	%edi, %edi
	callq	*456(%rbx)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end80:
	.size	endwrite, .Lfunc_end80-endwrite
	.cfi_endproc
                                        # -- End function
	.globl	blib.ioinit                     # -- Begin function blib.ioinit
	.p2align	4
	.type	blib.ioinit,@function
blib.ioinit:                            # @blib.ioinit
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	$0, itemn.global.99(%rip)
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r13
	movl	$127, %edi
	callq	*200(%r13)
	testq	%rax, %rax
	je	.LBB81_5
# %bb.1:                                # %jf.then_L526.i
	movq	%rax, %r12
	movl	$5, %edi
	callq	*200(%r13)
	testq	%rax, %rax
	je	.LBB81_4
# %bb.2:                                # %jf.then_L527.i
	movq	(,%rax,8), %rcx
	andl	$-15, %ecx
	shlq	$32, %r15
	leaq	10(%rcx,%r15), %rcx
	movq	%rcx, (,%rax,8)
	movq	%r12, 8(,%rax,8)
	movq	$0, 16(,%rax,8)
	andb	$-6, %cl
	movb	%cl, (,%rax,8)
	movq	blib.tty_read@GOTPCREL(%rip), %rcx
	movq	%rcx, 32(,%rax,8)
	movq	blib.tty_close@GOTPCREL(%rip), %rcx
	movq	%rcx, 24(,%rax,8)
	movq	itemn.global.99(%rip), %rcx
	movq	%rcx, 40(,%rax,8)
	movq	%rax, itemn.global.99(%rip)
	jmp	.LBB81_6
.LBB81_4:                               # %jf.else31.i
	movq	%r12, %rdi
	callq	*216(%r13)
.LBB81_5:                               # %blib.allocate_dcb.exit
	xorl	%eax, %eax
.LBB81_6:                               # %blib.allocate_dcb.exit
	movq	%rax, itemn.global.96(%rip)
	movl	$127, %edi
	callq	*200(%r13)
	testq	%rax, %rax
	je	.LBB81_11
# %bb.7:                                # %jf.then_L526.i76
	movq	%rax, %r15
	movl	$5, %edi
	callq	*200(%r13)
	testq	%rax, %rax
	je	.LBB81_10
# %bb.8:                                # %jf.then_L527.i81
	movq	(,%rax,8), %rcx
	andl	$-15, %ecx
	shlq	$32, %r14
	leaq	12(%rcx,%r14), %rcx
	movq	%rcx, (,%rax,8)
	movq	%r15, 8(,%rax,8)
	movabsq	$4398046511104, %rdx            # imm = 0x40000000000
	movq	%rdx, 16(,%rax,8)
	andb	$-4, %cl
	movb	%cl, (,%rax,8)
	movq	blib.tty_write.108@GOTPCREL(%rip), %rcx
	movq	%rcx, 32(,%rax,8)
	movq	blib.tty_close@GOTPCREL(%rip), %rcx
	movq	%rcx, 24(,%rax,8)
	movq	itemn.global.99(%rip), %rcx
	movq	%rcx, 40(,%rax,8)
	movq	%rax, itemn.global.99(%rip)
	jmp	.LBB81_12
.LBB81_10:                              # %jf.else31.i103
	movq	%r15, %rdi
	callq	*216(%r13)
.LBB81_11:                              # %blib.allocate_dcb.exit107
	xorl	%eax, %eax
.LBB81_12:                              # %blib.allocate_dcb.exit107
	movq	%rax, itemn.global.97(%rip)
	movl	$127, %edi
	callq	*200(%r13)
	testq	%rax, %rax
	je	.LBB81_17
# %bb.13:                               # %jf.then_L526.i112
	movq	%rax, %r14
	movl	$5, %edi
	callq	*200(%r13)
	testq	%rax, %rax
	je	.LBB81_16
# %bb.14:                               # %jf.then_L527.i117
	movq	(,%rax,8), %rcx
	andl	$-15, %ecx
	shlq	$32, %rbx
	leaq	12(%rcx,%rbx), %rcx
	movq	%rcx, (,%rax,8)
	movq	%r14, 8(,%rax,8)
	movabsq	$4398046511104, %rdx            # imm = 0x40000000000
	movq	%rdx, 16(,%rax,8)
	andb	$-4, %cl
	movb	%cl, (,%rax,8)
	movq	blib.tty_write.108@GOTPCREL(%rip), %rcx
	movq	%rcx, 32(,%rax,8)
	movq	blib.tty_close@GOTPCREL(%rip), %rcx
	movq	%rcx, 24(,%rax,8)
	movq	itemn.global.99(%rip), %rcx
	movq	%rcx, 40(,%rax,8)
	movq	%rax, itemn.global.99(%rip)
	jmp	.LBB81_18
.LBB81_16:                              # %jf.else31.i139
	movq	%r14, %rdi
	callq	*216(%r13)
.LBB81_17:                              # %blib.allocate_dcb.exit143
	xorl	%eax, %eax
.LBB81_18:                              # %blib.allocate_dcb.exit143
	movq	%rax, itemn.global.98(%rip)
	movq	itemn.global.96(%rip), %rdi
	callq	*448(%r13)
	movq	itemn.global.97(%rip), %rdi
	callq	*456(%r13)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end81:
	.size	blib.ioinit, .Lfunc_end81-blib.ioinit
	.cfi_endproc
                                        # -- End function
	.globl	blib.ioterm                     # -- Begin function blib.ioterm
	.p2align	4
	.type	blib.ioterm,@function
blib.ioterm:                            # @blib.ioterm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	itemn.global.99(%rip), %rdi
	movq	itemn.global.98(%rip), %rax
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rcx
	movq	%rax, 104(%rcx)
	testq	%rdi, %rdi
	jne	.LBB82_1
.LBB82_4:                               # %common.ret
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
	.p2align	4
.LBB82_3:                               # %jump.target_L602
                                        #   in Loop: Header=BB82_1 Depth=1
	.cfi_def_cfa_offset 16
	callq	blib.block_close@PLT
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	je	.LBB82_4
.LBB82_1:                               # %jt.then_L599
                                        # =>This Inner Loop Header: Depth=1
	movq	(,%rdi,8), %rax
	movq	40(,%rdi,8), %rbx
	testb	$8, %al
	je	.LBB82_3
# %bb.2:                                # %jf.else
                                        #   in Loop: Header=BB82_1 Depth=1
	leaq	(,%rdi,8), %rcx
	andq	$-9, %rax
	movq	%rax, (%rcx)
	jmp	.LBB82_3
.Lfunc_end82:
	.size	blib.ioterm, .Lfunc_end82-blib.ioterm
	.cfi_endproc
                                        # -- End function
	.globl	rewind                          # -- Begin function rewind
	.p2align	4
	.type	rewind,@function
rewind:                                 # @rewind
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r14
	callq	*464(%r14)
	movq	%rax, %rbx
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB83_2
# %bb.1:                                # %jf.else
	movl	$101, %edi
	callq	*224(%r14)
.LBB83_2:                               # %jf.then_L604
	shlq	$3, %rbx
	movl	4(,%r15,8), %esi
	movl	$8, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*256(%r14)
	testq	%rax, %rax
	jns	.LBB83_4
# %bb.3:                                # %jf.else41
	negq	%rax
	movq	%rax, 80(%r14)
.LBB83_4:                               # %jf.then_L605
	movq	$0, 16(%rbx)
	andb	$-2, (%rbx)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end83:
	.size	rewind, .Lfunc_end83-rewind
	.cfi_endproc
                                        # -- End function
	.globl	mapstore                        # -- Begin function mapstore
	.p2align	4
	.type	mapstore,@function
mapstore:                               # @mapstore
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	leaq	.Llstr.global.127(%rip), %rdi
	sarq	$3, %rdi
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	movq	(%r15), %rsi
	callq	*752(%r15)
	movq	(%r15), %r12
	decq	%r12
	js	.LBB84_5
# %bb.1:                                # %lab_L607.preheader
	leaq	.Llstr.global.128(%rip), %rbx
	sarq	$3, %rbx
	xorl	%r14d, %r14d
	movq	%r15, %r13
	jmp	.LBB84_2
	.p2align	4
.LBB84_4:                               # %jf.then_L611
                                        #   in Loop: Header=BB84_2 Depth=1
	movq	%r13, %rax
	andq	$-8, %rax
	movq	(%rax), %rdi
	movl	$16, %esi
	callq	*696(%r15)
	movl	$32, %edi
	callq	*328(%r15)
	incq	%r14
	addq	$8, %r13
	cmpq	%r12, %r14
	jg	.LBB84_5
.LBB84_2:                               # %lab_L607
                                        # =>This Inner Loop Header: Depth=1
	testb	$3, %r14b
	jne	.LBB84_4
# %bb.3:                                # %jf.else
                                        #   in Loop: Header=BB84_2 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*752(%r15)
	jmp	.LBB84_4
.LBB84_5:                               # %jt.then_L608
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r15
	callq	*672(%r15)
	leaq	.Llstr.global.129(%rip), %rdi
	sarq	$3, %rdi
	movl	$1024, %esi                     # imm = 0x400
	callq	*752(%r15)
	movq	itemn.global.99(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB84_8
# %bb.6:                                # %lab_L612.preheader
	leaq	.Llstr.global.130(%rip), %r14
	sarq	$3, %r14
	movl	$42, %r12d
	movl	$32, %r13d
	.p2align	4
.LBB84_7:                               # %lab_L612
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, 104(%r15)
	movl	$32, %esi
	cmoveq	%r12, %rsi
	cmpq	%rbx, 96(%r15)
	cmoveq	%r12, %rsi
	movq	(,%rbx,8), %rax
	movq	16(,%rbx,8), %r10
	testb	$2, %al
	movl	$82, %r8d
	cmoveq	%r13, %r8
	testb	$4, %al
	movl	$87, %r9d
	cmoveq	%r13, %r9
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%r10d, %r11d
	shrq	$32, %r10
	andl	$1, %eax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rdi
	movq	%rbx, %rdx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	callq	*752(%r15)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	40(,%rbx,8), %rbx
	testq	%rbx, %rbx
	jne	.LBB84_7
.LBB84_8:                               # %jf.then_L614
	callq	blib.dumpheap@PLT
	leaq	.Llstr.global.131(%rip), %rdi
	sarq	$3, %rdi
	callq	*712(%r15)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end84:
	.size	mapstore, .Lfunc_end84-mapstore
	.cfi_endproc
                                        # -- End function
	.globl	xgetenv                         # -- Begin function xgetenv
	.p2align	4
	.type	xgetenv,@function
xgetenv:                                # @xgetenv
# %bb.0:                                # %entry
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	retq
.Lfunc_end85:
	.size	xgetenv, .Lfunc_end85-xgetenv
                                        # -- End function
	.globl	blib.undefined                  # -- Begin function blib.undefined
	.p2align	4
	.type	blib.undefined,@function
blib.undefined:                         # @blib.undefined
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movl	$103, %edi
	callq	*224(%rax)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end86:
	.size	blib.undefined, .Lfunc_end86-blib.undefined
	.cfi_endproc
                                        # -- End function
	.globl	blib.bcplmain                   # -- Begin function blib.bcplmain
	.p2align	4
	.type	blib.bcplmain,@function
blib.bcplmain:                          # @blib.bcplmain
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$1, %r12d
	movl	$1, %esi
	movl	$2, %edx
	xorl	%edi, %edi
	callq	blib.ioinit@PLT
	cmpq	$2, %r15
	jl	.LBB87_16
# %bb.1:                                # %lab_L626.preheader
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	movabsq	$4398046511103, %rcx            # imm = 0x3FFFFFFFFFF
	movabsq	$4393751543808, %rdx            # imm = 0x3FF00000000
	movabsq	$4294967296, %rsi               # imm = 0x100000000
	leaq	.Llstr.global.135(%rip), %rdi
	sarq	$3, %rdi
	movq	%rdi, %r8
	andq	$-8, %r8
	andl	$7, %edi
	leaq	1(%rdi,%r8), %r9
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	jmp	.LBB87_2
	.p2align	4
.LBB87_14:                              # %blib.rditem_add.exit267
                                        #   in Loop: Header=BB87_2 Depth=1
	incq	%r12
	cmpq	%r15, %r12
	jge	.LBB87_15
.LBB87_2:                               # %lab_L626
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_6 Depth 2
                                        #     Child Loop BB87_12 Depth 2
	cmpq	$2, %r12
	movq	itemn.global.96(%rip), %r10
	jb	.LBB87_9
# %bb.3:                                # %jf.else42
                                        #   in Loop: Header=BB87_2 Depth=1
	movq	16(,%r10,8), %r11
	cmpq	%rcx, %r11
	ja	.LBB87_9
# %bb.4:                                # %jf.else.i
                                        #   in Loop: Header=BB87_2 Depth=1
	movzbl	(%r8,%rdi), %ebx
	testb	%bl, %bl
	je	.LBB87_9
# %bb.5:                                # %jt.then_L570.preheader.i
                                        #   in Loop: Header=BB87_2 Depth=1
	leaq	16(,%r10,8), %r13
	shlq	$3, %r10
	addq	$8, %r10
	movq	16(%rsp), %rbp                  # 8-byte Reload
	.p2align	4
.LBB87_6:                               # %jt.then_L570.i
                                        #   Parent Loop BB87_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r10), %r9
	shrq	$32, %r11
	movb	%bl, (%r11,%r9,8)
	movq	(%r13), %r9
	movl	%r9d, %r11d
	andq	%rax, %r9
	addq	%rsi, %r9
	orq	%r9, %r11
	movq	%r11, (%r13)
	cmpq	%rdx, %r9
	ja	.LBB87_8
# %bb.7:                                # %jf.else213.i
                                        #   in Loop: Header=BB87_6 Depth=2
	movzbl	(%rbp), %ebx
	incq	%rbp
	testb	%bl, %bl
	jne	.LBB87_6
.LBB87_8:                               # %jf.then_L630.loopexit
                                        #   in Loop: Header=BB87_2 Depth=1
	movq	itemn.global.96(%rip), %r10
	.p2align	4
.LBB87_9:                               # %jf.then_L630
                                        #   in Loop: Header=BB87_2 Depth=1
	movq	16(,%r10,8), %r11
	cmpq	%rcx, %r11
	ja	.LBB87_14
# %bb.10:                               # %jf.else.i238
                                        #   in Loop: Header=BB87_2 Depth=1
	leaq	(%r12,%r14), %r9
	movq	(,%r9,8), %rbp
	movq	%rbp, %r9
	andq	$-8, %r9
	andl	$7, %ebp
	movzbl	(%r9,%rbp), %ebx
	testb	%bl, %bl
	je	.LBB87_14
# %bb.11:                               # %jt.then_L570.preheader.i245
                                        #   in Loop: Header=BB87_2 Depth=1
	leaq	16(,%r10,8), %r13
	shlq	$3, %r10
	addq	$8, %r10
	leaq	1(%r9,%rbp), %rbp
	.p2align	4
.LBB87_12:                              # %jt.then_L570.i248
                                        #   Parent Loop BB87_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r10), %r9
	shrq	$32, %r11
	movb	%bl, (%r11,%r9,8)
	movq	(%r13), %r9
	movl	%r9d, %r11d
	andq	%rax, %r9
	addq	%rsi, %r9
	orq	%r9, %r11
	movq	%r11, (%r13)
	cmpq	%rdx, %r9
	ja	.LBB87_14
# %bb.13:                               # %jf.else213.i262
                                        #   in Loop: Header=BB87_12 Depth=2
	movzbl	(%rbp), %ebx
	incq	%rbp
	testb	%bl, %bl
	jne	.LBB87_12
	jmp	.LBB87_14
.LBB87_15:                              # %jt.then_L627
	movq	itemn.global.96(%rip), %rcx
	movq	8(,%rcx,8), %rdx
	movl	20(,%rcx,8), %esi
	movb	$10, (%rsi,%rdx,8)
	movq	8(,%rcx,8), %rdx
	movl	20(,%rcx,8), %esi
	movb	$-1, 1(%rsi,%rdx,8)
	movq	16(,%rcx,8), %rdx
	andq	%rdx, %rax
	movl	%edx, %edx
	addq	%rax, %rdx
	movabsq	$8589934592, %rax               # imm = 0x200000000
	addq	%rdx, %rax
	movq	%rax, 16(,%rcx,8)
	orb	$16, (,%rcx,8)
.LBB87_16:                              # %jf.then_L625
	movq	__bcpl_global_vector@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	decq	%rcx
	js	.LBB87_21
# %bb.17:                               # %lab_L631.preheader
	movq	%rax, %rdx
	andq	$-8, %rdx
	xorl	%esi, %esi
	movq	blib.undefined@GOTPCREL(%rip), %rdi
	jmp	.LBB87_18
	.p2align	4
.LBB87_20:                              # %lab_L634
                                        #   in Loop: Header=BB87_18 Depth=1
	incq	%rsi
	addq	$8, %rax
	cmpq	%rcx, %rsi
	jg	.LBB87_21
.LBB87_18:                              # %lab_L631
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 8(%rdx)
	jne	.LBB87_20
# %bb.19:                               # %jf.else125
                                        #   in Loop: Header=BB87_18 Depth=1
	movq	%rax, %r8
	andq	$-8, %r8
	movq	%rdi, (%r8)
	jmp	.LBB87_20
.LBB87_21:                              # %jt.then_L632
	movq	__bcpl_global_vector@GOTPCREL(%rip), %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, 232(%r14)
	movq	8(%r14), %rax
	cmpq	blib.undefined@GOTPCREL(%rip), %rax
	jne	.LBB87_23
# %bb.22:                               # %jf.else169
	movq	itemn.global.98(%rip), %rdi
	callq	*456(%r14)
	leaq	.Llstr.global.136(%rip), %rdi
	sarq	$3, %rdi
	callq	*752(%r14)
	addq	$224, %r14
	movl	$104, %ebx
	jmp	.LBB87_28
.LBB87_23:                              # %jf.then_L636
	xorl	%edi, %edi
	callq	*%rax
	movq	%rax, %rbx
	movq	itemn.global.99(%rip), %rdi
	movq	itemn.global.98(%rip), %rax
	movq	%rax, 104(%r14)
	testq	%rdi, %rdi
	jne	.LBB87_24
.LBB87_27:                              # %blib.ioterm.exit
	movq	itemn.global.63(%rip), %rsi
	shlq	$3, %rsi
	movl	$11, %edi
	movl	$8388608, %edx                  # imm = 0x800000
	callq	*256(%r14)
	movq	$0, itemn.global.63(%rip)
	addq	$16, %r14
.LBB87_28:                              # %common.ret
	movq	%rbx, %rdi
	callq	*(%r14)
	movabsq	$-4985279381848933680, %rax     # imm = 0xBAD0BAD0BAD0BAD0
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
	.p2align	4
.LBB87_26:                              # %jump.target_L602.i
                                        #   in Loop: Header=BB87_24 Depth=1
	.cfi_def_cfa_offset 80
	callq	blib.block_close@PLT
	testq	%r15, %r15
	movq	%r15, %rdi
	je	.LBB87_27
.LBB87_24:                              # %jt.then_L599.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(,%rdi,8), %rax
	movq	40(,%rdi,8), %r15
	testb	$8, %al
	je	.LBB87_26
# %bb.25:                               # %jf.else.i282
                                        #   in Loop: Header=BB87_24 Depth=1
	leaq	(,%rdi,8), %rcx
	andq	$-9, %rax
	movq	%rax, (%rcx)
	jmp	.LBB87_26
.Lfunc_end87:
	.size	blib.bcplmain, .Lfunc_end87-blib.bcplmain
	.cfi_endproc
                                        # -- End function
	.type	.Llstr.global,@object           # @lstr.global
	.section	.data.BLIB,"aw",@progbits
	.p2align	3, 0x0
.Llstr.global:
	.ascii	"\r<<mess:%-%n>>"
	.size	.Llstr.global, 14

	.type	itemn.global,@object            # @itemn.global
	.p2align	4, 0x0
itemn.global:
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.size	itemn.global, 128

	.type	.Llstr.global.23,@object        # @lstr.global.23
	.p2align	3, 0x0
.Llstr.global.23:
	.ascii	"2Error: rdargs format specified too many arguments\n"
	.size	.Llstr.global.23, 51

	.type	.Llstr.global.24,@object        # @lstr.global.24
	.p2align	3, 0x0
.Llstr.global.24:
	.ascii	"\t (yes/no)"
	.size	.Llstr.global.24, 10

	.type	.Llstr.global.25,@object        # @lstr.global.25
	.p2align	3, 0x0
.Llstr.global.25:
	.ascii	"\003 > "
	.size	.Llstr.global.25, 4

	.type	.Llstr.global.26,@object        # @lstr.global.26
	.p2align	3, 0x0
.Llstr.global.26:
	.ascii	"\003yes"
	.size	.Llstr.global.26, 4

	.type	.Llstr.global.27,@object        # @lstr.global.27
	.p2align	3, 0x0
.Llstr.global.27:
	.ascii	"\001y"
	.size	.Llstr.global.27, 2

	.type	.Llstr.global.32,@object        # @lstr.global.32
	.p2align	3, 0x0
.Llstr.global.32:
	.ascii	"\002: "
	.size	.Llstr.global.32, 3

	.type	.Llstr.global.45,@object        # @lstr.global.45
	.p2align	3, 0x0
.Llstr.global.45:
	.ascii	"\n%10.5f %n\n"
	.size	.Llstr.global.45, 11

	.type	.Llstr.global.46,@object        # @lstr.global.46
	.p2align	3, 0x0
.Llstr.global.46:
	.ascii	"\n%10.5f %n\n"
	.size	.Llstr.global.46, 11

	.type	.Llstr.global.47,@object        # @lstr.global.47
	.p2align	3, 0x0
.Llstr.global.47:
	.ascii	"7ERROR sys_flt operation=%n a=%16x b=%16x c=%16x d=%16x\n"
	.size	.Llstr.global.47, 56

	.type	.Llstr.global.49,@object        # @lstr.global.49
	.p2align	3, 0x0
.Llstr.global.49:
	.ascii	">ERROR sys package=%n operation=%n a=%16x b=%16x c=%16x d=%16x\n"
	.size	.Llstr.global.49, 63

	.type	itemn.global.63,@object         # @itemn.global.63
	.p2align	3, 0x0
itemn.global.63:
	.quad	0                               # 0x0
	.size	itemn.global.63, 8

	.type	itemn.global.64,@object         # @itemn.global.64
	.p2align	3, 0x0
itemn.global.64:
	.quad	0                               # 0x0
	.size	itemn.global.64, 8

	.type	itemn.global.65,@object         # @itemn.global.65
	.p2align	3, 0x0
itemn.global.65:
	.quad	0                               # 0x0
	.size	itemn.global.65, 8

	.type	itemn.global.66,@object         # @itemn.global.66
	.p2align	3, 0x0
itemn.global.66:
	.quad	0                               # 0x0
	.size	itemn.global.66, 8

	.type	itemn.global.67,@object         # @itemn.global.67
	.p2align	3, 0x0
itemn.global.67:
	.quad	0                               # 0x0
	.size	itemn.global.67, 8

	.type	itemn.global.68,@object         # @itemn.global.68
	.p2align	3, 0x0
itemn.global.68:
	.quad	0                               # 0x0
	.size	itemn.global.68, 8

	.type	itemn.global.69,@object         # @itemn.global.69
	.p2align	3, 0x0
itemn.global.69:
	.quad	0                               # 0x0
	.size	itemn.global.69, 8

	.type	itemn.global.70,@object         # @itemn.global.70
	.p2align	3, 0x0
itemn.global.70:
	.quad	0                               # 0x0
	.size	itemn.global.70, 8

	.type	.Llstr.global.72,@object        # @lstr.global.72
	.p2align	3, 0x0
.Llstr.global.72:
	.ascii	"S\n-- HEAP SPACE ------------------------------------------------------------------\n\n"
	.size	.Llstr.global.72, 84

	.type	.Llstr.global.73,@object        # @lstr.global.73
	.p2align	3, 0x0
.Llstr.global.73:
	.ascii	"\023Heap not allocated\n"
	.size	.Llstr.global.73, 20

	.type	.Llstr.global.74,@object        # @lstr.global.74
	.p2align	3, 0x0
.Llstr.global.74:
	.ascii	"IHeap of %N words allocated at range %16X..%16X (byte address %16X..%16X)\n"
	.size	.Llstr.global.74, 74

	.type	.Llstr.global.75,@object        # @lstr.global.75
	.p2align	3, 0x0
.Llstr.global.75:
	.ascii	"\032\nBlocks on the free list:\n"
	.size	.Llstr.global.75, 27

	.type	.Llstr.global.76,@object        # @lstr.global.76
	.p2align	3, 0x0
.Llstr.global.76:
	.ascii	"HNo.  Size (words)      At BCPL address   To BCPL address    Contents...\n"
	.size	.Llstr.global.76, 73

	.type	.Llstr.global.77,@object        # @lstr.global.77
	.p2align	3, 0x0
.Llstr.global.77:
	.ascii	"\027%4X: %16X %16X..%16X   "
	.size	.Llstr.global.77, 24

	.type	.Llstr.global.78,@object        # @lstr.global.78
	.p2align	3, 0x0
.Llstr.global.78:
	.ascii	"\r\nStatistics:\n"
	.size	.Llstr.global.78, 14

	.type	.Llstr.global.79,@object        # @lstr.global.79
	.p2align	3, 0x0
.Llstr.global.79:
	.ascii	"KFree list contains %N words of space in %N blocks. The largest is %N words\n"
	.size	.Llstr.global.79, 76

	.type	.Llstr.global.80,@object        # @lstr.global.80
	.p2align	3, 0x0
.Llstr.global.80:
	.ascii	"=getvecs=%n (largest %n) freevecs=%n current use %n (hwm %n)\n\n"
	.size	.Llstr.global.80, 62

	.type	itemn.global.96,@object         # @itemn.global.96
	.p2align	3, 0x0
itemn.global.96:
	.quad	0                               # 0x0
	.size	itemn.global.96, 8

	.type	itemn.global.97,@object         # @itemn.global.97
	.p2align	3, 0x0
itemn.global.97:
	.quad	0                               # 0x0
	.size	itemn.global.97, 8

	.type	itemn.global.98,@object         # @itemn.global.98
	.p2align	3, 0x0
itemn.global.98:
	.quad	0                               # 0x0
	.size	itemn.global.98, 8

	.type	itemn.global.99,@object         # @itemn.global.99
	.p2align	3, 0x0
itemn.global.99:
	.quad	0                               # 0x0
	.size	itemn.global.99, 8

	.type	.Llstr.global.127,@object       # @lstr.global.127
	.p2align	3, 0x0
.Llstr.global.127:
	.ascii	"Q\n-- GLOBAL VECTOR (%4I ENTRIES) ------------------------------------------------\n"
	.size	.Llstr.global.127, 82

	.type	.Llstr.global.128,@object       # @lstr.global.128
	.p2align	3, 0x0
.Llstr.global.128:
	.ascii	"\006\n%4I: "
	.size	.Llstr.global.128, 7

	.type	.Llstr.global.129,@object       # @lstr.global.129
	.p2align	3, 0x0
.Llstr.global.129:
	.ascii	"R\n-- STREAMS (BUFFER SIZE %4I)) -------------------------------------------------\n\n"
	.size	.Llstr.global.129, 83

	.type	.Llstr.global.130,@object       # @lstr.global.130
	.p2align	3, 0x0
.Llstr.global.130:
	.ascii	"8%cDCB %16X: FD %2i ACCESS %c%c POS %4i LAST %4i EOF %n \n"
	.size	.Llstr.global.130, 57

	.type	.Llstr.global.131,@object       # @lstr.global.131
	.p2align	3, 0x0
.Llstr.global.131:
	.ascii	"S\n--------------------------------------------------------------------------------\n\n"
	.size	.Llstr.global.131, 84

	.type	.Llstr.global.135,@object       # @lstr.global.135
	.p2align	3, 0x0
.Llstr.global.135:
	.ascii	"\001 "
	.size	.Llstr.global.135, 2

	.type	.Llstr.global.136,@object       # @lstr.global.136
	.p2align	3, 0x0
.Llstr.global.136:
	.ascii	"\034fatal: start is not defined\n"
	.size	.Llstr.global.136, 29

	.globl	__bcpl_gv64
	.type	__bcpl_gv64,@function
.set __bcpl_gv64, mapstore
	.globl	__bcpl_gv4
	.type	__bcpl_gv4,@function
.set __bcpl_gv4, rewind
	.globl	__bcpl_gv61
	.type	__bcpl_gv61,@function
.set __bcpl_gv61, endwrite
	.globl	__bcpl_gv60
	.type	__bcpl_gv60,@function
.set __bcpl_gv60, endread
	.globl	__bcpl_gv41
	.type	__bcpl_gv41,@function
.set __bcpl_gv41, wrch
	.globl	__bcpl_gv40
	.type	__bcpl_gv40,@function
.set __bcpl_gv40, unrdch
	.globl	__bcpl_gv38
	.type	__bcpl_gv38,@function
.set __bcpl_gv38, rdch
	.globl	__bcpl_gv57
	.type	__bcpl_gv57,@function
.set __bcpl_gv57, selectoutput
	.globl	__bcpl_gv56
	.type	__bcpl_gv56,@function
.set __bcpl_gv56, selectinput
	.globl	__bcpl_gv49
	.type	__bcpl_gv49,@function
.set __bcpl_gv49, findoutput
	.globl	__bcpl_gv48
	.type	__bcpl_gv48,@function
.set __bcpl_gv48, findinput
	.globl	__bcpl_gv2
	.type	__bcpl_gv2,@function
.set __bcpl_gv2, stop
	.globl	__bcpl_gv11
	.type	__bcpl_gv11,@function
.set __bcpl_gv11, stacksize
	.globl	__bcpl_gv55
	.type	__bcpl_gv55,@function
.set __bcpl_gv55, time
	.globl	__bcpl_gv9
	.type	__bcpl_gv9,@function
.set __bcpl_gv9, maxvec
	.globl	__bcpl_gv27
	.type	__bcpl_gv27,@function
.set __bcpl_gv27, freevec
	.globl	__bcpl_gv25
	.type	__bcpl_gv25,@function
.set __bcpl_gv25, getvec
	.globl	__bcpl_gv44
	.type	__bcpl_gv44,@function
.set __bcpl_gv44, fabs
	.globl	__bcpl_gv47
	.type	__bcpl_gv47,@function
.set __bcpl_gv47, fcomp
	.globl	__bcpl_gv46
	.type	__bcpl_gv46,@function
.set __bcpl_gv46, ffloat
	.globl	__bcpl_gv45
	.type	__bcpl_gv45,@function
.set __bcpl_gv45, ffix
	.globl	__bcpl_gv37
	.type	__bcpl_gv37,@function
.set __bcpl_gv37, fneg
	.globl	__bcpl_gv42
	.type	__bcpl_gv42,@function
.set __bcpl_gv42, fdiv
	.globl	__bcpl_gv39
	.type	__bcpl_gv39,@function
.set __bcpl_gv39, fmult
	.globl	__bcpl_gv36
	.type	__bcpl_gv36,@function
.set __bcpl_gv36, fminus
	.globl	__bcpl_gv33
	.type	__bcpl_gv33,@function
.set __bcpl_gv33, fplus
	.globl	__bcpl_gv28
	.type	__bcpl_gv28,@function
.set __bcpl_gv28, abort
	.globl	__bcpl_gv43
	.type	__bcpl_gv43,@function
.set __bcpl_gv43, deplete
	.globl	__bcpl_gv89
	.type	__bcpl_gv89,@function
.set __bcpl_gv89, writes
	.globl	__bcpl_gv3
	.type	__bcpl_gv3,@function
.set __bcpl_gv3, sys
	.globl	__bcpl_gv94
	.type	__bcpl_gv94,@function
.set __bcpl_gv94, writef
	.globl	__bcpl_gv92
	.type	__bcpl_gv92,@function
.set __bcpl_gv92, writez
	.globl	__bcpl_gv73
	.type	__bcpl_gv73,@function
.set __bcpl_gv73, writeflt
	.globl	__bcpl_gv59
	.type	__bcpl_gv59,@function
.set __bcpl_gv59, output
	.globl	__bcpl_gv58
	.type	__bcpl_gv58,@function
.set __bcpl_gv58, input
	.globl	__bcpl_gv83
	.type	__bcpl_gv83,@function
.set __bcpl_gv83, readn
	.globl	__bcpl_gv103
	.type	__bcpl_gv103,@function
.set __bcpl_gv103, rditem
	.globl	__bcpl_gv26
	.type	__bcpl_gv26,@function
.set __bcpl_gv26, rdargs2
	.globl	__bcpl_gv102
	.type	__bcpl_gv102,@function
.set __bcpl_gv102, rdargs
	.globl	__bcpl_gv97
	.type	__bcpl_gv97,@function
.set __bcpl_gv97, compch
	.globl	__bcpl_gv84
	.type	__bcpl_gv84,@function
.set __bcpl_gv84, newline
	.globl	__bcpl_gv87
	.type	__bcpl_gv87,@function
.set __bcpl_gv87, writehex
	.globl	__bcpl_gv88
	.type	__bcpl_gv88,@function
.set __bcpl_gv88, writeoct
	.globl	__bcpl_gv86
	.type	__bcpl_gv86,@function
.set __bcpl_gv86, writen
	.globl	__bcpl_gv85
	.type	__bcpl_gv85,@function
.set __bcpl_gv85, writed
	.globl	__bcpl_gv96
	.type	__bcpl_gv96,@function
.set __bcpl_gv96, capitalch
	.globl	__bcpl_gv30
	.type	__bcpl_gv30,@function
.set __bcpl_gv30, packstring
	.globl	__bcpl_gv31
	.type	__bcpl_gv31,@function
.set __bcpl_gv31, unpackstring
	.globl	__bcpl_gv34
	.type	__bcpl_gv34,@function
.set __bcpl_gv34, randno
	.section	".note.GNU-stack","",@progbits
