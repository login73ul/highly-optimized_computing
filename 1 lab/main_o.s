	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fact
	.align	4, 0x90
_fact:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	subq	$32, %rsp
Ltmp2:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	je	LBB1_2
	movl	-4(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	movss	%xmm0, -20(%rbp)
	callq	_fact
	movss	-20(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -12(%rbp)
	jmp	LBB1_3
LBB1_2:
	movabsq	$1, %rax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -12(%rbp)
LBB1_3:
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end1:

	.globl	_FlMath
	.align	4, 0x90
_FlMath:
Leh_func_begin2:
	pushq	%rbp
Ltmp3:
	movq	%rsp, %rbp
Ltmp4:
	subq	$16, %rsp
Ltmp5:
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	callq	_tanf
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end2:

	.globl	_FlCyclNoGorner
	.align	4, 0x90
_FlCyclNoGorner:
Leh_func_begin3:
	pushq	%rbp
Ltmp6:
	movq	%rsp, %rbp
Ltmp7:
	subq	$32, %rsp
Ltmp8:
	movss	%xmm0, -4(%rbp)
	movabsq	$0, %rax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$1, -20(%rbp)
	jmp	LBB3_2
LBB3_1:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rax
	leaq	_coeficent(%rip), %rcx
	movabsq	$4, %rdx
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movss	(%rcx), %xmm0
	movl	-20(%rbp), %eax
	imull	$2, %eax, %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	movss	-4(%rbp), %xmm2
	movss	%xmm0, -24(%rbp)
	movaps	%xmm2, %xmm0
	callq	_powf
	movss	-24(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
LBB3_2:
	movl	-20(%rbp), %eax
	cmpl	$18, %eax
	jle	LBB3_1
	movss	-16(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end3:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI4_0:
	.long	1077936128
LCPI4_1:
	.long	1084227584
LCPI4_2:
	.long	1088421888
LCPI4_3:
	.long	1091567616
LCPI4_4:
	.long	1093664768
LCPI4_5:
	.long	1095761920
LCPI4_6:
	.long	1097859072
LCPI4_7:
	.long	1099431936
LCPI4_8:
	.long	1100480512
LCPI4_9:
	.long	1101529088
LCPI4_10:
	.long	1102577664
LCPI4_11:
	.long	1103626240
LCPI4_12:
	.long	1104674816
LCPI4_13:
	.long	1105723392
LCPI4_14:
	.long	1106771968
LCPI4_15:
	.long	1107558400
LCPI4_16:
	.long	1108082688
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_FlNoCyclNoGorner
	.align	4, 0x90
_FlNoCyclNoGorner:
Leh_func_begin4:
	pushq	%rbp
Ltmp9:
	movq	%rsp, %rbp
Ltmp10:
	subq	$96, %rsp
Ltmp11:
	movss	%xmm0, -4(%rbp)
	movabsq	$0, %rax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	_coeficent(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	_coeficent+4(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_0(%rip), %xmm2
	movss	%xmm0, -20(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-20(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+8(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_1(%rip), %xmm2
	movss	%xmm0, -24(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-24(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+12(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_2(%rip), %xmm2
	movss	%xmm0, -28(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-28(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+16(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_3(%rip), %xmm2
	movss	%xmm0, -32(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-32(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+20(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_4(%rip), %xmm2
	movss	%xmm0, -36(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-36(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+24(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_5(%rip), %xmm2
	movss	%xmm0, -40(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-40(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+28(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_6(%rip), %xmm2
	movss	%xmm0, -44(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-44(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+32(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_7(%rip), %xmm2
	movss	%xmm0, -48(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-48(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+36(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_8(%rip), %xmm2
	movss	%xmm0, -52(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-52(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+40(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_9(%rip), %xmm2
	movss	%xmm0, -56(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-56(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+44(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_10(%rip), %xmm2
	movss	%xmm0, -60(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-60(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+48(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_11(%rip), %xmm2
	movss	%xmm0, -64(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-64(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+52(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_12(%rip), %xmm2
	movss	%xmm0, -68(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-68(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+56(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_13(%rip), %xmm2
	movss	%xmm0, -72(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-72(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+60(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_14(%rip), %xmm2
	movss	%xmm0, -76(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-76(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+64(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_15(%rip), %xmm2
	movss	%xmm0, -80(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-80(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	_coeficent+68(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	movss	LCPI4_16(%rip), %xmm2
	movss	%xmm0, -84(%rbp)
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	_powf
	movss	-84(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	addq	$96, %rsp
	popq	%rbp
	ret
Leh_func_end4:

	.globl	_FlCyclGorner
	.align	4, 0x90
_FlCyclGorner:
Leh_func_begin5:
	pushq	%rbp
Ltmp12:
	movq	%rsp, %rbp
Ltmp13:
	movss	%xmm0, -4(%rbp)
	movl	$17, -16(%rbp)
	movss	-4(%rbp), %xmm0
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rax
	leaq	_coeficent(%rip), %rcx
	movabsq	$4, %rdx
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movss	(%rcx), %xmm0
	movss	%xmm0, -24(%rbp)
	jmp	LBB5_2
LBB5_1:
	movss	-24(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rax
	leaq	_coeficent(%rip), %rcx
	movabsq	$4, %rdx
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movss	(%rcx), %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
LBB5_2:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	$0, %eax
	jge	LBB5_1
	movss	-24(%rbp), %xmm0
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	popq	%rbp
	ret
Leh_func_end5:

	.globl	_FlNoCyclGorner
	.align	4, 0x90
_FlNoCyclGorner:
Leh_func_begin6:
	pushq	%rbp
Ltmp14:
	movq	%rsp, %rbp
Ltmp15:
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	_coeficent+64(%rip), %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+60(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+56(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+52(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+48(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+44(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+40(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+36(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+32(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+28(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+24(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+20(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+16(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+12(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+8(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent+4(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	_coeficent(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	popq	%rbp
	ret
Leh_func_end6:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI7_0:
	.long	897581056
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_flverify
	.align	4, 0x90
_flverify:
Leh_func_begin7:
	pushq	%rbp
Ltmp16:
	movq	%rsp, %rbp
Ltmp17:
	subq	$48, %rsp
Ltmp18:
	movss	%xmm0, -4(%rbp)
	movq	%rdi, -16(%rbp)
	movss	LCPI7_0(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-4(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	_tan
	movq	-16(%rbp), %rax
	movss	-4(%rbp), %xmm1
	movsd	%xmm0, -40(%rbp)
	movaps	%xmm1, %xmm0
	callq	*%rax
	cvtss2sd	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	callq	_fabsf
	movss	-28(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end7:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI8_0:
	.long	897988541
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_timeFunc
	.align	4, 0x90
_timeFunc:
Leh_func_begin8:
	pushq	%rbp
Ltmp19:
	movq	%rsp, %rbp
Ltmp20:
	subq	$64, %rsp
Ltmp21:
	movq	%rdi, -8(%rbp)
	movabsq	$0, %rax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -16(%rbp)
	leaq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movss	%xmm0, -56(%rbp)
	callq	_gettimeofday
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	LBB8_2
LBB8_1:
	movq	-8(%rbp), %rax
	movss	-12(%rbp), %xmm0
	callq	*%rax
	movss	-16(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-12(%rbp), %xmm0
	movss	LCPI8_0(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
LBB8_2:
	movss	-12(%rbp), %xmm0
	movabsq	$1, %rax
	cvtsi2ssq	%rax, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	LBB8_1
	leaq	-48(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_gettimeofday
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	movabsq	$1000000000, %rdx
	imulq	%rdx, %rcx
	movl	-40(%rbp), %edx
	movl	-24(%rbp), %esi
	subl	%esi, %edx
	imull	$1000, %edx, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	cvtsi2ssq	%rcx, %xmm0
	movabsq	$1000000, %rcx
	cvtsi2ssq	%rcx, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %cl
	leaq	L_.str(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end8:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI9_0:
	.long	925353388
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_testing
	.align	4, 0x90
_testing:
Leh_func_begin9:
	pushq	%rbp
Ltmp22:
	movq	%rsp, %rbp
Ltmp23:
	subq	$16, %rsp
Ltmp24:
	movq	%rdi, -8(%rbp)
	movabsq	$0, %rax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	LBB9_4
LBB9_1:
	movss	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_flverify
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	LBB9_3
	movss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	leaq	L_.str1(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	jmp	LBB9_5
LBB9_3:
	movss	-12(%rbp), %xmm0
	movss	LCPI9_0(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
LBB9_4:
	movss	-12(%rbp), %xmm0
	movabsq	$1, %rax
	cvtsi2ssq	%rax, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	LBB9_1
LBB9_5:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end9:

	.globl	_initFixCoef
	.align	4, 0x90
_initFixCoef:
Leh_func_begin10:
	pushq	%rbp
Ltmp25:
	movq	%rsp, %rbp
Ltmp26:
	movl	$0, -4(%rbp)
	jmp	LBB10_2
LBB10_1:
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	_coeficent(%rip), %rdx
	movabsq	$4, %rsi
	imulq	%rsi, %rcx
	addq	%rcx, %rdx
	movss	(%rdx), %xmm0
	movl	_fix_p(%rip), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rdx
	movslq	%eax, %rax
	movq	_fixCoeficent@GOTPCREL(%rip), %rsi
	leaq	(%rsi), %rsi
	movabsq	$8, %rdi
	imulq	%rdi, %rax
	addq	%rax, %rsi
	movq	%rdx, (%rsi)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
LBB10_2:
	movl	-4(%rbp), %eax
	cmpl	$17, %eax
	jle	LBB10_1
	popq	%rbp
	ret
Leh_func_end10:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI11_0:
	.long	897581056
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fixverify
	.align	4, 0x90
_fixverify:
Leh_func_begin11:
	pushq	%rbp
Ltmp27:
	movq	%rsp, %rbp
Ltmp28:
	subq	$48, %rsp
Ltmp29:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	LCPI11_0(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2ssq	%rax, %xmm0
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	_tan
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movsd	%xmm0, -40(%rbp)
	callq	*%rax
	cvtsi2ssq	%rax, %xmm0
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	_fabs
	movss	-28(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end11:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI12_0:
	.long	953267991
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI12_1:
	.quad	4985484787500187648
LCPI12_2:
	.quad	4696837146684686336
LCPI12_3:
	.quad	4666723722223157248
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_timeF
	.align	4, 0x90
_timeF:
Leh_func_begin12:
	pushq	%rbp
Ltmp30:
	movq	%rsp, %rbp
Ltmp31:
	subq	$48, %rsp
Ltmp32:
	movq	%rdi, -8(%rbp)
	movabsq	$0, %rax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$100, -16(%rbp)
	movl	$5, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	LBB12_8
LBB12_1:
	callq	_clock
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	LBB12_6
LBB12_2:
	movabsq	$0, %rax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -40(%rbp)
	jmp	LBB12_4
LBB12_3:
	movq	-8(%rbp), %rax
	movss	-40(%rbp), %xmm0
	callq	*%rax
	movss	%xmm0, -12(%rbp)
	movss	-40(%rbp), %xmm0
	movss	LCPI12_0(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
LBB12_4:
	movss	-40(%rbp), %xmm0
	movabsq	$1, %rax
	cvtsi2ssq	%rax, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	LBB12_3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
LBB12_6:
	movl	-36(%rbp), %eax
	movl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	LBB12_2
	callq	_clock
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movabsq	$4985484787499139072, %rsi
	leaq	(%rdx,%rsi), %rdx
	movd	%rdx, %xmm0
	movsd	LCPI12_1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movl	%ecx, %ecx
	movabsq	$4841369599423283200, %rdx
	leaq	(%rcx,%rdx), %rcx
	movd	%rcx, %xmm1
	addsd	%xmm0, %xmm1
	movsd	LCPI12_2(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movsd	LCPI12_3(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movl	-16(%rbp), %ecx
	cvtsi2sd	%ecx, %xmm0
	divsd	%xmm0, %xmm1
	movb	$1, %cl
	leaq	L_.str2(%rip), %rdx
	movq	%rdx, %rdi
	movapd	%xmm1, %xmm0
	movb	%cl, %al
	callq	_printf
	movl	-24(%rbp), %eax
	leal	1(%rax), %eax
	movl	%eax, -24(%rbp)
LBB12_8:
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	LBB12_1
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end12:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI13_0:
	.long	953267991
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI13_1:
	.quad	4985484787500187648
LCPI13_2:
	.quad	4696837146684686336
LCPI13_3:
	.quad	4666723722223157248
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_timeFIX
	.align	4, 0x90
_timeFIX:
Leh_func_begin13:
	pushq	%rbp
Ltmp33:
	movq	%rsp, %rbp
Ltmp34:
	subq	$80, %rsp
Ltmp35:
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$100, -20(%rbp)
	movl	$5, -24(%rbp)
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm0
	cvttss2siq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm0
	movss	LCPI13_0(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	LBB13_8
LBB13_1:
	callq	_clock
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	LBB13_6
LBB13_2:
	movq	$0, -72(%rbp)
	jmp	LBB13_4
LBB13_3:
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	*%rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
LBB13_4:
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	LBB13_3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
LBB13_6:
	movl	-60(%rbp), %eax
	movl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	LBB13_2
	callq	_clock
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movabsq	$4985484787499139072, %rsi
	leaq	(%rdx,%rsi), %rdx
	movd	%rdx, %xmm0
	movsd	LCPI13_1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movl	%ecx, %ecx
	movabsq	$4841369599423283200, %rdx
	leaq	(%rcx,%rdx), %rcx
	movd	%rcx, %xmm1
	addsd	%xmm0, %xmm1
	movsd	LCPI13_2(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movsd	LCPI13_3(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movl	-20(%rbp), %ecx
	cvtsi2sd	%ecx, %xmm0
	divsd	%xmm0, %xmm1
	movb	$1, %cl
	leaq	L_.str2(%rip), %rdx
	movq	%rdx, %rdi
	movapd	%xmm1, %xmm0
	movb	%cl, %al
	callq	_printf
	movl	-44(%rbp), %eax
	leal	1(%rax), %eax
	movl	%eax, -44(%rbp)
LBB13_8:
	movl	-44(%rbp), %eax
	movl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	LBB13_1
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end13:

	.globl	_FixCyclGorner
	.align	4, 0x90
_FixCyclGorner:
Leh_func_begin14:
	pushq	%rbp
Ltmp36:
	movq	%rsp, %rbp
Ltmp37:
	movq	%rdi, -8(%rbp)
	movl	$17, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movl	_fix_p(%rip), %ecx
	movl	%ecx, %ecx
	sarq	%cl, %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rax
	movq	_fixCoeficent@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movabsq	$8, %rsi
	imulq	%rsi, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB14_2
LBB14_1:
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	imulq	%rcx, %rax
	movl	_fix_p(%rip), %ecx
	movl	%ecx, %ecx
	sarq	%cl, %rax
	movq	%rax, -48(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rax
	movq	_fixCoeficent@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movabsq	$8, %rsi
	imulq	%rsi, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
LBB14_2:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	$0, %eax
	jge	LBB14_1
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movl	_fix_p(%rip), %ecx
	movl	%ecx, %ecx
	sarq	%cl, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
Leh_func_end14:

	.globl	_FixNoCyclGorner
	.align	4, 0x90
_FixNoCyclGorner:
Leh_func_begin15:
	pushq	%rbp
Ltmp38:
	movq	%rsp, %rbp
Ltmp39:
	subq	$40, %rsp
Ltmp40:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movl	_fix_p(%rip), %ecx
	movl	%ecx, %ecx
	sarq	%cl, %rax
	movq	%rax, -32(%rbp)
	movq	_fixCoeficent@GOTPCREL(%rip), %rax
	movq	136(%rax), %rdx
	movq	-32(%rbp), %rsi
	imulq	%rsi, %rdx
	movl	_fix_p(%rip), %esi
	movl	%esi, %esi
	movq	%rsi, %rcx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	128(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -48(%rbp)
	movq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	120(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -56(%rbp)
	movq	%rdx, %rcx
	movq	-56(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	112(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -64(%rbp)
	movq	%rdx, %rcx
	movq	-64(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	104(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -72(%rbp)
	movq	%rdx, %rcx
	movq	-72(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	96(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -80(%rbp)
	movq	%rdx, %rcx
	movq	-80(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	88(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -88(%rbp)
	movq	%rdx, %rcx
	movq	-88(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	80(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -96(%rbp)
	movq	%rdx, %rcx
	movq	-96(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	72(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -104(%rbp)
	movq	%rdx, %rcx
	movq	-104(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -112(%rbp)
	movq	%rdx, %rcx
	movq	-112(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	56(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -120(%rbp)
	movq	%rdx, %rcx
	movq	-120(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	48(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -128(%rbp)
	movq	%rdx, %rcx
	movq	-128(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -136(%rbp)
	movq	%rdx, %rcx
	movq	-136(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -144(%rbp)
	movq	%rdx, %rcx
	movq	-144(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -152(%rbp)
	movq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -160(%rbp)
	movq	%rdx, %rcx
	movq	-160(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rcx
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rcx, -168(%rbp)
	movq	%rdx, %rcx
	movq	-168(%rbp), %rdx
	sarq	%cl, %rdx
	movq	%rdx, -40(%rbp)
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movl	_fix_p(%rip), %ecx
	movl	%ecx, %ecx
	sarq	%cl, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$40, %rsp
	popq	%rbp
	ret
Leh_func_end15:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI16_0:
	.long	897988541
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fixCountTacts
	.align	4, 0x90
_fixCountTacts:
Leh_func_begin16:
	pushq	%rbp
Ltmp41:
	movq	%rsp, %rbp
Ltmp42:
	subq	$96, %rsp
Ltmp43:
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm0
	cvttss2siq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm0
	movss	LCPI16_0(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	leaq	-72(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_gettimeofday
	movq	$0, -40(%rbp)
	jmp	LBB16_2
LBB16_1:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	*%rax
	movq	-32(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
LBB16_2:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	LBB16_1
	leaq	-88(%rbp), %rax
	movabsq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_gettimeofday
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	subq	%rdx, %rcx
	movabsq	$1000000000, %rdx
	imulq	%rdx, %rcx
	movl	-80(%rbp), %edx
	movl	-64(%rbp), %esi
	subl	%esi, %edx
	imull	$1000, %edx, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	cvtsi2ssq	%rcx, %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-92(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %cl
	leaq	L_.str3(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	addq	$96, %rsp
	popq	%rbp
	ret
Leh_func_end16:

	.globl	_tableFloat
	.align	4, 0x90
_tableFloat:
Leh_func_begin17:
	pushq	%rbp
Ltmp44:
	movq	%rsp, %rbp
Ltmp45:
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	movabsq	$32768, %rax
	cvtsi2ssq	%rax, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rax
	movq	_coefTable@GOTPCREL(%rip), %rcx
	leaq	(%rcx), %rcx
	movabsq	$8, %rdx
	imulq	%rdx, %rax
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movss	4(%rdx), %xmm0
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movl	-16(%rbp), %eax
	movslq	%eax, %rax
	movabsq	$8, %rdx
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movss	(%rcx), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	popq	%rbp
	ret
Leh_func_end17:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI18_0:
	.long	1077936128
LCPI18_1:
	.long	1073741824
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_initTable
	.align	4, 0x90
_initTable:
Leh_func_begin18:
	pushq	%rbp
Ltmp46:
	movq	%rsp, %rbp
Ltmp47:
	subq	$80, %rsp
Ltmp48:
	movabsq	$0, %rax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	_fix_table_pow(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm0
	movabsq	$1, %rax
	cvtsi2ssq	%rax, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	LBB18_2
LBB18_1:
	movl	-12(%rbp), %eax
	movss	-4(%rbp), %xmm0
	movl	%eax, -16(%rbp)
	callq	_sinf
	movabsq	$2, %rax
	cvtsi2ssq	%rax, %xmm1
	mulss	%xmm1, %xmm0
	movabsq	$3, %rax
	cvtsi2ssq	%rax, %xmm2
	divss	%xmm2, %xmm0
	movss	-4(%rbp), %xmm2
	movss	%xmm0, -20(%rbp)
	movaps	%xmm2, %xmm0
	movss	%xmm1, -24(%rbp)
	callq	_cosf
	movss	LCPI18_0(%rip), %xmm1
	callq	_powf
	movss	-20(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movl	-16(%rbp), %eax
	movslq	%eax, %rax
	movq	_coefTable@GOTPCREL(%rip), %rcx
	leaq	(%rcx), %rcx
	movabsq	$8, %rdx
	imulq	%rdx, %rax
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movss	%xmm1, (%rdx)
	movl	-12(%rbp), %eax
	movss	-4(%rbp), %xmm0
	movl	%eax, -28(%rbp)
	movq	%rcx, -40(%rbp)
	callq	_cosf
	movss	LCPI18_1(%rip), %xmm1
	callq	_powf
	movabsq	$1, %rax
	cvtsi2ssq	%rax, %xmm1
	movaps	%xmm1, %xmm2
	divss	%xmm0, %xmm2
	movl	-28(%rbp), %eax
	movslq	%eax, %rax
	movabsq	$8, %rcx
	imulq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	%rax, %rcx
	movss	%xmm2, 4(%rcx)
	movl	-12(%rbp), %eax
	movss	-4(%rbp), %xmm0
	movl	%eax, -44(%rbp)
	movss	%xmm1, -48(%rbp)
	callq	_tanf
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movq	_fixCoefTable@GOTPCREL(%rip), %rsi
	leaq	(%rsi), %rsi
	movabsq	$24, %rdi
	imulq	%rdi, %rdx
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movq	%rax, (%rdi)
	movl	-12(%rbp), %eax
	movss	-4(%rbp), %xmm0
	movl	%eax, -52(%rbp)
	movq	%rsi, -64(%rbp)
	callq	_cosf
	movss	LCPI18_1(%rip), %xmm1
	callq	_powf
	movss	-48(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm0, %xmm1
	cvttss2siq	%xmm1, %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movabsq	$24, %rsi
	imulq	%rsi, %rdx
	movq	-64(%rbp), %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movq	%rax, 8(%rdi)
	movl	-12(%rbp), %eax
	movss	-4(%rbp), %xmm0
	movl	%eax, -68(%rbp)
	callq	_sinf
	movss	-24(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	divss	%xmm1, %xmm0
	movss	-4(%rbp), %xmm1
	movss	%xmm0, -72(%rbp)
	movaps	%xmm1, %xmm0
	callq	_cosf
	movss	LCPI18_0(%rip), %xmm1
	callq	_powf
	movss	-72(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm0, %xmm1
	cvttss2siq	%xmm1, %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movabsq	$24, %rsi
	imulq	%rsi, %rdx
	movq	-64(%rbp), %rsi
	addq	%rdx, %rsi
	movq	%rax, 16(%rsi)
	movss	-4(%rbp), %xmm0
	movss	-8(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
LBB18_2:
	movl	_fix_table_pow(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	-12(%rbp), %edx
	cmpl	%edx, %eax
	jg	LBB18_1
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end18:

	.globl	_fixTable
	.align	4, 0x90
_fixTable:
Leh_func_begin19:
	pushq	%rbp
Ltmp49:
	movq	%rsp, %rbp
Ltmp50:
	movq	%rdi, -8(%rbp)
	movl	_fix_p(%rip), %eax
	movl	_fix_table_pow(%rip), %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movq	%rcx, -56(%rbp)
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	sarq	%cl, %rax
	movl	%eax, -28(%rbp)
	movl	_fix_p(%rip), %eax
	movl	_fix_table_pow(%rip), %edx
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	subl	$1, %eax
	movslq	%eax, %rax
	movq	-8(%rbp), %rdx
	andq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rax
	movq	_fixCoefTable@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movabsq	$24, %rsi
	imulq	%rsi, %rax
	movq	%rdx, %rsi
	addq	%rax, %rsi
	movq	(%rsi), %rax
	movq	%rax, -48(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rax
	movabsq	$24, %rsi
	imulq	%rsi, %rax
	addq	%rax, %rdx
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rdx
	imulq	%rdx, %rax
	movl	_fix_p(%rip), %edx
	movl	%edx, %edx
	movq	%rdx, %rcx
	sarq	%cl, %rax
	movq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
Leh_func_end19:

	.globl	_fix_table_func
	.align	4, 0x90
_fix_table_func:
Leh_func_begin20:
	pushq	%rbp
Ltmp51:
	movq	%rsp, %rbp
Ltmp52:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	_fix_p(%rip), %ecx
	movl	_fix_table_pow(%rip), %edx
	subl	%edx, %ecx
	sarl	%cl, %eax
	movl	%eax, -28(%rbp)
	movl	_fix_p(%rip), %eax
	movl	_fix_table_pow(%rip), %edx
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	subl	$1, %eax
	movslq	%eax, %rax
	movq	-8(%rbp), %rdx
	andq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rax
	movq	_fixCoefTable@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movabsq	$24, %rsi
	imulq	%rsi, %rax
	movq	%rdx, %rsi
	addq	%rax, %rsi
	movq	(%rsi), %rax
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	movabsq	$24, %rdi
	imulq	%rdi, %rsi
	addq	%rsi, %rdx
	movq	8(%rdx), %rdx
	movq	-40(%rbp), %rsi
	imulq	%rsi, %rdx
	movl	_fix_p(%rip), %esi
	movl	%esi, %esi
	movq	%rsi, %rcx
	sarq	%cl, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
Leh_func_end20:

	.globl	_viewFloatTime
	.align	4, 0x90
_viewFloatTime:
Leh_func_begin21:
	pushq	%rbp
Ltmp53:
	movq	%rsp, %rbp
Ltmp54:
	subq	$16, %rsp
Ltmp55:
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	callq	_FlMath
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %cl
	leaq	L_.str4(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	leaq	_FlMath(%rip), %rax
	movq	%rax, %rdi
	callq	_timeF
	movss	-4(%rbp), %xmm0
	callq	_FlCyclNoGorner
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %cl
	leaq	L_.str5(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	leaq	_FlCyclNoGorner(%rip), %rax
	movq	%rax, %rdi
	callq	_timeF
	movss	-4(%rbp), %xmm0
	callq	_FlNoCyclNoGorner
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %cl
	leaq	L_.str6(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	leaq	_FlNoCyclNoGorner(%rip), %rax
	movq	%rax, %rdi
	callq	_timeF
	movss	-4(%rbp), %xmm0
	callq	_FlCyclGorner
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %cl
	leaq	L_.str7(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	leaq	_FlCyclGorner(%rip), %rax
	movq	%rax, %rdi
	callq	_timeF
	movss	-4(%rbp), %xmm0
	callq	_FlNoCyclGorner
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %cl
	leaq	L_.str8(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	leaq	_FlNoCyclGorner(%rip), %rax
	movq	%rax, %rdi
	callq	_timeF
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end21:

	.globl	_viewFixTime
	.align	4, 0x90
_viewFixTime:
Leh_func_begin22:
	pushq	%rbp
Ltmp56:
	movq	%rsp, %rbp
Ltmp57:
	subq	$16, %rsp
Ltmp58:
	movss	%xmm0, -4(%rbp)
	callq	_initTable
	callq	_initFixCoef
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm0
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movq	%rax, %rdi
	callq	_FixCyclGorner
	movq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	movl	_fix_p(%rip), %edx
	movl	%edx, %ecx
	movl	$1, %edx
	shll	%cl, %edx
	cvtsi2ss	%edx, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %dl
	leaq	L_.str9(%rip), %rsi
	movq	%rsi, %rdi
	movb	%dl, %al
	callq	_printf
	leaq	_FixCyclGorner(%rip), %rax
	movq	%rax, %rdi
	callq	_timeFIX
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm0
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movq	%rax, %rdi
	callq	_FixNoCyclGorner
	cvtsi2ssq	%rax, %xmm0
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	leaq	L_.str10(%rip), %rdx
	movq	%rdx, %rdi
	callq	_printf
	leaq	_FixNoCyclGorner(%rip), %rax
	movq	%rax, %rdi
	callq	_timeFIX
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm0
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movq	%rax, %rdi
	callq	_fixTable
	cvtsi2ssq	%rax, %xmm0
	movl	_fix_p(%rip), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	leaq	L_.str11(%rip), %rdx
	movq	%rdx, %rdi
	callq	_printf
	leaq	_fixTable(%rip), %rax
	movq	%rax, %rdi
	callq	_timeFIX
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end22:

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI23_0:
	.long	1058642330
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin23:
	pushq	%rbp
Ltmp59:
	movq	%rsp, %rbp
Ltmp60:
	subq	$16, %rsp
Ltmp61:
	movss	LCPI23_0(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	callq	_viewFloatTime
	movss	-12(%rbp), %xmm0
	callq	_viewFixTime
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end23:

	.section	__TEXT,__literal4,4byte_literals
	.globl	_fix_p
	.align	2
_fix_p:
	.long	25

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

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "time: %f\n"

L_.str1:
	.asciz	 "flverify: %f\n"

	.comm	_fixCoeficent,144,5
L_.str2:
	.asciz	 "%.30f\n"

L_.str3:
	.asciz	 "time: %.30f\n"

	.comm	_coefTable,262144,5
	.comm	_fixCoefTable,786432,5
L_.str4:
	.asciz	 "FlMath: %.30f\n"

L_.str5:
	.asciz	 "FlCyclNoGorner: %.30f\n"

L_.str6:
	.asciz	 "FlNoCyclNoGorner: %.30f\n"

L_.str7:
	.asciz	 "FlCyclGorner: %.30f\n"

L_.str8:
	.asciz	 "FlNoCyclGorner: %.30f\n"

L_.str9:
	.asciz	 "FixCyclGorner: %.30f\n"

L_.str10:
	.asciz	 "FixNoCyclGorner: %.30f\n"

L_.str11:
	.asciz	 "TableFix: %.30f\n"

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
Ltmp62:
	.quad	Leh_func_begin1-Ltmp62
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

	.globl	_FlMath.eh
_FlMath.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp63:
	.quad	Leh_func_begin2-Ltmp63
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

	.globl	_FlCyclNoGorner.eh
_FlCyclNoGorner.eh:
Lset11 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset11
Leh_frame_begin3:
Lset12 = Leh_frame_begin3-Leh_frame_common
	.long	Lset12
Ltmp64:
	.quad	Leh_func_begin3-Ltmp64
Lset13 = Leh_func_end3-Leh_func_begin3
	.quad	Lset13
	.byte	0
	.byte	4
Lset14 = Ltmp6-Leh_func_begin3
	.long	Lset14
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset15 = Ltmp7-Ltmp6
	.long	Lset15
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:

	.globl	_FlNoCyclNoGorner.eh
_FlNoCyclNoGorner.eh:
Lset16 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset16
Leh_frame_begin4:
Lset17 = Leh_frame_begin4-Leh_frame_common
	.long	Lset17
Ltmp65:
	.quad	Leh_func_begin4-Ltmp65
Lset18 = Leh_func_end4-Leh_func_begin4
	.quad	Lset18
	.byte	0
	.byte	4
Lset19 = Ltmp9-Leh_func_begin4
	.long	Lset19
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset20 = Ltmp10-Ltmp9
	.long	Lset20
	.byte	13
	.byte	6
	.align	3
Leh_frame_end4:

	.globl	_FlCyclGorner.eh
_FlCyclGorner.eh:
Lset21 = Leh_frame_end5-Leh_frame_begin5
	.long	Lset21
Leh_frame_begin5:
Lset22 = Leh_frame_begin5-Leh_frame_common
	.long	Lset22
Ltmp66:
	.quad	Leh_func_begin5-Ltmp66
Lset23 = Leh_func_end5-Leh_func_begin5
	.quad	Lset23
	.byte	0
	.byte	4
Lset24 = Ltmp12-Leh_func_begin5
	.long	Lset24
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset25 = Ltmp13-Ltmp12
	.long	Lset25
	.byte	13
	.byte	6
	.align	3
Leh_frame_end5:

	.globl	_FlNoCyclGorner.eh
_FlNoCyclGorner.eh:
Lset26 = Leh_frame_end6-Leh_frame_begin6
	.long	Lset26
Leh_frame_begin6:
Lset27 = Leh_frame_begin6-Leh_frame_common
	.long	Lset27
Ltmp67:
	.quad	Leh_func_begin6-Ltmp67
Lset28 = Leh_func_end6-Leh_func_begin6
	.quad	Lset28
	.byte	0
	.byte	4
Lset29 = Ltmp14-Leh_func_begin6
	.long	Lset29
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset30 = Ltmp15-Ltmp14
	.long	Lset30
	.byte	13
	.byte	6
	.align	3
Leh_frame_end6:

	.globl	_flverify.eh
_flverify.eh:
Lset31 = Leh_frame_end7-Leh_frame_begin7
	.long	Lset31
Leh_frame_begin7:
Lset32 = Leh_frame_begin7-Leh_frame_common
	.long	Lset32
Ltmp68:
	.quad	Leh_func_begin7-Ltmp68
Lset33 = Leh_func_end7-Leh_func_begin7
	.quad	Lset33
	.byte	0
	.byte	4
Lset34 = Ltmp16-Leh_func_begin7
	.long	Lset34
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset35 = Ltmp17-Ltmp16
	.long	Lset35
	.byte	13
	.byte	6
	.align	3
Leh_frame_end7:

	.globl	_timeFunc.eh
_timeFunc.eh:
Lset36 = Leh_frame_end8-Leh_frame_begin8
	.long	Lset36
Leh_frame_begin8:
Lset37 = Leh_frame_begin8-Leh_frame_common
	.long	Lset37
Ltmp69:
	.quad	Leh_func_begin8-Ltmp69
Lset38 = Leh_func_end8-Leh_func_begin8
	.quad	Lset38
	.byte	0
	.byte	4
Lset39 = Ltmp19-Leh_func_begin8
	.long	Lset39
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset40 = Ltmp20-Ltmp19
	.long	Lset40
	.byte	13
	.byte	6
	.align	3
Leh_frame_end8:

	.globl	_testing.eh
_testing.eh:
Lset41 = Leh_frame_end9-Leh_frame_begin9
	.long	Lset41
Leh_frame_begin9:
Lset42 = Leh_frame_begin9-Leh_frame_common
	.long	Lset42
Ltmp70:
	.quad	Leh_func_begin9-Ltmp70
Lset43 = Leh_func_end9-Leh_func_begin9
	.quad	Lset43
	.byte	0
	.byte	4
Lset44 = Ltmp22-Leh_func_begin9
	.long	Lset44
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset45 = Ltmp23-Ltmp22
	.long	Lset45
	.byte	13
	.byte	6
	.align	3
Leh_frame_end9:

	.globl	_initFixCoef.eh
_initFixCoef.eh:
Lset46 = Leh_frame_end10-Leh_frame_begin10
	.long	Lset46
Leh_frame_begin10:
Lset47 = Leh_frame_begin10-Leh_frame_common
	.long	Lset47
Ltmp71:
	.quad	Leh_func_begin10-Ltmp71
Lset48 = Leh_func_end10-Leh_func_begin10
	.quad	Lset48
	.byte	0
	.byte	4
Lset49 = Ltmp25-Leh_func_begin10
	.long	Lset49
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset50 = Ltmp26-Ltmp25
	.long	Lset50
	.byte	13
	.byte	6
	.align	3
Leh_frame_end10:

	.globl	_fixverify.eh
_fixverify.eh:
Lset51 = Leh_frame_end11-Leh_frame_begin11
	.long	Lset51
Leh_frame_begin11:
Lset52 = Leh_frame_begin11-Leh_frame_common
	.long	Lset52
Ltmp72:
	.quad	Leh_func_begin11-Ltmp72
Lset53 = Leh_func_end11-Leh_func_begin11
	.quad	Lset53
	.byte	0
	.byte	4
Lset54 = Ltmp27-Leh_func_begin11
	.long	Lset54
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset55 = Ltmp28-Ltmp27
	.long	Lset55
	.byte	13
	.byte	6
	.align	3
Leh_frame_end11:

	.globl	_timeF.eh
_timeF.eh:
Lset56 = Leh_frame_end12-Leh_frame_begin12
	.long	Lset56
Leh_frame_begin12:
Lset57 = Leh_frame_begin12-Leh_frame_common
	.long	Lset57
Ltmp73:
	.quad	Leh_func_begin12-Ltmp73
Lset58 = Leh_func_end12-Leh_func_begin12
	.quad	Lset58
	.byte	0
	.byte	4
Lset59 = Ltmp30-Leh_func_begin12
	.long	Lset59
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset60 = Ltmp31-Ltmp30
	.long	Lset60
	.byte	13
	.byte	6
	.align	3
Leh_frame_end12:

	.globl	_timeFIX.eh
_timeFIX.eh:
Lset61 = Leh_frame_end13-Leh_frame_begin13
	.long	Lset61
Leh_frame_begin13:
Lset62 = Leh_frame_begin13-Leh_frame_common
	.long	Lset62
Ltmp74:
	.quad	Leh_func_begin13-Ltmp74
Lset63 = Leh_func_end13-Leh_func_begin13
	.quad	Lset63
	.byte	0
	.byte	4
Lset64 = Ltmp33-Leh_func_begin13
	.long	Lset64
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset65 = Ltmp34-Ltmp33
	.long	Lset65
	.byte	13
	.byte	6
	.align	3
Leh_frame_end13:

	.globl	_FixCyclGorner.eh
_FixCyclGorner.eh:
Lset66 = Leh_frame_end14-Leh_frame_begin14
	.long	Lset66
Leh_frame_begin14:
Lset67 = Leh_frame_begin14-Leh_frame_common
	.long	Lset67
Ltmp75:
	.quad	Leh_func_begin14-Ltmp75
Lset68 = Leh_func_end14-Leh_func_begin14
	.quad	Lset68
	.byte	0
	.byte	4
Lset69 = Ltmp36-Leh_func_begin14
	.long	Lset69
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset70 = Ltmp37-Ltmp36
	.long	Lset70
	.byte	13
	.byte	6
	.align	3
Leh_frame_end14:

	.globl	_FixNoCyclGorner.eh
_FixNoCyclGorner.eh:
Lset71 = Leh_frame_end15-Leh_frame_begin15
	.long	Lset71
Leh_frame_begin15:
Lset72 = Leh_frame_begin15-Leh_frame_common
	.long	Lset72
Ltmp76:
	.quad	Leh_func_begin15-Ltmp76
Lset73 = Leh_func_end15-Leh_func_begin15
	.quad	Lset73
	.byte	0
	.byte	4
Lset74 = Ltmp38-Leh_func_begin15
	.long	Lset74
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset75 = Ltmp39-Ltmp38
	.long	Lset75
	.byte	13
	.byte	6
	.align	3
Leh_frame_end15:

	.globl	_fixCountTacts.eh
_fixCountTacts.eh:
Lset76 = Leh_frame_end16-Leh_frame_begin16
	.long	Lset76
Leh_frame_begin16:
Lset77 = Leh_frame_begin16-Leh_frame_common
	.long	Lset77
Ltmp77:
	.quad	Leh_func_begin16-Ltmp77
Lset78 = Leh_func_end16-Leh_func_begin16
	.quad	Lset78
	.byte	0
	.byte	4
Lset79 = Ltmp41-Leh_func_begin16
	.long	Lset79
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset80 = Ltmp42-Ltmp41
	.long	Lset80
	.byte	13
	.byte	6
	.align	3
Leh_frame_end16:

	.globl	_tableFloat.eh
_tableFloat.eh:
Lset81 = Leh_frame_end17-Leh_frame_begin17
	.long	Lset81
Leh_frame_begin17:
Lset82 = Leh_frame_begin17-Leh_frame_common
	.long	Lset82
Ltmp78:
	.quad	Leh_func_begin17-Ltmp78
Lset83 = Leh_func_end17-Leh_func_begin17
	.quad	Lset83
	.byte	0
	.byte	4
Lset84 = Ltmp44-Leh_func_begin17
	.long	Lset84
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset85 = Ltmp45-Ltmp44
	.long	Lset85
	.byte	13
	.byte	6
	.align	3
Leh_frame_end17:

	.globl	_initTable.eh
_initTable.eh:
Lset86 = Leh_frame_end18-Leh_frame_begin18
	.long	Lset86
Leh_frame_begin18:
Lset87 = Leh_frame_begin18-Leh_frame_common
	.long	Lset87
Ltmp79:
	.quad	Leh_func_begin18-Ltmp79
Lset88 = Leh_func_end18-Leh_func_begin18
	.quad	Lset88
	.byte	0
	.byte	4
Lset89 = Ltmp46-Leh_func_begin18
	.long	Lset89
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset90 = Ltmp47-Ltmp46
	.long	Lset90
	.byte	13
	.byte	6
	.align	3
Leh_frame_end18:

	.globl	_fixTable.eh
_fixTable.eh:
Lset91 = Leh_frame_end19-Leh_frame_begin19
	.long	Lset91
Leh_frame_begin19:
Lset92 = Leh_frame_begin19-Leh_frame_common
	.long	Lset92
Ltmp80:
	.quad	Leh_func_begin19-Ltmp80
Lset93 = Leh_func_end19-Leh_func_begin19
	.quad	Lset93
	.byte	0
	.byte	4
Lset94 = Ltmp49-Leh_func_begin19
	.long	Lset94
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset95 = Ltmp50-Ltmp49
	.long	Lset95
	.byte	13
	.byte	6
	.align	3
Leh_frame_end19:

	.globl	_fix_table_func.eh
_fix_table_func.eh:
Lset96 = Leh_frame_end20-Leh_frame_begin20
	.long	Lset96
Leh_frame_begin20:
Lset97 = Leh_frame_begin20-Leh_frame_common
	.long	Lset97
Ltmp81:
	.quad	Leh_func_begin20-Ltmp81
Lset98 = Leh_func_end20-Leh_func_begin20
	.quad	Lset98
	.byte	0
	.byte	4
Lset99 = Ltmp51-Leh_func_begin20
	.long	Lset99
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset100 = Ltmp52-Ltmp51
	.long	Lset100
	.byte	13
	.byte	6
	.align	3
Leh_frame_end20:

	.globl	_viewFloatTime.eh
_viewFloatTime.eh:
Lset101 = Leh_frame_end21-Leh_frame_begin21
	.long	Lset101
Leh_frame_begin21:
Lset102 = Leh_frame_begin21-Leh_frame_common
	.long	Lset102
Ltmp82:
	.quad	Leh_func_begin21-Ltmp82
Lset103 = Leh_func_end21-Leh_func_begin21
	.quad	Lset103
	.byte	0
	.byte	4
Lset104 = Ltmp53-Leh_func_begin21
	.long	Lset104
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset105 = Ltmp54-Ltmp53
	.long	Lset105
	.byte	13
	.byte	6
	.align	3
Leh_frame_end21:

	.globl	_viewFixTime.eh
_viewFixTime.eh:
Lset106 = Leh_frame_end22-Leh_frame_begin22
	.long	Lset106
Leh_frame_begin22:
Lset107 = Leh_frame_begin22-Leh_frame_common
	.long	Lset107
Ltmp83:
	.quad	Leh_func_begin22-Ltmp83
Lset108 = Leh_func_end22-Leh_func_begin22
	.quad	Lset108
	.byte	0
	.byte	4
Lset109 = Ltmp56-Leh_func_begin22
	.long	Lset109
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset110 = Ltmp57-Ltmp56
	.long	Lset110
	.byte	13
	.byte	6
	.align	3
Leh_frame_end22:

	.globl	_main.eh
_main.eh:
Lset111 = Leh_frame_end23-Leh_frame_begin23
	.long	Lset111
Leh_frame_begin23:
Lset112 = Leh_frame_begin23-Leh_frame_common
	.long	Lset112
Ltmp84:
	.quad	Leh_func_begin23-Ltmp84
Lset113 = Leh_func_end23-Leh_func_begin23
	.quad	Lset113
	.byte	0
	.byte	4
Lset114 = Ltmp59-Leh_func_begin23
	.long	Lset114
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset115 = Ltmp60-Ltmp59
	.long	Lset115
	.byte	13
	.byte	6
	.align	3
Leh_frame_end23:


.subsections_via_symbols
