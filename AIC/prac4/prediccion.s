	.file	"prediccion.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.type	cambia_estado_saturacion.part.0, @function
cambia_estado_saturacion.part.0:
.LFB69:
	.cfi_startproc
	movl	%esi, %ecx
	movl	$1, %eax
	movl	(%rdi), %edx
	sall	%cl, %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jge	.L1
	addl	$1, %edx
	movl	%edx, (%rdi)
.L1:
	ret
	.cfi_endproc
.LFE69:
	.size	cambia_estado_saturacion.part.0, .-cambia_estado_saturacion.part.0
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.type	cambia_estado_histeresis, @function
cambia_estado_histeresis:
.LFB65:
	.cfi_startproc
	testl	%edi, %edi
	je	.L5
	movl	$1, %eax
	leal	-1(%rdx), %ecx
	movl	(%rsi), %edi
	movl	%eax, %r8d
	sall	%cl, %r8d
	movl	%r8d, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %edi
	movl	%edx, %ecx
	je	.L9
	sall	%cl, %eax
	subl	$1, %eax
	cmpl	%eax, %edi
	jge	.L4
	addl	$1, %edi
	movl	%edi, (%rsi)
	ret
	.p2align 4,,7
	.p2align 3
.L5:
	movl	(%rsi), %eax
	leal	-1(%rdx), %ecx
	movl	$1, %edx
	sall	%cl, %edx
	cmpl	%edx, %eax
	je	.L10
	testl	%eax, %eax
	jle	.L4
	subl	$1, %eax
	movl	%eax, (%rsi)
.L4:
	ret
	.p2align 4,,7
	.p2align 3
.L10:
	movl	$0, (%rsi)
	ret
	.p2align 4,,7
	.p2align 3
.L9:
	sall	%cl, %eax
	subl	$1, %eax
	movl	%eax, (%rsi)
	ret
	.cfi_endproc
.LFE65:
	.size	cambia_estado_histeresis, .-cambia_estado_histeresis
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	inicializa_prediccion
	.type	inicializa_prediccion, @function
inicializa_prediccion:
.LFB66:
	.cfi_startproc
	movq	branch_mask_global@GOTPCREL(%rip), %rax
	movl	$64, %edx
	movq	Global@GOTPCREL(%rip), %rdi
	movl	$0, (%rax)
	movq	branch_mask_local@GOTPCREL(%rip), %rax
	testb	$4, %dil
	movl	$0, (%rax)
	jne	.L56
.L12:
	movl	%edx, %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	andl	$4, %edx
	rep stosq
	je	.L15
	movl	$0, (%rdi)
.L15:
	movq	TAM_BUFFER_PREDIC@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L11
	movq	BTB@GOTPCREL(%rip), %rcx
	leal	-1(%rax), %eax
	leaq	(%rax,%rax,2), %rsi
	leaq	(%rax,%rsi,4), %rax
	leaq	24(%rcx), %rdx
	leaq	128(%rcx,%rax,8), %r8
	xorl	%eax, %eax
	jmp	.L23
	.p2align 4,,7
	.p2align 3
.L17:
	testb	$2, %dil
	jne	.L57
.L18:
	testb	$4, %dil
	jne	.L58
.L19:
	movl	%esi, %ecx
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L20
	movl	$0, (%rdi)
	addq	$4, %rdi
.L20:
	testb	$2, %sil
	je	.L21
	movw	$0, (%rdi)
	addq	$2, %rdi
.L21:
	andl	$1, %esi
	je	.L22
	movb	$0, (%rdi)
.L22:
	movq	$0, -8(%rdx)
	addq	$104, %rdx
	movl	$0, -40(%rdx)
	movq	$0, -32(%rdx)
	cmpq	%r8, %rdx
	je	.L11
.L23:
	testb	$1, %dl
	movq	%rdx, %rdi
	movq	$-1, -24(%rdx)
	movl	$64, %esi
	movl	$0, -16(%rdx)
	je	.L17
	leaq	1(%rdx), %rdi
	movl	$63, %esi
	movb	$0, (%rdx)
	testb	$2, %dil
	je	.L18
	.p2align 4,,15
.L57:
	movw	$0, (%rdi)
	addq	$2, %rdi
	subl	$2, %esi
	testb	$4, %dil
	je	.L19
	.p2align 4,,15
.L58:
	movl	$0, (%rdi)
	subl	$4, %esi
	addq	$4, %rdi
	jmp	.L19
	.p2align 4,,7
	.p2align 3
.L11:
	ret
.L56:
	movl	$0, (%rdi)
	movl	$60, %edx
	addq	$4, %rdi
	jmp	.L12
	.cfi_endproc
.LFE66:
	.size	inicializa_prediccion, .-inicializa_prediccion
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"%llu %ld %d %ld\n"
.LC4:
	.string	" Final de la traza\n"
.LC5:
	.string	"prediccion.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"ERROR (%s:%d): Predictor no implementado\n"
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	obtener_prediccion
	.type	obtener_prediccion, @function
obtener_prediccion:
.LFB67:
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
	movq	tipo_predictor@GOTPCREL(%rip), %r14
	movl	(%r14), %r9d
	cmpl	$10, %r9d
	je	.L96
	leal	-8(%r9), %eax
	movq	%rcx, %r13
	cmpl	$1, %eax
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	jbe	.L61
.L62:
	movq	TAM_BUFFER_PREDIC@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L96
	movq	n_bits_pred_local@GOTPCREL(%rip), %rax
	movq	BTB@GOTPCREL(%rip), %rsi
	movl	(%rax), %ecx
	movl	$1, %eax
	movl	%eax, %r14d
	movl	%eax, %r11d
	leaq	16(%rsi), %r8
	subl	$1, %ecx
	sall	%cl, %r14d
	movq	n_bits_pred_global@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	sall	%cl, %r11d
	movq	n_bits_pred_hybrid@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	sall	%cl, %eax
	movl	%eax, %ecx
	leal	-1(%rdx), %eax
	leaq	(%rax,%rax,2), %rdx
	leaq	(%rax,%rdx,4), %rax
	leaq	.L80(%rip), %rdx
	leaq	120(%rsi,%rax,8), %rdi
	xorl	%eax, %eax
	movq	branch_mask_local@GOTPCREL(%rip), %rsi
	movslq	(%rsi), %r10
	movq	branch_mask_global@GOTPCREL(%rip), %rsi
	movslq	(%rsi), %rsi
	jmp	.L92
	.p2align 4,,7
	.p2align 3
.L77:
	addq	$104, %r8
	cmpq	%rdi, %r8
	je	.L106
.L92:
	cmpq	-16(%r8), %rbx
	jne	.L77
	movq	estat@GOTPCREL(%rip), %rax
	movq	%rbp, 80(%r8)
	addq	$1, 32(%rax)
	cmpl	$7, %r9d
	ja	.L78
	movl	%r9d, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L80:
	.long	.L79-.L80
	.long	.L81-.L80
	.long	.L81-.L80
	.long	.L82-.L80
	.long	.L82-.L80
	.long	.L83-.L80
	.long	.L84-.L80
	.long	.L84-.L80
	.text
.L116:
	testl	%esi, %esi
	je	.L70
	movq	estat@GOTPCREL(%rip), %rax
	addq	$1, 32(%rax)
	movq	cond1@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L75
	addq	$4, %rdx
	xorl	%eax, %eax
	movl	$0, (%r12)
	movq	%rdx, 0(%r13)
.L76:
	movq	pred2@GOTPCREL(%rip), %rdx
	movq	%rbp, (%r10)
	movq	%rax, (%rdx)
	movq	0(%r13), %rdx
	movq	dest2@GOTPCREL(%rip), %rax
	movl	$1, (%r15)
	movq	%rdx, (%rax)
	movl	$1, %eax
.L106:
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
	.p2align 4,,7
	.p2align 3
.L83:
	.cfi_restore_state
	cmpl	$3, -8(%r8)
	je	.L112
.L108:
	movl	$0, (%r12)
	movl	$1, %eax
	jmp	.L77
	.p2align 4,,7
	.p2align 3
.L82:
	cmpl	%r14d, 8(%r8,%r10,4)
	jl	.L108
.L112:
	movq	(%r8), %rax
	movl	$1, (%r12)
	movq	%rax, 0(%r13)
	movl	$1, %eax
	jmp	.L77
	.p2align 4,,7
	.p2align 3
.L81:
	movq	Global@GOTPCREL(%rip), %rax
	cmpl	%r11d, (%rax,%rsi,4)
	jl	.L108
	jmp	.L112
	.p2align 4,,7
	.p2align 3
.L79:
	xorl	%r15d, %r15d
	cmpl	8(%r8,%r10,4), %r14d
	jg	.L89
	movq	(%r8), %rax
	movl	$1, %r15d
	movq	%rax, (%rsp)
.L89:
	movq	Global@GOTPCREL(%rip), %rax
	cmpl	(%rax,%rsi,4), %r11d
	jle	.L113
	cmpl	72(%r8), %ecx
	jg	.L108
.L93:
	testl	%r15d, %r15d
	movl	$1, %eax
	movl	%r15d, (%r12)
	je	.L77
	movq	(%rsp), %r15
	movq	%r15, 0(%r13)
	jmp	.L77
	.p2align 4,,7
	.p2align 3
.L84:
	movl	-8(%r8), %eax
	subl	$2, %eax
	cmpl	$1, %eax
	ja	.L108
	jmp	.L112
	.p2align 4,,7
	.p2align 3
.L78:
	movq	stderr@GOTPCREL(%rip), %rax
	movl	$360, %r8d
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	movl	$1, %esi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,7
	.p2align 3
.L61:
	movq	fase_ejecucion@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L114
.L96:
	leaq	24(%rsp), %rsp
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
	ret
	.p2align 4,,7
	.p2align 3
.L113:
	.cfi_restore_state
	cmpl	72(%r8), %ecx
	jle	.L93
	movq	(%r8), %rax
	movl	$1, (%r12)
	movq	%rax, 0(%r13)
	movl	$1, %eax
	jmp	.L77
	.p2align 4,,7
	.p2align 3
.L114:
	cmpl	$1, %eax
	jne	.L62
	movq	orden2@GOTPCREL(%rip), %r10
	cmpq	%rsi, (%r10)
	je	.L65
	movq	leer_sig_traza@GOTPCREL(%rip), %r15
	cmpl	$1, (%r15)
	je	.L107
	movq	PC1@GOTPCREL(%rip), %r11
.L66:
	movq	(%r11), %rdx
	cmpq	%rbx, %rdx
	je	.L115
	movl	$0, (%r15)
	xorl	%eax, %eax
	jmp	.L106
.L115:
	cmpl	$8, (%r14)
	je	.L68
	movq	TAM_BUFFER_PREDIC@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jle	.L70
	movq	BTB@GOTPCREL(%rip), %rax
	leal	-1(%rcx), %ecx
	addq	$1, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	leaq	(%rcx,%rsi,4), %rcx
	xorl	%esi, %esi
	leaq	(%rax,%rcx,8), %rcx
	jmp	.L74
	.p2align 4,,7
	.p2align 3
.L73:
	addq	$104, %rax
	cmpq	%rcx, %rax
	je	.L116
.L74:
	cmpq	(%rax), %rdx
	jne	.L73
	movq	%rbp, 96(%rax)
	movl	$1, %esi
	jmp	.L73
.L65:
	movq	pred2@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	%eax, (%rdx)
	movq	dest2@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movl	$1, %eax
	jmp	.L106
.L107:
	movq	f_trace@GOTPCREL(%rip), %rax
	leaq	.LC3(%rip), %rsi
	movq	PC1@GOTPCREL(%rip), %r11
	movq	dest1@GOTPCREL(%rip), %r9
	movq	cond1@GOTPCREL(%rip), %r8
	movq	orden1@GOTPCREL(%rip), %rdx
	movq	%r11, %rcx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	movq	%r10, 8(%rsp)
	movq	%r11, (%rsp)
	call	__isoc99_fscanf@PLT
	movq	(%rsp), %r11
	testl	%eax, %eax
	movq	8(%rsp), %r10
	jne	.L66
	movq	stdout@GOTPCREL(%rip), %rax
	movl	$19, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	movq	(%rax), %rcx
	call	fwrite@PLT
	xorl	%eax, %eax
	jmp	.L106
.L75:
	movq	dest1@GOTPCREL(%rip), %rax
	movl	$1, (%r12)
	movq	(%rax), %rax
	movq	%rax, 0(%r13)
	movl	$1, %eax
	jmp	.L76
.L70:
	movl	$1, (%r15)
	xorl	%eax, %eax
	jmp	.L106
.L68:
	movq	estat@GOTPCREL(%rip), %rax
	addq	$1, 32(%rax)
	movq	cond1@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	.L75
	addq	$4, %rbx
	xorl	%eax, %eax
	movl	$0, (%r12)
	movq	%rbx, 0(%r13)
	jmp	.L76
	.cfi_endproc
.LFE67:
	.size	obtener_prediccion, .-obtener_prediccion
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.rodata.str1.1
.LC8:
	.string	"%lu %ld %d %ld\n"
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	actualizar_prediccion
	.type	actualizar_prediccion, @function
actualizar_prediccion:
.LFB68:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	-104(%rsp), %rsp
	.cfi_def_cfa_offset 160
	movq	tipo_predictor@GOTPCREL(%rip), %rbx
	movq	%rsi, 24(%rsp)
	movl	(%rbx), %eax
	leal	-8(%rax), %edx
	cmpl	$1, %edx
	jbe	.L206
.L118:
	movl	%eax, %edx
	andl	$-3, %edx
	cmpl	$8, %edx
	je	.L207
	movq	estat@GOTPCREL(%rip), %rdx
	movq	TAM_BUFFER_PREDIC@GOTPCREL(%rip), %r8
	addq	$1, 40(%rdx)
	movl	(%r8), %edx
	testl	%edx, %edx
	jle	.L172
	cmpl	$1, %r12d
	movl	$-1, %ebp
	movabsq	$9223372036854775807, %r11
	leaq	.L125(%rip), %r13
	sbbl	%eax, %eax
	addl	$3, %eax
	cmpl	$1, %r12d
	movl	%eax, 36(%rsp)
	sbbl	%eax, %eax
	notl	%eax
	andl	$2, %eax
	cmpl	$1, %r12d
	movl	%eax, 40(%rsp)
	sbbl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	andl	$-2, %eax
	addl	$3, %eax
	movl	%eax, 44(%rsp)
	movq	BTB@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	88(%rax), %r9
	jmp	.L161
	.p2align 4,,7
	.p2align 3
.L122:
	movq	8(%r9), %rax
	cmpq	%r11, %rax
	jnb	.L160
	movl	%r10d, %ebp
	movq	%rax, %r11
.L160:
	addl	$1, %r10d
	addq	$104, %r9
	cmpl	%r10d, (%r8)
	jle	.L208
.L161:
	cmpq	-88(%r9), %r15
	jne	.L122
	movq	%r14, -72(%r9)
	cmpl	$9, (%rbx)
	ja	.L123
	movl	(%rbx), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L125:
	.long	.L124-.L125
	.long	.L126-.L125
	.long	.L127-.L125
	.long	.L128-.L125
	.long	.L129-.L125
	.long	.L130-.L125
	.long	.L131-.L125
	.long	.L132-.L125
	.long	.L123-.L125
	.long	.L130-.L125
	.text
	.p2align 4,,7
	.p2align 3
.L132:
	movl	-80(%r9), %eax
	cmpl	$1, %eax
	je	.L143
	jb	.L144
	cmpl	$2, %eax
	je	.L145
	cmpl	$3, %eax
	.p2align 4,,5
	jne	.L195
	movl	36(%rsp), %eax
	movl	$1, %edx
	movl	%eax, -80(%r9)
	jmp	.L122
	.p2align 4,,7
	.p2align 3
.L131:
	movl	-80(%r9), %eax
	testl	%r12d, %r12d
	je	.L134
	cmpl	$1, %eax
	je	.L135
	jb	.L136
	cmpl	$2, %eax
	.p2align 4,,5
	je	.L135
	cmpl	$3, %eax
	.p2align 4,,5
	jne	.L195
	.p2align 4,,15
.L135:
	movl	$3, -80(%r9)
	movl	$1, %edx
	jmp	.L122
	.p2align 4,,7
	.p2align 3
.L130:
	testl	%r12d, %r12d
	jne	.L135
.L140:
	movl	$0, -80(%r9)
	movl	$1, %edx
	jmp	.L122
	.p2align 4,,7
	.p2align 3
.L129:
	movq	branch_mask_local@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rdi
	movq	%r8, 48(%rsp)
	movslq	(%rax), %rdx
	movslq	%r10d, %rax
	leaq	(%rax,%rax,2), %rcx
	leaq	(%rax,%rcx,4), %rax
	leaq	4(%rdx,%rax,2), %rax
	leaq	8(%rdi,%rax,4), %rsi
	movq	n_bits_pred_local@GOTPCREL(%rip), %rax
.L203:
	movl	(%rax), %edx
	movl	%r12d, %edi
	call	cambia_estado_histeresis
	movq	48(%rsp), %r8
	movl	$1, %edx
	jmp	.L122
	.p2align 4,,7
	.p2align 3
.L128:
	movq	branch_mask_local@GOTPCREL(%rip), %rax
	testl	%r12d, %r12d
	movslq	(%rax), %rax
	jne	.L209
	movslq	%r10d, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	leaq	(%rdx,%rcx,4), %rdx
	leaq	4(%rax,%rdx,2), %rdx
	movq	16(%rsp), %rax
	movl	8(%rax,%rdx,4), %eax
	testl	%eax, %eax
	jle	.L195
	movq	16(%rsp), %rdi
	subl	$1, %eax
	movl	%eax, 8(%rdi,%rdx,4)
	movl	$1, %edx
	jmp	.L122
	.p2align 4,,7
	.p2align 3
.L127:
	movq	branch_mask_global@GOTPCREL(%rip), %rax
	movq	%r8, 48(%rsp)
	movslq	(%rax), %rdx
	movq	Global@GOTPCREL(%rip), %rax
	leaq	(%rax,%rdx,4), %rsi
.L202:
	movq	n_bits_pred_global@GOTPCREL(%rip), %rax
	jmp	.L203
	.p2align 4,,7
	.p2align 3
.L126:
	movq	branch_mask_global@GOTPCREL(%rip), %rax
	testl	%r12d, %r12d
	movslq	(%rax), %rax
	jne	.L210
	movq	Global@GOTPCREL(%rip), %rcx
	movl	(%rcx,%rax,4), %edx
	testl	%edx, %edx
	jle	.L195
	subl	$1, %edx
	movl	%edx, (%rcx,%rax,4)
	movl	$1, %edx
	jmp	.L122
	.p2align 4,,7
	.p2align 3
.L124:
	movq	n_bits_pred_local@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, 76(%rsp)
	movl	%eax, %esi
	movq	branch_mask_local@GOTPCREL(%rip), %rax
	leal	-1(%rsi), %ecx
	movl	$1, %esi
	movslq	(%rax), %rdi
	movslq	%r10d, %rax
	leaq	(%rax,%rax,2), %rdx
	leaq	(%rax,%rdx,4), %rdx
	movq	%rdi, 48(%rsp)
	leaq	4(%rdi,%rdx,2), %rdx
	movl	%esi, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	movq	16(%rsp), %rdi
	cmpl	%ecx, 8(%rdi,%rdx,4)
	movq	branch_mask_global@GOTPCREL(%rip), %rcx
	setge	%dil
	movslq	(%rcx), %rdx
	movzbl	%dil, %edi
	movq	%rcx, 64(%rsp)
	movq	n_bits_pred_global@GOTPCREL(%rip), %rcx
	movl	%edi, 56(%rsp)
	movl	(%rcx), %ecx
	movl	%ecx, 72(%rsp)
	subl	$1, %ecx
	sall	%cl, %esi
	movq	Global@GOTPCREL(%rip), %rcx
	cmpl	%esi, (%rcx,%rdx,4)
	setge	%cl
	cmpl	%edi, %r12d
	movzbl	%cl, %ecx
	jne	.L151
	cmpl	%ecx, %r12d
	je	.L151
	movq	n_bits_pred_hybrid@GOTPCREL(%rip), %rsi
	movq	%r9, %rdi
	movq	%r8, 88(%rsp)
	movq	%rax, 80(%rsp)
	movl	(%rsi), %esi
	movl	%ecx, 72(%rsp)
	call	cambia_estado_saturacion.part.0
	movq	n_bits_pred_local@GOTPCREL(%rip), %rax
	movq	88(%rsp), %r8
	movl	72(%rsp), %ecx
	movl	(%rax), %eax
	movl	%eax, 76(%rsp)
	movq	branch_mask_local@GOTPCREL(%rip), %rax
	movslq	(%rax), %rax
	movq	%rax, 48(%rsp)
	movq	80(%rsp), %rax
.L151:
	cmpl	56(%rsp), %r12d
	je	.L152
	cmpl	%ecx, %r12d
	jne	.L152
	movl	(%r9), %edx
	testl	%edx, %edx
	jle	.L152
	subl	$1, %edx
	movl	%edx, (%r9)
.L152:
	movq	subtipo_pred_local@GOTPCREL(%rip), %rdx
	cmpb	$104, (%rdx)
	je	.L211
	testl	%r12d, %r12d
	jne	.L212
	movq	48(%rsp), %rsi
	leaq	(%rax,%rax,2), %rdx
	movq	16(%rsp), %rdi
	leaq	(%rax,%rdx,4), %rax
	leaq	4(%rsi,%rax,2), %rdx
	movl	8(%rdi,%rdx,4), %eax
	testl	%eax, %eax
	jle	.L158
	subl	$1, %eax
	movl	%eax, 8(%rdi,%rdx,4)
.L158:
	movq	subtipo_pred_global@GOTPCREL(%rip), %rax
	cmpb	$104, (%rax)
	je	.L154
	movq	64(%rsp), %rax
	movslq	(%rax), %rax
.L159:
	movq	Global@GOTPCREL(%rip), %rdi
	movl	(%rdi,%rax,4), %edx
	testl	%edx, %edx
	jle	.L195
	subl	$1, %edx
	movl	%edx, (%rdi,%rax,4)
	movl	$1, %edx
	jmp	.L122
	.p2align 4,,7
	.p2align 3
.L123:
	movq	stderr@GOTPCREL(%rip), %rax
	movl	$566, %r8d
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	movl	$1, %esi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,7
	.p2align 3
.L207:
	movq	estat@GOTPCREL(%rip), %rax
	addq	$1, 40(%rax)
	leaq	104(%rsp), %rsp
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
.L208:
	.cfi_restore_state
	testl	%edx, %edx
	je	.L213
.L205:
	movq	branch_mask_local@GOTPCREL(%rip), %r8
	movq	branch_mask_global@GOTPCREL(%rip), %rdi
	movl	(%r8), %edx
	movl	(%rdi), %eax
.L163:
	movq	n_bits_branch_mask_local@GOTPCREL(%rip), %rcx
	movl	$1, %esi
	movl	%esi, %ebx
	addl	%edx, %edx
	orl	%r12d, %edx
	addl	%eax, %eax
	movl	(%rcx), %ecx
	orl	%r12d, %eax
	sall	%cl, %ebx
	movl	%ebx, %ecx
	subl	$1, %ecx
	andl	%ecx, %edx
	movl	%edx, (%r8)
	movq	n_bits_branch_mask_global@GOTPCREL(%rip), %rdx
	movl	(%rdx), %ecx
	sall	%cl, %esi
	subl	$1, %esi
	andl	%esi, %eax
	movl	%eax, (%rdi)
	leaq	104(%rsp), %rsp
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
.L206:
	.cfi_restore_state
	movq	fase_ejecucion@GOTPCREL(%rip), %rdx
	movl	(%rdx), %ecx
	testl	%ecx, %ecx
	jne	.L118
	movq	f_trace@GOTPCREL(%rip), %rax
	movq	%rdi, %r8
	movq	%r14, (%rsp)
	movq	%rsi, %rcx
	movl	%r12d, %r9d
	leaq	.LC8(%rip), %rdx
	movq	(%rax), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	(%rbx), %eax
	jmp	.L118
	.p2align 4,,7
	.p2align 3
.L213:
	movl	(%rbx), %eax
.L121:
	movslq	%ebp, %rsi
	cmpl	$4, %eax
	movq	16(%rsp), %rbx
	leaq	(%rsi,%rsi,2), %rdx
	leaq	(%rsi,%rdx,4), %rcx
	leaq	(%rbx,%rcx,8), %rdx
	movq	24(%rsp), %rbx
	movq	%r15, (%rdx)
	movq	%r14, 16(%rdx)
	movq	%rbx, 96(%rdx)
	jbe	.L165
	cmpl	$7, %eax
	ja	.L205
	testl	%r12d, %r12d
	je	.L167
	movl	$3, 8(%rdx)
	jmp	.L205
	.p2align 4,,7
	.p2align 3
.L134:
	cmpl	$1, %eax
	je	.L140
	jb	.L140
	cmpl	$2, %eax
	.p2align 4,,5
	je	.L140
	cmpl	$3, %eax
	.p2align 4,,5
	jne	.L195
	movl	$2, -80(%r9)
	movl	$1, %edx
	jmp	.L122
.L210:
	movq	Global@GOTPCREL(%rip), %rdx
	movq	%r8, 48(%rsp)
	leaq	(%rdx,%rax,4), %rdi
	movq	n_bits_pred_global@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	call	cambia_estado_saturacion.part.0
	movq	48(%rsp), %r8
	movl	$1, %edx
	jmp	.L122
.L209:
	movq	16(%rsp), %rdi
	movslq	%r10d, %rdx
	movq	%r8, 48(%rsp)
	leaq	(%rdx,%rdx,2), %rcx
	leaq	(%rdx,%rcx,4), %rdx
	leaq	4(%rax,%rdx,2), %rax
	leaq	8(%rdi,%rax,4), %rdi
	movq	n_bits_pred_local@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	call	cambia_estado_saturacion.part.0
	movq	48(%rsp), %r8
	movl	$1, %edx
	jmp	.L122
.L212:
	movq	48(%rsp), %rsi
	leaq	(%rax,%rax,2), %rdx
	movq	16(%rsp), %rdi
	leaq	(%rax,%rdx,4), %rax
	movq	%r8, 56(%rsp)
	leaq	4(%rsi,%rax,2), %rax
	movl	76(%rsp), %esi
	leaq	8(%rdi,%rax,4), %rdi
	call	cambia_estado_saturacion.part.0
	movq	subtipo_pred_global@GOTPCREL(%rip), %rax
	movq	56(%rsp), %r8
	cmpb	$104, (%rax)
	je	.L154
	movq	n_bits_pred_global@GOTPCREL(%rip), %rax
	movq	Global@GOTPCREL(%rip), %rdi
	movl	(%rax), %esi
	movq	64(%rsp), %rax
	movslq	(%rax), %rax
	leaq	(%rdi,%rax,4), %rdi
.L170:
	movq	%r8, 48(%rsp)
	call	cambia_estado_saturacion.part.0
	movq	48(%rsp), %r8
	movl	$1, %edx
	jmp	.L122
	.p2align 4,,7
	.p2align 3
.L195:
	movl	$1, %edx
	jmp	.L122
.L165:
	movq	branch_mask_local@GOTPCREL(%rip), %r8
	testl	%r12d, %r12d
	movslq	(%r8), %rax
	movq	%rax, %rdx
	je	.L168
	leaq	4(%rax,%rcx,2), %rdi
	movl	$1, %r9d
	movq	n_bits_pred_local@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rbx
	movl	(%rax), %ecx
	movl	%r9d, %eax
	sall	%cl, %eax
	movq	n_bits_pred_global@GOTPCREL(%rip), %rcx
	subl	$1, %eax
	movl	%eax, 8(%rbx,%rdi,4)
	movq	branch_mask_global@GOTPCREL(%rip), %rdi
	movl	(%rcx), %ecx
	sall	%cl, %r9d
	movslq	(%rdi), %r10
	leal	-1(%r9), %ecx
	movq	Global@GOTPCREL(%rip), %r9
	movq	%r10, %rax
	movl	%ecx, (%r9,%r10,4)
.L169:
	movq	16(%rsp), %rbx
	leaq	(%rsi,%rsi,2), %rcx
	leaq	(%rsi,%rcx,4), %r9
	movl	$1, %esi
	movq	n_bits_pred_hybrid@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	sall	%cl, %esi
	leal	-1(%rsi), %ecx
	movl	%ecx, 88(%rbx,%r9,8)
	jmp	.L163
.L143:
	movl	40(%rsp), %eax
	movl	$1, %edx
	movl	%eax, -80(%r9)
	jmp	.L122
.L167:
	movl	$0, 8(%rdx)
	jmp	.L205
.L168:
	movq	branch_mask_global@GOTPCREL(%rip), %rdi
	leaq	4(%rax,%rcx,2), %rax
	movq	16(%rsp), %rbx
	movq	Global@GOTPCREL(%rip), %rcx
	movslq	(%rdi), %r9
	movl	$0, 8(%rbx,%rax,4)
	movl	$0, (%rcx,%r9,4)
	movq	%r9, %rax
	jmp	.L169
.L145:
	movl	44(%rsp), %eax
	movl	$1, %edx
	movl	%eax, -80(%r9)
	jmp	.L122
.L144:
	xorl	%eax, %eax
	testl	%r12d, %r12d
	setne	%al
	movl	$1, %edx
	movl	%eax, -80(%r9)
	jmp	.L122
.L211:
	movq	48(%rsp), %rsi
	leaq	(%rax,%rax,2), %rdx
	leaq	(%rax,%rdx,4), %rax
	movl	%r12d, %edi
	movl	76(%rsp), %edx
	movq	%r8, 56(%rsp)
	leaq	4(%rsi,%rax,2), %rax
	movq	16(%rsp), %rsi
	leaq	8(%rsi,%rax,4), %rsi
	call	cambia_estado_histeresis
	movq	subtipo_pred_global@GOTPCREL(%rip), %rax
	movq	56(%rsp), %r8
	cmpb	$104, (%rax)
	je	.L154
	movq	64(%rsp), %rax
	testl	%r12d, %r12d
	movslq	(%rax), %rax
	je	.L159
	movq	n_bits_pred_global@GOTPCREL(%rip), %rsi
	movq	Global@GOTPCREL(%rip), %rdi
	movl	(%rsi), %esi
	leaq	(%rdi,%rax,4), %rdi
	jmp	.L170
.L154:
	movq	64(%rsp), %rax
	movq	Global@GOTPCREL(%rip), %rsi
	movq	%r8, 48(%rsp)
	movslq	(%rax), %rax
	leaq	(%rsi,%rax,4), %rsi
	jmp	.L202
.L172:
	movq	BTB@GOTPCREL(%rip), %rbx
	movl	$-1, %ebp
	movq	%rbx, 16(%rsp)
	jmp	.L121
.L136:
	movl	$1, -80(%r9)
	movl	$1, %edx
	jmp	.L122
	.cfi_endproc
.LFE68:
	.size	actualizar_prediccion, .-actualizar_prediccion
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
