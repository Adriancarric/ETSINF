	.file	"f_confirmacion.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"x"
.LC1:
	.string	"X"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	cancelar_instrucciones
	.type	cancelar_instrucciones, @function
cancelar_instrucciones:
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
	leaq	-24(%rsp), %rsp
	.cfi_def_cfa_offset 80
	movq	TAM_REORDER@GOTPCREL(%rip), %rbp
	movq	RB@GOTPCREL(%rip), %rax
	movl	0(%rbp), %r12d
	movq	%rax, 8(%rsp)
	testl	%r12d, %r12d
	jle	.L48
	movq	%rax, %r14
	xorl	%r13d, %r13d
	movq	RB_inicio@GOTPCREL(%rip), %r12
	.p2align 4,,15
.L6:
	movl	(%r14), %r11d
	testl	%r11d, %r11d
	je	.L5
	cmpl	%r13d, (%r12)
	je	.L5
	movq	48(%r14), %rsi
	leaq	.LC0(%rip), %rdi
	call	muestra_fase@PLT
.L5:
	addl	$1, %r13d
	addq	$56, %r14
	cmpl	%r13d, 0(%rbp)
	jg	.L6
.L7:
	movq	TAM_ESTACIONES@GOTPCREL(%rip), %r15
	movl	(%r15), %ebx
	testl	%ebx, %ebx
	jle	.L4
	movq	RS@GOTPCREL(%rip), %r13
	xorl	%r14d, %r14d
	jmp	.L12
	.p2align 4,,7
	.p2align 3
.L10:
	addl	$1, %r14d
	addq	$232, %r13
	cmpl	%r14d, (%r15)
	jle	.L4
.L12:
	movl	0(%r13), %r10d
	testl	%r10d, %r10d
	je	.L10
	cmpl	$3, 188(%r13)
	jne	.L10
	movq	TAM_RS_SUMREST@GOTPCREL(%rip), %rax
	movq	TAM_RS_ENTEROS@GOTPCREL(%rip), %rdx
	movl	(%rax), %eax
	addl	(%rdx), %eax
	movq	TAM_RS_MULTDIV@GOTPCREL(%rip), %rdx
	addl	(%rdx), %eax
	movq	TAM_TAMPON_LECT@GOTPCREL(%rip), %rdx
	addl	(%rdx), %eax
	cmpl	%r14d, %eax
	jg	.L11
	movq	TAM_TAMPON_ESCR@GOTPCREL(%rip), %rdx
	addl	(%rdx), %eax
	cmpl	%r14d, %eax
	jg	.L10
.L11:
	movq	224(%r13), %rsi
	leaq	.LC1(%rip), %rdi
	addl	$1, %r14d
	addq	$232, %r13
	call	muestra_fase@PLT
	cmpl	%r14d, (%r15)
	jg	.L12
	.p2align 4,,15
.L4:
	movq	NUM_OPERADORES@GOTPCREL(%rip), %rbx
	movl	(%rbx), %edx
	testl	%edx, %edx
	jle	.L9
	movq	Op@GOTPCREL(%rip), %r13
	xorl	%r14d, %r14d
	.p2align 4,,15
.L15:
	movl	0(%r13), %r9d
	testl	%r9d, %r9d
	je	.L13
	movq	TAM_RS_SUMREST@GOTPCREL(%rip), %rax
	movq	TAM_RS_ENTEROS@GOTPCREL(%rip), %rsi
	movslq	8(%r13), %rdx
	movl	(%rax), %eax
	addl	(%rsi), %eax
	movq	TAM_RS_MULTDIV@GOTPCREL(%rip), %rsi
	addl	(%rsi), %eax
	movq	TAM_TAMPON_LECT@GOTPCREL(%rip), %rsi
	addl	(%rsi), %eax
	cmpl	%eax, %edx
	jl	.L14
	movq	TAM_TAMPON_ESCR@GOTPCREL(%rip), %rsi
	addl	(%rsi), %eax
	cmpl	%eax, %edx
	jl	.L13
.L14:
	imulq	$232, %rdx, %rdx
	leaq	.LC1(%rip), %rdi
	addq	RS@GOTPCREL(%rip), %rdx
	movq	224(%rdx), %rsi
	call	muestra_fase@PLT
.L13:
	movl	(%rbx), %edx
	addl	$1, %r14d
	addq	$32, %r13
	cmpl	%r14d, %edx
	jg	.L15
.L9:
	movq	TAM_REGISTROS@GOTPCREL(%rip), %rax
	movslq	(%rax), %rdi
	testl	%edi, %edi
	jle	.L49
	movq	Rfp@GOTPCREL(%rip), %r9
	leal	-1(%rdi), %esi
	movq	Rint@GOTPCREL(%rip), %r8
	salq	$4, %rsi
	leaq	8(%r9), %rax
	leaq	24(%r9,%rsi), %rsi
	leaq	8(%r8), %rcx
	.p2align 4,,15
.L19:
	movl	$512, (%rax)
	addq	$16, %rax
	movl	$512, (%rcx)
	addq	$16, %rcx
	cmpq	%rsi, %rax
	jne	.L19
.L20:
	movl	(%r15), %ecx
	salq	$4, %rdi
	movl	$512, 8(%r8,%rdi)
	testl	%ecx, %ecx
	jle	.L18
	movq	RS@GOTPCREL(%rip), %rax
	leal	-1(%rcx), %ecx
	addq	$1, %rcx
	imulq	$232, %rcx, %rcx
	addq	%rax, %rcx
	.p2align 4,,15
.L25:
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	je	.L23
	movl	184(%rax), %edi
	testl	%edi, %edi
	jne	.L24
.L23:
	movl	$0, (%rax)
.L24:
	addq	$232, %rax
	cmpq	%rcx, %rax
	jne	.L25
.L18:
	testl	%edx, %edx
	jle	.L22
	movq	Op@GOTPCREL(%rip), %rax
	leal	-1(%rdx), %edx
	addq	$1, %rdx
	salq	$5, %rdx
	addq	%rax, %rdx
	jmp	.L30
	.p2align 4,,7
	.p2align 3
.L29:
	movl	$0, (%rax)
.L28:
	addq	$32, %rax
	cmpq	%rax, %rdx
	je	.L22
.L30:
	movl	(%rax), %esi
	testl	%esi, %esi
	je	.L28
	cmpl	$3, 4(%rax)
	jne	.L29
	movslq	8(%rax), %rcx
	imulq	$232, %rcx, %rcx
	addq	RS@GOTPCREL(%rip), %rcx
	movl	184(%rcx), %ecx
	testl	%ecx, %ecx
	je	.L29
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.L30
	.p2align 4,,15
.L22:
	movslq	(%r12), %rax
	leaq	0(,%rax,8), %rdx
	salq	$6, %rax
	subq	%rdx, %rax
	addq	8(%rsp), %rax
	cmpq	$0, 24(%rax)
	jne	.L50
	movq	40(%rax), %rdx
	addq	$4, %rdx
.L31:
	movq	Control_1@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movl	$1, 12(%rax)
	movl	$0, 16(%rax)
	movl	0(%rbp), %eax
	testl	%eax, %eax
	jle	.L34
	movq	8(%rsp), %rbx
	leal	-1(%rax), %eax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	salq	$6, %rax
	subq	%rdx, %rax
	addq	%rbx, %rax
	.p2align 4,,15
.L33:
	movl	$0, (%rbx)
	addq	$56, %rbx
	movl	$0, -20(%rbx)
	cmpq	%rax, %rbx
	jne	.L33
.L34:
	movq	RB_long@GOTPCREL(%rip), %rax
	movl	$0, (%r12)
	movl	$0, (%rax)
	movq	RB_fin@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	leaq	24(%rsp), %rsp
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
.L50:
	.cfi_restore_state
	movq	16(%rax), %rdx
	jmp	.L31
.L49:
	movq	Rint@GOTPCREL(%rip), %r8
	jmp	.L20
.L48:
	movq	RB_inicio@GOTPCREL(%rip), %r12
	jmp	.L7
	.cfi_endproc
.LFE42:
	.size	cancelar_instrucciones, .-cancelar_instrucciones
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.str1.1
.LC3:
	.string	"C"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"Ciclo %lu: Acceso a memoria de instrucciones ilegal\n"
	.align 8
.LC5:
	.string	"Ciclo %lu: Acceso a memoria de datos ilegal (%s) [%lld]\n"
	.align 8
.LC6:
	.string	"Ciclo %lu: Acceso desalineado a la memoria de datos\n"
	.align 8
.LC7:
	.string	"Ciclo %lu: El programa est\303\241 terminando normalmente\n"
	.section	.rodata.str1.1
.LC8:
	.string	"Excepci\303\263n no manejada\n"
.LC9:
	.string	"<font color=\"red\">C</font>"
.LC10:
	.string	"f_confirmacion.c"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"ERROR (%s:%d): Operacion no implementada\n"
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	fase_COM
	.type	fase_COM, @function
fase_COM:
.LFB43:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	-144(%rsp), %rsp
	.cfi_def_cfa_offset 192
	movq	terminando@GOTPCREL(%rip), %rbp
	movq	RB_inicio@GOTPCREL(%rip), %rbx
	movq	RB_cab@GOTPCREL(%rip), %rdx
	movl	0(%rbp), %esi
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movslq	(%rbx), %rax
	testl	%esi, %esi
	movl	%eax, (%rdx)
	jne	.L51
	movq	RB@GOTPCREL(%rip), %r12
	movq	%rax, %rdx
	salq	$6, %rdx
	leaq	0(,%rax,8), %rcx
	subq	%rcx, %rdx
	addq	%r12, %rdx
	movl	(%rdx), %ecx
	testl	%ecx, %ecx
	je	.L51
	cmpl	$2, 8(%rdx)
	je	.L53
	movl	4(%rdx), %edx
	cmpl	$65, %edx
	je	.L77
	cmpl	$142, %edx
	je	.L77
	.p2align 4,,15
.L51:
	movq	136(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L92
	leaq	144(%rsp), %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,7
	.p2align 3
.L77:
	.cfi_restore_state
	movq	%rax, %rdx
	leaq	0(,%rax,8), %rcx
	salq	$6, %rdx
	subq	%rcx, %rdx
	imulq	$232, 16(%r12,%rdx), %rdx
	addq	RS@GOTPCREL(%rip), %rdx
	cmpl	$1, 188(%rdx)
	jne	.L51
.L53:
	leaq	0(,%rax,8), %rdx
	leaq	.LC3(%rip), %rdi
	salq	$6, %rax
	subq	%rdx, %rax
	movq	48(%r12,%rax), %rsi
	call	muestra_fase@PLT
	movslq	(%rbx), %rcx
	movq	estat@GOTPCREL(%rip), %r13
	movq	%rcx, %rdx
	leaq	0(,%rcx,8), %rsi
	salq	$6, %rdx
	addq	$1, 8(%r13)
	subq	%rsi, %rdx
	movq	%rcx, %rax
	addq	%r12, %rdx
	movl	4(%rdx), %esi
	cmpl	$65, %esi
	je	.L55
	cmpl	$142, %esi
	je	.L55
	movl	36(%rdx), %edx
.L56:
	cmpl	$32, %edx
	ja	.L57
	leaq	.L59(%rip), %rsi
	movslq	(%rsi,%rdx,4), %rdx
	addq	%rdx, %rsi
	jmp	*%rsi
	.section	.rodata
	.align 4
	.align 4
.L59:
	.long	.L58-.L59
	.long	.L60-.L59
	.long	.L61-.L59
	.long	.L57-.L59
	.long	.L62-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L57-.L59
	.long	.L63-.L59
	.text
	.p2align 4,,7
	.p2align 3
.L63:
	movq	Ciclo@GOTPCREL(%rip), %rax
	leaq	.LC7(%rip), %rdx
	movq	(%rax), %rcx
.L88:
	movq	stderr@GOTPCREL(%rip), %rax
	movl	$1, %esi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.L89:
	movslq	(%rbx), %rcx
	movq	%rcx, %rdx
	leaq	0(,%rcx,8), %rsi
	salq	$6, %rdx
	movq	%rcx, %rax
	subq	%rsi, %rdx
	movl	36(%r12,%rdx), %edx
	testl	%edx, %edx
	je	.L58
	leaq	0(,%rcx,8), %rax
	leaq	.LC9(%rip), %rdi
	salq	$6, %rcx
	movl	$1, 0(%rbp)
	subq	%rax, %rcx
	leaq	(%r12,%rcx), %rax
	movq	48(%rax), %rsi
	movl	$1, 4(%rax)
	call	muestra_fase@PLT
	movslq	(%rbx), %rcx
	movq	%rcx, %rax
.L58:
	movq	%rcx, %rdx
	leaq	0(,%rcx,8), %rsi
	salq	$6, %rdx
	subq	%rsi, %rdx
	addq	%r12, %rdx
	cmpl	$149, 4(%rdx)
	ja	.L65
	movl	4(%rdx), %esi
	leaq	.L67(%rip), %rdx
	movslq	(%rdx,%rsi,4), %rsi
	addq	%rsi, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L67:
	.long	.L66-.L67
	.long	.L68-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L69-.L67
	.long	.L70-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L69-.L67
	.long	.L69-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L69-.L67
	.long	.L69-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L71-.L67
	.long	.L71-.L67
	.long	.L71-.L67
	.long	.L71-.L67
	.long	.L71-.L67
	.long	.L71-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L72-.L67
	.long	.L70-.L67
	.long	.L72-.L67
	.long	.L72-.L67
	.long	.L72-.L67
	.long	.L72-.L67
	.long	.L65-.L67
	.long	.L69-.L67
	.long	.L69-.L67
	.text
	.p2align 4,,7
	.p2align 3
.L71:
	movq	%rcx, %rdi
	leaq	0(,%rcx,8), %rdx
	salq	$6, %rdi
	subq	%rdx, %rdi
	addq	%r12, %rdi
	movl	36(%rdi), %edx
	testl	%edx, %edx
	je	.L93
.L73:
	movq	%rcx, %rdx
	leaq	0(,%rcx,8), %rsi
	salq	$6, %rdx
	subq	%rsi, %rdx
	movslq	32(%r12,%rdx), %rsi
	cmpq	24(%r12,%rdx), %rsi
	jne	.L74
	addq	$1, 48(%r13)
	.p2align 4,,15
.L66:
	leaq	0(,%rcx,8), %rdx
	addl	$1, %eax
	movq	TAM_REORDER@GOTPCREL(%rip), %rdi
	salq	$6, %rcx
	subq	%rdx, %rcx
	movl	%eax, %edx
	sarl	$31, %edx
	addq	%rcx, %r12
	idivl	(%rdi)
	movq	RB_long@GOTPCREL(%rip), %rax
	movl	$0, (%r12)
	movl	$0, 36(%r12)
	subl	$1, (%rax)
	movl	%edx, (%rbx)
	jmp	.L51
	.p2align 4,,7
	.p2align 3
.L55:
	movq	%rcx, %rsi
	leaq	0(,%rcx,8), %rdx
	salq	$6, %rsi
	subq	%rdx, %rsi
	addq	%r12, %rsi
	imulq	$232, 16(%rsi), %rdx
	addq	RS@GOTPCREL(%rip), %rdx
	movl	212(%rdx), %edx
	movl	%edx, 36(%rsi)
	jmp	.L56
	.p2align 4,,7
	.p2align 3
.L62:
	movq	Ciclo@GOTPCREL(%rip), %rax
	leaq	.LC6(%rip), %rdx
	movq	(%rax), %rcx
	jmp	.L88
	.p2align 4,,7
	.p2align 3
.L61:
	leaq	0(,%rcx,8), %rax
	xorl	%edx, %edx
	salq	$6, %rcx
	movq	%rsp, %rdi
	subq	%rax, %rcx
	movq	40(%r12,%rcx), %rsi
	call	imprime_instruccion_color@PLT
	movslq	(%rbx), %rax
	movq	%rsp, %r8
	movl	$1, %esi
	leaq	0(,%rax,8), %rdx
	salq	$6, %rax
	subq	%rdx, %rax
	leaq	.LC5(%rip), %rdx
	movq	16(%r12,%rax), %r9
	movq	Ciclo@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	jmp	.L89
	.p2align 4,,7
	.p2align 3
.L60:
	movq	Ciclo@GOTPCREL(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movq	(%rax), %rcx
	jmp	.L88
	.p2align 4,,7
	.p2align 3
.L72:
	movq	%rcx, %rsi
	leaq	0(,%rcx,8), %rdx
	salq	$6, %rsi
	subq	%rdx, %rsi
	addq	%r12, %rsi
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rsi
	salq	$4, %rdx
	addq	Rfp@GOTPCREL(%rip), %rdx
	movq	%rsi, (%rdx)
	cmpl	%eax, 8(%rdx)
	jne	.L66
.L90:
	movl	$512, 8(%rdx)
	jmp	.L66
	.p2align 4,,7
	.p2align 3
.L70:
	movq	%rcx, %rdx
	leaq	0(,%rcx,8), %rsi
	salq	$6, %rdx
	subq	%rsi, %rdx
	imulq	$232, 16(%r12,%rdx), %rdx
	addq	RS@GOTPCREL(%rip), %rdx
	movl	$1, 184(%rdx)
	jmp	.L66
	.p2align 4,,7
	.p2align 3
.L69:
	movq	%rcx, %rsi
	leaq	0(,%rcx,8), %rdx
	salq	$6, %rsi
	movq	Rint@GOTPCREL(%rip), %rdi
	subq	%rdx, %rsi
	addq	%r12, %rsi
	movq	16(%rsi), %rdx
	testq	%rdx, %rdx
	je	.L75
	movq	24(%rsi), %rsi
	movq	%rdx, %r8
	salq	$4, %r8
	movq	%rsi, (%rdi,%r8)
.L75:
	salq	$4, %rdx
	addq	%rdi, %rdx
	cmpl	%eax, 8(%rdx)
	jne	.L66
	jmp	.L90
	.p2align 4,,7
	.p2align 3
.L68:
	call	cancelar_instrucciones@PLT
	movslq	(%rbx), %rcx
	movq	%rcx, %rax
	.p2align 4,,2
	jmp	.L66
	.p2align 4,,7
	.p2align 3
.L57:
	movq	stderr@GOTPCREL(%rip), %rax
	leaq	.LC8(%rip), %rdi
	movl	$23, %edx
	movl	$1, %esi
	movq	(%rax), %rcx
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,7
	.p2align 3
.L65:
	movq	stderr@GOTPCREL(%rip), %rax
	movl	$256, %r8d
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	movl	$1, %esi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
.L74:
	call	cancelar_instrucciones@PLT
	jmp	.L51
.L93:
	movq	16(%rdi), %rcx
	movl	24(%rdi), %edx
	movq	48(%rdi), %rsi
	movq	40(%rdi), %rdi
	call	actualizar_prediccion@PLT
	movslq	(%rbx), %rcx
	movq	%rcx, %rax
	jmp	.L73
.L92:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE43:
	.size	fase_COM, .-fase_COM
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
