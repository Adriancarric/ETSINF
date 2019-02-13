	.file	"f_transferencia.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"-"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	fase_WB
	.type	fase_WB, @function
fase_WB:
.LFB42:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	TAM_ESTACIONES@GOTPCREL(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	(%r12), %edx
	testl	%edx, %edx
	jle	.L5
	movq	RS@GOTPCREL(%rip), %rbx
	xorl	%ebp, %ebp
	jmp	.L4
	.p2align 4,,7
	.p2align 3
.L3:
	addl	$1, %ebp
	addq	$232, %rbx
	cmpl	%ebp, (%r12)
	jle	.L5
.L4:
	movl	(%rbx), %eax
	testl	%eax, %eax
	je	.L3
	cmpl	$3, 188(%rbx)
	jne	.L3
	movq	224(%rbx), %rsi
	leaq	.LC0(%rip), %rdi
	addl	$1, %ebp
	addq	$232, %rbx
	call	muestra_fase@PLT
	cmpl	%ebp, (%r12)
	jg	.L4
.L5:
	popq	%rbx
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	fase_WB_alum@PLT
	.cfi_endproc
.LFE42:
	.size	fase_WB, .-fase_WB
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
