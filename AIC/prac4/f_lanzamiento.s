	.file	"f_lanzamiento.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"X"
.LC1:
	.string	"i"
.LC2:
	.string	"I"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"<span style='color : red'>I</span>"
	.section	.rodata.str1.1
.LC4:
	.string	"%s"
.LC5:
	.string	"f_lanzamiento.c"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"ERROR (%s:%d): Operacion no implementada\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	fase_ISS
	.type	fase_ISS, @function
fase_ISS:
.LFB42:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	-40(%rsp), %rsp
	.cfi_def_cfa_offset 96
	movq	IF_ISS_2@GOTPCREL(%rip), %rbx
	movl	(%rbx), %eax
	subl	$141, %eax
	cmpl	$5, %eax
	jbe	.L158
	movq	160(%rbx), %rdx
	movq	PC_ISS@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	Control_2@GOTPCREL(%rip), %rax
	movl	12(%rax), %edx
	testl	%edx, %edx
	jne	.L3
	movl	188(%rbx), %eax
	testl	%eax, %eax
	jne	.L3
	movq	Control_1@GOTPCREL(%rip), %rbp
	movq	168(%rbx), %rsi
	movl	12(%rbp), %eax
	testl	%eax, %eax
	jne	.L6
	movl	184(%rbx), %eax
	testl	%eax, %eax
	jne	.L6
	movl	8(%rbp), %eax
	testl	%eax, %eax
	jne	.L8
	movl	16(%rbp), %eax
	testl	%eax, %eax
	je	.L9
.L8:
	leaq	.LC1(%rip), %rdi
	call	muestra_fase@PLT
	movl	$1, 8(%rbp)
	jmp	.L1
	.p2align 4,,7
	.p2align 3
.L3:
	movq	Control_1@GOTPCREL(%rip), %rax
	movl	$0, 8(%rax)
.L1:
	leaq	40(%rsp), %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,7
	.p2align 3
.L158:
	.cfi_restore_state
	leaq	40(%rsp), %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	fase_ISS_alum@PLT
	.p2align 4,,7
	.p2align 3
.L6:
	.cfi_restore_state
	leaq	40(%rsp), %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	.LC0(%rip), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	muestra_fase@PLT
	.p2align 4,,7
	.p2align 3
.L9:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	call	muestra_fase@PLT
	movq	RB_long@GOTPCREL(%rip), %r15
	movq	TAM_REORDER@GOTPCREL(%rip), %rax
	movl	$1, 8(%rbp)
	movl	(%r15), %esi
	movl	(%rax), %edi
	cmpl	%edi, %esi
	jge	.L1
	movq	RB_fin@GOTPCREL(%rip), %r10
	movq	RB@GOTPCREL(%rip), %r9
	movl	180(%rbx), %edx
	movslq	(%r10), %r13
	movq	%r13, %rax
	leaq	0(,%r13,8), %rcx
	salq	$6, %rax
	movq	%r13, %r14
	subq	%rcx, %rax
	movl	176(%rbx), %ecx
	addq	%r9, %rax
	movl	%edx, 36(%rax)
	movl	%ecx, 32(%rax)
	movl	(%rbx), %ecx
	cmpl	$149, %ecx
	ja	.L11
	leaq	.L13(%rip), %rax
	movl	%ecx, %r8d
	movslq	(%rax,%r8,4), %r8
	addq	%r8, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L13:
	.long	.L12-.L13
	.long	.L14-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L15-.L13
	.long	.L16-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L17-.L13
	.long	.L18-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L17-.L13
	.long	.L18-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L19-.L13
	.long	.L19-.L13
	.long	.L19-.L13
	.long	.L19-.L13
	.long	.L19-.L13
	.long	.L19-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L15-.L13
	.long	.L20-.L13
	.long	.L21-.L13
	.long	.L21-.L13
	.long	.L22-.L13
	.long	.L22-.L13
	.long	.L11-.L13
	.long	.L21-.L13
	.long	.L21-.L13
	.text
.L22:
	movq	TAM_RS_SUMREST@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	movq	TAM_RS_ENTEROS@GOTPCREL(%rip), %rax
	addl	(%rax), %edi
	movq	TAM_RS_MULTDIV@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	addl	%edi, %esi
	cmpl	%esi, %edi
	jge	.L1
	movq	RS@GOTPCREL(%rip), %r12
	movslq	%edi, %rax
	imulq	$232, %rax, %rdx
	movl	(%r12,%rdx), %r8d
	testl	%r8d, %r8d
	je	.L88
	.p2align 4,,15
.L90:
	addl	$1, %edi
	cmpl	%esi, %edi
	je	.L1
	movslq	%edi, %rax
	imulq	$232, %rax, %rdx
	movl	(%r12,%rdx), %edx
	testl	%edx, %edx
	jne	.L90
.L88:
	imulq	$232, %rax, %rdx
	movslq	8(%rbx), %rsi
	salq	$4, %rsi
	addq	%r12, %rdx
	movl	%ecx, 4(%rdx)
	movq	Rfp@GOTPCREL(%rip), %rcx
	movl	$1, (%rdx)
	movl	%r14d, 208(%rdx)
	addq	%rcx, %rsi
	movl	8(%rsi), %edi
	cmpl	$512, %edi
	je	.L159
	movslq	%edi, %rsi
	movq	%rsi, %r11
	leaq	0(,%rsi,8), %r8
	salq	$6, %r11
	subq	%r8, %r11
	cmpl	$2, 8(%r9,%r11)
	je	.L160
	movl	%edi, 8(%rdx)
.L92:
	movslq	12(%rbx), %rdx
	salq	$4, %rdx
	addq	%rcx, %rdx
	movl	8(%rdx), %esi
	cmpl	$512, %esi
	je	.L161
	movslq	%esi, %rdx
	movq	%rdx, %rdi
	leaq	0(,%rdx,8), %r8
	salq	$6, %rdi
	subq	%r8, %rdi
	cmpl	$2, 8(%r9,%rdi)
	je	.L162
	imulq	$232, %rax, %rdx
	movl	%esi, 24(%r12,%rdx)
.L95:
	movq	%r13, %rdx
	leaq	0(,%r13,8), %rsi
	salq	$6, %rdx
	imulq	$232, %rax, %rax
	subq	%rsi, %rdx
	addq	%rdx, %r9
	movl	(%rbx), %edx
	movl	$1, (%r9)
	addq	%rax, %r12
	movq	160(%rbx), %rax
	movl	%edx, 4(%r9)
	movslq	16(%rbx), %rdx
	movl	$0, 188(%r12)
	movq	%rax, 216(%r12)
	movq	%rdx, 16(%r9)
	salq	$4, %rdx
	movl	%r14d, 8(%rcx,%rdx)
	movq	168(%rbx), %rdx
	movq	%rax, 40(%r9)
	movq	%rdx, 224(%r12)
	movq	%rdx, 48(%r9)
.L145:
	movq	TAM_REORDER@GOTPCREL(%rip), %rcx
	movl	(%r10), %eax
	movl	(%r15), %esi
	movl	$1, 8(%r9)
	movl	(%rcx), %edi
	jmp	.L32
.L21:
	movq	TAM_RS_ENTEROS@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	movq	TAM_RS_SUMREST@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	addl	%edi, %esi
	cmpl	%esi, %edi
	jge	.L1
	movq	RS@GOTPCREL(%rip), %r12
	movslq	%edi, %rax
	imulq	$232, %rax, %rdx
	movl	(%r12,%rdx), %edx
	testl	%edx, %edx
	je	.L76
	.p2align 4,,15
.L78:
	addl	$1, %edi
	cmpl	%esi, %edi
	je	.L1
	movslq	%edi, %rax
	imulq	$232, %rax, %rdx
	movl	(%r12,%rdx), %r11d
	testl	%r11d, %r11d
	jne	.L78
.L76:
	imulq	$232, %rax, %rdx
	movslq	8(%rbx), %rsi
	salq	$4, %rsi
	addq	%r12, %rdx
	movl	%ecx, 4(%rdx)
	movq	Rfp@GOTPCREL(%rip), %rcx
	movl	$1, (%rdx)
	movl	%r14d, 208(%rdx)
	addq	%rcx, %rsi
	movl	8(%rsi), %edi
	cmpl	$512, %edi
	je	.L163
	movslq	%edi, %rsi
	movq	%rsi, %r11
	leaq	0(,%rsi,8), %r8
	salq	$6, %r11
	subq	%r8, %r11
	cmpl	$2, 8(%r9,%r11)
	je	.L164
	movl	%edi, 8(%rdx)
.L80:
	movslq	12(%rbx), %rdx
	salq	$4, %rdx
	addq	%rcx, %rdx
	movl	8(%rdx), %esi
	cmpl	$512, %esi
	je	.L165
	movslq	%esi, %rdx
	movq	%rdx, %rdi
	leaq	0(,%rdx,8), %r8
	salq	$6, %rdi
	subq	%r8, %rdi
	cmpl	$2, 8(%r9,%rdi)
	je	.L166
	imulq	$232, %rax, %rdx
	movl	%esi, 24(%r12,%rdx)
.L83:
	movq	%r13, %rsi
	leaq	0(,%r13,8), %rdx
	salq	$6, %rsi
	movl	(%rbx), %edi
	subq	%rdx, %rsi
	movslq	16(%rbx), %rdx
	addq	%r9, %rsi
	movl	$1, (%rsi)
	movl	%edi, 4(%rsi)
	movq	%rdx, 16(%rsi)
	leal	-135(%rdi), %esi
	salq	$4, %rdx
	cmpl	$5, %esi
	jbe	.L117
	subl	$148, %edi
	cmpl	$5, %edi
	jbe	.L117
	movl	%r14d, 8(%rcx,%rdx)
.L87:
	imulq	$232, %rax, %rax
	movq	168(%rbx), %rcx
	movq	160(%rbx), %rdx
	leaq	0(,%r13,8), %rsi
	addq	%rax, %r12
	movq	%r13, %rax
	salq	$6, %rax
	movl	$0, 188(%r12)
	subq	%rsi, %rax
	movq	%rcx, 224(%r12)
	addq	%rax, %r9
	movq	%rdx, 216(%r12)
	movq	%rcx, 48(%r9)
	movq	%rdx, 40(%r9)
	jmp	.L145
.L20:
	movq	TAM_RS_SUMREST@GOTPCREL(%rip), %rax
	movq	TAM_RS_ENTEROS@GOTPCREL(%rip), %rdx
	movl	(%rax), %eax
	addl	(%rdx), %eax
	movq	TAM_RS_MULTDIV@GOTPCREL(%rip), %rdx
	addl	(%rdx), %eax
	movq	TAM_TAMPON_LECT@GOTPCREL(%rip), %rdx
	addl	(%rdx), %eax
	movq	TAM_TAMPON_ESCR@GOTPCREL(%rip), %rdx
	movl	(%rdx), %ecx
	addl	%eax, %ecx
	cmpl	%ecx, %eax
	jge	.L1
	movq	RS@GOTPCREL(%rip), %r12
	movslq	%eax, %rsi
	imulq	$232, %rsi, %rdx
	movl	(%r12,%rdx), %r11d
	testl	%r11d, %r11d
	je	.L56
	.p2align 4,,15
.L58:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	.L1
	movslq	%eax, %rsi
	imulq	$232, %rsi, %rdx
	movl	(%r12,%rdx), %r8d
	testl	%r8d, %r8d
	jne	.L58
.L56:
	movslq	8(%rbx), %rdx
	imulq	$232, %rsi, %rax
	salq	$4, %rdx
	addq	Rint@GOTPCREL(%rip), %rdx
	addq	%r12, %rax
	movl	$1, (%rax)
	movl	$142, 4(%rax)
	movl	8(%rdx), %ecx
	cmpl	$512, %ecx
	je	.L167
	movslq	%ecx, %rdx
	movq	%rdx, %rdi
	leaq	0(,%rdx,8), %r8
	salq	$6, %rdi
	subq	%r8, %rdi
	cmpl	$2, 8(%r9,%rdi)
	je	.L168
	movl	%ecx, 8(%rax)
.L60:
	movslq	12(%rbx), %rax
	salq	$4, %rax
	addq	Rfp@GOTPCREL(%rip), %rax
	movl	8(%rax), %edx
	cmpl	$512, %edx
	je	.L169
	movslq	%edx, %rax
	movq	%rax, %rcx
	leaq	0(,%rax,8), %rdi
	salq	$6, %rcx
	subq	%rdi, %rcx
	cmpl	$2, 8(%r9,%rcx)
	je	.L170
	imulq	$232, %rsi, %rax
	movl	%edx, 24(%r12,%rax)
.L63:
	imulq	$232, %rsi, %rax
	movswq	20(%rbx), %rdx
	leaq	32(%rbx), %r8
	leaq	.LC4(%rip), %rcx
	movq	%r10, 8(%rsp)
	leaq	(%r12,%rax), %r11
	leaq	56(%r12,%rax), %rdi
	movq	%rdx, 48(%r11)
	leaq	0(,%r13,8), %rdx
	salq	$6, %r13
	xorl	%eax, %eax
	movl	$0, 188(%r11)
	subq	%rdx, %r13
	movl	(%rbx), %edx
	addq	%r9, %r13
	movq	%rsi, 16(%r13)
	movl	$1, %esi
	movl	$1, 0(%r13)
	movl	%edx, 4(%r13)
	movq	168(%rbx), %rdx
	movq	%r11, (%rsp)
	movq	%rdx, 224(%r11)
	movq	160(%rbx), %rdx
	movq	%rdx, 216(%r11)
	movl	$128, %edx
	call	__sprintf_chk@PLT
	movq	168(%rbx), %rax
	movq	(%rsp), %r11
	movl	$1, 8(%r13)
	movq	%rax, 48(%r13)
	movq	160(%rbx), %rax
	movl	$0, 184(%r11)
	movl	%r14d, 208(%r11)
	movq	%rax, 40(%r13)
.L144:
	movq	8(%rsp), %r10
	movq	TAM_REORDER@GOTPCREL(%rip), %rcx
	movl	(%r15), %esi
	movl	(%r10), %eax
	movl	(%rcx), %edi
	jmp	.L32
.L19:
	movq	TAM_RS_ENTEROS@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	jle	.L1
	movq	RS@GOTPCREL(%rip), %r12
	movl	(%r12), %eax
	testl	%eax, %eax
	je	.L171
	leaq	232(%r12), %rdx
	xorl	%eax, %eax
	.p2align 4,,15
.L33:
	addl	$1, %eax
	cmpl	%esi, %eax
	je	.L1
	movl	(%rdx), %edi
	addq	$232, %rdx
	testl	%edi, %edi
	jne	.L33
.L24:
	cltq
	movq	%r13, %rsi
	imulq	$232, %rax, %rdx
	salq	$6, %rsi
	movq	160(%rbx), %rdi
	leaq	0(,%r13,8), %r11
	movq	168(%rbx), %r8
	subq	%r11, %rsi
	addq	%r9, %rsi
	movl	%ecx, 4(%rsi)
	addq	%r12, %rdx
	movl	%ecx, 4(%rdx)
	movswq	20(%rbx), %rcx
	movq	%rdi, 40(%rsi)
	movq	%rdi, 216(%rdx)
	movl	$1, (%rsi)
	leaq	4(%rdi,%rcx), %rcx
	movq	%rcx, 16(%rsi)
	movq	Rint@GOTPCREL(%rip), %rcx
	movq	%r8, 48(%rsi)
	movl	$1, 8(%rsi)
	movq	%rcx, (%rsp)
	movq	%rcx, %rdi
	movslq	8(%rbx), %rcx
	movl	$1, (%rdx)
	movl	$0, 188(%rdx)
	salq	$4, %rcx
	movq	%r8, 224(%rdx)
	addq	%rdi, %rcx
	movl	8(%rcx), %esi
	movl	%r14d, 208(%rdx)
	cmpl	$512, %esi
	je	.L172
	movslq	%esi, %rcx
	movq	%rcx, %rdi
	leaq	0(,%rcx,8), %r8
	salq	$6, %rdi
	subq	%r8, %rdi
	cmpl	$2, 8(%r9,%rdi)
	je	.L173
	movl	%esi, 8(%rdx)
.L35:
	movslq	12(%rbx), %rdx
	salq	$4, %rdx
	addq	(%rsp), %rdx
	movl	8(%rdx), %ecx
	cmpl	$512, %ecx
	je	.L174
	movslq	%ecx, %rdx
	imulq	$232, %rax, %rax
	movq	%rdx, %rsi
	leaq	0(,%rdx,8), %rdi
	salq	$6, %rsi
	subq	%rdi, %rsi
	cmpl	$2, 8(%r9,%rsi)
	je	.L175
	movl	%ecx, 24(%r12,%rax)
	movq	TAM_REORDER@GOTPCREL(%rip), %rcx
	movl	(%r15), %esi
	movl	(%r10), %eax
	movl	(%rcx), %edi
	jmp	.L32
.L15:
	movq	TAM_RS_SUMREST@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movq	TAM_RS_ENTEROS@GOTPCREL(%rip), %rax
	addl	(%rax), %edx
	movq	TAM_RS_MULTDIV@GOTPCREL(%rip), %rax
	addl	(%rax), %edx
	movq	TAM_TAMPON_LECT@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	addl	%edx, %edi
	cmpl	%edi, %edx
	jge	.L1
	movq	RS@GOTPCREL(%rip), %r12
	movslq	%edx, %rax
	imulq	$232, %rax, %rsi
	movl	(%r12,%rsi), %r11d
	testl	%r11d, %r11d
	je	.L39
	.p2align 4,,15
.L41:
	addl	$1, %edx
	cmpl	%edi, %edx
	je	.L1
	movslq	%edx, %rax
	imulq	$232, %rax, %rsi
	movl	(%r12,%rsi), %r8d
	testl	%r8d, %r8d
	jne	.L41
.L39:
	movslq	8(%rbx), %rsi
	imulq	$232, %rax, %rdx
	movq	Rint@GOTPCREL(%rip), %rdi
	salq	$4, %rsi
	addq	%rdi, %rsi
	addq	%r12, %rdx
	movq	%rdi, (%rsp)
	movl	8(%rsi), %edi
	movl	$1, (%rdx)
	movl	%ecx, 4(%rdx)
	movl	%r14d, 208(%rdx)
	cmpl	$512, %edi
	je	.L176
	movslq	%edi, %rsi
	movq	%rsi, %r8
	leaq	0(,%rsi,8), %r11
	salq	$6, %r8
	subq	%r11, %r8
	cmpl	$2, 8(%r9,%r8)
	je	.L177
	movl	%edi, 8(%rdx)
.L43:
	imulq	$232, %rax, %rdx
	movswq	20(%rbx), %rsi
	addq	%r12, %rdx
	movq	%rsi, 48(%rdx)
	movq	%r13, %rsi
	movl	$512, 24(%rdx)
	leaq	0(,%r13,8), %rdx
	salq	$6, %rsi
	subq	%rdx, %rsi
	movslq	16(%rbx), %rdx
	addq	%r9, %rsi
	movl	$1, (%rsi)
	movl	%ecx, 4(%rsi)
	movq	%rdx, 16(%rsi)
	salq	$4, %rdx
	cmpl	$127, %ecx
	jg	.L45
	movq	(%rsp), %rcx
	movl	%r14d, 8(%rcx,%rdx)
.L46:
	imulq	$232, %rax, %rax
	movq	168(%rbx), %rcx
	leaq	32(%rbx), %r8
	movl	$1, %esi
	movq	%r9, (%rsp)
	movq	%r10, 8(%rsp)
	leaq	(%r12,%rax), %rdx
	leaq	56(%r12,%rax), %rdi
	movq	%rcx, 224(%rdx)
	xorl	%eax, %eax
	movq	160(%rbx), %rcx
	movl	$0, 188(%rdx)
	movq	%rcx, 216(%rdx)
	movl	$128, %edx
	leaq	.LC4(%rip), %rcx
	call	__sprintf_chk@PLT
	movq	(%rsp), %r9
	movq	%r13, %rax
	salq	$6, %rax
	leaq	0(,%r13,8), %rdx
	subq	%rdx, %rax
	addq	%rax, %r9
	movq	168(%rbx), %rax
	movl	$1, 8(%r9)
	movq	%rax, 48(%r9)
	movq	160(%rbx), %rax
	movq	%rax, 40(%r9)
	jmp	.L144
.L14:
	movq	%r13, %rax
	leaq	0(,%r13,8), %rcx
	salq	$6, %rax
	movq	168(%rbx), %rsi
	subq	%rcx, %rax
	movq	160(%rbx), %rcx
	addq	%r9, %rax
	movl	$1, (%rax)
	testl	%edx, %edx
	movl	$1, 4(%rax)
	movq	%rsi, 48(%rax)
	movq	%rcx, 40(%rax)
	movl	$2, 8(%rax)
	je	.L116
	cmpl	$32, %edx
	jg	.L116
.L30:
	movq	%r10, (%rsp)
	leaq	.LC3(%rip), %rdi
	movl	$1, 16(%rbp)
	call	muestra_fase@PLT
	movq	(%rsp), %r10
	movq	TAM_REORDER@GOTPCREL(%rip), %rcx
	movl	(%r15), %esi
	movl	(%r10), %eax
	movl	(%rcx), %edi
	.p2align 4,,15
.L32:
	addl	$1, %eax
	addl	$1, %esi
	movl	$0, 8(%rbp)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	%edi
	movl	%esi, (%r15)
	movl	%edx, (%r10)
	jmp	.L1
.L17:
	movq	TAM_RS_ENTEROS@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	jle	.L1
	movq	RS@GOTPCREL(%rip), %r12
	xorl	%eax, %eax
	movl	(%r12), %r8d
	leaq	232(%r12), %rdx
	testl	%r8d, %r8d
	je	.L178
	.p2align 4,,15
.L65:
	addl	$1, %eax
	cmpl	%esi, %eax
	je	.L1
	movl	(%rdx), %edi
	addq	$232, %rdx
	testl	%edi, %edi
	jne	.L65
.L28:
	cltq
	movq	%r13, %rsi
	imulq	$232, %rax, %rdx
	salq	$6, %rsi
	movq	160(%rbx), %rdi
	leaq	0(,%r13,8), %r11
	movq	168(%rbx), %r8
	subq	%r11, %rsi
	addq	%r9, %rsi
	movl	%ecx, 4(%rsi)
	addq	%r12, %rdx
	movl	%ecx, 4(%rdx)
	movslq	16(%rbx), %rcx
	movq	%rdi, 40(%rsi)
	movq	%rdi, 216(%rdx)
	movq	%rcx, 16(%rsi)
	movq	Rint@GOTPCREL(%rip), %rcx
	movl	$1, (%rsi)
	movq	%r8, 48(%rsi)
	movq	%rcx, (%rsp)
	movq	%rcx, %rdi
	movslq	8(%rbx), %rcx
	movl	$1, 8(%rsi)
	movl	$1, (%rdx)
	salq	$4, %rcx
	movl	$0, 188(%rdx)
	addq	%rdi, %rcx
	movl	8(%rcx), %esi
	movq	%r8, 224(%rdx)
	movl	%r14d, 208(%rdx)
	cmpl	$512, %esi
	je	.L179
	movslq	%esi, %rcx
	movq	%rcx, %rdi
	leaq	0(,%rcx,8), %r8
	salq	$6, %rdi
	subq	%r8, %rdi
	cmpl	$2, 8(%r9,%rdi)
	je	.L180
	movl	%esi, 8(%rdx)
.L67:
	movslq	12(%rbx), %rdx
	salq	$4, %rdx
	addq	(%rsp), %rdx
	movl	8(%rdx), %ecx
	cmpl	$512, %ecx
	je	.L181
	movslq	%ecx, %rdx
	imulq	$232, %rax, %rax
	movq	%rdx, %rsi
	leaq	0(,%rdx,8), %rdi
	salq	$6, %rsi
	subq	%rdi, %rsi
	cmpl	$2, 8(%r9,%rsi)
	je	.L182
	movl	%ecx, 24(%r12,%rax)
.L70:
	movslq	16(%rbx), %rax
	movq	(%rsp), %rcx
	movl	(%r15), %esi
	salq	$4, %rax
	movl	%r14d, 8(%rcx,%rax)
	movq	TAM_REORDER@GOTPCREL(%rip), %rcx
	movl	(%r10), %eax
	movl	(%rcx), %edi
	jmp	.L32
.L12:
	movl	$0, 8(%rbp)
	jmp	.L1
.L18:
	movq	TAM_RS_ENTEROS@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	jle	.L1
	movq	RS@GOTPCREL(%rip), %r12
	xorl	%eax, %eax
	movl	(%r12), %r11d
	leaq	232(%r12), %rdx
	testl	%r11d, %r11d
	je	.L183
	.p2align 4,,15
.L72:
	addl	$1, %eax
	cmpl	%r8d, %eax
	je	.L1
	movl	(%rdx), %r11d
	addq	$232, %rdx
	testl	%r11d, %r11d
	jne	.L72
.L26:
	cltq
	leaq	0(,%r13,8), %rdx
	movq	%rax, 8(%rsp)
	imulq	$232, %rax, %rax
	salq	$6, %r13
	movq	168(%rbx), %r8
	subq	%rdx, %r13
	movq	160(%rbx), %r11
	leaq	(%r9,%r13), %rdx
	movl	%ecx, 4(%rdx)
	addq	%r12, %rax
	movl	%ecx, 4(%rax)
	movslq	16(%rbx), %rcx
	movq	%r8, 48(%rdx)
	movq	%r11, 40(%rdx)
	movl	$1, 8(%rdx)
	movl	$1, (%rdx)
	movq	%rcx, 16(%rdx)
	movq	Rint@GOTPCREL(%rip), %rdx
	movq	%r11, 216(%rax)
	movq	%r8, 224(%rax)
	movq	%rdx, (%rsp)
	movq	%rdx, %r11
	movslq	8(%rbx), %rdx
	movl	$1, (%rax)
	movl	$0, 188(%rax)
	salq	$4, %rdx
	movl	%r14d, 208(%rax)
	addq	%r11, %rdx
	movl	8(%rdx), %r8d
	cmpl	$512, %r8d
	je	.L184
	movslq	%r8d, %rdx
	movq	%rdx, %r11
	leaq	0(,%rdx,8), %r13
	salq	$6, %r11
	subq	%r13, %r11
	cmpl	$2, 8(%r9,%r11)
	je	.L185
	movl	%r8d, 8(%rax)
.L74:
	imulq	$232, 8(%rsp), %rax
	salq	$4, %rcx
	addq	%rax, %r12
	movswq	20(%rbx), %rax
	movl	$512, 24(%r12)
	movq	%rax, 32(%r12)
	movq	(%rsp), %rax
	movl	%r14d, 8(%rax,%rcx)
	movl	%r14d, %eax
	jmp	.L32
.L16:
	movq	TAM_RS_SUMREST@GOTPCREL(%rip), %rax
	movq	TAM_RS_ENTEROS@GOTPCREL(%rip), %rdx
	movl	(%rax), %eax
	addl	(%rdx), %eax
	movq	TAM_RS_MULTDIV@GOTPCREL(%rip), %rdx
	addl	(%rdx), %eax
	movq	TAM_TAMPON_LECT@GOTPCREL(%rip), %rdx
	addl	(%rdx), %eax
	movq	TAM_TAMPON_ESCR@GOTPCREL(%rip), %rdx
	movl	(%rdx), %ecx
	addl	%eax, %ecx
	cmpl	%ecx, %eax
	jge	.L1
	movq	RS@GOTPCREL(%rip), %r12
	movslq	%eax, %r11
	imulq	$232, %r11, %rdx
	movl	(%r12,%rdx), %esi
	testl	%esi, %esi
	je	.L47
	.p2align 4,,15
.L49:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	.L1
	movslq	%eax, %r11
	imulq	$232, %r11, %rdx
	movl	(%r12,%rdx), %edx
	testl	%edx, %edx
	jne	.L49
.L47:
	movq	%r13, %rax
	leaq	0(,%r13,8), %rdi
	movq	160(%rbx), %rcx
	imulq	$232, %r11, %rdx
	movq	168(%rbx), %rsi
	salq	$6, %rax
	subq	%rdi, %rax
	addq	%r9, %rax
	addq	%r12, %rdx
	movq	%rcx, 40(%rax)
	movl	$1, 8(%rax)
	movl	$1, (%rax)
	movl	$65, 4(%rax)
	movq	%rsi, 48(%rax)
	movq	%r11, 16(%rax)
	movq	Rint@GOTPCREL(%rip), %rax
	movq	%rcx, 216(%rdx)
	movl	$1, (%rdx)
	movq	%rax, (%rsp)
	movq	%rax, %rcx
	movslq	8(%rbx), %rax
	movl	$0, 188(%rdx)
	movl	$65, 4(%rdx)
	salq	$4, %rax
	movq	%rsi, 224(%rdx)
	addq	%rcx, %rax
	movl	8(%rax), %ecx
	movl	%r14d, 208(%rdx)
	cmpl	$512, %ecx
	je	.L186
	movslq	%ecx, %rax
	movq	%rax, %rsi
	leaq	0(,%rax,8), %rdi
	salq	$6, %rsi
	subq	%rdi, %rsi
	cmpl	$2, 8(%r9,%rsi)
	je	.L187
	movl	%ecx, 8(%rdx)
.L51:
	imulq	$232, %r11, %rax
	movswq	20(%rbx), %rdx
	leaq	32(%rbx), %r8
	leaq	.LC4(%rip), %rcx
	movq	%r10, 24(%rsp)
	movl	$1, %esi
	movq	%r9, 16(%rsp)
	leaq	(%r12,%rax), %r13
	leaq	56(%r12,%rax), %rdi
	movq	%rdx, 48(%r13)
	xorl	%eax, %eax
	movq	%r11, 8(%rsp)
	movl	$128, %edx
	call	__sprintf_chk@PLT
	movslq	12(%rbx), %rax
	movq	8(%rsp), %r11
	movq	16(%rsp), %r9
	salq	$4, %rax
	movq	24(%rsp), %r10
	addq	(%rsp), %rax
	movl	8(%rax), %edx
	cmpl	$512, %edx
	je	.L188
	movslq	%edx, %rax
	movq	%rax, %rcx
	leaq	0(,%rax,8), %rsi
	salq	$6, %rcx
	subq	%rsi, %rcx
	cmpl	$2, 8(%r9,%rcx)
	je	.L189
	movl	%edx, 24(%r13)
.L54:
	imulq	$232, %r11, %r11
	movq	TAM_REORDER@GOTPCREL(%rip), %rcx
	movl	(%r10), %eax
	movl	(%r15), %esi
	movl	(%rcx), %edi
	movl	$0, 184(%r12,%r11)
	jmp	.L32
.L11:
	movq	stderr@GOTPCREL(%rip), %rax
	movl	$628, %r8d
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	movl	$1, %esi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L116:
	movq	%r13, %rax
	leaq	0(,%r13,8), %rdx
	salq	$6, %rax
	subq	%rdx, %rax
	movswl	20(%rbx), %edx
	addl	$32, %edx
	movl	%edx, 36(%r9,%rax)
	jmp	.L30
.L117:
	addq	Rint@GOTPCREL(%rip), %rdx
	movl	%r14d, 8(%rdx)
	jmp	.L87
.L45:
	addq	Rfp@GOTPCREL(%rip), %rdx
	movl	%r14d, 8(%rdx)
	jmp	.L46
.L176:
	movq	(%rsi), %rsi
	movl	$512, 8(%rdx)
	movq	%rsi, 16(%rdx)
	jmp	.L43
.L165:
	imulq	$232, %rax, %rsi
	movq	(%rdx), %rdx
	addq	%r12, %rsi
	movq	%rdx, 32(%rsi)
	movl	$512, 24(%rsi)
	jmp	.L83
.L163:
	movq	(%rsi), %rsi
	movl	$512, 8(%rdx)
	movq	%rsi, 16(%rdx)
	jmp	.L80
.L181:
	imulq	$232, %rax, %rax
	addq	%rax, %r12
	movq	(%rdx), %rax
	movl	$512, 24(%r12)
	movq	%rax, 32(%r12)
	jmp	.L70
.L179:
	movq	(%rcx), %rcx
	movl	$512, 8(%rdx)
	movq	%rcx, 16(%rdx)
	jmp	.L67
.L184:
	movq	(%rdx), %rdx
	movl	$512, 8(%rax)
	movq	%rdx, 16(%rax)
	jmp	.L74
.L169:
	imulq	$232, %rsi, %rdx
	movq	(%rax), %rax
	addq	%r12, %rdx
	movq	%rax, 32(%rdx)
	movl	$512, 24(%rdx)
	jmp	.L63
.L167:
	movq	(%rdx), %rdx
	movl	$512, 8(%rax)
	movq	%rdx, 16(%rax)
	jmp	.L60
.L161:
	imulq	$232, %rax, %rsi
	movq	(%rdx), %rdx
	addq	%r12, %rsi
	movq	%rdx, 32(%rsi)
	movl	$512, 24(%rsi)
	jmp	.L95
.L159:
	movq	(%rsi), %rsi
	movl	$512, 8(%rdx)
	movq	%rsi, 16(%rdx)
	jmp	.L92
.L174:
	imulq	$232, %rax, %rax
	addq	%rax, %r12
	movq	(%rdx), %rax
.L143:
	movq	TAM_REORDER@GOTPCREL(%rip), %rcx
	movq	%rax, 32(%r12)
	movl	(%r15), %esi
	movl	$512, 24(%r12)
	movl	(%rcx), %edi
	movl	(%r10), %eax
	jmp	.L32
.L172:
	movq	(%rcx), %rcx
	movl	$512, 8(%rdx)
	movq	%rcx, 16(%rdx)
	jmp	.L35
.L188:
	movq	(%rax), %rax
	movl	$512, 24(%r13)
	movq	%rax, 32(%r13)
	jmp	.L54
.L186:
	movq	(%rax), %rax
	movl	$512, 8(%rdx)
	movq	%rax, 16(%rdx)
	jmp	.L51
.L187:
	imulq	$56, %rax, %rax
	movl	$512, 8(%rdx)
	movq	24(%r9,%rax), %rax
	movq	%rax, 16(%rdx)
	jmp	.L51
.L160:
	imulq	$56, %rsi, %rsi
	movl	$512, 8(%rdx)
	movq	24(%r9,%rsi), %rsi
	movq	%rsi, 16(%rdx)
	jmp	.L92
.L175:
	imulq	$56, %rdx, %rdx
	addq	%rax, %r12
	movq	24(%r9,%rdx), %rax
	jmp	.L143
.L173:
	imulq	$56, %rcx, %rcx
	movl	$512, 8(%rdx)
	movq	24(%r9,%rcx), %rcx
	movq	%rcx, 16(%rdx)
	jmp	.L35
.L189:
	imulq	$56, %rax, %rax
	movl	$512, 24(%r13)
	movq	24(%r9,%rax), %rax
	movq	%rax, 32(%r13)
	jmp	.L54
.L185:
	imulq	$56, %rdx, %rdx
	movl	$512, 8(%rax)
	movq	24(%r9,%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L74
.L170:
	imulq	$56, %rax, %rax
	imulq	$232, %rsi, %rdx
	movq	24(%r9,%rax), %rax
	addq	%r12, %rdx
	movq	%rax, 32(%rdx)
	movl	$512, 24(%rdx)
	jmp	.L63
.L168:
	imulq	$56, %rdx, %rdx
	movl	$512, 8(%rax)
	movq	24(%r9,%rdx), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L60
.L162:
	imulq	$56, %rdx, %rdx
	imulq	$232, %rax, %rsi
	movq	24(%r9,%rdx), %rdx
	addq	%r12, %rsi
	movq	%rdx, 32(%rsi)
	movl	$512, 24(%rsi)
	jmp	.L95
.L182:
	addq	%rax, %r12
	imulq	$56, %rdx, %rax
	movl	$512, 24(%r12)
	movq	24(%r9,%rax), %rax
	movq	%rax, 32(%r12)
	jmp	.L70
.L180:
	imulq	$56, %rcx, %rcx
	movl	$512, 8(%rdx)
	movq	24(%r9,%rcx), %rcx
	movq	%rcx, 16(%rdx)
	jmp	.L67
.L166:
	imulq	$56, %rdx, %rdx
	imulq	$232, %rax, %rsi
	movq	24(%r9,%rdx), %rdx
	addq	%r12, %rsi
	movq	%rdx, 32(%rsi)
	movl	$512, 24(%rsi)
	jmp	.L83
.L164:
	imulq	$56, %rsi, %rsi
	movl	$512, 8(%rdx)
	movq	24(%r9,%rsi), %rsi
	movq	%rsi, 16(%rdx)
	jmp	.L80
.L177:
	imulq	$56, %rsi, %rsi
	movl	$512, 8(%rdx)
	movq	24(%r9,%rsi), %rsi
	movq	%rsi, 16(%rdx)
	jmp	.L43
.L183:
	xorl	%eax, %eax
	jmp	.L26
.L171:
	xorl	%eax, %eax
	jmp	.L24
.L178:
	xorl	%eax, %eax
	.p2align 4,,5
	jmp	.L28
	.cfi_endproc
.LFE42:
	.size	fase_ISS, .-fase_ISS
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
