	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI1_0:
	.long	1065353216
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fact
	.align	4, 0x90
_fact:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	subq	$16, %rsp
Ltmp2:
	testl	%edi, %edi
	je	LBB1_2
	cvtsi2ss	%edi, %xmm0
	movss	%xmm0, -4(%rbp)
	decl	%edi
	callq	_fact
	mulss	-4(%rbp), %xmm0
	jmp	LBB1_3
LBB1_2:
	movss	LCPI1_0(%rip), %xmm0
LBB1_3:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end1:

	.globl	_FlCyclGorner
	.align	4, 0x90
_FlCyclGorner:
Leh_func_begin2:
	pushq	%rbp
Ltmp3:
	movq	%rsp, %rbp
Ltmp4:
	movaps	%xmm0, %xmm1
	mulss	%xmm1, %xmm1
	movss	_coeficent+68(%rip), %xmm2
	movl	$16, %eax
	leaq	_coeficent(%rip), %rcx
	.align	4, 0x90
LBB2_1:
	mulss	%xmm1, %xmm2
	addss	(%rcx,%rax,4), %xmm2
	testq	%rax, %rax
	leaq	-1(%rax), %rax
	jne	LBB2_1
	mulss	%xmm2, %xmm0
	popq	%rbp
	ret
Leh_func_end2:

	.globl	_FlNoCyclGorner
	.align	4, 0x90
_FlNoCyclGorner:
Leh_func_begin3:
	pushq	%rbp
Ltmp5:
	movq	%rsp, %rbp
Ltmp6:
	movaps	%xmm0, %xmm1
	movaps	%xmm1, %xmm2
	mulss	%xmm2, %xmm2
	movss	_coeficent+64(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+60(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+56(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+52(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+48(%rip), %xmm0
	mulss	%xmm2, %xmm01
	addss	_coeficent+44(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+40(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+36(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+32(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+28(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+24(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+20(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+16(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+12(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+8(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent+4(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	_coeficent(%rip), %xmm0
	mulss	%xmm1, %xmm0
	popq	%rbp
	ret
Leh_func_end3:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI4_0:
	.long	1275068416
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_initFixCoef
	.align	4, 0x90
_initFixCoef:
Leh_func_begin4:
	pushq	%rbp
Ltmp7:
	movq	%rsp, %rbp
Ltmp8:
	xorl	%eax, %eax
	leaq	_coeficent(%rip), %rcx
	movss	LCPI4_0(%rip), %xmm0
	movq	_fixCoeficent@GOTPCREL(%rip), %rdx
	.align	4, 0x90
LBB4_1:
	movss	(%rax,%rcx), %xmm1
	mulss	%xmm0, %xmm1
	cvttss2siq	%xmm1, %rsi
	movq	%rsi, (%rdx,%rax,2)
	addq	$4, %rax
	cmpq	$72, %rax
	jne	LBB4_1
	popq	%rbp
	ret
Leh_func_end4:

	.globl	_FixCyclGorner
	.align	4, 0x90
_FixCyclGorner:
Leh_func_begin5:
	pushq	%rbp
Ltmp9:
	movq	%rsp, %rbp
Ltmp10:
	movq	%rdi, %rcx
	imulq	%rcx, %rcx
	sarq	$25, %rcx
	movq	_fixCoeficent@GOTPCREL(%rip), %rdx
	movq	136(%rdx), %rax
	movl	$16, %esi
	.align	4, 0x90
LBB5_1:
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	(%rdx,%rsi,8), %rax
	testq	%rsi, %rsi
	leaq	-1(%rsi), %rsi
	jne	LBB5_1
	imulq	%rdi, %rax
	sarq	$25, %rax
	popq	%rbp
	ret
Leh_func_end5:

	.globl	_FixNoCyclGorner
	.align	4, 0x90
_FixNoCyclGorner:
Leh_func_begin6:
	pushq	%rbp
Ltmp11:
	movq	%rsp, %rbp
Ltmp12:
	movq	%rdi, %rcx
	imulq	%rcx, %rcx
	sarq	$25, %rcx
	movq	_fixCoeficent@GOTPCREL(%rip), %rdx
	movq	136(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	128(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	120(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	112(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	104(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	96(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	88(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	80(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	72(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	64(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	56(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	48(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	40(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	32(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	24(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	16(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	8(%rdx), %rax
	imulq	%rcx, %rax
	sarq	$25, %rax
	addq	(%rdx), %rax
	imulq	%rdi, %rax
	sarq	$25, %rax
	popq	%rbp
	ret
Leh_func_end6:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI7_0:
	.long	1191182336
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_tableFloat
	.align	4, 0x90
_tableFloat:
Leh_func_begin7:
	pushq	%rbp
Ltmp13:
	movq	%rsp, %rbp
Ltmp14:
	movss	LCPI7_0(%rip), %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movslq	%eax, %rax
	movq	_coefTable@GOTPCREL(%rip), %rcx
	mulss	4(%rcx,%rax,8), %xmm0
	addss	(%rcx,%rax,8), %xmm0
	popq	%rbp
	ret
Leh_func_end7:

	.globl	_fixTable
	.align	4, 0x90
_fixTable:
Leh_func_begin8:
	pushq	%rbp
Ltmp15:
	movq	%rsp, %rbp
Ltmp16:
	movq	%rdi, %rax
	shrq	$17, %rax
	andq	$131071, %rdi
	movslq	%eax, %rax
	leaq	(%rax,%rax,2), %rcx
	movq	_fixCoefTable@GOTPCREL(%rip), %rdx
	imulq	8(%rdx,%rcx,8), %rdi
	sarq	$25, %rdi
	movq	%rdi, %rax
	addq	(%rdx,%rcx,8), %rax
	popq	%rbp
	ret
Leh_func_end8:

	.globl	_fix_table_func
	.align	4, 0x90
_fix_table_func:
Leh_func_begin9:
	pushq	%rbp
Ltmp17:
	movq	%rsp, %rbp
Ltmp18:
	movl	%edi, %eax
	sarl	$17, %eax
	andq	$131071, %rdi
	movslq	%eax, %rax
	leaq	(%rax,%rax,2), %rcx
	movq	_fixCoefTable@GOTPCREL(%rip), %rdx
	imulq	8(%rdx,%rcx,8), %rdi
	sarq	$25, %rdi
	movq	%rdi, %rax
	addq	(%rdx,%rcx,8), %rax
	popq	%rbp
	ret
Leh_func_end9:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI10_0:
	.long	1108082688
LCPI10_1:
	.long	1107558400
LCPI10_2:
	.long	1106771968
LCPI10_3:
	.long	1105723392
LCPI10_4:
	.long	1104674816
LCPI10_5:
	.long	1103626240
LCPI10_6:
	.long	1102577664
LCPI10_7:
	.long	1101529088
LCPI10_8:
	.long	1100480512
LCPI10_9:
	.long	1099431936
LCPI10_10:
	.long	1097859072
LCPI10_11:
	.long	1095761920
LCPI10_12:
	.long	1093664768
LCPI10_13:
	.long	1091567616
LCPI10_14:
	.long	1088421888
LCPI10_15:
	.long	1084227584
LCPI10_16:
	.long	1077936128
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_FlNoCyclNoGorner
	.align	4, 0x90
_FlNoCyclNoGorner:
Leh_func_begin10:
	pushq	%rbp
Ltmp19:
	movq	%rsp, %rbp
Ltmp20:
	subq	$80, %rsp
Ltmp21:
	movss	%xmm0, -4(%rbp)
	movss	_coeficent(%rip), %xmm1
	mulss	%xmm0, %xmm1
	pxor	%xmm2, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, -68(%rbp)
	movss	LCPI10_0(%rip), %xmm1
	callq	_powf
	movss	%xmm0, -72(%rbp)
	movss	LCPI10_1(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -8(%rbp)
	movss	LCPI10_2(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -12(%rbp)
	movss	LCPI10_3(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -16(%rbp)
	movss	LCPI10_4(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -20(%rbp)
	movss	LCPI10_5(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -24(%rbp)
	movss	LCPI10_6(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -28(%rbp)
	movss	LCPI10_7(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -32(%rbp)
	movss	LCPI10_8(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -36(%rbp)
	movss	LCPI10_9(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -40(%rbp)
	movss	LCPI10_10(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -44(%rbp)
	movss	LCPI10_11(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -48(%rbp)
	movss	LCPI10_12(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -52(%rbp)
	movss	LCPI10_13(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -56(%rbp)
	movss	LCPI10_14(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -60(%rbp)
	movss	LCPI10_15(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -64(%rbp)
	movss	LCPI10_16(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	callq	_powf
	mulss	_coeficent+4(%rip), %xmm0
	movss	-68(%rbp), %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, -68(%rbp)
	movss	-64(%rbp), %xmm0
	mulss	_coeficent+8(%rip), %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-60(%rbp), %xmm0
	mulss	_coeficent+12(%rip), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	_coeficent+16(%rip), %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-52(%rbp), %xmm0
	mulss	_coeficent+20(%rip), %xmm0
	addss	-56(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-48(%rbp), %xmm0
	mulss	_coeficent+24(%rip), %xmm0
	addss	-52(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-44(%rbp), %xmm0
	mulss	_coeficent+28(%rip), %xmm0
	addss	-48(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-40(%rbp), %xmm0
	mulss	_coeficent+32(%rip), %xmm0
	addss	-44(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-36(%rbp), %xmm0
	mulss	_coeficent+36(%rip), %xmm0
	addss	-40(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-32(%rbp), %xmm0
	mulss	_coeficent+40(%rip), %xmm0
	addss	-36(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-28(%rbp), %xmm0
	mulss	_coeficent+44(%rip), %xmm0
	addss	-32(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-24(%rbp), %xmm0
	mulss	_coeficent+48(%rip), %xmm0
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-20(%rbp), %xmm0
	mulss	_coeficent+52(%rip), %xmm0
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-16(%rbp), %xmm0
	mulss	_coeficent+56(%rip), %xmm0
	addss	-20(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-12(%rbp), %xmm0
	mulss	_coeficent+60(%rip), %xmm0
	addss	-16(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-8(%rbp), %xmm0
	mulss	_coeficent+64(%rip), %xmm0
	addss	-12(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-72(%rbp), %xmm0
	mulss	_coeficent+68(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	addss	-8(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end10:

	.globl	_FlCyclNoGorner
	.align	4, 0x90
_FlCyclNoGorner:
Leh_func_begin11:
	pushq	%rbp
Ltmp22:
	movq	%rsp, %rbp
Ltmp23:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp24:
	pxor	%xmm1, %xmm1
	movss	%xmm1, -28(%rbp)
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movss	%xmm0, -32(%rbp)
	leaq	_coeficent(%rip), %r15
	.align	4, 0x90
LBB11_1:
	cvtsi2ss	%ebx, %xmm1
	movss	-32(%rbp), %xmm0
	callq	_powf
	mulss	(%r14,%r15), %xmm0
	movss	-28(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	addl	$2, %ebx
	addq	$4, %r14
	cmpq	$72, %r14
	jne	LBB11_1
	movaps	%xmm1, %xmm0
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end11:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI12_0:
	.long	1077936128
LCPI12_1:
	.long	1065353216
LCPI12_2:
	.long	1275068416
LCPI12_3:
	.long	1056964608
LCPI12_4:
	.long	998244352
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_initTable
	.align	4, 0x90
_initTable:
Leh_func_begin12:
	pushq	%rbp
Ltmp25:
	movq	%rsp, %rbp
Ltmp26:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Ltmp27:
	movq	_fixCoefTable@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	xorl	%r14d, %r14d
	movq	_coefTable@GOTPCREL(%rip), %r15
	.align	4, 0x90
LBB12_1:
	movss	-28(%rbp), %xmm0
	callq	_cosf
	movss	%xmm0, -32(%rbp)
	movss	-28(%rbp), %xmm0
	callq	_sinf
	addss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movaps	%xmm0, %xmm1
	movss	%xmm1, -36(%rbp)
	movss	LCPI12_0(%rip), %xmm1
	movss	-36(%rbp), %xmm2
	divss	%xmm1, %xmm2
	movss	%xmm2, -36(%rbp)
	movss	-32(%rbp), %xmm0
	callq	_powf
	movss	%xmm0, -48(%rbp)
	movss	-36(%rbp), %xmm2
	mulss	%xmm0, %xmm2
	movss	-32(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	LCPI12_1(%rip), %xmm0
	divss	-32(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	%xmm2, (%r15,%r14,8)
	movss	%xmm0, 4(%r15,%r14,8)
	movss	-28(%rbp), %xmm0
	callq	_tanf
	movss	LCPI12_2(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movss	-44(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	cvttss2siq	%xmm0, %rcx
	movss	-40(%rbp), %xmm0
	mulss	LCPI12_3(%rip), %xmm0
	mulss	-48(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	cvttss2siq	%xmm0, %rdx
	movss	-28(%rbp), %xmm0
	addss	LCPI12_4(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	incq	%r14
	movq	%rax, -16(%rbx)
	movq	%rcx, -8(%rbx)
	movq	%rdx, (%rbx)
	addq	$24, %rbx
	cmpq	$256, %r14
	jne	LBB12_1
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end12:

	.globl	_FlMath
	.align	4, 0x90
_FlMath:
Leh_func_begin13:
	pushq	%rbp
Ltmp28:
	movq	%rsp, %rbp
Ltmp29:
	popq	%rbp
	jmp	_tanf  # TAILCALL
Leh_func_end13:

	.globl	_fixCountTacts
	.align	4, 0x90
_fixCountTacts:
Leh_func_begin14:
	pushq	%rbp
Ltmp30:
	movq	%rsp, %rbp
Ltmp31:
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
Ltmp32:
	movq	%rdi, %rbx
	leaq	-32(%rbp), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	callq	_gettimeofday
	.align	4, 0x90
LBB14_1:
	movq	%r14, %rdi
	callq	*%rbx
	addq	$33, %r14
	cmpq	$33554433, %r14
	jne	LBB14_1
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	imulq	$1000000000, %rax, %rax
	movl	-40(%rbp), %ecx
	subl	-24(%rbp), %ecx
	imull	$1000, %ecx, %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	cvtsi2ssq	%rcx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	leaq	L_.str(%rip), %rdi
	callq	_printf
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end14:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI15_0:
	.long	897988541
LCPI15_1:
	.long	1065353216
LCPI15_2:
	.long	1232348160
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_timeFunc
	.align	4, 0x90
_timeFunc:
Leh_func_begin15:
	pushq	%rbp
Ltmp33:
	movq	%rsp, %rbp
Ltmp34:
	pushq	%rbx
	subq	$40, %rsp
Ltmp35:
	movq	%rdi, %rbx
	leaq	-24(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	.align	4, 0x90
LBB15_1:
	movss	-44(%rbp), %xmm0
	callq	*%rbx
	movss	-44(%rbp), %xmm0
	addss	LCPI15_0(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	LCPI15_1(%rip), %xmm0
	ucomiss	-44(%rbp), %xmm0
	ja	LBB15_1
	leaq	-40(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	imulq	$1000000000, %rax, %rax
	movl	-32(%rbp), %ecx
	subl	-16(%rbp), %ecx
	imull	$1000, %ecx, %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	cvtsi2ssq	%rcx, %xmm0
	divss	LCPI15_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	leaq	L_.str1(%rip), %rdi
	callq	_printf
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end15:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI16_0:
	.quad	4985484787500187648
LCPI16_1:
	.quad	4696837146684686336
LCPI16_2:
	.quad	4666723722223157248
LCPI16_3:
	.quad	4636737291354636288
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_timeFIX
	.align	4, 0x90
_timeFIX:
Leh_func_begin16:
	pushq	%rbp
Ltmp36:
	movq	%rsp, %rbp
Ltmp37:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp38:
	movl	$5, %ebx
	movq	%rdi, %r14
	.align	4, 0x90
LBB16_1:
	callq	_clock
	movl	$100, %r13d
	movq	%rax, %r15
	xorl	%r12d, %r12d
	jmp	LBB16_2
	.align	4, 0x90
LBB16_4:
	xorl	%r12d, %r12d
LBB16_2:
	movq	%r12, %rdi
	callq	*%r14
	addq	$3355, %r12
	cmpq	$33556710, %r12
	jne	LBB16_2
	decl	%r13d
	jne	LBB16_4
	callq	_clock
	subq	%r15, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movabsq	$4985484787499139072, %rdx
	addq	%rdx, %rcx
	movd	%rcx, %xmm1
	subsd	LCPI16_0(%rip), %xmm1
	movl	%eax, %eax
	movabsq	$4841369599423283200, %rcx
	addq	%rcx, %rax
	movd	%rax, %xmm0
	addsd	%xmm1, %xmm0
	divsd	LCPI16_1(%rip), %xmm0
	divsd	LCPI16_2(%rip), %xmm0
	divsd	LCPI16_3(%rip), %xmm0
	leaq	L_.str2(%rip), %rax
	movq	%rax, %rdi
	movb	$1, %al
	callq	_printf
	decl	%ebx
	jne	LBB16_1
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end16:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI17_0:
	.long	1275068416
LCPI17_1:
	.long	855638016
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_viewFixTime
	.align	4, 0x90
_viewFixTime:
Leh_func_begin17:
	pushq	%rbp
Ltmp39:
	movq	%rsp, %rbp
Ltmp40:
	pushq	%rbx
	subq	$8, %rsp
Ltmp41:
	mulss	LCPI17_0(%rip), %xmm0
	cvttss2siq	%xmm0, %rbx
	callq	_initTable
	callq	_initFixCoef
	movq	%rbx, %rdi
	callq	_FixCyclGorner
	cvtsi2ssq	%rax, %xmm0
	mulss	LCPI17_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str3(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	_FixCyclGorner(%rip), %rdi
	callq	_timeFIX
	movq	%rbx, %rdi
	callq	_FixNoCyclGorner
	cvtsi2ssq	%rax, %xmm0
	mulss	LCPI17_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str4(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	_FixNoCyclGorner(%rip), %rdi
	callq	_timeFIX
	movq	%rbx, %rdi
	callq	_fixTable
	cvtsi2ssq	%rax, %xmm0
	mulss	LCPI17_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str5(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	_fixTable(%rip), %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_timeFIX  # TAILCALL
Leh_func_end17:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI18_0:
	.long	953267991
LCPI18_1:
	.long	1065353216
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI18_2:
	.quad	4985484787500187648
LCPI18_3:
	.quad	4696837146684686336
LCPI18_4:
	.quad	4666723722223157248
LCPI18_5:
	.quad	4636737291354636288
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_timeF
	.align	4, 0x90
_timeF:
Leh_func_begin18:
	pushq	%rbp
Ltmp42:
	movq	%rsp, %rbp
Ltmp43:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp44:
	movl	$5, %ebx
	movq	%rdi, %r14
	leaq	L_.str2(%rip), %r15
	.align	4, 0x90
LBB18_1:
	callq	_clock
	movl	$100, %r13d
	movq	%rax, %r12
	.align	4, 0x90
LBB18_4:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	.align	4, 0x90
LBB18_2:
	movss	-44(%rbp), %xmm0
	callq	*%r14
	movss	-44(%rbp), %xmm0
	addss	LCPI18_0(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	LCPI18_1(%rip), %xmm0
	ucomiss	-44(%rbp), %xmm0
	jae	LBB18_2
	decl	%r13d
	jne	LBB18_4
	callq	_clock
	subq	%r12, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movabsq	$4985484787499139072, %rdx
	addq	%rdx, %rcx
	movd	%rcx, %xmm1
	subsd	LCPI18_2(%rip), %xmm1
	movl	%eax, %eax
	movabsq	$4841369599423283200, %rcx
	addq	%rcx, %rax
	movd	%rax, %xmm0
	addsd	%xmm1, %xmm0
	divsd	LCPI18_3(%rip), %xmm0
	divsd	LCPI18_4(%rip), %xmm0
	divsd	LCPI18_5(%rip), %xmm0
	movq	%r15, %rdi
	movb	$1, %al
	callq	_printf
	decl	%ebx
	jne	LBB18_1
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end18:

	.globl	_viewFloatTime
	.align	4, 0x90
_viewFloatTime:
Leh_func_begin19:
	pushq	%rbp
Ltmp45:
	movq	%rsp, %rbp
Ltmp46:
	subq	$16, %rsp
Ltmp47:
	movss	%xmm0, -4(%rbp)
	callq	_FlMath
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str6(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	_FlMath(%rip), %rdi
	callq	_timeF
	movss	-4(%rbp), %xmm0
	callq	_FlCyclNoGorner
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str7(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	_FlCyclNoGorner(%rip), %rdi
	callq	_timeF
	movss	-4(%rbp), %xmm0
	callq	_FlNoCyclNoGorner
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str8(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	_FlNoCyclNoGorner(%rip), %rdi
	callq	_timeF
	movss	-4(%rbp), %xmm0
	callq	_FlCyclGorner
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str9(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	_FlCyclGorner(%rip), %rdi
	callq	_timeF
	movss	-4(%rbp), %xmm0
	callq	_FlNoCyclGorner
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str10(%rip), %rdi
	movb	$1, %al
	callq	_printf
	leaq	_FlNoCyclGorner(%rip), %rdi
	addq	$16, %rsp
	popq	%rbp
	jmp	_timeF  # TAILCALL
Leh_func_end19:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI20_0:
	.long	1058642330
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin20:
	pushq	%rbp
Ltmp48:
	movq	%rsp, %rbp
Ltmp49:
	movss	LCPI20_0(%rip), %xmm0
	callq	_viewFloatTime
	movss	LCPI20_0(%rip), %xmm0
	callq	_viewFixTime
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end20:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI21_0:
	.long	855638016
LCPI21_1:
	.long	3003121664
	.section	__TEXT,__const
	.align	4
LCPI21_2:
	.quad	9223372036854775807
	.quad	9223372036854775807
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI21_3:
	.quad	4517110426252607488
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fixverify
	.align	4, 0x90
_fixverify:
Leh_func_begin21:
	pushq	%rbp
Ltmp50:
	movq	%rsp, %rbp
Ltmp51:
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Ltmp52:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cvtsi2ssq	%r14, %xmm0
	mulss	LCPI21_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	_tan
	movsd	%xmm0, -24(%rbp)
	movq	%r14, %rdi
	callq	*%rbx
	cvtsi2ssq	%rax, %xmm0
	mulss	LCPI21_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	-24(%rbp), %xmm0
	andpd	LCPI21_2(%rip), %xmm0
	ucomisd	LCPI21_3(%rip), %xmm0
	seta	%al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end21:

	.section	__TEXT,__const
	.align	4
LCPI22_0:
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI22_1:
	.long	897581056
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_flverify
	.align	4, 0x90
_flverify:
Leh_func_begin22:
	pushq	%rbp
Ltmp53:
	movq	%rsp, %rbp
Ltmp54:
	pushq	%rbx
	subq	$24, %rsp
Ltmp55:
	movq	%rdi, %rbx
	movss	%xmm0, -12(%rbp)
	cvtss2sd	%xmm0, %xmm0
	callq	_tan
	movsd	%xmm0, -24(%rbp)
	movss	-12(%rbp), %xmm0
	callq	*%rbx
	cvtss2sd	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	andps	LCPI22_0(%rip), %xmm0
	ucomiss	LCPI22_1(%rip), %xmm0
	seta	%al
	movzbl	%al, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end22:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI23_0:
	.long	925353388
LCPI23_1:
	.long	1065353216
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_testing
	.align	4, 0x90
_testing:
Leh_func_begin23:
	pushq	%rbp
Ltmp56:
	movq	%rsp, %rbp
Ltmp57:
	pushq	%rbx
	subq	$8, %rsp
Ltmp58:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	%rdi, %rbx
	jmp	LBB23_4
LBB23_2:
	movss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	leaq	L_.str11(%rip), %rdi
	callq	_printf
	jmp	LBB23_5
	.align	4, 0x90
LBB23_1:
	movss	-12(%rbp), %xmm0
	movq	%rbx, %rdi
	callq	_flverify
	testl	%eax, %eax
	jne	LBB23_2
	movss	-12(%rbp), %xmm0
	addss	LCPI23_0(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
LBB23_4:
	movss	LCPI23_1(%rip), %xmm0
	ucomiss	-12(%rbp), %xmm0
	ja	LBB23_1
LBB23_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end23:

	.section	__TEXT,__literal4,4byte_literals
	.globl	_fix_p
	.align	2
_fix_p:
	.long	25

	.section	__DATA,__data
	.globl	_coeficent
	.align	5
_coeficent:
	.long	1065353216
	.long	1051372202
	.long	1040746630
	.long	1029508546
	.long	1018374005
	.long	1007761141
	.long	996895088
	.long	985583755
	.long	974826043
	.long	964343531
	.long	952841931
	.long	941910702
	.long	931487997
	.long	920043413
	.long	909015977
	.long	897988541
	.long	886488981
	.long	0

	.comm	_fixCoeficent,144,5
	.comm	_coefTable,262144,5
	.comm	_fixCoefTable,786432,5
	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "time: %.30f\n"

L_.str1:
	.asciz	 "time: %f\n"

L_.str2:
	.asciz	 "%.30f\n"

L_.str3:
	.asciz	 "FixCyclGorner: %.30f\n"

L_.str4:
	.asciz	 "FixNoCyclGorner: %.30f\n"

L_.str5:
	.asciz	 "TableFix: %.30f\n"

L_.str6:
	.asciz	 "FlMath: %.30f\n"

L_.str7:
	.asciz	 "FlCyclNoGorner: %.30f\n"

L_.str8:
	.asciz	 "FlNoCyclNoGorner: %.30f\n"

L_.str9:
	.asciz	 "FlCyclGorner: %.30f\n"

L_.str10:
	.asciz	 "FlNoCyclGorner: %.30f\n"

L_.str11:
	.asciz	 "flverify: %f\n"

	.section	__TEXT,__literal4,4byte_literals
	.globl	_fix_table_pow
	.align	2
_fix_table_pow:
	.long	8

	.section	__DATA,__data
	.globl	_bernully_2n
	.align	5
_bernully_2n:
	.long	1042983595
	.long	1023969417
	.long	1019415601
	.long	1023969417
	.long	1033578186
	.long	1048680474
	.long	1066751317
	.long	1088615155
	.long	1113318012
	.long	1141131252
	.long	1170309372
	.long	1202264608
	.long	1236140905
	.long	1271940316
	.long	1309633941
	.long	1348550699
	.long	1388842510
	.long	0

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	_fact.eh
_fact.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp59:
	.quad	Leh_func_begin1-Ltmp59
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:

	.globl	_FlCyclGorner.eh
_FlCyclGorner.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp60:
	.quad	Leh_func_begin2-Ltmp60
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp3-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp4-Ltmp3
	.long	Lset10
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:

	.globl	_FlNoCyclGorner.eh
_FlNoCyclGorner.eh:
Lset11 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset11
Leh_frame_begin3:
Lset12 = Leh_frame_begin3-Leh_frame_common
	.long	Lset12
Ltmp61:
	.quad	Leh_func_begin3-Ltmp61
Lset13 = Leh_func_end3-Leh_func_begin3
	.quad	Lset13
	.byte	0
	.byte	4
Lset14 = Ltmp5-Leh_func_begin3
	.long	Lset14
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset15 = Ltmp6-Ltmp5
	.long	Lset15
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:

	.globl	_initFixCoef.eh
_initFixCoef.eh:
Lset16 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset16
Leh_frame_begin4:
Lset17 = Leh_frame_begin4-Leh_frame_common
	.long	Lset17
Ltmp62:
	.quad	Leh_func_begin4-Ltmp62
Lset18 = Leh_func_end4-Leh_func_begin4
	.quad	Lset18
	.byte	0
	.byte	4
Lset19 = Ltmp7-Leh_func_begin4
	.long	Lset19
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset20 = Ltmp8-Ltmp7
	.long	Lset20
	.byte	13
	.byte	6
	.align	3
Leh_frame_end4:

	.globl	_FixCyclGorner.eh
_FixCyclGorner.eh:
Lset21 = Leh_frame_end5-Leh_frame_begin5
	.long	Lset21
Leh_frame_begin5:
Lset22 = Leh_frame_begin5-Leh_frame_common
	.long	Lset22
Ltmp63:
	.quad	Leh_func_begin5-Ltmp63
Lset23 = Leh_func_end5-Leh_func_begin5
	.quad	Lset23
	.byte	0
	.byte	4
Lset24 = Ltmp9-Leh_func_begin5
	.long	Lset24
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset25 = Ltmp10-Ltmp9
	.long	Lset25
	.byte	13
	.byte	6
	.align	3
Leh_frame_end5:

	.globl	_FixNoCyclGorner.eh
_FixNoCyclGorner.eh:
Lset26 = Leh_frame_end6-Leh_frame_begin6
	.long	Lset26
Leh_frame_begin6:
Lset27 = Leh_frame_begin6-Leh_frame_common
	.long	Lset27
Ltmp64:
	.quad	Leh_func_begin6-Ltmp64
Lset28 = Leh_func_end6-Leh_func_begin6
	.quad	Lset28
	.byte	0
	.byte	4
Lset29 = Ltmp11-Leh_func_begin6
	.long	Lset29
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset30 = Ltmp12-Ltmp11
	.long	Lset30
	.byte	13
	.byte	6
	.align	3
Leh_frame_end6:

	.globl	_tableFloat.eh
_tableFloat.eh:
Lset31 = Leh_frame_end7-Leh_frame_begin7
	.long	Lset31
Leh_frame_begin7:
Lset32 = Leh_frame_begin7-Leh_frame_common
	.long	Lset32
Ltmp65:
	.quad	Leh_func_begin7-Ltmp65
Lset33 = Leh_func_end7-Leh_func_begin7
	.quad	Lset33
	.byte	0
	.byte	4
Lset34 = Ltmp13-Leh_func_begin7
	.long	Lset34
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset35 = Ltmp14-Ltmp13
	.long	Lset35
	.byte	13
	.byte	6
	.align	3
Leh_frame_end7:

	.globl	_fixTable.eh
_fixTable.eh:
Lset36 = Leh_frame_end8-Leh_frame_begin8
	.long	Lset36
Leh_frame_begin8:
Lset37 = Leh_frame_begin8-Leh_frame_common
	.long	Lset37
Ltmp66:
	.quad	Leh_func_begin8-Ltmp66
Lset38 = Leh_func_end8-Leh_func_begin8
	.quad	Lset38
	.byte	0
	.byte	4
Lset39 = Ltmp15-Leh_func_begin8
	.long	Lset39
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset40 = Ltmp16-Ltmp15
	.long	Lset40
	.byte	13
	.byte	6
	.align	3
Leh_frame_end8:

	.globl	_fix_table_func.eh
_fix_table_func.eh:
Lset41 = Leh_frame_end9-Leh_frame_begin9
	.long	Lset41
Leh_frame_begin9:
Lset42 = Leh_frame_begin9-Leh_frame_common
	.long	Lset42
Ltmp67:
	.quad	Leh_func_begin9-Ltmp67
Lset43 = Leh_func_end9-Leh_func_begin9
	.quad	Lset43
	.byte	0
	.byte	4
Lset44 = Ltmp17-Leh_func_begin9
	.long	Lset44
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset45 = Ltmp18-Ltmp17
	.long	Lset45
	.byte	13
	.byte	6
	.align	3
Leh_frame_end9:

	.globl	_FlNoCyclNoGorner.eh
_FlNoCyclNoGorner.eh:
Lset46 = Leh_frame_end10-Leh_frame_begin10
	.long	Lset46
Leh_frame_begin10:
Lset47 = Leh_frame_begin10-Leh_frame_common
	.long	Lset47
Ltmp68:
	.quad	Leh_func_begin10-Ltmp68
Lset48 = Leh_func_end10-Leh_func_begin10
	.quad	Lset48
	.byte	0
	.byte	4
Lset49 = Ltmp19-Leh_func_begin10
	.long	Lset49
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset50 = Ltmp20-Ltmp19
	.long	Lset50
	.byte	13
	.byte	6
	.align	3
Leh_frame_end10:

	.globl	_FlCyclNoGorner.eh
_FlCyclNoGorner.eh:
Lset51 = Leh_frame_end11-Leh_frame_begin11
	.long	Lset51
Leh_frame_begin11:
Lset52 = Leh_frame_begin11-Leh_frame_common
	.long	Lset52
Ltmp69:
	.quad	Leh_func_begin11-Ltmp69
Lset53 = Leh_func_end11-Leh_func_begin11
	.quad	Lset53
	.byte	0
	.byte	4
Lset54 = Ltmp22-Leh_func_begin11
	.long	Lset54
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset55 = Ltmp23-Ltmp22
	.long	Lset55
	.byte	13
	.byte	6
	.byte	4
Lset56 = Ltmp24-Ltmp23
	.long	Lset56
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end11:

	.globl	_initTable.eh
_initTable.eh:
Lset57 = Leh_frame_end12-Leh_frame_begin12
	.long	Lset57
Leh_frame_begin12:
Lset58 = Leh_frame_begin12-Leh_frame_common
	.long	Lset58
Ltmp70:
	.quad	Leh_func_begin12-Ltmp70
Lset59 = Leh_func_end12-Leh_func_begin12
	.quad	Lset59
	.byte	0
	.byte	4
Lset60 = Ltmp25-Leh_func_begin12
	.long	Lset60
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset61 = Ltmp26-Ltmp25
	.long	Lset61
	.byte	13
	.byte	6
	.byte	4
Lset62 = Ltmp27-Ltmp26
	.long	Lset62
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end12:

	.globl	_FlMath.eh
_FlMath.eh:
Lset63 = Leh_frame_end13-Leh_frame_begin13
	.long	Lset63
Leh_frame_begin13:
Lset64 = Leh_frame_begin13-Leh_frame_common
	.long	Lset64
Ltmp71:
	.quad	Leh_func_begin13-Ltmp71
Lset65 = Leh_func_end13-Leh_func_begin13
	.quad	Lset65
	.byte	0
	.byte	4
Lset66 = Ltmp28-Leh_func_begin13
	.long	Lset66
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset67 = Ltmp29-Ltmp28
	.long	Lset67
	.byte	13
	.byte	6
	.align	3
Leh_frame_end13:

	.globl	_fixCountTacts.eh
_fixCountTacts.eh:
Lset68 = Leh_frame_end14-Leh_frame_begin14
	.long	Lset68
Leh_frame_begin14:
Lset69 = Leh_frame_begin14-Leh_frame_common
	.long	Lset69
Ltmp72:
	.quad	Leh_func_begin14-Ltmp72
Lset70 = Leh_func_end14-Leh_func_begin14
	.quad	Lset70
	.byte	0
	.byte	4
Lset71 = Ltmp30-Leh_func_begin14
	.long	Lset71
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset72 = Ltmp31-Ltmp30
	.long	Lset72
	.byte	13
	.byte	6
	.byte	4
Lset73 = Ltmp32-Ltmp31
	.long	Lset73
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end14:

	.globl	_timeFunc.eh
_timeFunc.eh:
Lset74 = Leh_frame_end15-Leh_frame_begin15
	.long	Lset74
Leh_frame_begin15:
Lset75 = Leh_frame_begin15-Leh_frame_common
	.long	Lset75
Ltmp73:
	.quad	Leh_func_begin15-Ltmp73
Lset76 = Leh_func_end15-Leh_func_begin15
	.quad	Lset76
	.byte	0
	.byte	4
Lset77 = Ltmp33-Leh_func_begin15
	.long	Lset77
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset78 = Ltmp34-Ltmp33
	.long	Lset78
	.byte	13
	.byte	6
	.byte	4
Lset79 = Ltmp35-Ltmp34
	.long	Lset79
	.byte	131
	.byte	3
	.align	3
Leh_frame_end15:

	.globl	_timeFIX.eh
_timeFIX.eh:
Lset80 = Leh_frame_end16-Leh_frame_begin16
	.long	Lset80
Leh_frame_begin16:
Lset81 = Leh_frame_begin16-Leh_frame_common
	.long	Lset81
Ltmp74:
	.quad	Leh_func_begin16-Ltmp74
Lset82 = Leh_func_end16-Leh_func_begin16
	.quad	Lset82
	.byte	0
	.byte	4
Lset83 = Ltmp36-Leh_func_begin16
	.long	Lset83
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset84 = Ltmp37-Ltmp36
	.long	Lset84
	.byte	13
	.byte	6
	.byte	4
Lset85 = Ltmp38-Ltmp37
	.long	Lset85
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end16:

	.globl	_viewFixTime.eh
_viewFixTime.eh:
Lset86 = Leh_frame_end17-Leh_frame_begin17
	.long	Lset86
Leh_frame_begin17:
Lset87 = Leh_frame_begin17-Leh_frame_common
	.long	Lset87
Ltmp75:
	.quad	Leh_func_begin17-Ltmp75
Lset88 = Leh_func_end17-Leh_func_begin17
	.quad	Lset88
	.byte	0
	.byte	4
Lset89 = Ltmp39-Leh_func_begin17
	.long	Lset89
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset90 = Ltmp40-Ltmp39
	.long	Lset90
	.byte	13
	.byte	6
	.byte	4
Lset91 = Ltmp41-Ltmp40
	.long	Lset91
	.byte	131
	.byte	3
	.align	3
Leh_frame_end17:

	.globl	_timeF.eh
_timeF.eh:
Lset92 = Leh_frame_end18-Leh_frame_begin18
	.long	Lset92
Leh_frame_begin18:
Lset93 = Leh_frame_begin18-Leh_frame_common
	.long	Lset93
Ltmp76:
	.quad	Leh_func_begin18-Ltmp76
Lset94 = Leh_func_end18-Leh_func_begin18
	.quad	Lset94
	.byte	0
	.byte	4
Lset95 = Ltmp42-Leh_func_begin18
	.long	Lset95
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset96 = Ltmp43-Ltmp42
	.long	Lset96
	.byte	13
	.byte	6
	.byte	4
Lset97 = Ltmp44-Ltmp43
	.long	Lset97
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end18:

	.globl	_viewFloatTime.eh
_viewFloatTime.eh:
Lset98 = Leh_frame_end19-Leh_frame_begin19
	.long	Lset98
Leh_frame_begin19:
Lset99 = Leh_frame_begin19-Leh_frame_common
	.long	Lset99
Ltmp77:
	.quad	Leh_func_begin19-Ltmp77
Lset100 = Leh_func_end19-Leh_func_begin19
	.quad	Lset100
	.byte	0
	.byte	4
Lset101 = Ltmp45-Leh_func_begin19
	.long	Lset101
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset102 = Ltmp46-Ltmp45
	.long	Lset102
	.byte	13
	.byte	6
	.align	3
Leh_frame_end19:

	.globl	_main.eh
_main.eh:
Lset103 = Leh_frame_end20-Leh_frame_begin20
	.long	Lset103
Leh_frame_begin20:
Lset104 = Leh_frame_begin20-Leh_frame_common
	.long	Lset104
Ltmp78:
	.quad	Leh_func_begin20-Ltmp78
Lset105 = Leh_func_end20-Leh_func_begin20
	.quad	Lset105
	.byte	0
	.byte	4
Lset106 = Ltmp48-Leh_func_begin20
	.long	Lset106
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset107 = Ltmp49-Ltmp48
	.long	Lset107
	.byte	13
	.byte	6
	.align	3
Leh_frame_end20:

	.globl	_fixverify.eh
_fixverify.eh:
Lset108 = Leh_frame_end21-Leh_frame_begin21
	.long	Lset108
Leh_frame_begin21:
Lset109 = Leh_frame_begin21-Leh_frame_common
	.long	Lset109
Ltmp79:
	.quad	Leh_func_begin21-Ltmp79
Lset110 = Leh_func_end21-Leh_func_begin21
	.quad	Lset110
	.byte	0
	.byte	4
Lset111 = Ltmp50-Leh_func_begin21
	.long	Lset111
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset112 = Ltmp51-Ltmp50
	.long	Lset112
	.byte	13
	.byte	6
	.byte	4
Lset113 = Ltmp52-Ltmp51
	.long	Lset113
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end21:

	.globl	_flverify.eh
_flverify.eh:
Lset114 = Leh_frame_end22-Leh_frame_begin22
	.long	Lset114
Leh_frame_begin22:
Lset115 = Leh_frame_begin22-Leh_frame_common
	.long	Lset115
Ltmp80:
	.quad	Leh_func_begin22-Ltmp80
Lset116 = Leh_func_end22-Leh_func_begin22
	.quad	Lset116
	.byte	0
	.byte	4
Lset117 = Ltmp53-Leh_func_begin22
	.long	Lset117
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset118 = Ltmp54-Ltmp53
	.long	Lset118
	.byte	13
	.byte	6
	.byte	4
Lset119 = Ltmp55-Ltmp54
	.long	Lset119
	.byte	131
	.byte	3
	.align	3
Leh_frame_end22:

	.globl	_testing.eh
_testing.eh:
Lset120 = Leh_frame_end23-Leh_frame_begin23
	.long	Lset120
Leh_frame_begin23:
Lset121 = Leh_frame_begin23-Leh_frame_common
	.long	Lset121
Ltmp81:
	.quad	Leh_func_begin23-Ltmp81
Lset122 = Leh_func_end23-Leh_func_begin23
	.quad	Lset122
	.byte	0
	.byte	4
Lset123 = Ltmp56-Leh_func_begin23
	.long	Lset123
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset124 = Ltmp57-Ltmp56
	.long	Lset124
	.byte	13
	.byte	6
	.byte	4
Lset125 = Ltmp58-Ltmp57
	.long	Lset125
	.byte	131
	.byte	3
	.align	3
Leh_frame_end23:


.subsections_via_symbols
