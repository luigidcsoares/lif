	.text
	.file	"llvm-link"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
	callq	init_dut
	movaps	.L__const.main.input_data(%rip), %xmm0
	movaps	%xmm0, -32(%rbp)
	leaq	-32(%rbp), %rdi
	movl	$16, %esi
	movl	$10, %edx
	callq	do_one_computation
	movzbl	%al, %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%fs:40, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB0_2
# %bb.1:                                # %SP_return
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_2:                                # %CallStackCheckFailBlk
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	do_one_computation      # -- Begin function do_one_computation
	.p2align	4, 0x90
	.type	do_one_computation,@function
do_one_computation:                     # @do_one_computation
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rax, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	$16, (%rsp)
	leaq	16(%rsp), %r14
	leaq	32(%rsp), %r15
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	$16, (%rsp)
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %r8d
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	rijndaelEncrypt
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movb	32(%rsp), %al
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	do_one_computation, .Lfunc_end1-do_one_computation
	.cfi_endproc
                                        # -- End function
	.globl	init_dut                # -- Begin function init_dut
	.p2align	4, 0x90
	.type	init_dut,@function
init_dut:                               # @init_dut
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movl	$rk, %edi
	movl	$44, %esi
	movl	$16, %ecx
	movl	$128, %r8d
	callq	rijndaelKeySetupEnc
	movq	%fs:40, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB2_2
# %bb.1:                                # %SP_return
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_2:                                # %CallStackCheckFailBlk
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail
.Lfunc_end2:
	.size	init_dut, .Lfunc_end2-init_dut
	.cfi_endproc
                                        # -- End function
	.globl	prepare_inputs          # -- Begin function prepare_inputs
	.p2align	4, 0x90
	.type	prepare_inputs,@function
prepare_inputs:                         # @prepare_inputs
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$16, %edx
	callq	randombytes
	callq	randombit
	movb	%al, (%r14)
	testb	%al, %al
	jne	.LBB3_2
# %bb.1:
	movq	$0, 8(%rbx)
	movq	$0, (%rbx)
.LBB3_2:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	prepare_inputs, .Lfunc_end3-prepare_inputs
	.cfi_endproc
                                        # -- End function
	.globl	rijndaelKeySetupEnc     # -- Begin function rijndaelKeySetupEnc
	.p2align	4, 0x90
	.type	rijndaelKeySetupEnc,@function
rijndaelKeySetupEnc:                    # @rijndaelKeySetupEnc
	.cfi_startproc
# %bb.0:                                # %.preheader8
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
	subq	$2016, %rsp             # imm = 0x7E0
	.cfi_def_cfa_offset 2072
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, -16(%rsp)         # 4-byte Spill
	movq	%rcx, 264(%rsp)         # 8-byte Spill
	movq	%rdx, 272(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	leaq	28(%rdi), %rbx
	leaq	44(%rdi), %r11
	addq	$60, %rdi
	leaq	76(%r14), %rdx
	leaq	92(%r14), %r15
	cmpq	$7, %rsi
	leaq	2008(%rsp), %r8
	movq	%r8, %rax
	cmovgq	%rbx, %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	%rbx, %r12
	movq	%rbx, -64(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r11, %rax
	movq	%r11, 72(%rsp)          # 8-byte Spill
	movq	%rax, 1904(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rdi, %rax
	movq	%rax, 512(%rsp)         # 8-byte Spill
	movq	%rdi, %r9
	movq	%r8, %rax
	cmovgq	%rdx, %rax
	movq	%rdx, %rbx
	movq	%rdx, -56(%rsp)         # 8-byte Spill
	movq	%rax, 504(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r15, %rax
	movq	%rax, 520(%rsp)         # 8-byte Spill
	leaq	108(%r14), %rcx
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rcx, %rdx
	movq	%rax, 1968(%rsp)        # 8-byte Spill
	leaq	124(%r14), %r13
	movq	%r8, %rax
	cmovgq	%r13, %rax
	movq	%r13, (%rsp)            # 8-byte Spill
	movq	%rax, 288(%rsp)         # 8-byte Spill
	leaq	140(%r14), %r10
	movq	%r8, %rax
	cmovgq	%r10, %rax
	movq	%r10, 88(%rsp)          # 8-byte Spill
	movq	%rax, 2000(%rsp)        # 8-byte Spill
	leaq	156(%r14), %rcx
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rcx, %rbp
	movq	%rax, 536(%rsp)         # 8-byte Spill
	leaq	172(%r14), %rcx
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 552(%rsp)         # 8-byte Spill
	cmpq	$6, %rsi
	leaq	168(%r14), %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 792(%rsp)         # 8-byte Spill
	cmpq	$6, %rsi
	leaq	152(%r14), %rcx
	movq	%rcx, -104(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 784(%rsp)         # 8-byte Spill
	cmpq	$6, %rsi
	leaq	136(%r14), %rcx
	movq	%rcx, -112(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1992(%rsp)        # 8-byte Spill
	cmpq	$6, %rsi
	leaq	120(%r14), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 424(%rsp)         # 8-byte Spill
	cmpq	$6, %rsi
	leaq	104(%r14), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1952(%rsp)        # 8-byte Spill
	cmpq	$6, %rsi
	leaq	88(%r14), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 696(%rsp)         # 8-byte Spill
	cmpq	$1, %rsi
	leaq	100(%r14), %rcx
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 416(%rsp)         # 8-byte Spill
	cmpq	$6, %rsi
	leaq	72(%r14), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 672(%rsp)         # 8-byte Spill
	cmpq	$6, %rsi
	leaq	56(%r14), %rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 640(%rsp)         # 8-byte Spill
	cmpq	$6, %rsi
	leaq	40(%r14), %rcx
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1896(%rsp)        # 8-byte Spill
	cmpq	$6, %rsi
	leaq	24(%r14), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	cmpq	$6, %rsi
	leaq	184(%r14), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1448(%rsp)        # 8-byte Spill
	cmpq	$5, %rsi
	leaq	180(%r14), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1424(%rsp)        # 8-byte Spill
	cmpq	$4, %rsi
	leaq	176(%r14), %rdi
	movq	%rdi, 200(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rdi, %rax
	movq	%rax, 1400(%rsp)        # 8-byte Spill
	cmpq	$3, %rsi
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1848(%rsp)        # 8-byte Spill
	leaq	12(%r14), %rcx
	movq	%rcx, 384(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 376(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r12, %rax
	movq	%rax, 1880(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r11, %rax
	movq	%rax, 584(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r9, %rax
	movq	%r9, %r12
	movq	%r9, 112(%rsp)          # 8-byte Spill
	movq	%rax, 624(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rbx, %rax
	movq	%rax, 664(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	%r15, 184(%rsp)         # 8-byte Spill
	cmovgq	%r15, %rax
	movq	%rax, 688(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rdx, %rax
	movq	%rdx, %r11
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r13, %rax
	movq	%rax, 704(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r10, %rax
	movq	%rax, 736(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rbp, %rax
	movq	%rbp, %r10
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%rax, 776(%rsp)         # 8-byte Spill
	cmpq	$11, %rsi
	leaq	204(%r14), %rax
	movq	%rax, 328(%rsp)         # 8-byte Spill
	movq	%r8, %rcx
	cmovgq	%rax, %rcx
	movq	%rcx, 1392(%rsp)        # 8-byte Spill
	leaq	236(%r14), %rbp
	movq	%rbp, 1520(%rsp)        # 8-byte Spill
	movq	%r8, %rcx
	cmovgq	%rbp, %rcx
	movq	%rcx, 1512(%rsp)        # 8-byte Spill
	cmpq	$3, %rsi
	movq	%r8, %rcx
	cmovgq	%rax, %rcx
	movq	%rcx, 1504(%rsp)        # 8-byte Spill
	cmpq	$10, %rsi
	leaq	200(%r14), %rcx
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1368(%rsp)        # 8-byte Spill
	movq	%rcx, %rbp
	cmpq	$3, %rsi
	movq	%r8, %rax
	cmovgq	-88(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1384(%rsp)        # 8-byte Spill
	cmpq	$7, %rsi
	leaq	196(%r14), %r9
	movq	%r8, %rax
	cmovgq	%r9, %rax
	movq	%r9, 232(%rsp)          # 8-byte Spill
	movq	%rax, 1840(%rsp)        # 8-byte Spill
	cmpq	$5, %rsi
	leaq	164(%r14), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 544(%rsp)         # 8-byte Spill
	cmpq	$5, %rsi
	leaq	148(%r14), %rcx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 752(%rsp)         # 8-byte Spill
	cmpq	$5, %rsi
	leaq	132(%r14), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1984(%rsp)        # 8-byte Spill
	cmpq	$5, %rsi
	movq	%r8, %rax
	cmovgq	-72(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1936(%rsp)        # 8-byte Spill
	leaq	116(%r14), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 336(%rsp)         # 8-byte Spill
	cmpq	$5, %rsi
	leaq	84(%r14), %rdi
	movq	%r8, %rax
	cmovgq	%rdi, %rax
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%rax, 680(%rsp)         # 8-byte Spill
	cmpq	$5, %rsi
	leaq	68(%r14), %rdx
	movq	%r8, %rax
	cmovgq	%rdx, %rax
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rax, 496(%rsp)         # 8-byte Spill
	cmpq	$5, %rsi
	leaq	52(%r14), %rcx
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 600(%rsp)         # 8-byte Spill
	cmpq	$5, %rsi
	leaq	36(%r14), %rcx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1888(%rsp)        # 8-byte Spill
	cmpq	$5, %rsi
	leaq	20(%r14), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	cmpq	$11, %rsi
	movq	%r8, %rax
	cmovgq	%rdx, %rax
	movq	%rax, 1584(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r15, %rax
	movq	%rax, 1648(%rsp)        # 8-byte Spill
	cmpq	$10, %rsi
	movq	%r8, %rax
	movq	48(%rsp), %rbx          # 8-byte Reload
	cmovgq	%rbx, %rax
	movq	%rax, 1640(%rsp)        # 8-byte Spill
	cmpq	$10, %rsi
	leaq	64(%r14), %rcx
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1568(%rsp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	cmpq	$9, %rsi
	movq	%r8, %rax
	cmovgq	%r9, %rax
	movq	%rax, 1352(%rsp)        # 8-byte Spill
	leaq	228(%r14), %rcx
	movq	%rcx, 1464(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1456(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r12, %rax
	movq	%rax, 1552(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rdi, %rax
	movq	%rax, 1632(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r11, %rax
	movq	%rax, 1680(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r10, %rax
	movq	%rax, 1768(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	136(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1800(%rsp)        # 8-byte Spill
	cmpq	$2, %rsi
	movq	%r8, %rax
	movq	200(%rsp), %r13         # 8-byte Reload
	cmovgq	%r13, %rax
	movq	%rax, 1832(%rsp)        # 8-byte Spill
	leaq	8(%r14), %rcx
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	224(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1872(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	movq	-40(%rsp), %r10         # 8-byte Reload
	cmovgq	%r10, %rax
	movq	%rax, 576(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	-24(%rsp), %rcx         # 8-byte Reload
	cmovgq	%rcx, %rax
	movq	%rax, 616(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	64(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 656(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rbx, %rax
	movq	%rax, 1928(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	movq	56(%rsp), %rdi          # 8-byte Reload
	cmovgq	%rdi, %rax
	movq	%rax, 400(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	80(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1976(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	-112(%rsp), %rax        # 8-byte Folded Reload
	movq	%rax, 728(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	-104(%rsp), %r11        # 8-byte Reload
	cmovgq	%r11, %rax
	movq	%rax, 768(%rsp)         # 8-byte Spill
	cmpq	$8, %rsi
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1528(%rsp)        # 8-byte Spill
	leaq	80(%r14), %rcx
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1608(%rsp)        # 8-byte Spill
	movq	%rcx, %rbx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rdi, %rax
	movq	%rax, 1656(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r11, %rax
	movq	%rax, 1760(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r13, %rax
	movq	%rax, 1776(%rsp)        # 8-byte Spill
	cmpq	$2, %rsi
	movq	%r8, %rax
	movq	128(%rsp), %r11         # 8-byte Reload
	cmovgq	%r11, %rax
	movq	%rax, 1320(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rbp, %rax
	movq	%rbp, 320(%rsp)         # 8-byte Spill
	movq	%rax, 1408(%rsp)        # 8-byte Spill
	cmpq	$6, %rsi
	leaq	192(%r14), %rcx
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1824(%rsp)        # 8-byte Spill
	cmpq	$1, %rsi
	movq	%r8, %rax
	movq	-88(%rsp), %r15         # 8-byte Reload
	cmovgq	%r15, %rax
	movq	%rax, 1816(%rsp)        # 8-byte Spill
	cmpq	$5, %rsi
	leaq	188(%r14), %rcx
	movq	%rcx, 304(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1784(%rsp)        # 8-byte Spill
	cmpq	$4, %rsi
	leaq	160(%r14), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 760(%rsp)         # 8-byte Spill
	cmpq	$4, %rsi
	leaq	144(%r14), %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 720(%rsp)         # 8-byte Spill
	cmpq	$4, %rsi
	leaq	128(%r14), %r13
	movq	%r8, %rax
	cmovgq	%r13, %rax
	movq	%rax, 1960(%rsp)        # 8-byte Spill
	cmpq	$4, %rsi
	leaq	112(%r14), %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 392(%rsp)         # 8-byte Spill
	cmpq	$4, %rsi
	movq	%r8, %rax
	cmovgq	%rdx, %rax
	movq	%rax, 608(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rbx, %rax
	movq	%rax, 648(%rsp)         # 8-byte Spill
	leaq	96(%r14), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%r8, %rcx
	cmovgq	%rax, %rcx
	movq	%rcx, 1920(%rsp)        # 8-byte Spill
	cmpq	$4, %rsi
	leaq	48(%r14), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%r8, %rcx
	cmovgq	%rax, %rcx
	movq	%rcx, 568(%rsp)         # 8-byte Spill
	cmpq	$4, %rsi
	leaq	32(%r14), %rdi
	movq	%r8, %rcx
	cmovgq	%rdi, %rcx
	movq	%rcx, 1864(%rsp)        # 8-byte Spill
	movq	%rdi, 208(%rsp)         # 8-byte Spill
	cmpq	$4, %rsi
	leaq	16(%r14), %rax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movq	%r8, %rcx
	cmovgq	%rax, %rcx
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	cmpq	$1, %rsi
	movq	%r8, %rax
	cmovgq	144(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1856(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	movq	-48(%rsp), %rdx         # 8-byte Reload
	cmovgq	%rdx, %rax
	movq	%rax, 560(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	-32(%rsp), %r9          # 8-byte Reload
	cmovgq	%r9, %rax
	movq	%rax, 592(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	32(%rsp), %r12          # 8-byte Reload
	cmovgq	%r12, %rax
	movq	%rax, 632(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	40(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1912(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	%rax, 1944(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	movq	16(%rsp), %rbx          # 8-byte Reload
	cmovgq	%rbx, %rax
	movq	%rax, 712(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	-96(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 744(%rsp)         # 8-byte Spill
	cmpq	$1, %rsi
	leaq	4(%r14), %rcx
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	cmpq	$9, %rsi
	movq	%r8, %rax
	cmovgq	328(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1808(%rsp)        # 8-byte Spill
	cmpq	$11, %rsi
	movq	%r8, %rax
	cmovgq	%r15, %rax
	movq	%rax, 1216(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	72(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 480(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	88(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 448(%rsp)         # 8-byte Spill
	cmpq	$10, %rsi
	movq	%r8, %rax
	cmovgq	%r11, %rax
	movq	%rax, 1208(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r10, %rax
	movq	%rax, 472(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	-112(%rsp), %rax        # 8-byte Folded Reload
	movq	%rax, 440(%rsp)         # 8-byte Spill
	cmpq	$9, %rsi
	movq	%r8, %rax
	movq	120(%rsp), %r15         # 8-byte Reload
	cmovgq	%r15, %rax
	movq	%rax, 1192(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rdx, %rax
	movq	%rax, 464(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rbx, %rax
	movq	%rax, 432(%rsp)         # 8-byte Spill
	cmpq	$8, %rsi
	movq	%r8, %rax
	cmovgq	%rdi, %rax
	movq	%rax, 456(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	%r13, 104(%rsp)         # 8-byte Spill
	cmovgq	%r13, %rax
	movq	%rax, 528(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rbp, %rax
	movq	%rax, 1792(%rsp)        # 8-byte Spill
	cmpq	$8, %rsi
	movq	%r8, %rax
	movq	168(%rsp), %r13         # 8-byte Reload
	cmovgq	%r13, %rax
	movq	%rax, 1184(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	312(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1288(%rsp)        # 8-byte Spill
	leaq	224(%r14), %rcx
	movq	%rcx, 1360(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1376(%rsp)        # 8-byte Spill
	cmpq	$15, %rsi
	movq	%r8, %rax
	cmovgq	112(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 992(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	184(%rsp), %r10         # 8-byte Reload
	cmovgq	%r10, %rax
	movq	%rax, 1056(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	(%rsp), %rax            # 8-byte Folded Reload
	movq	%rax, 1120(%rsp)        # 8-byte Spill
	cmpq	$14, %rsi
	movq	%r8, %rax
	cmovgq	-24(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 984(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	48(%rsp), %rbp          # 8-byte Reload
	cmovgq	%rbp, %rax
	movq	%rax, 1048(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	80(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1112(%rsp)        # 8-byte Spill
	cmpq	$13, %rsi
	movq	%r8, %rax
	movq	%r9, %r11
	cmovgq	%r9, %rax
	movq	%rax, 976(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	40(%rsp), %r9           # 8-byte Reload
	cmovgq	%r9, %rax
	movq	%rax, 1040(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	cmovgq	%rcx, %rax
	movq	%rax, 1104(%rsp)        # 8-byte Spill
	cmpq	$12, %rsi
	movq	%r8, %rax
	cmovgq	96(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 968(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	-8(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1032(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	movq	160(%rsp), %rdi         # 8-byte Reload
	cmovgq	%rdi, %rax
	movq	%rax, 1096(%rsp)        # 8-byte Spill
	cmpq	$11, %rsi
	movq	%r8, %rax
	cmovgq	-56(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1024(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	-80(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1088(%rsp)        # 8-byte Spill
	cmpq	$10, %rsi
	movq	%r8, %rax
	cmovgq	64(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1016(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	56(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1080(%rsp)        # 8-byte Spill
	cmpq	$9, %rsi
	movq	%r8, %rax
	cmovgq	%r12, %rax
	movq	%rax, 1008(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	movq	-72(%rsp), %rdx         # 8-byte Reload
	cmovgq	%rdx, %rax
	movq	%rax, 1072(%rsp)        # 8-byte Spill
	cmpq	$8, %rsi
	movq	%r8, %rax
	cmovgq	192(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1000(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	movq	176(%rsp), %r12         # 8-byte Reload
	cmovgq	%r12, %rax
	movq	%rax, 1064(%rsp)        # 8-byte Spill
	setg	-118(%rsp)              # 1-byte Folded Spill
	cmpq	$11, %rsi
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1624(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r15, %rax
	movq	%rax, 1736(%rsp)        # 8-byte Spill
	cmpq	$10, %rsi
	movq	%r8, %rax
	cmovgq	%rdi, %rax
	movq	%rax, 1616(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r13, %rax
	movq	%rax, 1728(%rsp)        # 8-byte Spill
	cmpq	$5, %rsi
	movq	%r8, %rax
	cmovgq	72(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1416(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r10, %rax
	movq	%rax, 488(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	cmovgq	88(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1664(%rsp)        # 8-byte Spill
	cmpq	$4, %rsi
	movq	%r8, %rax
	cmovgq	-40(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1496(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rbp, %rax
	movq	%rax, 1600(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	-112(%rsp), %rax        # 8-byte Folded Reload
	movq	%rax, 1720(%rsp)        # 8-byte Spill
	setg	-114(%rsp)              # 1-byte Folded Spill
	cmpq	$3, %rsi
	movq	%r8, %rax
	cmovgq	-48(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1488(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r9, %rax
	movq	%rax, 1592(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rbx, %rax
	movq	%rax, 1712(%rsp)        # 8-byte Spill
	cmpq	$7, %rsi
	movq	%r8, %rax
	cmovgq	%r11, %rax
	movq	%rax, 1480(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rdx, %rax
	movq	%rax, 1576(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	movq	-96(%rsp), %r9          # 8-byte Reload
	cmovgq	%r9, %rax
	movq	%rax, 1704(%rsp)        # 8-byte Spill
	cmpq	$1, %rsi
	movq	%r8, %rax
	cmovgq	232(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1328(%rsp)        # 8-byte Spill
	cmpq	$7, %rsi
	movq	%r8, %rax
	movq	304(%rsp), %rdx         # 8-byte Reload
	cmovgq	%rdx, %rax
	movq	%rax, 1224(%rsp)        # 8-byte Spill
	leaq	220(%r14), %rax
	movq	%r8, %rcx
	cmovgq	%rax, %rcx
	movq	%rcx, 1312(%rsp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, 1296(%rsp)        # 8-byte Spill
	cmpq	$11, %rsi
	movq	%r8, %rax
	cmovgq	%rdx, %rax
	movq	%rax, 1752(%rsp)        # 8-byte Spill
	cmpq	$10, %rsi
	movq	%r8, %rax
	movq	216(%rsp), %rbx         # 8-byte Reload
	cmovgq	%rbx, %rax
	movq	%rax, 1744(%rsp)        # 8-byte Spill
	cmpq	$10, %rsi
	leaq	232(%r14), %rcx
	movq	%rcx, 1344(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1336(%rsp)        # 8-byte Spill
	cmpq	$2, %rsi
	movq	%r8, %rax
	cmovgq	208(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1472(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	-8(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1560(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	104(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1696(%rsp)        # 8-byte Spill
	cmpq	$6, %rsi
	movq	%r8, %rax
	cmovgq	96(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1440(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%r12, %rax
	movq	%rax, 1544(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	movq	152(%rsp), %rbp         # 8-byte Reload
	cmovgq	%rbp, %rax
	movq	%rax, 1688(%rsp)        # 8-byte Spill
	setg	-117(%rsp)              # 1-byte Folded Spill
	cmpq	$1, %rsi
	movq	%r8, %rax
	cmovgq	%r15, %rax
	movq	%rax, 1232(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	-64(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1432(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	-56(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1536(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	(%rsp), %rax            # 8-byte Folded Reload
	movq	%rax, 1672(%rsp)        # 8-byte Spill
	cmpq	$15, %rsi
	movq	%r8, %rax
	cmovgq	24(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 1152(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rdx, %rax
	movq	%rax, 1200(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rdi, %rax
	movq	%rax, 1304(%rsp)        # 8-byte Spill
	cmpq	$14, %rsi
	movq	%r8, %rax
	cmovgq	-104(%rsp), %rax        # 8-byte Folded Reload
	movq	%rax, 1144(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rbx, %rax
	movq	%rax, 1176(%rsp)        # 8-byte Spill
	leaq	216(%r14), %rcx
	movq	%rcx, 1280(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1272(%rsp)        # 8-byte Spill
	cmpq	$13, %rsi
	movq	%r8, %rax
	cmovgq	%r9, %rax
	movq	%rax, 1136(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	136(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1168(%rsp)        # 8-byte Spill
	leaq	212(%r14), %rcx
	movq	%rcx, 1264(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1256(%rsp)        # 8-byte Spill
	cmpq	$12, %rsi
	movq	%r8, %rax
	cmovgq	%rbp, %rax
	movq	%rax, 1128(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	200(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1160(%rsp)        # 8-byte Spill
	leaq	208(%r14), %rcx
	movq	%rcx, 1248(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	cmovgq	%rcx, %rax
	movq	%rax, 1240(%rsp)        # 8-byte Spill
	movq	264(%rsp), %rcx         # 8-byte Reload
	cmpq	$3, %rcx
	movq	272(%rsp), %rax         # 8-byte Reload
	leaq	19(%rax), %rdx
	movq	%rdx, 832(%rsp)         # 8-byte Spill
	movq	%r8, %r9
	cmovgq	%rdx, %r9
	leaq	23(%rax), %rdx
	movq	%rdx, 856(%rsp)         # 8-byte Spill
	movq	%r8, %r12
	cmovgq	%rdx, %r12
	leaq	27(%rax), %rsi
	movq	%rsi, 920(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 928(%rsp)         # 8-byte Spill
	leaq	31(%rax), %rsi
	movq	%rsi, 952(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 960(%rsp)         # 8-byte Spill
	cmpq	$2, %rcx
	leaq	18(%rax), %rdx
	movq	%rdx, 816(%rsp)         # 8-byte Spill
	movq	%r8, %rdi
	cmovgq	%rdx, %rdi
	leaq	22(%rax), %rdx
	movq	%rdx, 840(%rsp)         # 8-byte Spill
	movq	%r8, %r11
	cmovgq	%rdx, %r11
	leaq	26(%rax), %rsi
	movq	%rsi, 872(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 880(%rsp)         # 8-byte Spill
	leaq	30(%rax), %rsi
	movq	%rsi, 936(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 944(%rsp)         # 8-byte Spill
	cmpq	$1, %rcx
	leaq	17(%rax), %rsi
	movq	%rsi, 800(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	cmovgq	%rsi, %rdx
	leaq	21(%rax), %rsi
	movq	%rsi, 824(%rsp)         # 8-byte Spill
	movq	%r8, %r10
	cmovgq	%rsi, %r10
	leaq	25(%rax), %rsi
	movq	%rsi, 864(%rsp)         # 8-byte Spill
	movq	%r8, %r13
	cmovgq	%rsi, %r13
	leaq	29(%rax), %rbx
	movq	%rbx, 912(%rsp)         # 8-byte Spill
	movq	%r8, %rsi
	cmovgq	%rbx, %rsi
	movq	%rsi, 904(%rsp)         # 8-byte Spill
	testq	%rcx, %rcx
	leaq	28(%rax), %rbx
	movq	%rbx, 888(%rsp)         # 8-byte Spill
	movq	%r8, %rsi
	cmovgq	%rbx, %rsi
	movq	%rsi, 896(%rsp)         # 8-byte Spill
	testq	%rcx, %rcx
	leaq	24(%rax), %rsi
	movq	%rsi, 848(%rsp)         # 8-byte Spill
	movq	%r8, %rbx
	cmovgq	%rsi, %rbx
	testq	%rcx, %rcx
	leaq	20(%rax), %rbp
	movq	%rbp, 808(%rsp)         # 8-byte Spill
	movq	%r8, %rsi
	cmovgq	%rbp, %rsi
	testq	%rcx, %rcx
	movb	$1, -113(%rsp)
	movl	(%rax), %ebp
	bswapl	%ebp
	movl	%ebp, (%r14)
	movl	4(%rax), %ebp
	bswapl	%ebp
	movl	%ebp, 4(%r14)
	movl	8(%rax), %ebp
	bswapl	%ebp
	movl	%ebp, 8(%r14)
	movl	12(%rax), %ebp
	bswapl	%ebp
	movl	%ebp, 12(%r14)
	leaq	16(%rax), %rbp
	movq	%r8, %rax
	cmovgq	%rbp, %rax
	movl	-16(%rsp), %r15d        # 4-byte Reload
	cmpl	$128, %r15d
	sete	272(%rsp)               # 1-byte Folded Spill
	setne	%cl
	andb	-113(%rsp), %cl
	cmovneq	%rbp, %rax
	cmovneq	800(%rsp), %rdx         # 8-byte Folded Reload
	cmovneq	816(%rsp), %rdi         # 8-byte Folded Reload
	cmovneq	832(%rsp), %r9          # 8-byte Folded Reload
	movb	%cl, -115(%rsp)
	movzbl	(%rax), %eax
	movzbl	(%rdx), %edx
	shll	$24, %eax
	shll	$16, %edx
	orl	%eax, %edx
	movzbl	(%rdi), %eax
	shll	$8, %eax
	orl	%edx, %eax
	movzbl	(%r9), %edx
	orl	%eax, %edx
	testb	%cl, %cl
	movq	248(%rsp), %rax         # 8-byte Reload
	cmovneq	256(%rsp), %rax         # 8-byte Folded Reload
	cmovel	16(%r14), %edx
	movl	%edx, (%rax)
	movb	-115(%rsp), %al
	testb	%al, %al
	cmovneq	808(%rsp), %rsi         # 8-byte Folded Reload
	cmovneq	824(%rsp), %r10         # 8-byte Folded Reload
	cmovneq	840(%rsp), %r11         # 8-byte Folded Reload
	cmovneq	856(%rsp), %r12         # 8-byte Folded Reload
	movzbl	(%rsi), %ecx
	movzbl	(%r10), %edx
	shll	$24, %ecx
	shll	$16, %edx
	orl	%ecx, %edx
	movzbl	(%r11), %ecx
	shll	$8, %ecx
	orl	%edx, %ecx
	movzbl	(%r12), %edx
	orl	%ecx, %edx
	testb	%al, %al
	movq	280(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rax
	cmovneq	144(%rsp), %rax         # 8-byte Folded Reload
	cmovel	20(%r14), %edx
	movl	%edx, (%rax)
	cmpl	$192, %r15d
	sete	264(%rsp)               # 1-byte Folded Spill
	setne	%cl
	andb	-115(%rsp), %cl
	cmovneq	848(%rsp), %rbx         # 8-byte Folded Reload
	cmovneq	864(%rsp), %r13         # 8-byte Folded Reload
	movq	880(%rsp), %rdi         # 8-byte Reload
	cmovneq	872(%rsp), %rdi         # 8-byte Folded Reload
	movq	928(%rsp), %rax         # 8-byte Reload
	cmovneq	920(%rsp), %rax         # 8-byte Folded Reload
	movb	%cl, -116(%rsp)
	movzbl	(%rbx), %edx
	movzbl	(%r13), %esi
	shll	$24, %edx
	shll	$16, %esi
	orl	%edx, %esi
	movzbl	(%rdi), %edx
	shll	$8, %edx
	orl	%esi, %edx
	movzbl	(%rax), %esi
	orl	%edx, %esi
	testb	%cl, %cl
	movq	296(%rsp), %r9          # 8-byte Reload
	movq	%r9, %rcx
	movq	224(%rsp), %r11         # 8-byte Reload
	cmovneq	%r11, %rcx
	cmovel	24(%r14), %esi
	movl	%esi, (%rcx)
	movb	-116(%rsp), %cl
	testb	%cl, %cl
	movq	896(%rsp), %rdx         # 8-byte Reload
	cmovneq	888(%rsp), %rdx         # 8-byte Folded Reload
	movq	904(%rsp), %rsi         # 8-byte Reload
	cmovneq	912(%rsp), %rsi         # 8-byte Folded Reload
	movq	944(%rsp), %rdi         # 8-byte Reload
	cmovneq	936(%rsp), %rdi         # 8-byte Folded Reload
	movq	960(%rsp), %rax         # 8-byte Reload
	cmovneq	952(%rsp), %rax         # 8-byte Folded Reload
	movzbl	(%rdx), %edx
	movzbl	(%rsi), %esi
	shll	$24, %edx
	shll	$16, %esi
	orl	%edx, %esi
	movzbl	(%rdi), %edx
	shll	$8, %edx
	orl	%esi, %edx
	movzbl	(%rax), %esi
	orl	%edx, %esi
	testb	%cl, %cl
	movq	240(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rcx
	movq	-64(%rsp), %rax         # 8-byte Reload
	cmovneq	%rax, %rcx
	cmovel	28(%r14), %esi
	movl	%esi, (%rcx)
	cmpl	$256, %r15d             # imm = 0x100
	setne	-16(%rsp)               # 1-byte Folded Spill
	sete	%dl
	andb	-116(%rsp), %dl
	movb	%dl, -121(%rsp)
	movq	%rdi, %rcx
	cmovneq	%rax, %rcx
	movl	(%rcx), %ecx
	movq	%rcx, %rsi
	shrq	$24, %rsi
	cmpq	$256, %rsi              # imm = 0x100
	leaq	Te4(,%rsi,4), %rdi
	movq	%r8, %rsi
	cmovlq	%rdi, %rsi
	testb	%dl, %dl
	cmovneq	%rdi, %rsi
	movzbl	%cl, %edi
	cmpq	$256, %rdi              # imm = 0x100
	leaq	Te4(,%rdi,4), %rbp
	movq	%r8, %rdi
	cmovlq	%rbp, %rdi
	testb	%dl, %dl
	cmovneq	%rbp, %rdi
	movzbl	%ch, %ebx
	cmpq	$256, %rbx              # imm = 0x100
	leaq	Te4(,%rbx,4), %rbp
	movq	%r8, %rbx
	cmovlq	%rbp, %rbx
	testb	%dl, %dl
	cmovneq	%rbp, %rbx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te4(,%rcx,4), %rcx
	movq	%r8, %rbp
	cmovlq	%rcx, %rbp
	testb	%dl, %dl
	cmovneq	%rcx, %rbp
	movzbl	2(%rbx), %ecx
	shll	$16, %ecx
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ecx, %edi
	movzbl	(%rsi), %ecx
	xorl	%edi, %ecx
	movzbl	3(%rbp), %esi
	shll	$24, %esi
	xorl	(%r14), %esi
	xorl	%esi, %ecx
	xorl	$16777216, %ecx         # imm = 0x1000000
	testb	%dl, %dl
	movq	456(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rdx
	movq	208(%rsp), %r10         # 8-byte Reload
	cmovneq	%r10, %rdx
	cmovel	32(%r14), %ecx
	movl	%ecx, (%rdx)
	movb	-121(%rsp), %cl
	testb	%cl, %cl
	movq	344(%rsp), %rdx         # 8-byte Reload
	cmovneq	352(%rsp), %rdx         # 8-byte Folded Reload
	movl	(%rdx), %edx
	cmovneq	%r10, %rsi
	xorl	(%rsi), %edx
	testb	%cl, %cl
	movq	464(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rcx
	movq	-48(%rsp), %rax         # 8-byte Reload
	cmovneq	%rax, %rcx
	cmovel	36(%r14), %edx
	movl	%edx, (%rcx)
	movb	-121(%rsp), %cl
	testb	%cl, %cl
	movq	360(%rsp), %rdx         # 8-byte Reload
	cmovneq	368(%rsp), %rdx         # 8-byte Folded Reload
	movl	(%rdx), %edx
	cmovneq	%rax, %rsi
	xorl	(%rsi), %edx
	testb	%cl, %cl
	movq	472(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rcx
	movq	-40(%rsp), %rax         # 8-byte Reload
	cmovneq	%rax, %rcx
	cmovel	40(%r14), %edx
	movl	%edx, (%rcx)
	movb	-121(%rsp), %cl
	testb	%cl, %cl
	movq	376(%rsp), %rdx         # 8-byte Reload
	cmovneq	384(%rsp), %rdx         # 8-byte Folded Reload
	movl	(%rdx), %edx
	cmovneq	%rax, %rsi
	xorl	(%rsi), %edx
	testb	%cl, %cl
	movq	480(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rcx
	movq	72(%rsp), %rax          # 8-byte Reload
	cmovneq	%rax, %rcx
	cmovel	44(%r14), %edx
	movl	%edx, (%rcx)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	movq	%rsi, %rcx
	cmovneq	%rax, %rcx
	movl	(%rcx), %ebx
	movzbl	%bl, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te4(,%rcx,4), %rcx
	movq	%r8, %rsi
	cmovlq	%rcx, %rsi
	testb	%dl, %dl
	cmovneq	%rcx, %rsi
	movzbl	%bh, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te4(,%rcx,4), %rcx
	movq	%r8, %rdi
	cmovlq	%rcx, %rdi
	testb	%dl, %dl
	cmovneq	%rcx, %rdi
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te4(,%rcx,4), %rcx
	movq	%r8, %rbp
	cmovlq	%rcx, %rbp
	testb	%dl, %dl
	cmovneq	%rcx, %rbp
	shrq	$24, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	leaq	Te4(,%rbx,4), %rcx
	movq	%r8, %rbx
	cmovlq	%rcx, %rbx
	testb	%dl, %dl
	cmovneq	%rcx, %rbx
	movq	248(%rsp), %rcx         # 8-byte Reload
	cmovneq	256(%rsp), %rcx         # 8-byte Folded Reload
	movzbl	3(%rbx), %ebx
	shll	$24, %ebx
	xorl	(%rcx), %ebx
	movzbl	2(%rbp), %ecx
	shll	$16, %ecx
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ecx, %edi
	movzbl	(%rsi), %ecx
	xorl	%edi, %ecx
	xorl	%ebx, %ecx
	testb	%dl, %dl
	movq	968(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rdx
	movq	96(%rsp), %rax          # 8-byte Reload
	cmovneq	%rax, %rdx
	cmovel	48(%r14), %ecx
	movl	%ecx, (%rdx)
	movb	-121(%rsp), %cl
	testb	%cl, %cl
	cmovneq	144(%rsp), %r12         # 8-byte Folded Reload
	movl	(%r12), %edx
	cmovneq	%rax, %rsi
	movq	%rax, %r12
	xorl	(%rsi), %edx
	testb	%cl, %cl
	movq	976(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rcx
	movq	-32(%rsp), %rax         # 8-byte Reload
	cmovneq	%rax, %rcx
	cmovel	52(%r14), %edx
	movl	%edx, (%rcx)
	movb	-121(%rsp), %cl
	testb	%cl, %cl
	cmovneq	%r11, %r9
	movl	(%r9), %edx
	cmovneq	%rax, %rsi
	xorl	(%rsi), %edx
	testb	%cl, %cl
	movq	984(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rcx
	movq	-24(%rsp), %rax         # 8-byte Reload
	cmovneq	%rax, %rcx
	cmovel	56(%r14), %edx
	movl	%edx, (%rcx)
	movb	-121(%rsp), %cl
	testb	%cl, %cl
	movq	240(%rsp), %rdx         # 8-byte Reload
	cmovneq	-64(%rsp), %rdx         # 8-byte Folded Reload
	movl	(%rdx), %edx
	cmovneq	%rax, %rsi
	xorl	(%rsi), %edx
	testb	%cl, %cl
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	992(%rsp), %rcx         # 8-byte Reload
	cmovneq	%rax, %rcx
	cmovel	60(%r14), %edx
	movl	%edx, (%rcx)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	movq	512(%rsp), %r9          # 8-byte Reload
	movq	%r9, %rcx
	cmovneq	%rax, %rcx
	movq	%rax, %r13
	movl	(%rcx), %ebx
	movl	%edx, %ecx
	movb	-118(%rsp), %r15b       # 1-byte Reload
	orb	%r15b, %cl
	movq	%rbx, %rsi
	shrq	$24, %rsi
	cmpq	$256, %rsi              # imm = 0x100
	leaq	Te4(,%rsi,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	movq	%r8, %rbp
	cmovneq	%r10, %rbp
	movq	%r8, %r10
	movq	192(%rsp), %r11         # 8-byte Reload
	cmovneq	%r11, %r10
	testb	%dl, %dl
	cmovneq	%rax, %rdi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%dl, %dl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rbp), %eax
	movzbl	2(%rsi), %esi
	shll	$16, %esi
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%esi, %ecx
	movzbl	(%rdi), %esi
	xorl	%ecx, %esi
	xorl	%eax, %esi
	xorl	$33554432, %esi         # imm = 0x2000000
	testb	%dl, %dl
	cmovel	64(%r14), %esi
	movl	%esi, (%r10)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	560(%rsp), %rcx         # 8-byte Reload
	cmovneq	-48(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	1000(%rsp), %rdx        # 8-byte Reload
	cmovneq	%r11, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1008(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	68(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	576(%rsp), %rcx         # 8-byte Reload
	cmovneq	-40(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1016(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	64(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	72(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	584(%rsp), %rcx         # 8-byte Reload
	cmovneq	72(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1024(%rsp), %rdi        # 8-byte Reload
	movq	%rdi, %rax
	movq	-56(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	76(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	cmovneq	%rsi, %rdi
	movl	(%rdi), %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%dl, %dl
	cmovneq	%rax, %rdi
	shrq	$24, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	leaq	Te4(,%rbx,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%dl, %dl
	cmovneq	%rax, %rbp
	movq	568(%rsp), %rax         # 8-byte Reload
	cmovneq	%r12, %rax
	movzbl	3(%rbp), %ebp
	shll	$24, %ebp
	xorl	(%rax), %ebp
	movzbl	2(%rdi), %eax
	shll	$16, %eax
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%eax, %ecx
	movzbl	(%rsi), %eax
	xorl	%ecx, %eax
	xorl	%ebp, %eax
	testb	%dl, %dl
	movq	1032(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rcx
	movq	-8(%rsp), %r12          # 8-byte Reload
	cmovneq	%r12, %rcx
	cmovel	80(%r14), %eax
	movl	%eax, (%rcx)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	600(%rsp), %rcx         # 8-byte Reload
	cmovneq	-32(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%r12, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1040(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	40(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	84(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	640(%rsp), %rcx         # 8-byte Reload
	cmovneq	-24(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1048(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	48(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	88(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	%r9, %rcx
	cmovneq	%r13, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	184(%rsp), %rsi         # 8-byte Reload
	movq	1056(%rsp), %rax        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	92(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	movq	520(%rsp), %r9          # 8-byte Reload
	movq	%r9, %rax
	cmovneq	%rsi, %rax
	movq	%rsi, %r13
	movl	(%rax), %ebx
	movl	%edx, %eax
	orb	%r15b, %al
	movq	%rbx, %rcx
	shrq	$24, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te4(,%rcx,4), %rcx
	movq	%r8, %rdi
	cmovlq	%rcx, %rdi
	testb	%al, %al
	movq	%r8, %rbp
	cmovneq	%r11, %rbp
	movq	%r8, %r10
	movq	176(%rsp), %r11         # 8-byte Reload
	cmovneq	%r11, %r10
	testb	%dl, %dl
	cmovneq	%rcx, %rdi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%dl, %dl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rbp), %eax
	movzbl	2(%rsi), %esi
	shll	$16, %esi
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%esi, %ecx
	movzbl	(%rdi), %esi
	xorl	%ecx, %esi
	xorl	%eax, %esi
	xorl	$67108864, %esi         # imm = 0x4000000
	testb	%dl, %dl
	cmovel	96(%r14), %esi
	movl	%esi, (%r10)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	632(%rsp), %rcx         # 8-byte Reload
	cmovneq	32(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	1064(%rsp), %rdx        # 8-byte Reload
	cmovneq	%r11, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1072(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	-72(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	100(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	656(%rsp), %rcx         # 8-byte Reload
	cmovneq	64(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1080(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	56(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	104(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	664(%rsp), %rcx         # 8-byte Reload
	cmovneq	-56(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1088(%rsp), %rdi        # 8-byte Reload
	movq	%rdi, %rax
	movq	-80(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	108(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	cmovneq	%rsi, %rdi
	movl	(%rdi), %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%dl, %dl
	cmovneq	%rax, %rdi
	shrq	$24, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	leaq	Te4(,%rbx,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%dl, %dl
	cmovneq	%rax, %rbp
	movq	648(%rsp), %rax         # 8-byte Reload
	cmovneq	%r12, %rax
	movzbl	3(%rbp), %ebp
	shll	$24, %ebp
	xorl	(%rax), %ebp
	movzbl	2(%rdi), %eax
	shll	$16, %eax
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%eax, %ecx
	movzbl	(%rsi), %eax
	xorl	%ecx, %eax
	xorl	%ebp, %eax
	testb	%dl, %dl
	movq	1096(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rcx
	movq	160(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rcx
	cmovel	112(%r14), %eax
	movl	%eax, (%rcx)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	680(%rsp), %rcx         # 8-byte Reload
	cmovneq	40(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	movq	%rdx, %r12
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1104(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	8(%rsp), %rdx           # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	116(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	696(%rsp), %rcx         # 8-byte Reload
	cmovneq	48(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1112(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	80(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	120(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	%r9, %rcx
	cmovneq	%r13, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	movq	%rdx, %r13
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	1120(%rsp), %rax        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	124(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	movq	288(%rsp), %r9          # 8-byte Reload
	movq	%r9, %rax
	cmovneq	%rsi, %rax
	movq	%rsi, %r15
	movl	(%rax), %ebx
	movl	%edx, %eax
	orb	-118(%rsp), %al         # 1-byte Folded Reload
	movq	%rbx, %rcx
	shrq	$24, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te4(,%rcx,4), %rcx
	movq	%r8, %rdi
	cmovlq	%rcx, %rdi
	testb	%al, %al
	movq	%r8, %rbp
	cmovneq	%r11, %rbp
	movq	%r8, %r10
	movq	104(%rsp), %r11         # 8-byte Reload
	cmovneq	%r11, %r10
	testb	%dl, %dl
	cmovneq	%rcx, %rdi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%dl, %dl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rbp), %eax
	movzbl	2(%rsi), %esi
	shll	$16, %esi
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%esi, %ecx
	movzbl	(%rdi), %esi
	xorl	%ecx, %esi
	xorl	%eax, %esi
	xorl	$134217728, %esi        # imm = 0x8000000
	testb	%dl, %dl
	cmovel	128(%r14), %esi
	movl	%esi, (%r10)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	416(%rsp), %rcx         # 8-byte Reload
	cmovneq	-72(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	528(%rsp), %rdx         # 8-byte Reload
	cmovneq	%r11, %rdx
	movq	%r11, %r10
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	432(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	16(%rsp), %rsi          # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	132(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	400(%rsp), %rcx         # 8-byte Reload
	cmovneq	56(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	440(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	-112(%rsp), %rsi        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	136(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	408(%rsp), %rcx         # 8-byte Reload
	cmovneq	-80(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	448(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rax
	movq	88(%rsp), %rsi          # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	140(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	movq	%rdi, %rax
	cmovneq	%rsi, %rax
	movq	%rsi, %r11
	movl	(%rax), %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%dl, %dl
	cmovneq	%rax, %rdi
	shrq	$24, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	leaq	Te4(,%rbx,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%dl, %dl
	cmovneq	%rax, %rbp
	movq	392(%rsp), %rax         # 8-byte Reload
	cmovneq	%r12, %rax
	movzbl	3(%rbp), %ebp
	shll	$24, %ebp
	xorl	(%rax), %ebp
	movzbl	2(%rdi), %eax
	shll	$16, %eax
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%eax, %ecx
	movzbl	(%rsi), %eax
	xorl	%ecx, %eax
	xorl	%ebp, %eax
	testb	%dl, %dl
	movq	1128(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rcx
	movq	152(%rsp), %r12         # 8-byte Reload
	cmovneq	%r12, %rcx
	cmovel	144(%r14), %eax
	movl	%eax, (%rcx)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	336(%rsp), %rcx         # 8-byte Reload
	cmovneq	8(%rsp), %rcx           # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%r12, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1136(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	-96(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	148(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	424(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r13, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1144(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	-104(%rsp), %rdx        # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	152(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	%r9, %rcx
	cmovneq	%r15, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	1152(%rsp), %rax        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	156(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	movq	536(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rax
	cmovneq	%rsi, %rax
	movl	(%rax), %ebx
	movl	%edx, %eax
	movb	-118(%rsp), %r15b       # 1-byte Reload
	orb	%r15b, %al
	movq	%rbx, %rcx
	shrq	$24, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te4(,%rcx,4), %rcx
	movq	%r8, %rdi
	cmovlq	%rcx, %rdi
	testb	%al, %al
	movq	%r8, %rbp
	cmovneq	%r10, %rbp
	movq	%r8, %r10
	movq	168(%rsp), %r9          # 8-byte Reload
	cmovneq	%r9, %r10
	testb	%dl, %dl
	cmovneq	%rcx, %rdi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%dl, %dl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rbp), %eax
	movzbl	2(%rsi), %esi
	shll	$16, %esi
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%esi, %ecx
	movzbl	(%rdi), %esi
	xorl	%ecx, %esi
	xorl	%eax, %esi
	xorl	$268435456, %esi        # imm = 0x10000000
	testb	%dl, %dl
	cmovel	160(%r14), %esi
	movl	%esi, (%r10)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	712(%rsp), %rcx         # 8-byte Reload
	cmovneq	16(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	1184(%rsp), %rdx        # 8-byte Reload
	cmovneq	%r9, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1192(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	120(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	164(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	728(%rsp), %rcx         # 8-byte Reload
	cmovneq	-112(%rsp), %rcx        # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1208(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	128(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	168(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	736(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r11, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1216(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	-88(%rsp), %rdi         # 8-byte Reload
	cmovneq	%rdi, %rax
	cmovel	172(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	cmovneq	%rdi, %rsi
	movl	(%rsi), %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%dl, %dl
	cmovneq	%rax, %rdi
	shrq	$24, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	leaq	Te4(,%rbx,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%dl, %dl
	cmovneq	%rax, %rbp
	movq	720(%rsp), %rax         # 8-byte Reload
	cmovneq	%r12, %rax
	movzbl	3(%rbp), %ebp
	shll	$24, %ebp
	xorl	(%rax), %ebp
	movzbl	2(%rdi), %eax
	shll	$16, %eax
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%eax, %ecx
	movzbl	(%rsi), %eax
	xorl	%ecx, %eax
	xorl	%ebp, %eax
	testb	%dl, %dl
	movq	1160(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rcx
	movq	200(%rsp), %r11         # 8-byte Reload
	cmovneq	%r11, %rcx
	cmovel	176(%r14), %eax
	movl	%eax, (%rcx)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	752(%rsp), %rcx         # 8-byte Reload
	cmovneq	-96(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%r11, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1168(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	136(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	180(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	784(%rsp), %rcx         # 8-byte Reload
	cmovneq	-104(%rsp), %rcx        # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1176(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	216(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	184(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	%r13, %rcx
	cmovneq	24(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	304(%rsp), %rsi         # 8-byte Reload
	movq	1200(%rsp), %rax        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	188(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	movq	1224(%rsp), %r13        # 8-byte Reload
	movq	%r13, %rax
	cmovneq	%rsi, %rax
	movq	%rsi, %r12
	movl	(%rax), %ebx
	movl	%edx, %eax
	orb	%r15b, %al
	movq	%rbx, %rcx
	shrq	$24, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te4(,%rcx,4), %rcx
	movq	%r8, %rdi
	cmovlq	%rcx, %rdi
	testb	%al, %al
	movq	%r8, %rbp
	cmovneq	%r9, %rbp
	movq	%r8, %r10
	movq	312(%rsp), %r9          # 8-byte Reload
	cmovneq	%r9, %r10
	testb	%dl, %dl
	cmovneq	%rcx, %rdi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%dl, %dl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rbp), %eax
	movzbl	2(%rsi), %esi
	shll	$16, %esi
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%esi, %ecx
	movzbl	(%rdi), %esi
	xorl	%ecx, %esi
	xorl	%eax, %esi
	xorl	$536870912, %esi        # imm = 0x20000000
	testb	%dl, %dl
	cmovel	192(%r14), %esi
	movl	%esi, (%r10)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	1232(%rsp), %rcx        # 8-byte Reload
	cmovneq	120(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	1288(%rsp), %rdx        # 8-byte Reload
	cmovneq	%r9, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1352(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	232(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	196(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	1320(%rsp), %rcx        # 8-byte Reload
	cmovneq	128(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1368(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	320(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	200(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	1384(%rsp), %rcx        # 8-byte Reload
	cmovneq	-88(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1392(%rsp), %rdi        # 8-byte Reload
	movq	%rdi, %rax
	movq	328(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	204(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	cmovneq	%rsi, %rdi
	movq	%rsi, %r15
	movl	(%rdi), %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%dl, %dl
	cmovneq	%rax, %rdi
	shrq	$24, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	leaq	Te4(,%rbx,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%dl, %dl
	cmovneq	%rax, %rbp
	movq	1400(%rsp), %rbx        # 8-byte Reload
	cmovneq	%r11, %rbx
	movzbl	3(%rbp), %eax
	shll	$24, %eax
	xorl	(%rbx), %eax
	movzbl	2(%rdi), %edi
	shll	$16, %edi
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%edi, %ecx
	movzbl	(%rsi), %esi
	xorl	%ecx, %esi
	xorl	%eax, %esi
	testb	%dl, %dl
	movq	1240(%rsp), %rcx        # 8-byte Reload
	movq	%rcx, %rax
	movq	1248(%rsp), %rdx        # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	208(%r14), %esi
	movl	%esi, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	1424(%rsp), %rcx        # 8-byte Reload
	cmovneq	136(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1256(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	1264(%rsp), %rsi        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	212(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	cmovneq	%rsi, %rdx
	movq	1448(%rsp), %rcx        # 8-byte Reload
	cmovneq	216(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1272(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	1280(%rsp), %rsi        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	216(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	cmovneq	%rsi, %rdx
	movq	%r13, %rcx
	cmovneq	%r12, %rcx
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1296(%rsp), %rsi        # 8-byte Reload
	movq	1304(%rsp), %rax        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	220(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %dl
	testb	%dl, %dl
	movq	1312(%rsp), %rax        # 8-byte Reload
	cmovneq	%rsi, %rax
	movl	(%rax), %ebx
	movb	-118(%rsp), %cl         # 1-byte Reload
	orb	%dl, %cl
	movq	%rbx, %rax
	shrq	$24, %rax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	movq	%r8, %rbp
	cmovneq	%r9, %rbp
	movq	%r8, %r10
	movq	1360(%rsp), %r9         # 8-byte Reload
	cmovneq	%r9, %r10
	testb	%dl, %dl
	cmovneq	%rax, %rdi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%dl, %dl
	cmovneq	%rax, %rcx
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	cmovneq	%rax, %rsi
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%dl, %dl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rbp), %eax
	movzbl	2(%rsi), %esi
	shll	$16, %esi
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%esi, %ecx
	movzbl	(%rdi), %esi
	xorl	%ecx, %esi
	xorl	%eax, %esi
	xorl	$1073741824, %esi       # imm = 0x40000000
	testb	%dl, %dl
	cmovel	224(%r14), %esi
	movl	%esi, (%r10)
	movb	-121(%rsp), %al
	testb	%al, %al
	movq	1376(%rsp), %rdx        # 8-byte Reload
	cmovneq	%r9, %rdx
	movq	1328(%rsp), %rcx        # 8-byte Reload
	cmovneq	232(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1456(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	1464(%rsp), %rsi        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	228(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	cmovneq	%rsi, %rdx
	movq	1408(%rsp), %rcx        # 8-byte Reload
	cmovneq	320(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1336(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	1344(%rsp), %rsi        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	232(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-121(%rsp), %al
	testb	%al, %al
	cmovneq	%rsi, %rdx
	movq	1504(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r15, %rcx
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1512(%rsp), %rax        # 8-byte Reload
	cmovneq	1520(%rsp), %rax        # 8-byte Folded Reload
	cmovel	236(%r14), %ecx
	movl	%ecx, (%rax)
	movb	264(%rsp), %r9b         # 1-byte Reload
	andb	-115(%rsp), %r9b
	movb	%r9b, -120(%rsp)
	movq	280(%rsp), %r10         # 8-byte Reload
	movq	%r10, %rax
	movq	144(%rsp), %rbp         # 8-byte Reload
	cmovneq	%rbp, %rax
	movl	(%rax), %ebx
	movq	%rbx, %rax
	shrq	$24, %rax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdx
	cmovlq	%rax, %rdx
	testb	%r9b, %r9b
	cmovneq	%rax, %rdx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%r9b, %r9b
	cmovneq	%rax, %rcx
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%r9b, %r9b
	cmovneq	%rax, %rsi
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%r9b, %r9b
	cmovneq	%rax, %rdi
	movzbl	2(%rsi), %eax
	shll	$16, %eax
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	xorl	%eax, %ecx
	movzbl	(%rdx), %eax
	xorl	%ecx, %eax
	movzbl	3(%rdi), %ecx
	shll	$24, %ecx
	xorl	(%r14), %ecx
	xorl	%ecx, %eax
	xorl	$16777216, %eax         # imm = 0x1000000
	testb	%r9b, %r9b
	movq	296(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rcx
	movq	224(%rsp), %rdi         # 8-byte Reload
	cmovneq	%rdi, %rcx
	cmovel	24(%r14), %eax
	movl	%eax, (%rcx)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	344(%rsp), %rcx         # 8-byte Reload
	cmovneq	352(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdi, %rdx
	movq	%rdi, %r9
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	240(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	-64(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	28(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	360(%rsp), %rcx         # 8-byte Reload
	cmovneq	368(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	456(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rax
	movq	208(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	32(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	376(%rsp), %rcx         # 8-byte Reload
	cmovneq	384(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	movq	%rdx, %r12
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	464(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rax
	movq	-48(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	36(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	248(%rsp), %rcx         # 8-byte Reload
	cmovneq	256(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	472(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rax
	movq	-40(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	40(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	%r10, %rcx
	cmovneq	%rbp, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	480(%rsp), %rax         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	44(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %cl
	testb	%cl, %cl
	movq	1416(%rsp), %r15        # 8-byte Reload
	movq	%r15, %rax
	cmovneq	%rdx, %rax
	movq	%rdx, %r13
	movl	(%rax), %ebx
	movl	%ecx, %eax
	movb	-117(%rsp), %r11b       # 1-byte Reload
	orb	%r11b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rbp
	movq	%r8, %rsi
	cmovlq	%rbp, %rsi
	testb	%al, %al
	movq	%r8, %rdi
	cmovneq	%r9, %rdi
	movq	%r8, %r9
	movq	96(%rsp), %r10          # 8-byte Reload
	cmovneq	%r10, %r9
	testb	%cl, %cl
	cmovneq	%rbp, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdx
	cmovlq	%rax, %rdx
	testb	%cl, %cl
	cmovneq	%rax, %rdx
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rdi), %eax
	movzbl	2(%rdx), %edx
	shll	$16, %edx
	movzbl	1(%rbp), %edi
	shll	$8, %edi
	xorl	%edx, %edi
	movzbl	(%rsi), %edx
	xorl	%edi, %edx
	xorl	%eax, %edx
	xorl	$33554432, %edx         # imm = 0x2000000
	testb	%cl, %cl
	cmovel	48(%r14), %edx
	movl	%edx, (%r9)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1432(%rsp), %rcx        # 8-byte Reload
	cmovneq	-64(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	1440(%rsp), %rdx        # 8-byte Reload
	cmovneq	%r10, %rdx
	movq	%r10, %r9
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1480(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	-32(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	52(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1472(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r12, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1528(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	-24(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	56(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1488(%rsp), %rcx        # 8-byte Reload
	cmovneq	-48(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1552(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	112(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	60(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1496(%rsp), %rcx        # 8-byte Reload
	cmovneq	-40(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1568(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	192(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	64(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	%r15, %rcx
	cmovneq	%r13, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	movq	%rdx, %r12
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	1584(%rsp), %rax        # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	68(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %cl
	testb	%cl, %cl
	movq	496(%rsp), %r10         # 8-byte Reload
	movq	%r10, %rax
	cmovneq	%rdx, %rax
	movq	%rdx, %r15
	movl	(%rax), %ebx
	movl	%ecx, %eax
	orb	%r11b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rbp
	movq	%r8, %rsi
	cmovlq	%rbp, %rsi
	testb	%al, %al
	movq	%r8, %rdi
	cmovneq	%r9, %rdi
	movq	%r8, %r9
	movq	64(%rsp), %r11          # 8-byte Reload
	cmovneq	%r11, %r9
	testb	%cl, %cl
	cmovneq	%rbp, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdx
	cmovlq	%rax, %rdx
	testb	%cl, %cl
	cmovneq	%rax, %rdx
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rdi), %eax
	movzbl	2(%rdx), %edx
	shll	$16, %edx
	movzbl	1(%rbp), %edi
	shll	$8, %edi
	xorl	%edx, %edi
	movzbl	(%rsi), %edx
	xorl	%edi, %edx
	xorl	%eax, %edx
	xorl	$67108864, %edx         # imm = 0x4000000
	testb	%cl, %cl
	cmovel	72(%r14), %edx
	movl	%edx, (%r9)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	592(%rsp), %rcx         # 8-byte Reload
	cmovneq	-32(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	672(%rsp), %rdx         # 8-byte Reload
	cmovneq	%r11, %rdx
	movq	%r11, %r9
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	504(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	-56(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	76(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	616(%rsp), %rcx         # 8-byte Reload
	cmovneq	-24(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1608(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	-8(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	80(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	624(%rsp), %rcx         # 8-byte Reload
	cmovneq	112(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1632(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	40(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	84(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	608(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r12, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	movq	%rdx, %r13
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1640(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	48(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	88(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	%r10, %rcx
	cmovneq	%r15, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	movq	%rdx, %r12
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	184(%rsp), %rdx         # 8-byte Reload
	movq	1648(%rsp), %rax        # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	92(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %cl
	testb	%cl, %cl
	movq	488(%rsp), %rax         # 8-byte Reload
	cmovneq	%rdx, %rax
	movq	%rdx, %r15
	movl	(%rax), %ebx
	movl	%ecx, %eax
	movb	-117(%rsp), %r11b       # 1-byte Reload
	orb	%r11b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rbp
	movq	%r8, %rsi
	cmovlq	%rbp, %rsi
	testb	%al, %al
	movq	%r8, %rdi
	cmovneq	%r9, %rdi
	movq	%r8, %r9
	movq	176(%rsp), %r10         # 8-byte Reload
	cmovneq	%r10, %r9
	testb	%cl, %cl
	cmovneq	%rbp, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdx
	cmovlq	%rax, %rdx
	testb	%cl, %cl
	cmovneq	%rax, %rdx
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rdi), %eax
	movzbl	2(%rdx), %edx
	shll	$16, %edx
	movzbl	1(%rbp), %edi
	shll	$8, %edi
	xorl	%edx, %edi
	movzbl	(%rsi), %edx
	xorl	%edi, %edx
	xorl	%eax, %edx
	xorl	$134217728, %edx        # imm = 0x8000000
	testb	%cl, %cl
	cmovel	96(%r14), %edx
	movl	%edx, (%r9)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1536(%rsp), %rcx        # 8-byte Reload
	cmovneq	-56(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	1544(%rsp), %rdx        # 8-byte Reload
	cmovneq	%r10, %rdx
	movq	%r10, %r9
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1576(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	-72(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	100(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1560(%rsp), %rcx        # 8-byte Reload
	cmovneq	-8(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1656(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	56(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	104(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1592(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r13, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	movq	%rdx, %r13
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1680(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	-80(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	108(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1600(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r12, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	1616(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	160(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	112(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	488(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r15, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	movq	%rdx, %r12
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	1624(%rsp), %rax        # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	116(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %cl
	testb	%cl, %cl
	movq	336(%rsp), %r10         # 8-byte Reload
	movq	%r10, %rax
	cmovneq	%rdx, %rax
	movq	%rdx, %r15
	movl	(%rax), %ebx
	movl	%ecx, %eax
	orb	%r11b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rbp
	movq	%r8, %rsi
	cmovlq	%rbp, %rsi
	testb	%al, %al
	movq	%r8, %rdi
	cmovneq	%r9, %rdi
	movq	%r8, %r9
	movq	80(%rsp), %r11          # 8-byte Reload
	cmovneq	%r11, %r9
	testb	%cl, %cl
	cmovneq	%rbp, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdx
	cmovlq	%rax, %rdx
	testb	%cl, %cl
	cmovneq	%rax, %rdx
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rdi), %eax
	movzbl	2(%rdx), %edx
	shll	$16, %edx
	movzbl	1(%rbp), %edi
	shll	$8, %edi
	xorl	%edx, %edi
	movzbl	(%rsi), %edx
	xorl	%edi, %edx
	xorl	%eax, %edx
	xorl	$268435456, %edx        # imm = 0x10000000
	testb	%cl, %cl
	cmovel	120(%r14), %edx
	movl	%edx, (%r9)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	416(%rsp), %rcx         # 8-byte Reload
	cmovneq	-72(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	424(%rsp), %rdx         # 8-byte Reload
	cmovneq	%r11, %rdx
	movq	%r11, %r9
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	288(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	(%rsp), %rsi            # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	124(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	400(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r13, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	528(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	104(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	128(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	408(%rsp), %rcx         # 8-byte Reload
	cmovneq	-80(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	432(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rax
	movq	16(%rsp), %rdx          # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	132(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	392(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r12, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	440(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rax
	movq	-112(%rsp), %rdx        # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	136(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	%r10, %rcx
	cmovneq	%r15, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	movq	%rdx, %r12
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	88(%rsp), %r11          # 8-byte Reload
	movq	448(%rsp), %rax         # 8-byte Reload
	cmovneq	%r11, %rax
	cmovel	140(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %cl
	testb	%cl, %cl
	movq	1664(%rsp), %r15        # 8-byte Reload
	movq	%r15, %rax
	cmovneq	%r11, %rax
	movq	%r11, %r13
	movl	(%rax), %ebx
	movl	%ecx, %eax
	movb	-117(%rsp), %r11b       # 1-byte Reload
	orb	%r11b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rbp
	movq	%r8, %rsi
	cmovlq	%rbp, %rsi
	testb	%al, %al
	movq	%r8, %rdi
	cmovneq	%r9, %rdi
	movq	%r8, %r9
	movq	152(%rsp), %r10         # 8-byte Reload
	cmovneq	%r10, %r9
	testb	%cl, %cl
	cmovneq	%rbp, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdx
	cmovlq	%rax, %rdx
	testb	%cl, %cl
	cmovneq	%rax, %rdx
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rdi), %eax
	movzbl	2(%rdx), %edx
	shll	$16, %edx
	movzbl	1(%rbp), %edi
	shll	$8, %edi
	xorl	%edx, %edi
	movzbl	(%rsi), %edx
	xorl	%edi, %edx
	xorl	%eax, %edx
	xorl	$536870912, %edx        # imm = 0x20000000
	testb	%cl, %cl
	cmovel	144(%r14), %edx
	movl	%edx, (%r9)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1672(%rsp), %rcx        # 8-byte Reload
	cmovneq	(%rsp), %rcx            # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	1688(%rsp), %rdx        # 8-byte Reload
	cmovneq	%r10, %rdx
	movq	%r10, %r9
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1704(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	-96(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	148(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1696(%rsp), %rcx        # 8-byte Reload
	cmovneq	104(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1760(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	-104(%rsp), %rsi        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	152(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1712(%rsp), %rcx        # 8-byte Reload
	cmovneq	16(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1768(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	24(%rsp), %rsi          # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	156(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1720(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r12, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1728(%rsp), %rsi        # 8-byte Reload
	movq	%rsi, %rax
	movq	168(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	160(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	%r15, %rcx
	cmovneq	%r13, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rdx, %rsi
	movq	%rdx, %r13
	xorl	(%rsi), %ecx
	testb	%al, %al
	movq	120(%rsp), %r15         # 8-byte Reload
	movq	1736(%rsp), %rax        # 8-byte Reload
	cmovneq	%r15, %rax
	cmovel	164(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %cl
	testb	%cl, %cl
	movq	544(%rsp), %r10         # 8-byte Reload
	movq	%r10, %rax
	cmovneq	%r15, %rax
	movq	%r15, %r12
	movl	(%rax), %ebx
	movl	%ecx, %eax
	orb	%r11b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rbp
	movq	%r8, %rsi
	cmovlq	%rbp, %rsi
	testb	%al, %al
	movq	%r8, %rdi
	cmovneq	%r9, %rdi
	movq	%r8, %r9
	movq	128(%rsp), %r11         # 8-byte Reload
	cmovneq	%r11, %r9
	testb	%cl, %cl
	cmovneq	%rbp, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdx
	cmovlq	%rax, %rdx
	testb	%cl, %cl
	cmovneq	%rax, %rdx
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rdi), %eax
	movzbl	2(%rdx), %edx
	shll	$16, %edx
	movzbl	1(%rbp), %edi
	shll	$8, %edi
	xorl	%edx, %edi
	movzbl	(%rsi), %edx
	xorl	%edi, %edx
	xorl	%eax, %edx
	xorl	$1073741824, %edx       # imm = 0x40000000
	testb	%cl, %cl
	cmovel	168(%r14), %edx
	movl	%edx, (%r9)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	744(%rsp), %rcx         # 8-byte Reload
	cmovneq	-96(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	792(%rsp), %rdx         # 8-byte Reload
	cmovneq	%r11, %rdx
	movq	%r11, %rbp
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	552(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	-88(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	172(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	768(%rsp), %rcx         # 8-byte Reload
	cmovneq	-104(%rsp), %rcx        # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1776(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	200(%rsp), %r15         # 8-byte Reload
	cmovneq	%r15, %rax
	cmovel	176(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	776(%rsp), %rcx         # 8-byte Reload
	cmovneq	24(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%r15, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1800(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	136(%rsp), %r11         # 8-byte Reload
	cmovneq	%r11, %rax
	cmovel	180(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	760(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r13, %rcx
	movl	(%rcx), %ecx
	cmovneq	%r11, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1744(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	216(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	184(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	cmovneq	%rsi, %rdx
	movq	%r10, %rcx
	cmovneq	%r12, %rcx
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1752(%rsp), %rax        # 8-byte Reload
	movq	304(%rsp), %rdx         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	188(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %cl
	testb	%cl, %cl
	movq	1784(%rsp), %rax        # 8-byte Reload
	cmovneq	%rdx, %rax
	movl	(%rax), %ebx
	movb	-117(%rsp), %dl         # 1-byte Reload
	orb	%cl, %dl
	movq	%rbx, %rax
	shrq	$24, %rax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%dl, %dl
	movq	%r8, %rdi
	cmovneq	%rbp, %rdi
	movq	%r8, %r9
	movq	312(%rsp), %r10         # 8-byte Reload
	cmovneq	%r10, %r9
	testb	%cl, %cl
	cmovneq	%rax, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdx
	cmovlq	%rax, %rdx
	testb	%cl, %cl
	cmovneq	%rax, %rdx
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%rdi), %eax
	movzbl	2(%rdx), %edx
	shll	$16, %edx
	movzbl	1(%rbp), %edi
	shll	$8, %edi
	xorl	%edx, %edi
	movzbl	(%rsi), %edx
	xorl	%edi, %edx
	xorl	%eax, %edx
	xorl	$-2147483648, %edx      # imm = 0x80000000
	testb	%cl, %cl
	cmovel	192(%r14), %edx
	movl	%edx, (%r9)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1824(%rsp), %rdx        # 8-byte Reload
	cmovneq	%r10, %rdx
	movq	1816(%rsp), %rcx        # 8-byte Reload
	cmovneq	-88(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1840(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	232(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	196(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1832(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r15, %rcx
	cmovneq	%rsi, %rdx
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1792(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	320(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	200(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-120(%rsp), %al
	testb	%al, %al
	movq	1848(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r11, %rcx
	cmovneq	%rsi, %rdx
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1808(%rsp), %rax        # 8-byte Reload
	cmovneq	328(%rsp), %rax         # 8-byte Folded Reload
	cmovel	204(%r14), %ecx
	movl	%ecx, (%rax)
	movb	272(%rsp), %r10b        # 1-byte Reload
	andb	-113(%rsp), %r10b
	movb	%r10b, -119(%rsp)
	movq	376(%rsp), %r9          # 8-byte Reload
	movq	%r9, %rax
	movq	384(%rsp), %rbp         # 8-byte Reload
	cmovneq	%rbp, %rax
	movl	(%rax), %ebx
	movq	%rbx, %rax
	shrq	$24, %rax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rcx
	cmovlq	%rax, %rcx
	testb	%r10b, %r10b
	cmovneq	%rax, %rcx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdx
	cmovlq	%rax, %rdx
	testb	%r10b, %r10b
	cmovneq	%rax, %rdx
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%r10b, %r10b
	cmovneq	%rax, %rsi
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%r10b, %r10b
	cmovneq	%rax, %rdi
	movzbl	2(%rsi), %eax
	shll	$16, %eax
	movzbl	1(%rdx), %edx
	shll	$8, %edx
	xorl	%eax, %edx
	movzbl	(%rcx), %eax
	xorl	%edx, %eax
	movzbl	3(%rdi), %ecx
	shll	$24, %ecx
	xorl	(%r14), %ecx
	xorl	%ecx, %eax
	xorl	$16777216, %eax         # imm = 0x1000000
	testb	%r10b, %r10b
	movq	248(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rcx
	movq	256(%rsp), %r11         # 8-byte Reload
	cmovneq	%r11, %rcx
	cmovel	16(%r14), %eax
	movl	%eax, (%rcx)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	344(%rsp), %rcx         # 8-byte Reload
	cmovneq	352(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%r11, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	280(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	144(%rsp), %r15         # 8-byte Reload
	cmovneq	%r15, %rax
	cmovel	20(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	360(%rsp), %rcx         # 8-byte Reload
	cmovneq	368(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%r15, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	296(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	224(%rsp), %r10         # 8-byte Reload
	cmovneq	%r10, %rax
	cmovel	24(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	%r9, %rcx
	cmovneq	%rbp, %rcx
	movl	(%rcx), %ecx
	cmovneq	%r10, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	-64(%rsp), %rdx         # 8-byte Reload
	movq	240(%rsp), %rax         # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	28(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %cl
	testb	%cl, %cl
	movq	1880(%rsp), %r13        # 8-byte Reload
	movq	%r13, %rax
	cmovneq	%rdx, %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	movb	-114(%rsp), %r12b       # 1-byte Reload
	orb	%r12b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rdi
	movq	%r8, %rsi
	cmovlq	%rdi, %rsi
	testb	%al, %al
	cmoveq	%r8, %r11
	movq	%r8, %rdx
	movq	208(%rsp), %r9          # 8-byte Reload
	cmovneq	%r9, %rdx
	testb	%cl, %cl
	cmovneq	%rdi, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	cmovneq	%rax, %rdi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%r11), %eax
	movzbl	2(%rbp), %ebp
	shll	$16, %ebp
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ebp, %edi
	movzbl	(%rsi), %esi
	xorl	%edi, %esi
	xorl	%eax, %esi
	xorl	$33554432, %esi         # imm = 0x2000000
	testb	%cl, %cl
	cmovel	32(%r14), %esi
	movl	%esi, (%rdx)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	1856(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r15, %rcx
	movl	(%rcx), %ecx
	movq	1864(%rsp), %rdx        # 8-byte Reload
	movq	%r9, %rbp
	cmovneq	%r9, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1888(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	-48(%rsp), %r15         # 8-byte Reload
	cmovneq	%r15, %rax
	cmovel	36(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	1872(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r10, %rcx
	movl	(%rcx), %ecx
	cmovneq	%r15, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1896(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	-40(%rsp), %r10         # 8-byte Reload
	cmovneq	%r10, %rax
	cmovel	40(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	cmovneq	-64(%rsp), %r13         # 8-byte Folded Reload
	movl	(%r13), %ecx
	cmovneq	%r10, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	72(%rsp), %r9           # 8-byte Reload
	movq	1904(%rsp), %rax        # 8-byte Reload
	cmovneq	%r9, %rax
	cmovel	44(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %cl
	testb	%cl, %cl
	movq	584(%rsp), %r11         # 8-byte Reload
	movq	%r11, %rax
	cmovneq	%r9, %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	orb	%r12b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rdi
	movq	%r8, %rsi
	cmovlq	%rdi, %rsi
	testb	%al, %al
	cmoveq	%r8, %rbp
	movq	%rbp, %r12
	movq	%r8, %rdx
	movq	96(%rsp), %r13          # 8-byte Reload
	cmovneq	%r13, %rdx
	testb	%cl, %cl
	cmovneq	%rdi, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	cmovneq	%rax, %rdi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%r12), %eax
	movzbl	2(%rbp), %ebp
	shll	$16, %ebp
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ebp, %edi
	movzbl	(%rsi), %esi
	xorl	%edi, %esi
	xorl	%eax, %esi
	xorl	$67108864, %esi         # imm = 0x4000000
	testb	%cl, %cl
	cmovel	48(%r14), %esi
	movl	%esi, (%rdx)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	560(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r15, %rcx
	movl	(%rcx), %ecx
	movq	568(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rbp
	cmovneq	%r13, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	600(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	-32(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	52(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	576(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r10, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	640(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	-24(%rsp), %r10         # 8-byte Reload
	cmovneq	%r10, %rax
	cmovel	56(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	%r11, %rcx
	cmovneq	%r9, %rcx
	movl	(%rcx), %ecx
	cmovneq	%r10, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	112(%rsp), %r9          # 8-byte Reload
	movq	512(%rsp), %rax         # 8-byte Reload
	cmovneq	%r9, %rax
	cmovel	60(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %cl
	testb	%cl, %cl
	movq	624(%rsp), %r11         # 8-byte Reload
	movq	%r11, %rax
	cmovneq	%r9, %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	movb	-114(%rsp), %r15b       # 1-byte Reload
	orb	%r15b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rdi
	movq	%r8, %rsi
	cmovlq	%rdi, %rsi
	testb	%al, %al
	cmoveq	%r8, %rbp
	movq	%rbp, %r12
	movq	%r8, %rdx
	movq	192(%rsp), %r13         # 8-byte Reload
	cmovneq	%r13, %rdx
	testb	%cl, %cl
	cmovneq	%rdi, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	cmovneq	%rax, %rdi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%r12), %eax
	movzbl	2(%rbp), %ebp
	shll	$16, %ebp
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ebp, %edi
	movzbl	(%rsi), %esi
	xorl	%edi, %esi
	xorl	%eax, %esi
	xorl	$134217728, %esi        # imm = 0x8000000
	testb	%cl, %cl
	cmovel	64(%r14), %esi
	movl	%esi, (%rdx)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	592(%rsp), %rcx         # 8-byte Reload
	cmovneq	-32(%rsp), %rcx         # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	608(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rbp
	cmovneq	%r13, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	496(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	32(%rsp), %rsi          # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	68(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	616(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r10, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	672(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	64(%rsp), %r10          # 8-byte Reload
	cmovneq	%r10, %rax
	cmovel	72(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	%r11, %rcx
	cmovneq	%r9, %rcx
	movl	(%rcx), %ecx
	cmovneq	%r10, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	-56(%rsp), %r9          # 8-byte Reload
	movq	504(%rsp), %rax         # 8-byte Reload
	cmovneq	%r9, %rax
	cmovel	76(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %cl
	testb	%cl, %cl
	movq	664(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rax
	cmovneq	%r9, %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	orb	%r15b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rdi
	movq	%r8, %rsi
	cmovlq	%rdi, %rsi
	testb	%al, %al
	cmoveq	%r8, %rbp
	movq	%rbp, %r11
	movq	%r8, %rdx
	movq	-8(%rsp), %r13          # 8-byte Reload
	cmovneq	%r13, %rdx
	testb	%cl, %cl
	cmovneq	%rdi, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	cmovneq	%rax, %rdi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%r11), %eax
	movzbl	2(%rbp), %ebp
	shll	$16, %ebp
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ebp, %edi
	movzbl	(%rsi), %esi
	xorl	%edi, %esi
	xorl	%eax, %esi
	xorl	$268435456, %esi        # imm = 0x10000000
	testb	%cl, %cl
	cmovel	80(%r14), %esi
	movl	%esi, (%rdx)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	632(%rsp), %rcx         # 8-byte Reload
	cmovneq	32(%rsp), %rcx          # 8-byte Folded Reload
	movl	(%rcx), %ecx
	movq	648(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rbp
	cmovneq	%r13, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	680(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	40(%rsp), %r11          # 8-byte Reload
	cmovneq	%r11, %rax
	cmovel	84(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	656(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r10, %rcx
	movl	(%rcx), %ecx
	cmovneq	%r11, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	696(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	48(%rsp), %r10          # 8-byte Reload
	cmovneq	%r10, %rax
	cmovel	88(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	cmovneq	%r9, %r12
	movl	(%r12), %ecx
	cmovneq	%r10, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	184(%rsp), %r9          # 8-byte Reload
	movq	520(%rsp), %rax         # 8-byte Reload
	cmovneq	%r9, %rax
	cmovel	92(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %cl
	testb	%cl, %cl
	movq	688(%rsp), %rax         # 8-byte Reload
	cmovneq	%r9, %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	orb	%r15b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rdi
	movq	%r8, %rsi
	cmovlq	%rdi, %rsi
	testb	%al, %al
	cmoveq	%r8, %rbp
	movq	%rbp, %r12
	movq	%r8, %rdx
	movq	176(%rsp), %r13         # 8-byte Reload
	cmovneq	%r13, %rdx
	testb	%cl, %cl
	cmovneq	%rdi, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	cmovneq	%rax, %rdi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%r12), %eax
	movzbl	2(%rbp), %ebp
	shll	$16, %ebp
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ebp, %edi
	movzbl	(%rsi), %esi
	xorl	%edi, %esi
	xorl	%eax, %esi
	xorl	$536870912, %esi        # imm = 0x20000000
	testb	%cl, %cl
	cmovel	96(%r14), %esi
	movl	%esi, (%rdx)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	1912(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r11, %rcx
	movl	(%rcx), %ecx
	movq	%r13, %rbp
	movq	1920(%rsp), %rdx        # 8-byte Reload
	cmovneq	%r13, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1936(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	-72(%rsp), %r11         # 8-byte Reload
	cmovneq	%r11, %rax
	cmovel	100(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	1928(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r10, %rcx
	movl	(%rcx), %ecx
	cmovneq	%r11, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1952(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	56(%rsp), %r10          # 8-byte Reload
	cmovneq	%r10, %rax
	cmovel	104(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	688(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r9, %rcx
	movl	(%rcx), %ecx
	cmovneq	%r10, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	-80(%rsp), %rdx         # 8-byte Reload
	movq	1968(%rsp), %rax        # 8-byte Reload
	cmovneq	%rdx, %rax
	cmovel	108(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %cl
	testb	%cl, %cl
	movq	408(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rax
	cmovneq	%rdx, %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	orb	%r15b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rdi
	movq	%r8, %rsi
	cmovlq	%rdi, %rsi
	testb	%al, %al
	cmoveq	%r8, %rbp
	movq	%rbp, %r9
	movq	%r8, %rdx
	movq	160(%rsp), %r13         # 8-byte Reload
	cmovneq	%r13, %rdx
	testb	%cl, %cl
	cmovneq	%rdi, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	cmovneq	%rax, %rdi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%r9), %eax
	movzbl	2(%rbp), %ebp
	shll	$16, %ebp
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ebp, %edi
	movzbl	(%rsi), %esi
	xorl	%edi, %esi
	xorl	%eax, %esi
	xorl	$1073741824, %esi       # imm = 0x40000000
	testb	%cl, %cl
	cmovel	112(%r14), %esi
	movl	%esi, (%rdx)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	416(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r11, %rcx
	movl	(%rcx), %ecx
	movq	392(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rbp
	cmovneq	%r13, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	336(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	8(%rsp), %r11           # 8-byte Reload
	cmovneq	%r11, %rax
	cmovel	116(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	400(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r10, %rcx
	movl	(%rcx), %ecx
	cmovneq	%r11, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	424(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	80(%rsp), %r10          # 8-byte Reload
	cmovneq	%r10, %rax
	cmovel	120(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	cmovneq	-80(%rsp), %r12         # 8-byte Folded Reload
	movl	(%r12), %ecx
	cmovneq	%r10, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	(%rsp), %r9             # 8-byte Reload
	movq	288(%rsp), %rax         # 8-byte Reload
	cmovneq	%r9, %rax
	cmovel	124(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %cl
	testb	%cl, %cl
	movq	704(%rsp), %rax         # 8-byte Reload
	cmovneq	%r9, %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	orb	%r15b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rdi
	movq	%r8, %rsi
	cmovlq	%rdi, %rsi
	testb	%al, %al
	cmoveq	%r8, %rbp
	movq	%rbp, %r12
	movq	%r8, %rdx
	movq	104(%rsp), %r13         # 8-byte Reload
	cmovneq	%r13, %rdx
	testb	%cl, %cl
	cmovneq	%rdi, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	cmovneq	%rax, %rdi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%r12), %eax
	movzbl	2(%rbp), %ebp
	shll	$16, %ebp
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ebp, %edi
	movzbl	(%rsi), %esi
	xorl	%edi, %esi
	xorl	%eax, %esi
	xorl	$-2147483648, %esi      # imm = 0x80000000
	testb	%cl, %cl
	cmovel	128(%r14), %esi
	movl	%esi, (%rdx)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	1944(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r11, %rcx
	movl	(%rcx), %ecx
	movq	1960(%rsp), %rdx        # 8-byte Reload
	movq	%r13, %rbp
	cmovneq	%r13, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1984(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	16(%rsp), %r11          # 8-byte Reload
	cmovneq	%r11, %rax
	cmovel	132(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	1976(%rsp), %rcx        # 8-byte Reload
	cmovneq	%r10, %rcx
	movl	(%rcx), %ecx
	cmovneq	%r11, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	1992(%rsp), %rdx        # 8-byte Reload
	movq	%rdx, %rax
	movq	-112(%rsp), %rsi        # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	136(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	704(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r9, %rcx
	movl	(%rcx), %ecx
	cmovneq	%rsi, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	88(%rsp), %r9           # 8-byte Reload
	movq	2000(%rsp), %rax        # 8-byte Reload
	cmovneq	%r9, %rax
	cmovel	140(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %cl
	testb	%cl, %cl
	movq	736(%rsp), %r10         # 8-byte Reload
	movq	%r10, %rax
	cmovneq	%r9, %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	orb	%r15b, %al
	movq	%rbx, %rdx
	shrq	$24, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te4(,%rdx,4), %rdi
	movq	%r8, %rsi
	cmovlq	%rdi, %rsi
	testb	%al, %al
	cmoveq	%r8, %rbp
	movq	%rbp, %r12
	movq	%r8, %rdx
	movq	152(%rsp), %r13         # 8-byte Reload
	cmovneq	%r13, %rdx
	testb	%cl, %cl
	cmovneq	%rdi, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	cmovneq	%rax, %rdi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbx
	cmovlq	%rax, %rbx
	testb	%cl, %cl
	cmovneq	%rax, %rbx
	movzbl	3(%rbx), %eax
	shll	$24, %eax
	xorl	(%r12), %eax
	movzbl	2(%rbp), %ebp
	shll	$16, %ebp
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ebp, %edi
	movzbl	(%rsi), %esi
	xorl	%edi, %esi
	xorl	%eax, %esi
	xorl	$452984832, %esi        # imm = 0x1B000000
	testb	%cl, %cl
	cmovel	144(%r14), %esi
	movl	%esi, (%rdx)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	712(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r11, %rcx
	movl	(%rcx), %ecx
	movq	720(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rdi
	cmovneq	%r13, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	752(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	-96(%rsp), %r11         # 8-byte Reload
	cmovneq	%r11, %rax
	cmovel	148(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	728(%rsp), %rcx         # 8-byte Reload
	cmovneq	-112(%rsp), %rcx        # 8-byte Folded Reload
	movl	(%rcx), %ecx
	cmovneq	%r11, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	784(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	-104(%rsp), %r13        # 8-byte Reload
	cmovneq	%r13, %rax
	cmovel	152(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	cmovneq	%r9, %r10
	movl	(%r10), %ecx
	cmovneq	%r13, %rdx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	536(%rsp), %rax         # 8-byte Reload
	cmovneq	%r9, %rax
	cmovel	156(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %cl
	testb	%cl, %cl
	movq	776(%rsp), %r10         # 8-byte Reload
	movq	%r10, %rax
	cmovneq	%r9, %rax
	movl	(%rax), %ebx
	orb	%cl, %r15b
	movq	%rbx, %rax
	shrq	$24, %rax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rsi
	cmovlq	%rax, %rsi
	testb	%r15b, %r15b
	cmoveq	%r8, %rdi
	movq	%rdi, %r15
	movq	%r8, %rdx
	movq	168(%rsp), %r12         # 8-byte Reload
	cmovneq	%r12, %rdx
	testb	%cl, %cl
	cmovneq	%rax, %rsi
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rdi
	cmovlq	%rax, %rdi
	testb	%cl, %cl
	cmovneq	%rax, %rdi
	movzbl	%bh, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r8, %rbp
	cmovlq	%rax, %rbp
	testb	%cl, %cl
	cmovneq	%rax, %rbp
	shrl	$16, %ebx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	cmovlq	%rax, %r8
	testb	%cl, %cl
	cmovneq	%rax, %r8
	movzbl	3(%r8), %eax
	shll	$24, %eax
	xorl	(%r15), %eax
	movzbl	2(%rbp), %ebp
	shll	$16, %ebp
	movzbl	1(%rdi), %edi
	shll	$8, %edi
	xorl	%ebp, %edi
	movzbl	(%rsi), %esi
	xorl	%edi, %esi
	xorl	%eax, %esi
	xorl	$905969664, %esi        # imm = 0x36000000
	testb	%cl, %cl
	cmovel	160(%r14), %esi
	movl	%esi, (%rdx)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	744(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r11, %rcx
	movq	760(%rsp), %rdx         # 8-byte Reload
	cmovneq	%r12, %rdx
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	544(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	120(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	164(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	movq	768(%rsp), %rcx         # 8-byte Reload
	cmovneq	%r13, %rcx
	cmovneq	%rsi, %rdx
	movl	(%rcx), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	792(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	movq	128(%rsp), %rsi         # 8-byte Reload
	cmovneq	%rsi, %rax
	cmovel	168(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %al
	testb	%al, %al
	cmovneq	%r9, %r10
	cmovneq	%rsi, %rdx
	movl	(%r10), %ecx
	xorl	(%rdx), %ecx
	testb	%al, %al
	movq	552(%rsp), %rax         # 8-byte Reload
	cmovneq	-88(%rsp), %rax         # 8-byte Folded Reload
	cmovel	172(%r14), %ecx
	movl	%ecx, (%rax)
	movb	-119(%rsp), %cl
	movb	-120(%rsp), %dl
	xorl	%eax, %eax
	movb	-16(%rsp), %bl          # 1-byte Reload
	andb	-116(%rsp), %bl
	movl	$14, %esi
	cmovnel	%eax, %esi
	testb	%dl, %dl
	movl	$12, %edi
	cmovel	%esi, %edi
	testb	%cl, %cl
	movl	$10, %eax
	cmovel	%edi, %eax
	orb	%dl, %bl
	orb	%cl, %bl
	orb	-121(%rsp), %bl
	andb	$1, %bl
	movb	%bl, -9(%rsp)
	addq	$2016, %rsp             # imm = 0x7E0
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
.Lfunc_end4:
	.size	rijndaelKeySetupEnc, .Lfunc_end4-rijndaelKeySetupEnc
	.cfi_endproc
                                        # -- End function
	.globl	rijndaelKeySetupDec     # -- Begin function rijndaelKeySetupDec
	.p2align	4, 0x90
	.type	rijndaelKeySetupDec,@function
rijndaelKeySetupDec:                    # @rijndaelKeySetupDec
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	rijndaelKeySetupEnc
                                        # kill: def $eax killed $eax def $rax
	leal	(,%rax,4), %ecx
	testl	%ecx, %ecx
	jle	.LBB5_3
# %bb.1:                                # %.lr.ph8
	movslq	%ecx, %rcx
	addq	$-4, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdx,4), %esi
	movl	16(%rbx,%rcx,4), %edi
	movl	%edi, (%rbx,%rdx,4)
	movl	%esi, 16(%rbx,%rcx,4)
	movl	4(%rbx,%rdx,4), %esi
	movl	20(%rbx,%rcx,4), %edi
	movl	%edi, 4(%rbx,%rdx,4)
	movl	%esi, 20(%rbx,%rcx,4)
	movl	8(%rbx,%rdx,4), %esi
	movl	24(%rbx,%rcx,4), %edi
	movl	%edi, 8(%rbx,%rdx,4)
	movl	%esi, 24(%rbx,%rcx,4)
	movl	12(%rbx,%rdx,4), %esi
	movl	28(%rbx,%rcx,4), %edi
	movl	%edi, 12(%rbx,%rdx,4)
	movl	%esi, 28(%rbx,%rcx,4)
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	leaq	-4(%rcx), %rcx
	jl	.LBB5_2
.LBB5_3:                                # %.preheader
	cmpl	$2, %eax
	jl	.LBB5_6
# %bb.4:                                # %.lr.ph.preheader
	addq	$28, %rbx
	movl	%eax, %r8d
	decl	%r8d
	.p2align	4, 0x90
.LBB5_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbx), %edx
	movq	%rdx, %rsi
	movzbl	%dh, %ebp
	movzbl	%dl, %ecx
	shrq	$24, %rdx
	movzbl	Te4(,%rdx,4), %edx
	movl	Td0(,%rdx,4), %edi
	shrq	$14, %rsi
	andl	$1020, %esi             # imm = 0x3FC
	movzbl	Te4(%rsi), %edx
	xorl	Td1(,%rdx,4), %edi
	movl	-8(%rbx), %edx
	movzbl	Te4(,%rbp,4), %esi
	xorl	Td2(,%rsi,4), %edi
	movzbl	Te4(,%rcx,4), %ecx
	xorl	Td3(,%rcx,4), %edi
	movl	%edi, -12(%rbx)
	movq	%rdx, %rcx
	movzbl	%dh, %esi
	movzbl	%dl, %edi
	shrq	$24, %rdx
	movzbl	Te4(,%rdx,4), %edx
	movl	Td0(,%rdx,4), %edx
	shrq	$14, %rcx
	andl	$1020, %ecx             # imm = 0x3FC
	movzbl	Te4(%rcx), %ecx
	xorl	Td1(,%rcx,4), %edx
	movzbl	Te4(,%rsi,4), %ecx
	xorl	Td2(,%rcx,4), %edx
	movzbl	Te4(,%rdi,4), %ecx
	xorl	Td3(,%rcx,4), %edx
	movl	%edx, -8(%rbx)
	movl	-4(%rbx), %edx
	movq	%rdx, %rcx
	movzbl	%dh, %esi
	movzbl	%dl, %edi
	shrq	$24, %rdx
	movzbl	Te4(,%rdx,4), %edx
	movl	Td0(,%rdx,4), %edx
	shrq	$14, %rcx
	andl	$1020, %ecx             # imm = 0x3FC
	movzbl	Te4(%rcx), %ecx
	xorl	Td1(,%rcx,4), %edx
	movzbl	Te4(,%rsi,4), %ecx
	xorl	Td2(,%rcx,4), %edx
	movzbl	Te4(,%rdi,4), %ecx
	xorl	Td3(,%rcx,4), %edx
	movl	%edx, -4(%rbx)
	movl	(%rbx), %edx
	movq	%rdx, %rcx
	movzbl	%dh, %esi
	movzbl	%dl, %edi
	shrq	$24, %rdx
	movzbl	Te4(,%rdx,4), %edx
	movl	Td0(,%rdx,4), %edx
	shrq	$14, %rcx
	andl	$1020, %ecx             # imm = 0x3FC
	movzbl	Te4(%rcx), %ecx
	xorl	Td1(,%rcx,4), %edx
	movzbl	Te4(,%rsi,4), %ecx
	xorl	Td2(,%rcx,4), %edx
	movzbl	Te4(,%rdi,4), %ecx
	xorl	Td3(,%rcx,4), %edx
	movl	%edx, (%rbx)
	addq	$16, %rbx
	decl	%r8d
	jne	.LBB5_5
.LBB5_6:                                # %._crit_edge
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	rijndaelKeySetupDec, .Lfunc_end5-rijndaelKeySetupDec
	.cfi_endproc
                                        # -- End function
	.globl	rijndaelEncrypt         # -- Begin function rijndaelEncrypt
	.p2align	4, 0x90
	.type	rijndaelEncrypt,@function
rijndaelEncrypt:                        # @rijndaelEncrypt
	.cfi_startproc
# %bb.0:                                # %.preheader12
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
	subq	$336, %rsp              # imm = 0x150
	.cfi_def_cfa_offset 392
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r11d
	movq	%rsi, %r10
	movq	%rdi, %r13
	movq	392(%rsp), %r8
	movq	%r9, 88(%rsp)           # 8-byte Spill
	leaq	3(%r9), %rbp
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	leaq	7(%r9), %rdi
	movq	%rdi, 216(%rsp)         # 8-byte Spill
	leaq	11(%r9), %rsi
	movq	%rsi, 264(%rsp)         # 8-byte Spill
	leaq	15(%r9), %rdx
	movq	%rdx, 328(%rsp)         # 8-byte Spill
	cmpq	$3, %r8
	leaq	-64(%rsp), %rax
	movq	%rax, %rbx
	cmovgq	%rbp, %rbx
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	movq	%rax, %rbp
	cmovgq	%rdi, %rbp
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	movq	%rax, %rdi
	cmovgq	%rsi, %rdi
	movq	%rdi, 256(%rsp)         # 8-byte Spill
	movq	%rax, %rsi
	cmovgq	%rdx, %rsi
	movq	%rsi, 320(%rsp)         # 8-byte Spill
	cmpq	$2, %r8
	leaq	2(%r9), %rsi
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	leaq	6(%r9), %rsi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	leaq	10(%r9), %rsi
	movq	%rsi, 248(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	leaq	14(%r9), %rsi
	movq	%rsi, 312(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 304(%rsp)         # 8-byte Spill
	cmpq	$1, %r8
	leaq	1(%r9), %rsi
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	leaq	5(%r9), %rsi
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	leaq	9(%r9), %rsi
	movq	%rsi, 232(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	leaq	13(%r9), %rsi
	movq	%rsi, 296(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 288(%rsp)         # 8-byte Spill
	testq	%r8, %r8
	leaq	12(%r9), %rsi
	movq	%rsi, 272(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 280(%rsp)         # 8-byte Spill
	testq	%r8, %r8
	leaq	8(%r9), %rsi
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	cmovgq	%rsi, %rdx
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	testq	%r8, %r8
	movq	%rax, %rdx
	cmovgq	%r9, %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	leaq	4(%r9), %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdi
	cmovgq	%rdx, %rsi
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movq	%r10, 40(%rsp)          # 8-byte Spill
	cmpq	$47, %r10
	leaq	188(%r13), %rax
	movq	%rdi, %rdx
	cmovgq	%rax, %rdx
	movl	%r11d, -96(%rsp)        # 4-byte Spill
	cmpl	$10, %r11d
	cmovgq	%rax, %rdx
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	cmpq	$42, %r10
	leaq	168(%r13), %rax
	movq	%rdi, %rdx
	movq	%rdi, %r14
	cmovgq	%rax, %rdx
	cmpl	$10, %r11d
	cmovgq	%rax, %rdx
	movq	%rdx, -112(%rsp)        # 8-byte Spill
	movb	$1, -81(%rsp)
	movl	(%rcx), %eax
	bswapl	%eax
	xorl	(%r13), %eax
	movl	%eax, %esi
	shrl	$24, %esi
	cmpq	$256, %rsi              # imm = 0x100
	movl	4(%rcx), %ebx
	bswapl	%ebx
	movl	8(%rcx), %edx
	bswapl	%edx
	leaq	Te0(,%rsi,4), %r9
	movq	%rdi, %rbp
	cmovlq	%r9, %rbp
	xorl	4(%r13), %ebx
	movl	%ebx, %r10d
	movzbl	%bl, %r12d
	movzbl	%bh, %edi
	movq	%rdi, %r15
	movl	12(%rcx), %ecx
	bswapl	%ecx
	xorl	8(%r13), %edx
	xorl	12(%r13), %ecx
	testl	%esi, %esi
	cmovneq	%r9, %rbp
	setne	-82(%rsp)
	movl	(%rbp), %r8d
	cmovel	Te0(%rip), %r8d
	shrl	$16, %ebx
	movzbl	%bl, %ebp
	cmpq	$256, %rbp              # imm = 0x100
	leaq	Te1(,%rbp,4), %rbx
	movq	%r14, %rdi
	cmovlq	%rbx, %rdi
	testl	%ebp, %ebp
	cmovneq	%rbx, %rdi
	setne	-84(%rsp)
	movl	(%rdi), %edi
	cmovel	Te1(%rip), %edi
	movzbl	%dh, %ebx
	cmpq	$256, %rbx              # imm = 0x100
	leaq	Te2(,%rbx,4), %rbp
	movq	%r14, %rsi
	cmovlq	%rbp, %rsi
	testl	%ebx, %ebx
	cmovneq	%rbp, %rsi
	setne	-86(%rsp)
	movl	(%rsi), %esi
	cmovel	Te2(%rip), %esi
	xorl	%edi, %esi
	movzbl	%cl, %edi
	cmpq	$256, %rdi              # imm = 0x100
	leaq	Te3(,%rdi,4), %rbp
	movq	%r14, %rbx
	cmovlq	%rbp, %rbx
	testl	%edi, %edi
	cmovneq	%rbp, %rbx
	setne	-88(%rsp)
	movl	%edx, %r11d
	movzbl	%dl, %r9d
	movl	(%rbx), %ebx
	cmovel	Te3(%rip), %ebx
	xorl	%esi, %ebx
	xorl	%r8d, %ebx
	shrl	$24, %r10d
	movzbl	%al, %edi
	movzbl	%ah, %esi
	shrl	$16, %eax
	movzbl	%al, %r8d
	movl	Te0(,%r10,4), %eax
	shrl	$16, %edx
	movzbl	%dl, %edx
	xorl	Te1(,%rdx,4), %eax
	movzbl	%ch, %edx
	xorl	Te2(,%rdx,4), %eax
	xorl	Te3(,%rdi,4), %eax
	movb	$1, -83(%rsp)
	movb	$1, -85(%rsp)
	movb	$1, -87(%rsp)
	movb	$1, -121(%rsp)
	xorl	20(%r13), %eax
	shrl	$24, %r11d
	movl	%eax, %r14d
	movzbl	%al, %edx
	movq	%rdx, -120(%rsp)        # 8-byte Spill
	movzbl	%ah, %edx
	movq	%rdx, %r10
	movl	%eax, %ebp
	movl	Te0(,%r11,4), %edx
	movl	%ecx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	xorl	Te1(,%rax,4), %edx
	xorl	Te2(,%rsi,4), %edx
	xorl	Te3(,%r12,4), %edx
	shrl	$24, %ecx
	movl	Te0(,%rcx,4), %eax
	xorl	Te1(,%r8,4), %eax
	xorl	Te2(,%r15,4), %eax
	xorl	Te3(,%r9,4), %eax
	xorl	16(%r13), %ebx
	xorl	24(%r13), %edx
	movl	%ebx, %esi
	shrl	$24, %esi
	movzbl	%dh, %ecx
	movl	%edx, %r11d
	movzbl	%dl, %r8d
	movl	%edx, %edi
	movl	Te0(,%rsi,4), %edx
	shrl	$16, %ebp
	movzbl	%bpl, %esi
	xorl	Te1(,%rsi,4), %edx
	xorl	Te2(,%rcx,4), %edx
	xorl	28(%r13), %eax
	movzbl	%al, %ecx
	xorl	Te3(,%rcx,4), %edx
	shrl	$24, %r14d
	movzbl	%bl, %ecx
	movzbl	%bh, %esi
	shrl	$16, %ebx
	movzbl	%bl, %r12d
	movl	Te0(,%r14,4), %ebx
	shrl	$16, %edi
	movzbl	%dil, %edi
	xorl	Te1(,%rdi,4), %ebx
	movzbl	%ah, %edi
	xorl	Te2(,%rdi,4), %ebx
	xorl	Te3(,%rcx,4), %ebx
	xorl	36(%r13), %ebx
	shrl	$24, %r11d
	movl	%ebx, %r14d
	movzbl	%bl, %ecx
	movq	%rcx, -104(%rsp)        # 8-byte Spill
	movzbl	%bh, %ecx
	movq	%rcx, %r15
	movl	%ebx, %ebp
	movl	Te0(,%r11,4), %ebx
	movl	%eax, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	xorl	Te1(,%rcx,4), %ebx
	xorl	Te2(,%rsi,4), %ebx
	movq	-120(%rsp), %rcx        # 8-byte Reload
	xorl	Te3(,%rcx,4), %ebx
	shrl	$24, %eax
	movl	Te0(,%rax,4), %ecx
	xorl	Te1(,%r12,4), %ecx
	xorl	Te2(,%r10,4), %ecx
	xorl	Te3(,%r8,4), %ecx
	xorl	32(%r13), %edx
	xorl	40(%r13), %ebx
	movl	%edx, %esi
	shrl	$24, %esi
	movzbl	%bh, %eax
	movl	%ebx, %r8d
	movzbl	%bl, %r10d
	movl	%ebx, %edi
	movl	Te0(,%rsi,4), %ebx
	shrl	$16, %ebp
	movzbl	%bpl, %esi
	xorl	Te1(,%rsi,4), %ebx
	xorl	Te2(,%rax,4), %ebx
	xorl	44(%r13), %ecx
	movzbl	%cl, %eax
	xorl	Te3(,%rax,4), %ebx
	shrl	$24, %r14d
	movzbl	%dl, %eax
	movzbl	%dh, %ebp
	shrl	$16, %edx
	movzbl	%dl, %r12d
	movl	Te0(,%r14,4), %edx
	shrl	$16, %edi
	movzbl	%dil, %esi
	xorl	Te1(,%rsi,4), %edx
	movzbl	%ch, %esi
	xorl	Te2(,%rsi,4), %edx
	xorl	Te3(,%rax,4), %edx
	xorl	52(%r13), %edx
	shrl	$24, %r8d
	movl	%edx, %esi
	movzbl	%dl, %eax
	movq	%rax, -120(%rsp)        # 8-byte Spill
	movzbl	%dh, %eax
	movq	%rax, %r9
	movl	%edx, %eax
	movl	Te0(,%r8,4), %edx
	movl	%ecx, %edi
	shrl	$16, %edi
	movzbl	%dil, %edi
	xorl	Te1(,%rdi,4), %edx
	xorl	Te2(,%rbp,4), %edx
	movq	-104(%rsp), %rdi        # 8-byte Reload
	xorl	Te3(,%rdi,4), %edx
	shrl	$24, %ecx
	movl	Te0(,%rcx,4), %ecx
	xorl	Te1(,%r12,4), %ecx
	xorl	Te2(,%r15,4), %ecx
	xorl	Te3(,%r10,4), %ecx
	xorl	48(%r13), %ebx
	xorl	56(%r13), %edx
	movl	%ebx, %ebp
	shrl	$24, %ebp
	movzbl	%dh, %edi
	movl	%edx, %r8d
	movzbl	%dl, %r10d
	movl	Te0(,%rbp,4), %ebp
	shrl	$16, %eax
	movzbl	%al, %eax
	xorl	Te1(,%rax,4), %ebp
	xorl	Te2(,%rdi,4), %ebp
	xorl	60(%r13), %ecx
	movzbl	%cl, %eax
	xorl	Te3(,%rax,4), %ebp
	shrl	$24, %esi
	movzbl	%bl, %eax
	movzbl	%bh, %edi
	shrl	$16, %ebx
	movzbl	%bl, %r12d
	movl	Te0(,%rsi,4), %ebx
	shrl	$16, %edx
	movzbl	%dl, %edx
	xorl	Te1(,%rdx,4), %ebx
	movzbl	%ch, %edx
	xorl	Te2(,%rdx,4), %ebx
	xorl	Te3(,%rax,4), %ebx
	xorl	68(%r13), %ebx
	shrl	$24, %r8d
	movl	%ebx, %r11d
	movzbl	%bl, %eax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movzbl	%bh, %eax
	movq	%rax, %r14
	movl	%ebx, %esi
	movl	Te0(,%r8,4), %eax
	movl	%ecx, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	xorl	Te1(,%rdx,4), %eax
	xorl	Te2(,%rdi,4), %eax
	movq	-120(%rsp), %rdx        # 8-byte Reload
	xorl	Te3(,%rdx,4), %eax
	shrl	$24, %ecx
	movl	Te0(,%rcx,4), %ebx
	xorl	Te1(,%r12,4), %ebx
	xorl	Te2(,%r9,4), %ebx
	xorl	Te3(,%r10,4), %ebx
	xorl	64(%r13), %ebp
	xorl	72(%r13), %eax
	movl	%ebp, %ecx
	shrl	$24, %ecx
	movzbl	%ah, %edi
	movl	%eax, %r8d
	movzbl	%al, %r10d
	movl	Te0(,%rcx,4), %edx
	shrl	$16, %esi
	movzbl	%sil, %ecx
	xorl	Te1(,%rcx,4), %edx
	xorl	Te2(,%rdi,4), %edx
	xorl	76(%r13), %ebx
	movzbl	%bl, %ecx
	xorl	Te3(,%rcx,4), %edx
	shrl	$24, %r11d
	movl	%ebp, %ecx
	movzbl	%cl, %esi
	movzbl	%ch, %edi
	shrl	$16, %ecx
	movzbl	%cl, %r12d
	movl	Te0(,%r11,4), %ecx
	shrl	$16, %eax
	movzbl	%al, %eax
	xorl	Te1(,%rax,4), %ecx
	movzbl	%bh, %eax
	xorl	Te2(,%rax,4), %ecx
	xorl	Te3(,%rsi,4), %ecx
	xorl	84(%r13), %ecx
	shrl	$24, %r8d
	movl	%ecx, %r11d
	movzbl	%cl, %eax
	movq	%rax, -120(%rsp)        # 8-byte Spill
	movzbl	%ch, %eax
	movq	%rax, %r15
	movl	%ecx, %eax
	movl	Te0(,%r8,4), %ecx
	movl	%ebx, %ebp
	shrl	$16, %ebp
	movzbl	%bpl, %ebp
	xorl	Te1(,%rbp,4), %ecx
	xorl	Te2(,%rdi,4), %ecx
	movq	-104(%rsp), %rsi        # 8-byte Reload
	xorl	Te3(,%rsi,4), %ecx
	shrl	$24, %ebx
	movl	Te0(,%rbx,4), %ebx
	xorl	Te1(,%r12,4), %ebx
	xorl	Te2(,%r14,4), %ebx
	xorl	Te3(,%r10,4), %ebx
	xorl	80(%r13), %edx
	xorl	88(%r13), %ecx
	movl	%edx, %edi
	shrl	$24, %edi
	movzbl	%ch, %ebp
	movl	%ecx, %r8d
	movzbl	%cl, %r9d
	movl	%ecx, %esi
	movl	Te0(,%rdi,4), %ecx
	shrl	$16, %eax
	movzbl	%al, %eax
	xorl	Te1(,%rax,4), %ecx
	xorl	Te2(,%rbp,4), %ecx
	xorl	92(%r13), %ebx
	movzbl	%bl, %eax
	xorl	Te3(,%rax,4), %ecx
	shrl	$24, %r11d
	movzbl	%dl, %edi
	movzbl	%dh, %eax
	shrl	$16, %edx
	movzbl	%dl, %r12d
	movl	Te0(,%r11,4), %edx
	shrl	$16, %esi
	movzbl	%sil, %esi
	xorl	Te1(,%rsi,4), %edx
	movzbl	%bh, %esi
	xorl	Te2(,%rsi,4), %edx
	xorl	Te3(,%rdi,4), %edx
	xorl	100(%r13), %edx
	shrl	$24, %r8d
	movl	%edx, %edi
	movzbl	%dl, %esi
	movq	%rsi, -104(%rsp)        # 8-byte Spill
	movzbl	%dh, %esi
	movq	%rsi, %r10
	movl	%edx, %esi
	movl	Te0(,%r8,4), %edx
	movl	%ebx, %ebp
	shrl	$16, %ebp
	movzbl	%bpl, %ebp
	xorl	Te1(,%rbp,4), %edx
	xorl	Te2(,%rax,4), %edx
	movq	-120(%rsp), %rax        # 8-byte Reload
	xorl	Te3(,%rax,4), %edx
	shrl	$24, %ebx
	movl	Te0(,%rbx,4), %ebx
	xorl	Te1(,%r12,4), %ebx
	xorl	Te2(,%r15,4), %ebx
	xorl	Te3(,%r9,4), %ebx
	xorl	96(%r13), %ecx
	xorl	104(%r13), %edx
	movl	%ecx, %eax
	shrl	$24, %eax
	movzbl	%dh, %ebp
	movl	%edx, %r8d
	movzbl	%dl, %r14d
	movl	Te0(,%rax,4), %eax
	shrl	$16, %esi
	movzbl	%sil, %esi
	xorl	Te1(,%rsi,4), %eax
	xorl	Te2(,%rbp,4), %eax
	xorl	108(%r13), %ebx
	movzbl	%bl, %esi
	xorl	Te3(,%rsi,4), %eax
	shrl	$24, %edi
	movzbl	%cl, %esi
	movzbl	%ch, %ebp
	shrl	$16, %ecx
	movzbl	%cl, %r12d
	movl	Te0(,%rdi,4), %ecx
	shrl	$16, %edx
	movzbl	%dl, %edx
	xorl	Te1(,%rdx,4), %ecx
	movzbl	%bh, %edx
	xorl	Te2(,%rdx,4), %ecx
	xorl	Te3(,%rsi,4), %ecx
	xorl	116(%r13), %ecx
	shrl	$24, %r8d
	movl	%ecx, %r11d
	movzbl	%cl, %edx
	movq	%rdx, -120(%rsp)        # 8-byte Spill
	movzbl	%ch, %edx
	movq	%rdx, %r9
	movl	%ecx, %edi
	movl	Te0(,%r8,4), %ecx
	movl	%ebx, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	xorl	Te1(,%rdx,4), %ecx
	xorl	Te2(,%rbp,4), %ecx
	movq	-104(%rsp), %rdx        # 8-byte Reload
	xorl	Te3(,%rdx,4), %ecx
	shrl	$24, %ebx
	movl	Te0(,%rbx,4), %edx
	xorl	Te1(,%r12,4), %edx
	xorl	Te2(,%r10,4), %edx
	xorl	Te3(,%r14,4), %edx
	xorl	112(%r13), %eax
	xorl	120(%r13), %ecx
	movl	%eax, %ebp
	shrl	$24, %ebp
	movzbl	%ch, %ebx
	movl	%ecx, %r8d
	movzbl	%cl, %r10d
	movl	%ecx, %esi
	movl	Te0(,%rbp,4), %ecx
	shrl	$16, %edi
	movzbl	%dil, %edi
	xorl	Te1(,%rdi,4), %ecx
	xorl	Te2(,%rbx,4), %ecx
	xorl	124(%r13), %edx
	movzbl	%dl, %edi
	xorl	Te3(,%rdi,4), %ecx
	shrl	$24, %r11d
	movzbl	%al, %edi
	movzbl	%ah, %ebx
	movq	%rbx, %r14
	shrl	$16, %eax
	movzbl	%al, %r12d
	movl	Te0(,%r11,4), %eax
	shrl	$16, %esi
	movzbl	%sil, %esi
	xorl	Te1(,%rsi,4), %eax
	movzbl	%dh, %esi
	xorl	Te2(,%rsi,4), %eax
	xorl	Te3(,%rdi,4), %eax
	xorl	132(%r13), %eax
	shrl	$24, %r8d
	movl	%eax, %r11d
	movzbl	%ah, %ebx
	movzbl	%al, %r15d
	movl	%eax, %edi
	movl	Te0(,%r8,4), %eax
	movl	%edx, %ebp
	shrl	$16, %ebp
	movzbl	%bpl, %ebp
	xorl	Te1(,%rbp,4), %eax
	xorl	Te2(,%r14,4), %eax
	movq	-120(%rsp), %rsi        # 8-byte Reload
	xorl	Te3(,%rsi,4), %eax
	shrl	$24, %edx
	movl	Te0(,%rdx,4), %edx
	xorl	Te1(,%r12,4), %edx
	xorl	Te2(,%r9,4), %edx
	xorl	Te3(,%r10,4), %edx
	xorl	128(%r13), %ecx
	xorl	136(%r13), %eax
	shrl	$24, %edi
	movzbl	%cl, %r8d
	movl	%ecx, %r9d
	movzbl	%ch, %ebp
	movl	%ecx, %esi
	movl	Te0(,%rdi,4), %edi
	movl	%eax, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	xorl	Te1(,%rcx,4), %edi
	xorl	140(%r13), %edx
	movzbl	%dh, %ecx
	xorl	Te2(,%rcx,4), %edi
	xorl	Te3(,%r8,4), %edi
	xorl	148(%r13), %edi
	movl	%edi, -120(%rsp)        # 4-byte Spill
	movq	%r13, %r8
	movzbl	%dil, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te3(,%rcx,4), %rdi
	leaq	-64(%rsp), %r14
	movq	%r14, %r13
	cmovlq	%rdi, %r13
	movl	-96(%rsp), %r10d        # 4-byte Reload
	cmpl	$10, %r10d
	cmovgq	%rdi, %r13
	shrl	$24, %esi
	shrl	$16, %r11d
	movzbl	%r11b, %edi
	movl	Te0(,%rsi,4), %ecx
	xorl	Te1(,%rdi,4), %ecx
	movzbl	%ah, %esi
	xorl	Te2(,%rsi,4), %ecx
	movzbl	%dl, %esi
	xorl	Te3(,%rsi,4), %ecx
	xorl	144(%r8), %ecx
	movq	%r8, %r11
	movzbl	%ch, %esi
	movl	%ecx, %r12d
	cmpq	$256, %rsi              # imm = 0x100
	leaq	Te2(,%rsi,4), %rsi
	movq	%r14, %rdi
	cmovlq	%rsi, %rdi
	cmpl	$10, %r10d
	cmovgq	%rsi, %rdi
	movl	%edx, %esi
	shrl	$24, %esi
	shrl	$16, %r9d
	movzbl	%r9b, %r8d
	movl	Te0(,%rsi,4), %ecx
	xorl	Te1(,%r8,4), %ecx
	xorl	Te2(,%rbx,4), %ecx
	movzbl	%al, %esi
	xorl	Te3(,%rsi,4), %ecx
	xorl	156(%r11), %ecx
	movl	%ecx, %esi
	movl	%ecx, %r8d
	shrl	$16, %esi
	movzbl	%sil, %esi
	cmpq	$256, %rsi              # imm = 0x100
	leaq	Te1(,%rsi,4), %rsi
	movq	%r14, %rbx
	cmovlq	%rsi, %rbx
	cmpl	$10, %r10d
	cmovgq	%rsi, %rbx
	shrl	$16, %edx
	movzbl	%dl, %edx
	shrl	$24, %eax
	movl	Te0(,%rax,4), %ecx
	xorl	Te1(,%rdx,4), %ecx
	xorl	Te2(,%rbp,4), %ecx
	xorl	Te3(,%r15,4), %ecx
	movq	%r11, %r15
	xorl	152(%r11), %ecx
	movl	%ecx, %eax
	movl	%ecx, %r11d
	shrl	$24, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te0(,%rax,4), %rax
	movq	%r14, %rdx
	cmovlq	%rax, %rdx
	cmpl	$10, %r10d
	cmovgq	%rax, %rdx
	setg	-122(%rsp)
	movl	(%rdx), %ecx
	xorl	(%rbx), %ecx
	xorl	(%rdi), %ecx
	xorl	(%r13), %ecx
	movq	-112(%rsp), %rax        # 8-byte Reload
	xorl	(%rax), %ecx
	movl	%ecx, -112(%rsp)        # 4-byte Spill
	movzbl	%cl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te3(,%rax,4), %rax
	movq	%r14, %r9
	movq	%r14, %rcx
	cmovlq	%rax, %rcx
	movl	%r10d, %r13d
	cmpl	$10, %r10d
	cmovgq	%rax, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	40(%rsp), %r10          # 8-byte Reload
	cmpq	$41, %r10
	leaq	164(%r15), %rcx
	movq	%r14, %rax
	cmovgq	%rcx, %rax
	cmpl	$10, %r13d
	cmovgq	%rcx, %rax
	movl	%r12d, %r14d
	movzbl	%r14b, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te3(,%rcx,4), %rcx
	movq	%r9, %rdx
	cmovlq	%rcx, %rdx
	cmpl	$10, %r13d
	cmovgq	%rcx, %rdx
	movl	%r8d, %ebx
	movzbl	%bh, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te2(,%rcx,4), %rcx
	movq	%r9, %rsi
	cmovlq	%rcx, %rsi
	cmpl	$10, %r13d
	cmovgq	%rcx, %rsi
	movl	%r11d, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te1(,%rcx,4), %rcx
	movq	%r9, %rdi
	cmovlq	%rcx, %rdi
	cmpl	$10, %r13d
	cmovgq	%rcx, %rdi
	movl	-120(%rsp), %r12d       # 4-byte Reload
	movl	%r12d, %ecx
	shrl	$24, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te0(,%rcx,4), %rcx
	movq	%r9, %rbp
	cmovlq	%rcx, %rbp
	cmpl	$10, %r13d
	cmovgq	%rcx, %rbp
	movl	(%rbp), %ecx
	xorl	(%rdi), %ecx
	xorl	(%rsi), %ecx
	xorl	(%rdx), %ecx
	xorl	(%rax), %ecx
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movzbl	%ch, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te2(,%rax,4), %rax
	movq	%r9, %rcx
	cmovlq	%rax, %rcx
	cmpl	$10, %r13d
	cmovgq	%rax, %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	cmpq	$40, %r10
	leaq	160(%r15), %rcx
	movq	%r9, %rax
	cmovgq	%rcx, %rax
	cmpl	$10, %r13d
	cmovgq	%rcx, %rax
	movzbl	%bl, %ecx
	movl	%r8d, 48(%rsp)          # 4-byte Spill
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te3(,%rcx,4), %rdx
	movq	%r9, %rcx
	cmovlq	%rdx, %rcx
	cmpl	$10, %r13d
	cmovgq	%rdx, %rcx
	movl	%r11d, %ebx
	movl	%r11d, -104(%rsp)       # 4-byte Spill
	movzbl	%bh, %edx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te2(,%rdx,4), %rdx
	movq	%r9, %rsi
	cmovlq	%rdx, %rsi
	cmpl	$10, %r13d
	cmovgq	%rdx, %rsi
	movl	%r12d, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te1(,%rdx,4), %rdx
	movq	%r9, %rdi
	cmovlq	%rdx, %rdi
	cmpl	$10, %r13d
	cmovgq	%rdx, %rdi
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	movl	%r14d, %edx
	shrl	$24, %edx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te0(,%rdx,4), %rdx
	movq	%r9, %rbp
	cmovlq	%rdx, %rbp
	cmpl	$10, %r13d
	cmovgq	%rdx, %rbp
	movl	(%rbp), %edx
	xorl	(%rdi), %edx
	xorl	(%rsi), %edx
	xorl	(%rcx), %edx
	xorl	(%rax), %edx
	movl	%edx, %eax
	movq	%rdx, %r11
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te1(,%rax,4), %rax
	movq	%r9, %rcx
	cmovlq	%rax, %rcx
	cmpl	$10, %r13d
	cmovgq	%rax, %rcx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	cmpq	$43, %r10
	leaq	172(%r15), %rax
	movq	%r9, %rcx
	cmovgq	%rax, %rcx
	cmpl	$10, %r13d
	cmovgq	%rax, %rcx
	movzbl	%bl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te3(,%rax,4), %rax
	movq	%r9, %rsi
	cmovlq	%rax, %rsi
	cmpl	$10, %r13d
	cmovgq	%rax, %rsi
	movl	-120(%rsp), %eax        # 4-byte Reload
	movzbl	%ah, %eax
	leaq	Te2(,%rax,4), %rdi
	cmpq	$256, %rax              # imm = 0x100
	movq	%r9, %rbp
	cmovlq	%rdi, %rbp
	cmpl	$10, %r13d
	cmovgq	%rdi, %rbp
	movl	%r14d, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te1(,%rax,4), %rax
	movq	%r9, %rdi
	cmovlq	%rax, %rdi
	cmpl	$10, %r13d
	cmovgq	%rax, %rdi
	movl	%r8d, %eax
	shrl	$24, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te0(,%rax,4), %rax
	movq	%r9, %rbx
	cmovlq	%rax, %rbx
	cmpl	$10, %r13d
	cmovgq	%rax, %rbx
	movl	(%rbx), %eax
	xorl	(%rdi), %eax
	xorl	(%rbp), %eax
	xorl	(%rsi), %eax
	xorl	(%rcx), %eax
	movl	%eax, %r8d
	movzbl	%al, %r12d
	movzbl	%ah, %esi
	movl	%eax, %ecx
	movl	-112(%rsp), %edx        # 4-byte Reload
	movl	%edx, %r14d
	movzbl	%dh, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	%edx, %ebp
	shrl	$24, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te0(,%rcx,4), %rcx
	movq	%r9, %rax
	cmovlq	%rcx, %rax
	movl	%r13d, %edx
	cmpl	$10, %r13d
	cmovgq	%rcx, %rax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	cmpq	$46, %r10
	movq	%r15, %rbx
	leaq	184(%r15), %rcx
	movq	%r9, %rax
	cmovgq	%rcx, %rax
	cmpl	$10, %r13d
	cmovgq	%rcx, %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movl	24(%rsp), %r13d         # 4-byte Reload
	movzbl	%r13b, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te3(,%rcx,4), %rcx
	movq	%r9, %rax
	cmovlq	%rcx, %rax
	cmpl	$10, %edx
	cmovgq	%rcx, %rax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movq	%r11, %rax
	movq	%r11, -40(%rsp)         # 8-byte Spill
	movzbl	%ah, %ecx
	leaq	Te2(,%rcx,4), %rdi
	cmpq	$256, %rcx              # imm = 0x100
	movq	%r9, %rcx
	cmovlq	%rdi, %rcx
	cmpl	$10, %edx
	cmovgq	%rdi, %rcx
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	shrl	$16, %r8d
	movzbl	%r8b, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te1(,%rcx,4), %rcx
	movq	%r9, %rdi
	cmovlq	%rcx, %rdi
	cmpl	$10, %edx
	cmovgq	%rcx, %rdi
	movq	%rdi, -48(%rsp)         # 8-byte Spill
	shrl	$24, %ebp
	cmpq	$256, %rbp              # imm = 0x100
	leaq	Te0(,%rbp,4), %rcx
	movq	%r9, %rdi
	cmovlq	%rcx, %rdi
	cmpl	$10, %edx
	cmovgq	%rcx, %rdi
	movq	%rdi, -56(%rsp)         # 8-byte Spill
	movq	%r10, %rdi
	cmpq	$45, %r10
	leaq	180(%r15), %rcx
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	%r9, %rbp
	cmovgq	%rcx, %rbp
	cmpl	$10, %edx
	cmovgq	%rcx, %rbp
	movzbl	%al, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te3(,%rcx,4), %rcx
	movq	%r9, %r15
	cmovlq	%rcx, %r15
	cmpl	$10, %edx
	cmovgq	%rcx, %r15
	leaq	Te2(,%rsi,4), %rcx
	cmpq	$256, %rsi              # imm = 0x100
	movq	%r9, %r11
	cmovlq	%rcx, %r11
	cmpl	$10, %edx
	cmovgq	%rcx, %r11
	shrl	$16, %r14d
	movzbl	%r14b, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te1(,%rax,4), %rax
	movq	%r9, %r10
	cmovlq	%rax, %r10
	cmpl	$10, %edx
	cmovgq	%rax, %r10
	movl	%r13d, %eax
	shrl	$24, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te0(,%rax,4), %rsi
	movq	%r9, %r8
	cmovlq	%rsi, %r8
	cmpl	$10, %edx
	cmovgq	%rsi, %r8
	cmpq	$44, %rdi
	movq	%rdi, %rax
	leaq	176(%rbx), %rdi
	movq	%r9, %r14
	cmovgq	%rdi, %r14
	cmpl	$10, %edx
	cmovgq	%rdi, %r14
	cmpq	$256, %r12              # imm = 0x100
	leaq	Te3(,%r12,4), %r12
	movq	%r9, %rdi
	movq	%r9, %rcx
	cmovlq	%r12, %rdi
	cmpl	$10, %edx
	cmovgq	%r12, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	cmpq	$256, %rsi              # imm = 0x100
	leaq	Te2(,%rsi,4), %r12
	movq	%r9, %rbx
	cmovlq	%r12, %rbx
	cmpl	$10, %edx
	cmovgq	%r12, %rbx
	movl	%r13d, %esi
	shrl	$16, %esi
	movzbl	%sil, %r12d
	cmpq	$256, %r12              # imm = 0x100
	leaq	Te1(,%r12,4), %r12
	movq	%r9, %rsi
	cmovlq	%r12, %rsi
	cmpl	$10, %edx
	cmovgq	%r12, %rsi
	movq	-40(%rsp), %r12         # 8-byte Reload
	shrl	$24, %r12d
	leaq	Te0(,%r12,4), %r9
	cmpq	$256, %r12              # imm = 0x100
	movq	%rcx, %r12
	cmovlq	%r9, %r12
	cmpl	$10, %edx
	cmovgq	%r9, %r12
	setg	%r9b
	cmpl	$12, %edx
	setg	%r13b
	andb	%r9b, %r13b
	movq	%rax, %rdx
	cmpq	$55, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	220(%rcx), %r9
	leaq	-64(%rsp), %rax
	cmovgq	%r9, %rax
	testb	%r13b, %r13b
	cmovneq	%r9, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	cmpq	$50, %rdx
	leaq	200(%rcx), %rdx
	leaq	-64(%rsp), %rcx
	movq	%rcx, %r9
	cmovgq	%rdx, %r9
	testb	%r13b, %r13b
	cmovneq	%rdx, %r9
	movl	(%r8), %eax
	xorl	(%r10), %eax
	xorl	(%r11), %eax
	xorl	(%r15), %eax
	xorl	(%rbp), %eax
	movzbl	%al, %edx
	movl	%eax, %r8d
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te3(,%rdx,4), %rdx
	movq	%rcx, %rbp
	movq	%rcx, %r10
	cmovlq	%rdx, %rbp
	testb	%r13b, %r13b
	cmovneq	%rdx, %rbp
	movl	(%r12), %ecx
	xorl	(%rsi), %ecx
	xorl	(%rbx), %ecx
	xorl	(%rdi), %ecx
	xorl	(%r14), %ecx
	movzbl	%ch, %eax
	movl	%ecx, %r15d
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te2(,%rax,4), %rax
	movq	%r10, %rsi
	cmovlq	%rax, %rsi
	testb	%r13b, %r13b
	cmovneq	%rax, %rsi
	movq	-32(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	movq	-8(%rsp), %rax          # 8-byte Reload
	xorl	(%rax), %ebx
	movq	(%rsp), %rax            # 8-byte Reload
	xorl	(%rax), %ebx
	movq	16(%rsp), %rax          # 8-byte Reload
	xorl	(%rax), %ebx
	movq	-80(%rsp), %rax         # 8-byte Reload
	xorl	(%rax), %ebx
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te1(,%rax,4), %rax
	movq	%r10, %rcx
	cmovlq	%rax, %rcx
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	movq	-56(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	movq	-48(%rsp), %rax         # 8-byte Reload
	xorl	(%rax), %edx
	movq	-72(%rsp), %rax         # 8-byte Reload
	xorl	(%rax), %edx
	movq	-24(%rsp), %rax         # 8-byte Reload
	xorl	(%rax), %edx
	movq	-16(%rsp), %rax         # 8-byte Reload
	xorl	(%rax), %edx
	movl	%edx, %eax
	movl	%edx, %edi
	shrl	$24, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te0(,%rax,4), %rax
	movq	%r10, %rdx
	cmovlq	%rax, %rdx
	testb	%r13b, %r13b
	cmovneq	%rax, %rdx
	movl	(%rdx), %eax
	xorl	(%rcx), %eax
	xorl	(%rsi), %eax
	xorl	(%rbp), %eax
	movb	%r13b, -89(%rsp)
	xorl	(%r9), %eax
	movl	%eax, -72(%rsp)         # 4-byte Spill
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te3(,%rax,4), %rax
	movq	%r10, %rcx
	cmovlq	%rax, %rcx
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	40(%rsp), %r14          # 8-byte Reload
	cmpq	$49, %r14
	movq	32(%rsp), %r11          # 8-byte Reload
	leaq	196(%r11), %rcx
	movq	%r10, %r12
	cmovgq	%rcx, %r12
	testb	%r13b, %r13b
	cmovneq	%rcx, %r12
	movzbl	%r15b, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te3(,%rcx,4), %rcx
	movq	%r10, %rax
	cmovlq	%rcx, %rax
	testb	%r13b, %r13b
	cmovneq	%rcx, %rax
	movzbl	%bh, %ecx
	movl	%ebx, %r9d
	leaq	Te2(,%rcx,4), %rsi
	cmpq	$256, %rcx              # imm = 0x100
	movq	%r10, %rcx
	cmovlq	%rsi, %rcx
	testb	%r13b, %r13b
	cmovneq	%rsi, %rcx
	movl	%edi, %ebx
	movl	%edi, %esi
	shrl	$16, %esi
	movzbl	%sil, %esi
	cmpq	$256, %rsi              # imm = 0x100
	leaq	Te1(,%rsi,4), %rsi
	movq	%r10, %rdi
	cmovlq	%rsi, %rdi
	testb	%r13b, %r13b
	cmovneq	%rsi, %rdi
	movl	%r8d, -112(%rsp)        # 4-byte Spill
	movl	%r8d, %esi
	shrl	$24, %esi
	cmpq	$256, %rsi              # imm = 0x100
	leaq	Te0(,%rsi,4), %rsi
	movq	%r10, %rbp
	cmovlq	%rsi, %rbp
	testb	%r13b, %r13b
	cmovneq	%rsi, %rbp
	movl	(%rbp), %edx
	xorl	(%rdi), %edx
	xorl	(%rcx), %edx
	xorl	(%rax), %edx
	xorl	(%r12), %edx
	movl	%edx, -16(%rsp)         # 4-byte Spill
	movzbl	%dh, %eax
	leaq	Te2(,%rax,4), %rcx
	cmpq	$256, %rax              # imm = 0x100
	movq	%r10, %rax
	cmovlq	%rcx, %rax
	testb	%r13b, %r13b
	cmovneq	%rcx, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	cmpq	$48, %r14
	leaq	192(%r11), %rcx
	movq	%r10, %rax
	cmovgq	%rcx, %rax
	testb	%r13b, %r13b
	cmovneq	%rcx, %rax
	movzbl	%r9b, %ecx
	movl	%r9d, -32(%rsp)         # 4-byte Spill
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te3(,%rcx,4), %rcx
	movq	%r10, %rsi
	cmovlq	%rcx, %rsi
	testb	%r13b, %r13b
	cmovneq	%rcx, %rsi
	movzbl	%bh, %ecx
	movl	%ebx, %r12d
	movl	%ebx, -8(%rsp)          # 4-byte Spill
	leaq	Te2(,%rcx,4), %rdx
	cmpq	$256, %rcx              # imm = 0x100
	movq	%r10, %rcx
	cmovlq	%rdx, %rcx
	testb	%r13b, %r13b
	cmovneq	%rdx, %rcx
	movl	%r8d, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te1(,%rdx,4), %rdx
	movq	%r10, %rdi
	cmovlq	%rdx, %rdi
	testb	%r13b, %r13b
	cmovneq	%rdx, %rdi
	movl	%r15d, -40(%rsp)        # 4-byte Spill
	movl	%r15d, %edx
	shrl	$24, %edx
	cmpq	$256, %rdx              # imm = 0x100
	leaq	Te0(,%rdx,4), %rdx
	movq	%r10, %rbp
	cmovlq	%rdx, %rbp
	testb	%r13b, %r13b
	cmovneq	%rdx, %rbp
	movl	(%rbp), %edx
	xorl	(%rdi), %edx
	xorl	(%rcx), %edx
	xorl	(%rsi), %edx
	xorl	(%rax), %edx
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te1(,%rax,4), %rax
	movq	%r10, %rcx
	cmovlq	%rax, %rcx
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	cmpq	$51, %r14
	leaq	204(%r11), %rax
	movq	%r10, %rsi
	cmovgq	%rax, %rsi
	testb	%r13b, %r13b
	cmovneq	%rax, %rsi
	movzbl	%r12b, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te3(,%rax,4), %rax
	movq	%r10, %rdi
	cmovlq	%rax, %rdi
	testb	%r13b, %r13b
	cmovneq	%rax, %rdi
	movl	-112(%rsp), %eax        # 4-byte Reload
	movzbl	%ah, %eax
	leaq	Te2(,%rax,4), %rcx
	cmpq	$256, %rax              # imm = 0x100
	movq	%r10, %rdx
	cmovlq	%rcx, %rdx
	testb	%r13b, %r13b
	cmovneq	%rcx, %rdx
	shrl	$16, %r15d
	movzbl	%r15b, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te1(,%rax,4), %rax
	movq	%r10, %rcx
	cmovlq	%rax, %rcx
	testb	%r13b, %r13b
	cmovneq	%rax, %rcx
	movl	%r9d, %eax
	shrl	$24, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te0(,%rax,4), %rax
	movq	%r10, %rbp
	cmovlq	%rax, %rbp
	testb	%r13b, %r13b
	cmovneq	%rax, %rbp
	movl	(%rbp), %eax
	xorl	(%rcx), %eax
	xorl	(%rdx), %eax
	xorl	(%rdi), %eax
	xorl	(%rsi), %eax
	movl	%eax, %r9d
	movzbl	%al, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movzbl	%ah, %ebx
                                        # kill: def $eax killed $eax def $rax
	movl	-72(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %r8d
	movzbl	%ch, %edx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
                                        # kill: def $ecx killed $ecx def $rcx
	shrl	$24, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te0(,%rax,4), %rax
	movq	%r10, %rdi
	movq	%r10, %rdx
	cmovlq	%rax, %rdx
	movl	%r13d, %r15d
	testb	%r13b, %r13b
	cmovneq	%rax, %rdx
	movq	%rdx, -72(%rsp)         # 8-byte Spill
	movq	%r14, %r10
	cmpq	$54, %r14
	leaq	216(%r11), %rax
	movq	%rdi, %rdx
	cmovgq	%rax, %rdx
	testb	%r13b, %r13b
	cmovneq	%rax, %rdx
	movq	%rdx, -48(%rsp)         # 8-byte Spill
	movl	-16(%rsp), %esi         # 4-byte Reload
	movzbl	%sil, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te3(,%rax,4), %rax
	movq	%rdi, %rdx
	cmovlq	%rax, %rdx
	testb	%r13b, %r13b
	cmovneq	%rax, %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	-80(%rsp), %rdx         # 8-byte Reload
	movzbl	%dh, %eax
	leaq	Te2(,%rax,4), %r14
	cmpq	$256, %rax              # imm = 0x100
	movq	%rdi, %rax
	cmovlq	%r14, %rax
	testb	%r13b, %r13b
	cmovneq	%r14, %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	shrl	$16, %r9d
	movzbl	%r9b, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te1(,%rax,4), %rax
	movq	%rdi, %rbp
	cmovlq	%rax, %rbp
	testb	%r13b, %r13b
	cmovneq	%rax, %rbp
	shrl	$24, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te0(,%rcx,4), %rax
	movq	%rdi, %r12
	cmovlq	%rax, %r12
	testb	%r13b, %r13b
	cmovneq	%rax, %r12
	movq	%r10, %rcx
	cmpq	$53, %r10
	leaq	212(%r11), %rax
	movq	%rdi, %r13
	cmovgq	%rax, %r13
	testb	%r15b, %r15b
	cmovneq	%rax, %r13
	movzbl	%dl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te3(,%rax,4), %rax
	movq	%rdi, %r14
	cmovlq	%rax, %r14
	testb	%r15b, %r15b
	cmovneq	%rax, %r14
	leaq	Te2(,%rbx,4), %rax
	cmpq	$256, %rbx              # imm = 0x100
	movq	%rdi, %rbx
	cmovlq	%rax, %rbx
	testb	%r15b, %r15b
	cmovneq	%rax, %rbx
	shrl	$16, %r8d
	movzbl	%r8b, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te1(,%rax,4), %rax
	movq	%rdi, %r10
	cmovlq	%rax, %r10
	testb	%r15b, %r15b
	cmovneq	%rax, %r10
	movl	%esi, %eax
	movl	%esi, %r9d
	shrl	$24, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te0(,%rax,4), %rax
	movq	%rdi, %r8
	movq	%rdi, %rsi
	cmovlq	%rax, %r8
	testb	%r15b, %r15b
	cmovneq	%rax, %r8
	cmpq	$52, %rcx
	leaq	208(%r11), %rcx
	cmovgq	%rcx, %rdi
	testb	%r15b, %r15b
	movl	%r15d, %r11d
	cmovneq	%rcx, %rdi
	movq	64(%rsp), %rcx          # 8-byte Reload
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te3(,%rcx,4), %rcx
	movq	%rsi, %r15
	cmovlq	%rcx, %rsi
	testb	%r11b, %r11b
	cmovneq	%rcx, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	leaq	Te2(,%rdx,4), %rcx
	cmpq	$256, %rdx              # imm = 0x100
	movq	%r15, %rdx
	cmovlq	%rcx, %rdx
	testb	%r11b, %r11b
	cmovneq	%rcx, %rdx
	movl	%r9d, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te1(,%rcx,4), %r9
	movq	%r15, %rcx
	cmovlq	%r9, %rcx
	testb	%r11b, %r11b
	movb	%r11b, 8(%rsp)          # 1-byte Spill
	cmovneq	%r9, %rcx
	movq	-80(%rsp), %rax         # 8-byte Reload
	shrl	$24, %eax
	leaq	Te0(,%rax,4), %r9
	cmpq	$256, %rax              # imm = 0x100
	movq	%r15, %rax
	cmovlq	%r9, %rax
	testb	%r11b, %r11b
	cmovneq	%r9, %rax
	movl	-96(%rsp), %r9d         # 4-byte Reload
	cmpl	$11, %r9d
	setl	%r11b
	cmpl	$13, %r9d
	setl	%r15b
	movl	(%rax), %eax
	xorl	(%rcx), %eax
	xorl	(%rdx), %eax
	xorl	(%rsi), %eax
	xorl	(%rdi), %eax
	movl	%eax, %esi
	movl	(%r8), %r8d
	xorl	(%r10), %r8d
	xorl	(%rbx), %r8d
	xorl	(%r14), %r8d
	xorl	(%r13), %r8d
	movl	(%r12), %eax
	xorl	(%rbp), %eax
	movq	-56(%rsp), %rcx         # 8-byte Reload
	xorl	(%rcx), %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	xorl	(%rcx), %eax
	movq	-48(%rsp), %rcx         # 8-byte Reload
	xorl	(%rcx), %eax
	movq	-72(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %edx
	movq	-24(%rsp), %rcx         # 8-byte Reload
	xorl	(%rcx), %edx
	movq	(%rsp), %rcx            # 8-byte Reload
	xorl	(%rcx), %edx
	movq	16(%rsp), %rcx          # 8-byte Reload
	xorl	(%rcx), %edx
	movq	24(%rsp), %rcx          # 8-byte Reload
	xorl	(%rcx), %edx
	movl	%r11d, %ebx
	andb	-121(%rsp), %bl
	andb	-122(%rsp), %r15b
	cmovnel	-40(%rsp), %esi         # 4-byte Folded Reload
	cmovnel	-112(%rsp), %r8d        # 4-byte Folded Reload
	cmovnel	-8(%rsp), %eax          # 4-byte Folded Reload
	cmovnel	-32(%rsp), %edx         # 4-byte Folded Reload
	testb	%bl, %bl
	cmovnel	52(%rsp), %esi          # 4-byte Folded Reload
	movl	%esi, %r11d
	cmovnel	-120(%rsp), %r8d        # 4-byte Folded Reload
	cmovnel	-104(%rsp), %eax        # 4-byte Folded Reload
	cmovnel	48(%rsp), %edx          # 4-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rdx, -120(%rsp)        # 8-byte Spill
	movzbl	%ah, %ebp
	movl	%eax, %r9d
	movzbl	%al, %edx
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%r15d, %eax
	orb	8(%rsp), %al            # 1-byte Folded Reload
	orb	%bl, %al
	movl	-96(%rsp), %esi         # 4-byte Reload
	shll	$2, %esi
	movslq	%esi, %r10
	movq	40(%rsp), %r13          # 8-byte Reload
	testq	%r13, %r13
	movq	32(%rsp), %r15          # 8-byte Reload
	leaq	(%r15,%r10,4), %rsi
	leaq	-64(%rsp), %r12
	movq	%r12, %rbx
	cmovgq	%rsi, %rbx
	testb	%al, %al
	cmovneq	%rsi, %rbx
	movzbl	%cl, %esi
	cmpq	$256, %rsi              # imm = 0x100
	leaq	Te4(,%rsi,4), %rsi
	movq	%r12, %rdi
	cmovlq	%rsi, %rdi
	testb	%al, %al
	cmovneq	%rsi, %rdi
	cmpq	$256, %rbp              # imm = 0x100
	leaq	Te4(,%rbp,4), %rsi
	movq	%r12, %rbp
	cmovlq	%rsi, %rbp
	testb	%al, %al
	cmovneq	%rsi, %rbp
	movl	%r8d, %esi
	shrl	$16, %esi
	movzbl	%sil, %esi
	cmpq	$256, %rsi              # imm = 0x100
	leaq	Te4(,%rsi,4), %rsi
	movq	%r12, %rcx
	cmovlq	%rsi, %rcx
	testb	%al, %al
	movl	%eax, %r14d
	cmovneq	%rsi, %rcx
	movl	%r11d, %eax
	movl	%r11d, -112(%rsp)       # 4-byte Spill
	movl	%r11d, %esi
	shrl	$24, %esi
	cmpq	$256, %rsi              # imm = 0x100
	leaq	Te4(,%rsi,4), %r11
	movq	%r12, %rsi
	cmovlq	%r11, %rsi
	testb	%r14b, %r14b
	cmovneq	%r11, %rsi
	movzbl	3(%rsi), %esi
	shll	$24, %esi
	movzbl	2(%rcx), %ecx
	shll	$16, %ecx
	orl	%esi, %ecx
	movzbl	1(%rbp), %esi
	shll	$8, %esi
	orl	%ecx, %esi
	movzbl	(%rdi), %ecx
	orl	%esi, %ecx
	movb	%r14b, -123(%rsp)
	xorl	(%rbx), %ecx
	movl	%ecx, %esi
	shrl	$24, %esi
	testb	%r14b, %r14b
	movq	88(%rsp), %r14          # 8-byte Reload
	movzbl	(%r14), %edi
	cmovnel	%esi, %edi
	movq	80(%rsp), %rsi          # 8-byte Reload
	cmovneq	%r14, %rsi
	movb	%dil, (%rsi)
	movl	%ecx, %esi
	shrl	$16, %esi
	cmpb	$0, -123(%rsp)
	movq	96(%rsp), %rbp          # 8-byte Reload
	cmovneq	104(%rsp), %rbp         # 8-byte Folded Reload
	movzbl	1(%r14), %edi
	cmovnel	%esi, %edi
	movb	%dil, (%rbp)
	movl	%ecx, %esi
	shrl	$8, %esi
	cmpb	$0, -123(%rsp)
	movq	128(%rsp), %rbp         # 8-byte Reload
	cmovneq	136(%rsp), %rbp         # 8-byte Folded Reload
	movzbl	2(%r14), %edi
	cmovnel	%esi, %edi
	movb	%dil, (%rbp)
	cmpb	$0, -123(%rsp)
	movq	144(%rsp), %rdi         # 8-byte Reload
	cmovneq	152(%rsp), %rdi         # 8-byte Folded Reload
	movzbl	3(%r14), %esi
	cmovnel	%ecx, %esi
	movb	%sil, (%rdi)
	cmpq	$1, %r13
	leaq	4(%r15,%r10,4), %rcx
	movq	%r12, %rsi
	cmovgq	%rcx, %rsi
	movb	-123(%rsp), %bl
	testb	%bl, %bl
	cmovneq	%rcx, %rsi
	movzbl	%al, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te4(,%rcx,4), %rcx
	movq	%r12, %rdi
	cmovlq	%rcx, %rdi
	testb	%bl, %bl
	cmovneq	%rcx, %rdi
	movq	-120(%rsp), %rax        # 8-byte Reload
	movzbl	%ah, %ecx
	cmpq	$256, %rcx              # imm = 0x100
	leaq	Te4(,%rcx,4), %rcx
	movq	%r12, %rbp
	cmovlq	%rcx, %rbp
	testb	%bl, %bl
	cmovneq	%rcx, %rbp
	shrl	$16, %edx
	movzbl	%dl, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r12, %rcx
	cmovlq	%rax, %rcx
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	movl	%r8d, %eax
	shrl	$24, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %r11
	movq	%r12, %rax
	cmovlq	%r11, %rax
	testb	%bl, %bl
	cmovneq	%r11, %rax
	movzbl	3(%rax), %eax
	shll	$24, %eax
	movzbl	2(%rcx), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	1(%rbp), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movzbl	(%rdi), %ecx
	orl	%eax, %ecx
	xorl	(%rsi), %ecx
	movl	%ecx, %eax
	shrl	$24, %eax
	testb	%bl, %bl
	movq	112(%rsp), %rdi         # 8-byte Reload
	cmovneq	120(%rsp), %rdi         # 8-byte Folded Reload
	movzbl	4(%r14), %esi
	cmovnel	%eax, %esi
	movb	%sil, (%rdi)
	movl	%ecx, %eax
	shrl	$16, %eax
	cmpb	$0, -123(%rsp)
	movq	160(%rsp), %rdi         # 8-byte Reload
	cmovneq	168(%rsp), %rdi         # 8-byte Folded Reload
	movzbl	5(%r14), %esi
	cmovnel	%eax, %esi
	movb	%sil, (%rdi)
	movl	%ecx, %eax
	shrl	$8, %eax
	cmpb	$0, -123(%rsp)
	movq	176(%rsp), %rdi         # 8-byte Reload
	cmovneq	184(%rsp), %rdi         # 8-byte Folded Reload
	movzbl	6(%r14), %esi
	cmovnel	%eax, %esi
	movb	%sil, (%rdi)
	cmpb	$0, -123(%rsp)
	movq	208(%rsp), %rsi         # 8-byte Reload
	cmovneq	216(%rsp), %rsi         # 8-byte Folded Reload
	movzbl	7(%r14), %eax
	cmovnel	%ecx, %eax
	movb	%al, (%rsi)
	cmpq	$2, %r13
	leaq	8(%r15,%r10,4), %rax
	movq	%r12, %rcx
	cmovgq	%rax, %rcx
	movb	-123(%rsp), %bl
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	movzbl	%r8b, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r12, %rsi
	cmovlq	%rax, %rsi
	testb	%bl, %bl
	cmovneq	%rax, %rsi
	movl	-112(%rsp), %eax        # 4-byte Reload
	movzbl	%ah, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r12, %rdi
	cmovlq	%rax, %rdi
	testb	%bl, %bl
	cmovneq	%rax, %rdi
	movq	-120(%rsp), %rdx        # 8-byte Reload
	movl	%edx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r12, %rbp
	cmovlq	%rax, %rbp
	testb	%bl, %bl
	cmovneq	%rax, %rbp
	shrl	$24, %r9d
	cmpq	$256, %r9               # imm = 0x100
	leaq	Te4(,%r9,4), %r9
	movq	%r12, %rax
	cmovlq	%r9, %rax
	testb	%bl, %bl
	cmovneq	%r9, %rax
	movzbl	3(%rax), %eax
	shll	$24, %eax
	movzbl	2(%rbp), %ebp
	shll	$16, %ebp
	orl	%eax, %ebp
	movzbl	1(%rdi), %eax
	shll	$8, %eax
	orl	%ebp, %eax
	movzbl	(%rsi), %esi
	orl	%eax, %esi
	xorl	(%rcx), %esi
	movl	%esi, %eax
	shrl	$24, %eax
	testb	%bl, %bl
	movq	192(%rsp), %rdi         # 8-byte Reload
	cmovneq	200(%rsp), %rdi         # 8-byte Folded Reload
	movzbl	8(%r14), %ecx
	cmovnel	%eax, %ecx
	movb	%cl, (%rdi)
	movl	%esi, %eax
	shrl	$16, %eax
	cmpb	$0, -123(%rsp)
	movq	224(%rsp), %rdi         # 8-byte Reload
	cmovneq	232(%rsp), %rdi         # 8-byte Folded Reload
	movzbl	9(%r14), %ecx
	cmovnel	%eax, %ecx
	movb	%cl, (%rdi)
	movl	%esi, %eax
	shrl	$8, %eax
	cmpb	$0, -123(%rsp)
	movq	240(%rsp), %rdi         # 8-byte Reload
	cmovneq	248(%rsp), %rdi         # 8-byte Folded Reload
	movzbl	10(%r14), %ecx
	cmovnel	%eax, %ecx
	movb	%cl, (%rdi)
	cmpb	$0, -123(%rsp)
	movq	256(%rsp), %rcx         # 8-byte Reload
	cmovneq	264(%rsp), %rcx         # 8-byte Folded Reload
	movzbl	11(%r14), %eax
	cmovnel	%esi, %eax
	movb	%al, (%rcx)
	leaq	12(%r15,%r10,4), %rax
	cmpq	$3, %r13
	movq	%r12, %rcx
	cmovgq	%rax, %rcx
	movb	-123(%rsp), %bl
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	movq	-80(%rsp), %rax         # 8-byte Reload
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r12, %rsi
	cmovlq	%rax, %rsi
	testb	%bl, %bl
	cmovneq	%rax, %rsi
	movl	%r8d, %eax
	movzbl	%ah, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r12, %rdi
	cmovlq	%rax, %rdi
	testb	%bl, %bl
	cmovneq	%rax, %rdi
	movl	-112(%rsp), %eax        # 4-byte Reload
	shrl	$16, %eax
	movzbl	%al, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	movq	%r12, %rbp
	cmovlq	%rax, %rbp
	testb	%bl, %bl
	cmovneq	%rax, %rbp
	movq	%rdx, %rax
	shrl	$24, %eax
	cmpq	$256, %rax              # imm = 0x100
	leaq	Te4(,%rax,4), %rax
	cmovlq	%rax, %r12
	testb	%bl, %bl
	cmovneq	%rax, %r12
	movzbl	3(%r12), %eax
	shll	$24, %eax
	movzbl	2(%rbp), %edx
	shll	$16, %edx
	orl	%eax, %edx
	movzbl	1(%rdi), %eax
	shll	$8, %eax
	orl	%edx, %eax
	movzbl	(%rsi), %edx
	orl	%eax, %edx
	xorl	(%rcx), %edx
	movl	%edx, %eax
	shrl	$24, %eax
	testb	%bl, %bl
	movq	280(%rsp), %rsi         # 8-byte Reload
	cmovneq	272(%rsp), %rsi         # 8-byte Folded Reload
	movzbl	12(%r14), %ecx
	cmovnel	%eax, %ecx
	movb	%cl, (%rsi)
	movl	%edx, %eax
	shrl	$16, %eax
	cmpb	$0, -123(%rsp)
	movq	288(%rsp), %rsi         # 8-byte Reload
	cmovneq	296(%rsp), %rsi         # 8-byte Folded Reload
	movzbl	13(%r14), %ecx
	cmovnel	%eax, %ecx
	movb	%cl, (%rsi)
	movl	%edx, %eax
	shrl	$8, %eax
	cmpb	$0, -123(%rsp)
	movq	304(%rsp), %rsi         # 8-byte Reload
	cmovneq	312(%rsp), %rsi         # 8-byte Folded Reload
	movzbl	14(%r14), %ecx
	cmovnel	%eax, %ecx
	movb	%cl, (%rsi)
	cmpb	$0, -123(%rsp)
	movq	320(%rsp), %rcx         # 8-byte Reload
	cmovneq	328(%rsp), %rcx         # 8-byte Folded Reload
	movzbl	15(%r14), %eax
	cmovnel	%edx, %eax
	movb	%al, (%rcx)
	addq	$336, %rsp              # imm = 0x150
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
	.size	rijndaelEncrypt, .Lfunc_end6-rijndaelEncrypt
	.cfi_endproc
                                        # -- End function
	.globl	rijndaelDecrypt         # -- Begin function rijndaelDecrypt
	.p2align	4, 0x90
	.type	rijndaelDecrypt,@function
rijndaelDecrypt:                        # @rijndaelDecrypt
	.cfi_startproc
# %bb.0:
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, -8(%rsp)           # 8-byte Spill
	movq	%rcx, %r8
	movl	%edx, -12(%rsp)         # 4-byte Spill
	movq	%rdi, %r11
	movl	(%rcx), %eax
	movl	4(%rcx), %ecx
	bswapl	%eax
	xorl	(%rdi), %eax
	bswapl	%ecx
	xorl	4(%rdi), %ecx
	movl	8(%r8), %ebx
	bswapl	%ebx
	xorl	8(%rdi), %ebx
	movl	%eax, %r14d
	movzbl	%ah, %edi
	movzbl	%al, %r10d
	movl	%eax, %edx
	movl	12(%r8), %eax
	bswapl	%eax
	xorl	12(%r11), %eax
	shrl	$24, %edx
	movzbl	%cl, %r15d
	movl	%ecx, %r8d
	movzbl	%ch, %esi
	movq	%rsi, %r13
                                        # kill: def $ecx killed $ecx def $rcx
	movl	Td0(,%rdx,4), %edx
	movl	%eax, %ebp
	shrl	$16, %ebp
	movzbl	%bpl, %ebp
	xorl	Td1(,%rbp,4), %edx
	movzbl	%bh, %ebp
	xorl	Td2(,%rbp,4), %edx
	xorl	Td3(,%r15,4), %edx
	xorl	16(%r11), %edx
	shrl	$24, %ecx
	movzbl	%bl, %ebp
	movl	%ebx, %r15d
	shrl	$16, %ebx
	movzbl	%bl, %ebx
	movl	Td0(,%rcx,4), %ecx
	shrl	$16, %r14d
	movzbl	%r14b, %esi
	xorl	Td1(,%rsi,4), %ecx
	movzbl	%ah, %esi
	xorl	Td2(,%rsi,4), %ecx
	xorl	Td3(,%rbp,4), %ecx
	xorl	20(%r11), %ecx
	shrl	$24, %r15d
	movl	%edx, %r12d
	movzbl	%dh, %esi
	movq	%rsi, %r9
	movzbl	%dl, %r14d
	movl	%edx, %esi
	movl	Td0(,%r15,4), %edx
	shrl	$16, %r8d
	movzbl	%r8b, %ebp
	xorl	Td1(,%rbp,4), %edx
	xorl	Td2(,%rdi,4), %edx
	movzbl	%al, %ebp
	xorl	Td3(,%rbp,4), %edx
	xorl	24(%r11), %edx
	shrl	$24, %eax
	movl	Td0(,%rax,4), %eax
	xorl	Td1(,%rbx,4), %eax
	xorl	Td2(,%r13,4), %eax
	xorl	Td3(,%r10,4), %eax
	xorl	28(%r11), %eax
	shrl	$24, %esi
	movzbl	%cl, %r8d
	movl	%ecx, %r15d
	movzbl	%ch, %ebp
                                        # kill: def $ecx killed $ecx def $rcx
	movl	Td0(,%rsi,4), %ebx
	movl	%eax, %esi
	shrl	$16, %esi
	movzbl	%sil, %esi
	xorl	Td1(,%rsi,4), %ebx
	movzbl	%dh, %esi
	xorl	Td2(,%rsi,4), %ebx
	xorl	Td3(,%r8,4), %ebx
	xorl	32(%r11), %ebx
	shrl	$24, %ecx
	movzbl	%dl, %esi
	movl	%edx, %r13d
	shrl	$16, %edx
	movzbl	%dl, %r10d
	movl	Td0(,%rcx,4), %ecx
	shrl	$16, %r12d
	movzbl	%r12b, %edx
	xorl	Td1(,%rdx,4), %ecx
	movzbl	%ah, %edx
	xorl	Td2(,%rdx,4), %ecx
	xorl	Td3(,%rsi,4), %ecx
	xorl	36(%r11), %ecx
	shrl	$24, %r13d
	movl	%ebx, %esi
	movzbl	%bh, %edx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	movzbl	%bl, %r8d
	movl	%ebx, %r12d
	movl	Td0(,%r13,4), %ebx
	shrl	$16, %r15d
	movzbl	%r15b, %edx
	xorl	Td1(,%rdx,4), %ebx
	xorl	Td2(,%r9,4), %ebx
	movzbl	%al, %edx
	xorl	Td3(,%rdx,4), %ebx
	xorl	40(%r11), %ebx
	shrl	$24, %eax
	movl	Td0(,%rax,4), %eax
	xorl	Td1(,%r10,4), %eax
	xorl	Td2(,%rbp,4), %eax
	xorl	Td3(,%r14,4), %eax
	xorl	44(%r11), %eax
	shrl	$24, %r12d
	movzbl	%cl, %r10d
	movl	%ecx, %r15d
	movzbl	%ch, %edi
	movl	%ecx, %edx
	movl	Td0(,%r12,4), %ecx
	movl	%eax, %ebp
	shrl	$16, %ebp
	movzbl	%bpl, %ebp
	xorl	Td1(,%rbp,4), %ecx
	movzbl	%bh, %ebp
	xorl	Td2(,%rbp,4), %ecx
	xorl	Td3(,%r10,4), %ecx
	xorl	48(%r11), %ecx
	shrl	$24, %edx
	movzbl	%bl, %ebp
	movl	%ebx, %r12d
	shrl	$16, %ebx
	movzbl	%bl, %r14d
	movl	Td0(,%rdx,4), %ebx
	shrl	$16, %esi
	movzbl	%sil, %edx
	xorl	Td1(,%rdx,4), %ebx
	movzbl	%ah, %edx
	xorl	Td2(,%rdx,4), %ebx
	xorl	Td3(,%rbp,4), %ebx
	xorl	52(%r11), %ebx
	shrl	$24, %r12d
	movl	%ecx, %r13d
	movzbl	%ch, %edx
	movq	%rdx, %r9
	movzbl	%cl, %r10d
	movl	%ecx, %ebp
	movl	Td0(,%r12,4), %ecx
	shrl	$16, %r15d
	movzbl	%r15b, %edx
	xorl	Td1(,%rdx,4), %ecx
	movq	-24(%rsp), %rdx         # 8-byte Reload
	xorl	Td2(,%rdx,4), %ecx
	movzbl	%al, %edx
	xorl	Td3(,%rdx,4), %ecx
	xorl	56(%r11), %ecx
	shrl	$24, %eax
	movl	Td0(,%rax,4), %edx
	xorl	Td1(,%r14,4), %edx
	xorl	Td2(,%rdi,4), %edx
	xorl	Td3(,%r8,4), %edx
	xorl	60(%r11), %edx
	shrl	$24, %ebp
	movzbl	%bl, %eax
	movl	%ebx, %r15d
	movzbl	%bh, %edi
	movl	%ebx, %esi
	movl	Td0(,%rbp,4), %ebx
	movl	%edx, %ebp
	shrl	$16, %ebp
	movzbl	%bpl, %ebp
	xorl	Td1(,%rbp,4), %ebx
	movzbl	%ch, %ebp
	xorl	Td2(,%rbp,4), %ebx
	xorl	Td3(,%rax,4), %ebx
	xorl	64(%r11), %ebx
	shrl	$24, %esi
	movzbl	%cl, %eax
	movl	%ecx, %ebp
	shrl	$16, %ecx
	movzbl	%cl, %r14d
	movl	Td0(,%rsi,4), %ecx
	shrl	$16, %r13d
	movzbl	%r13b, %esi
	xorl	Td1(,%rsi,4), %ecx
	movzbl	%dh, %esi
	xorl	Td2(,%rsi,4), %ecx
	xorl	Td3(,%rax,4), %ecx
	xorl	68(%r11), %ecx
	shrl	$24, %ebp
	movl	%ebx, %r12d
	movzbl	%bh, %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movzbl	%bl, %r8d
                                        # kill: def $ebx killed $ebx def $rbx
	movl	Td0(,%rbp,4), %eax
	shrl	$16, %r15d
	movzbl	%r15b, %ebp
	xorl	Td1(,%rbp,4), %eax
	xorl	Td2(,%r9,4), %eax
	movzbl	%dl, %ebp
	xorl	Td3(,%rbp,4), %eax
	xorl	72(%r11), %eax
	shrl	$24, %edx
	movl	Td0(,%rdx,4), %edx
	xorl	Td1(,%r14,4), %edx
	xorl	Td2(,%rdi,4), %edx
	xorl	Td3(,%r10,4), %edx
	xorl	76(%r11), %edx
	shrl	$24, %ebx
	movzbl	%cl, %ebp
	movl	%ecx, %r15d
	movzbl	%ch, %edi
	movl	%ecx, %esi
	movl	Td0(,%rbx,4), %ecx
	movl	%edx, %ebx
	shrl	$16, %ebx
	movzbl	%bl, %ebx
	xorl	Td1(,%rbx,4), %ecx
	movzbl	%ah, %ebx
	xorl	Td2(,%rbx,4), %ecx
	xorl	Td3(,%rbp,4), %ecx
	xorl	80(%r11), %ecx
	shrl	$24, %esi
	movzbl	%al, %ebp
	movl	%eax, %r13d
	shrl	$16, %eax
	movzbl	%al, %r14d
	movl	Td0(,%rsi,4), %ebx
	shrl	$16, %r12d
	movzbl	%r12b, %eax
	xorl	Td1(,%rax,4), %ebx
	movzbl	%dh, %eax
	xorl	Td2(,%rax,4), %ebx
	xorl	Td3(,%rbp,4), %ebx
	xorl	84(%r11), %ebx
	shrl	$24, %r13d
	movl	%ecx, %r12d
	movzbl	%ch, %eax
	movq	%rax, %r9
	movzbl	%cl, %r10d
                                        # kill: def $ecx killed $ecx def $rcx
	movl	Td0(,%r13,4), %eax
	shrl	$16, %r15d
	movzbl	%r15b, %ebp
	xorl	Td1(,%rbp,4), %eax
	movq	-24(%rsp), %rsi         # 8-byte Reload
	xorl	Td2(,%rsi,4), %eax
	movzbl	%dl, %ebp
	xorl	Td3(,%rbp,4), %eax
	xorl	88(%r11), %eax
	shrl	$24, %edx
	movl	Td0(,%rdx,4), %edx
	xorl	Td1(,%r14,4), %edx
	xorl	Td2(,%rdi,4), %edx
	xorl	Td3(,%r8,4), %edx
	xorl	92(%r11), %edx
	shrl	$24, %ecx
	movzbl	%bl, %ebp
	movl	%ebx, %r15d
	movzbl	%bh, %edi
                                        # kill: def $ebx killed $ebx def $rbx
	movl	Td0(,%rcx,4), %ecx
	movl	%edx, %esi
	shrl	$16, %esi
	movzbl	%sil, %esi
	xorl	Td1(,%rsi,4), %ecx
	movzbl	%ah, %esi
	xorl	Td2(,%rsi,4), %ecx
	xorl	Td3(,%rbp,4), %ecx
	xorl	96(%r11), %ecx
	shrl	$24, %ebx
	movzbl	%al, %esi
	movl	%eax, %r13d
	shrl	$16, %eax
	movzbl	%al, %r14d
	movl	Td0(,%rbx,4), %eax
	shrl	$16, %r12d
	movzbl	%r12b, %ebx
	xorl	Td1(,%rbx,4), %eax
	movzbl	%dh, %ebx
	xorl	Td2(,%rbx,4), %eax
	xorl	Td3(,%rsi,4), %eax
	xorl	100(%r11), %eax
	shrl	$24, %r13d
	movl	%ecx, %r12d
	movzbl	%ch, %esi
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movzbl	%cl, %r8d
	movl	%ecx, %ebp
	movl	Td0(,%r13,4), %ecx
	shrl	$16, %r15d
	movzbl	%r15b, %ebx
	xorl	Td1(,%rbx,4), %ecx
	xorl	Td2(,%r9,4), %ecx
	movzbl	%dl, %ebx
	xorl	Td3(,%rbx,4), %ecx
	xorl	104(%r11), %ecx
	shrl	$24, %edx
	movl	Td0(,%rdx,4), %edx
	xorl	Td1(,%r14,4), %edx
	xorl	Td2(,%rdi,4), %edx
	xorl	Td3(,%r10,4), %edx
	xorl	108(%r11), %edx
	shrl	$24, %ebp
	movzbl	%al, %r10d
	movl	%eax, %r15d
	movzbl	%ah, %edi
	movl	%eax, %esi
	movl	Td0(,%rbp,4), %eax
	movl	%edx, %ebp
	shrl	$16, %ebp
	movzbl	%bpl, %ebp
	xorl	Td1(,%rbp,4), %eax
	movzbl	%ch, %ebp
	xorl	Td2(,%rbp,4), %eax
	xorl	Td3(,%r10,4), %eax
	xorl	112(%r11), %eax
	shrl	$24, %esi
	movzbl	%cl, %ebp
	movl	%ecx, %r13d
	shrl	$16, %ecx
	movzbl	%cl, %r14d
	movl	Td0(,%rsi,4), %ecx
	shrl	$16, %r12d
	movzbl	%r12b, %esi
	xorl	Td1(,%rsi,4), %ecx
	movzbl	%dh, %esi
	xorl	Td2(,%rsi,4), %ecx
	xorl	Td3(,%rbp,4), %ecx
	xorl	116(%r11), %ecx
	shrl	$24, %r13d
	movl	%eax, %r12d
	movzbl	%ah, %esi
	movq	%rsi, %r9
	movzbl	%al, %r10d
	movl	%eax, %ebp
	movl	Td0(,%r13,4), %eax
	shrl	$16, %r15d
	movzbl	%r15b, %ebx
	xorl	Td1(,%rbx,4), %eax
	movq	-24(%rsp), %rsi         # 8-byte Reload
	xorl	Td2(,%rsi,4), %eax
	movzbl	%dl, %ebx
	xorl	Td3(,%rbx,4), %eax
	xorl	120(%r11), %eax
	shrl	$24, %edx
	movl	Td0(,%rdx,4), %edx
	xorl	Td1(,%r14,4), %edx
	xorl	Td2(,%rdi,4), %edx
	xorl	Td3(,%r8,4), %edx
	xorl	124(%r11), %edx
	shrl	$24, %ebp
	movzbl	%cl, %esi
	movl	%ecx, %r14d
	movzbl	%ch, %edi
                                        # kill: def $ecx killed $ecx def $rcx
	movl	Td0(,%rbp,4), %ebx
	movl	%edx, %ebp
	shrl	$16, %ebp
	movzbl	%bpl, %ebp
	xorl	Td1(,%rbp,4), %ebx
	movzbl	%ah, %ebp
	xorl	Td2(,%rbp,4), %ebx
	xorl	Td3(,%rsi,4), %ebx
	xorl	128(%r11), %ebx
	shrl	$24, %ecx
	movzbl	%al, %esi
	movl	%eax, %ebp
	shrl	$16, %eax
	movzbl	%al, %r8d
	movl	Td0(,%rcx,4), %ecx
	shrl	$16, %r12d
	movzbl	%r12b, %eax
	xorl	Td1(,%rax,4), %ecx
	movzbl	%dh, %eax
	xorl	Td2(,%rax,4), %ecx
	xorl	Td3(,%rsi,4), %ecx
	xorl	132(%r11), %ecx
	shrl	$24, %ebp
	movl	%ebx, %r12d
	movzbl	%bh, %eax
	movq	%rax, %r13
	movzbl	%bl, %r15d
	movl	%ebx, %esi
	movl	Td0(,%rbp,4), %eax
	shrl	$16, %r14d
	movzbl	%r14b, %ebx
	xorl	Td1(,%rbx,4), %eax
	xorl	Td2(,%r9,4), %eax
	movzbl	%dl, %ebx
	xorl	Td3(,%rbx,4), %eax
	xorl	136(%r11), %eax
	shrl	$24, %edx
	movl	Td0(,%rdx,4), %ebx
	xorl	Td1(,%r8,4), %ebx
	xorl	Td2(,%rdi,4), %ebx
	xorl	Td3(,%r10,4), %ebx
	xorl	140(%r11), %ebx
	shrl	$24, %esi
	movzbl	%cl, %r8d
	movl	%ecx, %edx
	movzbl	%ch, %ebp
                                        # kill: def $ecx killed $ecx def $rcx
	movl	Td0(,%rsi,4), %edi
	movl	%ebx, %esi
	shrl	$16, %esi
	movzbl	%sil, %esi
	xorl	Td1(,%rsi,4), %edi
	movzbl	%ah, %esi
	xorl	Td2(,%rsi,4), %edi
	shrl	$24, %ecx
	movzbl	%al, %r10d
	movl	%eax, %esi
	shrl	$16, %eax
	movzbl	%al, %r14d
	movl	Td0(,%rcx,4), %ecx
	shrl	$16, %r12d
	movzbl	%r12b, %eax
	xorl	Td1(,%rax,4), %ecx
	movzbl	%bh, %eax
	xorl	Td2(,%rax,4), %ecx
	shrl	$24, %esi
	shrl	$16, %edx
	movzbl	%dl, %edx
	movl	Td0(,%rsi,4), %eax
	xorl	Td1(,%rdx,4), %eax
	xorl	Td2(,%r13,4), %eax
	movzbl	%bl, %edx
	shrl	$24, %ebx
	movl	Td0(,%rbx,4), %ebx
	xorl	Td1(,%r14,4), %ebx
	xorl	Td2(,%rbp,4), %ebx
	xorl	Td3(,%r8,4), %edi
	xorl	144(%r11), %edi
	movl	%edi, %esi
	xorl	Td3(,%r10,4), %ecx
	xorl	148(%r11), %ecx
	xorl	Td3(,%rdx,4), %eax
	xorl	152(%r11), %eax
	xorl	Td3(,%r15,4), %ebx
	xorl	156(%r11), %ebx
	cmpl	$11, -12(%rsp)          # 4-byte Folded Reload
	jl	.LBB7_1
# %bb.2:
	movl	%esi, %edx
	movl	%esi, %edi
	movzbl	%dh, %edx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	movl	%esi, %edx
	movzbl	%dl, %r8d
                                        # kill: def $edx killed $edx def $rdx
	shrl	$24, %edx
	movzbl	%cl, %ebp
	movl	%ecx, %r14d
	movzbl	%ch, %edi
	movq	%rdi, %r13
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rbx, %rdi
	movl	Td0(,%rdx,4), %ebx
	movl	%edi, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	xorl	Td1(,%rdx,4), %ebx
	movzbl	%ah, %edx
	xorl	Td2(,%rdx,4), %ebx
	xorl	Td3(,%rbp,4), %ebx
	xorl	160(%r11), %ebx
	shrl	$24, %ecx
	movzbl	%al, %ebp
	movl	%eax, %edx
	shrl	$16, %eax
	movzbl	%al, %r10d
	movl	Td0(,%rcx,4), %eax
	shrl	$16, %esi
	movzbl	%sil, %ecx
	xorl	Td1(,%rcx,4), %eax
	movq	%rdi, %rcx
	movzbl	%ch, %ecx
	xorl	Td2(,%rcx,4), %eax
	xorl	Td3(,%rbp,4), %eax
	xorl	164(%r11), %eax
	shrl	$24, %edx
	movl	%ebx, %r15d
	movzbl	%bh, %ecx
	movq	%rcx, %r9
	movzbl	%bl, %r12d
	movl	%ebx, %ecx
	movl	Td0(,%rdx,4), %edx
	shrl	$16, %r14d
	movzbl	%r14b, %esi
	xorl	Td1(,%rsi,4), %edx
	movq	-24(%rsp), %rsi         # 8-byte Reload
	xorl	Td2(,%rsi,4), %edx
	movzbl	%dil, %esi
	xorl	Td3(,%rsi,4), %edx
	xorl	168(%r11), %edx
	shrl	$24, %edi
	movl	Td0(,%rdi,4), %ebx
	xorl	Td1(,%r10,4), %ebx
	xorl	Td2(,%r13,4), %ebx
	xorl	Td3(,%r8,4), %ebx
	xorl	172(%r11), %ebx
	shrl	$24, %ecx
	movzbl	%al, %r8d
	movl	%eax, %r10d
	movzbl	%ah, %esi
	movl	%eax, %r13d
	movl	Td0(,%rcx,4), %edi
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	xorl	Td1(,%rcx,4), %edi
	movzbl	%dh, %ecx
	xorl	Td2(,%rcx,4), %edi
	shrl	$24, %r13d
	movzbl	%dl, %r14d
	movl	%edx, %eax
	shrl	$16, %edx
	movzbl	%dl, %edx
	movl	Td0(,%r13,4), %ecx
	shrl	$16, %r15d
	movzbl	%r15b, %ebp
	xorl	Td1(,%rbp,4), %ecx
	movzbl	%bh, %ebp
	xorl	Td2(,%rbp,4), %ecx
	shrl	$24, %eax
	shrl	$16, %r10d
	movzbl	%r10b, %ebp
	movl	Td0(,%rax,4), %eax
	xorl	Td1(,%rbp,4), %eax
	xorl	Td2(,%r9,4), %eax
	movzbl	%bl, %ebp
	shrl	$24, %ebx
	movl	Td0(,%rbx,4), %ebx
	xorl	Td1(,%rdx,4), %ebx
	movl	%edi, %edx
	xorl	Td2(,%rsi,4), %ebx
	xorl	Td3(,%r8,4), %edx
	xorl	176(%r11), %edx
	xorl	Td3(,%r14,4), %ecx
	xorl	180(%r11), %ecx
	xorl	Td3(,%rbp,4), %eax
	xorl	184(%r11), %eax
	xorl	Td3(,%r12,4), %ebx
	xorl	188(%r11), %ebx
	cmpl	$13, -12(%rsp)          # 4-byte Folded Reload
	jl	.LBB7_3
# %bb.4:
	movl	%edx, %esi
	movzbl	%dh, %edi
	movq	%rdi, -24(%rsp)         # 8-byte Spill
	movzbl	%dl, %r13d
                                        # kill: def $edx killed $edx def $rdx
	shrl	$24, %edx
	movzbl	%cl, %ebp
	movl	%ecx, %r14d
	movzbl	%ch, %edi
	movq	%rdi, %r8
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rbx, %rdi
	movl	Td0(,%rdx,4), %ebx
	movl	%edi, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	xorl	Td1(,%rdx,4), %ebx
	movzbl	%ah, %edx
	xorl	Td2(,%rdx,4), %ebx
	xorl	Td3(,%rbp,4), %ebx
	xorl	192(%r11), %ebx
	shrl	$24, %ecx
	movzbl	%al, %ebp
	movl	%eax, %edx
	shrl	$16, %eax
	movzbl	%al, %r10d
	movl	Td0(,%rcx,4), %eax
	shrl	$16, %esi
	movzbl	%sil, %ecx
	xorl	Td1(,%rcx,4), %eax
	movq	%rdi, %rcx
	movzbl	%ch, %ecx
	xorl	Td2(,%rcx,4), %eax
	xorl	Td3(,%rbp,4), %eax
	xorl	196(%r11), %eax
	shrl	$24, %edx
	movl	%ebx, %r15d
	movzbl	%bh, %ecx
	movq	%rcx, %r9
	movzbl	%bl, %r12d
	movl	%ebx, %ecx
	movl	Td0(,%rdx,4), %edx
	shrl	$16, %r14d
	movzbl	%r14b, %esi
	xorl	Td1(,%rsi,4), %edx
	movq	-24(%rsp), %rsi         # 8-byte Reload
	xorl	Td2(,%rsi,4), %edx
	movzbl	%dil, %esi
	xorl	Td3(,%rsi,4), %edx
	xorl	200(%r11), %edx
	shrl	$24, %edi
	movl	Td0(,%rdi,4), %ebx
	xorl	Td1(,%r10,4), %ebx
	xorl	Td2(,%r8,4), %ebx
	xorl	Td3(,%r13,4), %ebx
	xorl	204(%r11), %ebx
	shrl	$24, %ecx
	movzbl	%al, %r8d
	movl	%eax, %r10d
	movzbl	%ah, %esi
	movl	%eax, %r13d
	movl	Td0(,%rcx,4), %edi
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	xorl	Td1(,%rcx,4), %edi
	movzbl	%dh, %ecx
	xorl	Td2(,%rcx,4), %edi
	shrl	$24, %r13d
	movzbl	%dl, %r14d
	movl	%edx, %eax
	shrl	$16, %edx
	movzbl	%dl, %edx
	movl	Td0(,%r13,4), %ecx
	shrl	$16, %r15d
	movzbl	%r15b, %ebp
	xorl	Td1(,%rbp,4), %ecx
	movzbl	%bh, %ebp
	xorl	Td2(,%rbp,4), %ecx
	shrl	$24, %eax
	shrl	$16, %r10d
	movzbl	%r10b, %ebp
	movl	Td0(,%rax,4), %eax
	xorl	Td1(,%rbp,4), %eax
	xorl	Td2(,%r9,4), %eax
	movzbl	%bl, %ebp
	shrl	$24, %ebx
	movl	Td0(,%rbx,4), %ebx
	xorl	Td1(,%rdx,4), %ebx
	xorl	Td2(,%rsi,4), %ebx
	xorl	Td3(,%r8,4), %edi
	xorl	208(%r11), %edi
	movl	%edi, %esi
	xorl	Td3(,%r14,4), %ecx
	xorl	212(%r11), %ecx
	xorl	Td3(,%rbp,4), %eax
	xorl	216(%r11), %eax
	xorl	Td3(,%r12,4), %ebx
	movq	%r11, %rbp
	xorl	220(%r11), %ebx
	jmp	.LBB7_5
.LBB7_1:
	movq	%r11, %rbp
	jmp	.LBB7_5
.LBB7_3:
	movq	%r11, %rbp
	movl	%edx, %esi
.LBB7_5:
	movl	%ebx, %r10d
	movzbl	%bh, %edx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	movzbl	%bl, %r8d
	shrl	$24, %ebx
	movzbl	Td4+3(,%rbx,4), %r12d
	movzbl	%ah, %edx
	movzbl	%al, %r14d
	movl	%eax, %r13d
	shrl	$16, %eax
	movzbl	%al, %r15d
	movl	%esi, %r11d
	movl	%esi, %ebx
	shrl	$24, %ebx
	movzbl	Td4+3(,%rbx,4), %ebx
	shll	$24, %ebx
	shrl	$16, %r10d
	movzbl	%r10b, %eax
	movzbl	Td4+2(,%rax,4), %eax
	shll	$16, %eax
	orl	%ebx, %eax
	movzbl	Td4+1(,%rdx,4), %edx
	shll	$8, %edx
	orl	%eax, %edx
	movzbl	%cl, %r10d
	movl	%ecx, %ebx
	movl	%ecx, %esi
	movzbl	%ch, %edi
	movl	-12(%rsp), %r9d         # 4-byte Reload
	shll	$2, %r9d
	movslq	%r9d, %rax
	movzbl	Td4(,%r10,4), %ecx
	orl	%edx, %ecx
	movq	%rbp, %r9
	xorl	(%rbp,%rax,4), %ecx
	bswapl	%ecx
	movq	-8(%rsp), %r10          # 8-byte Reload
	movl	%ecx, (%r10)
	movl	%r11d, %ecx
	movl	%r11d, %ebp
	movzbl	%ch, %edx
	movzbl	%cl, %r11d
	shrl	$24, %ebx
	movzbl	Td4+3(,%rbx,4), %ebx
	shll	$24, %ebx
	shrl	$16, %ebp
	movzbl	%bpl, %ecx
	movzbl	Td4+2(,%rcx,4), %ecx
	shll	$16, %ecx
	orl	%ebx, %ecx
	movq	-24(%rsp), %rbx         # 8-byte Reload
	movzbl	Td4+1(,%rbx,4), %ebx
	shll	$8, %ebx
	orl	%ecx, %ebx
	movzbl	Td4(,%r14,4), %ecx
	orl	%ebx, %ecx
	xorl	4(%r9,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 4(%r10)
	shrl	$24, %r13d
	movzbl	Td4+3(,%r13,4), %ecx
	shll	$24, %ecx
	shrl	$16, %esi
	movzbl	%sil, %esi
	movzbl	Td4+2(,%rsi,4), %esi
	shll	$16, %esi
	orl	%ecx, %esi
	movzbl	Td4+1(,%rdx,4), %ecx
	shll	$8, %ecx
	orl	%esi, %ecx
	movzbl	Td4(,%r8,4), %edx
	orl	%ecx, %edx
	xorl	8(%r9,%rax,4), %edx
	bswapl	%edx
	movl	%edx, 8(%r10)
	shll	$24, %r12d
	movzbl	Td4+2(,%r15,4), %ecx
	shll	$16, %ecx
	orl	%r12d, %ecx
	movzbl	Td4+1(,%rdi,4), %edx
	shll	$8, %edx
	orl	%ecx, %edx
	movzbl	Td4(,%r11,4), %ecx
	orl	%edx, %ecx
	xorl	12(%r9,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 12(%r10)
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
.Lfunc_end7:
	.size	rijndaelDecrypt, .Lfunc_end7-rijndaelDecrypt
	.cfi_endproc
                                        # -- End function
	.globl	randombytes             # -- Begin function randombytes
	.p2align	4, 0x90
	.type	randombytes,@function
randombytes:                            # @randombytes
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	testq	%rdx, %rdx
	js	.LBB8_30
# %bb.1:
	movq	%rdx, %rbx
	movq	%rdi, %r14
	cmpl	$-1, randombytes.fd(%rip)
	jne	.LBB8_4
	jmp	.LBB8_2
	.p2align	4, 0x90
.LBB8_3:                                # %.lr.ph7
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %edi
	callq	sleep
	movl	$.L.str.2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, randombytes.fd(%rip)
	cmpl	$-1, %eax
	jne	.LBB8_4
# %bb.23:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %edi
	callq	sleep
	movl	$.L.str.2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, randombytes.fd(%rip)
	cmpl	$-1, %eax
	jne	.LBB8_4
# %bb.24:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %edi
	callq	sleep
	movl	$.L.str.2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, randombytes.fd(%rip)
	cmpl	$-1, %eax
	jne	.LBB8_4
# %bb.25:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %edi
	callq	sleep
	movl	$.L.str.2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, randombytes.fd(%rip)
	cmpl	$-1, %eax
	jne	.LBB8_4
# %bb.26:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %edi
	callq	sleep
	movl	$.L.str.2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, randombytes.fd(%rip)
	cmpl	$-1, %eax
	jne	.LBB8_4
# %bb.27:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %edi
	callq	sleep
	movl	$.L.str.2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, randombytes.fd(%rip)
	cmpl	$-1, %eax
	jne	.LBB8_4
# %bb.28:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %edi
	callq	sleep
	movl	$.L.str.2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, randombytes.fd(%rip)
	cmpl	$-1, %eax
	jne	.LBB8_4
# %bb.29:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %edi
	callq	sleep
.LBB8_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, randombytes.fd(%rip)
	cmpl	$-1, %eax
	je	.LBB8_3
.LBB8_4:                                # %.loopexit
	testq	%rbx, %rbx
	setg	%bpl
	jle	.LBB8_9
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	cmpq	$1048577, %rbx          # imm = 0x100001
	movl	$1048576, %edx          # imm = 0x100000
	cmovlq	%rbx, %rdx
	movl	randombytes.fd(%rip), %edi
	movq	%r14, %rsi
	callq	read
	testq	%rax, %rax
	jg	.LBB8_8
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %edi
	callq	sleep
	testb	$1, %bpl
	je	.LBB8_9
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=1
	cmpq	$1048577, %rbx          # imm = 0x100001
	movl	$1048576, %edx          # imm = 0x100000
	cmovlq	%rbx, %rdx
	movl	randombytes.fd(%rip), %edi
	movq	%r14, %rsi
	callq	read
	testq	%rax, %rax
	jg	.LBB8_8
# %bb.10:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %edi
	callq	sleep
	testb	$1, %bpl
	je	.LBB8_9
# %bb.11:                               #   in Loop: Header=BB8_5 Depth=1
	cmpq	$1048577, %rbx          # imm = 0x100001
	movl	$1048576, %edx          # imm = 0x100000
	cmovlq	%rbx, %rdx
	movl	randombytes.fd(%rip), %edi
	movq	%r14, %rsi
	callq	read
	testq	%rax, %rax
	jg	.LBB8_8
# %bb.12:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %edi
	callq	sleep
	testb	$1, %bpl
	je	.LBB8_9
# %bb.13:                               #   in Loop: Header=BB8_5 Depth=1
	cmpq	$1048577, %rbx          # imm = 0x100001
	movl	$1048576, %edx          # imm = 0x100000
	cmovlq	%rbx, %rdx
	movl	randombytes.fd(%rip), %edi
	movq	%r14, %rsi
	callq	read
	testq	%rax, %rax
	jg	.LBB8_8
# %bb.14:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %edi
	callq	sleep
	testb	$1, %bpl
	je	.LBB8_9
# %bb.15:                               #   in Loop: Header=BB8_5 Depth=1
	cmpq	$1048577, %rbx          # imm = 0x100001
	movl	$1048576, %edx          # imm = 0x100000
	cmovlq	%rbx, %rdx
	movl	randombytes.fd(%rip), %edi
	movq	%r14, %rsi
	callq	read
	testq	%rax, %rax
	jg	.LBB8_8
# %bb.16:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %edi
	callq	sleep
	testb	$1, %bpl
	je	.LBB8_9
# %bb.17:                               #   in Loop: Header=BB8_5 Depth=1
	cmpq	$1048577, %rbx          # imm = 0x100001
	movl	$1048576, %edx          # imm = 0x100000
	cmovlq	%rbx, %rdx
	movl	randombytes.fd(%rip), %edi
	movq	%r14, %rsi
	callq	read
	testq	%rax, %rax
	jg	.LBB8_8
# %bb.18:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %edi
	callq	sleep
	testb	$1, %bpl
	je	.LBB8_9
# %bb.19:                               #   in Loop: Header=BB8_5 Depth=1
	cmpq	$1048577, %rbx          # imm = 0x100001
	movl	$1048576, %edx          # imm = 0x100000
	cmovlq	%rbx, %rdx
	movl	randombytes.fd(%rip), %edi
	movq	%r14, %rsi
	callq	read
	testq	%rax, %rax
	jg	.LBB8_8
# %bb.20:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %edi
	callq	sleep
	testb	$1, %bpl
	je	.LBB8_9
# %bb.21:                               #   in Loop: Header=BB8_5 Depth=1
	cmpq	$1048577, %rbx          # imm = 0x100001
	movl	$1048576, %edx          # imm = 0x100000
	cmovlq	%rbx, %rdx
	movl	randombytes.fd(%rip), %edi
	movq	%r14, %rsi
	callq	read
	testq	%rax, %rax
	jg	.LBB8_8
# %bb.22:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %edi
	callq	sleep
	testb	$1, %bpl
	jne	.LBB8_5
	jmp	.LBB8_9
	.p2align	4, 0x90
.LBB8_8:                                # %.outer
                                        #   in Loop: Header=BB8_5 Depth=1
	addq	%rax, %r14
	movq	%rbx, %rcx
	subq	%rax, %rcx
	testq	%rcx, %rcx
	setg	%bpl
	subq	%rax, %rbx
	jg	.LBB8_5
.LBB8_9:                                # %.outer._crit_edge
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB8_30:
	.cfi_def_cfa_offset 32
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$.L__PRETTY_FUNCTION__.randombytes, %ecx
	movl	$14, %edx
	callq	__assert_fail
.Lfunc_end8:
	.size	randombytes, .Lfunc_end8-randombytes
	.cfi_endproc
                                        # -- End function
	.globl	randombit               # -- Begin function randombit
	.p2align	4, 0x90
	.type	randombit,@function
randombit:                              # @randombit
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movb	$0, -9(%rbp)
	leaq	-9(%rbp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	randombytes
	movb	-9(%rbp), %al
	movq	%fs:40, %rcx
	cmpq	-8(%rbp), %rcx
	jne	.LBB9_2
# %bb.1:                                # %SP_return
	andb	$1, %al
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_2:                                # %CallStackCheckFailBlk
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail
.Lfunc_end9:
	.size	randombit, .Lfunc_end9-randombit
	.cfi_endproc
                                        # -- End function
	.type	.L__const.main.input_data,@object # @__const.main.input_data
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.L__const.main.input_data:
	.ascii	".\261\311!#S\227\372\342\031\236e\231\366d\305"
	.size	.L__const.main.input_data, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4

	.type	chunk_size,@object      # @chunk_size
	.section	.rodata,"a",@progbits
	.globl	chunk_size
	.p2align	3
chunk_size:
	.quad	16                      # 0x10
	.size	chunk_size, 8

	.type	number_measurements,@object # @number_measurements
	.globl	number_measurements
	.p2align	3
number_measurements:
	.quad	1                       # 0x1
	.size	number_measurements, 8

	.type	rk,@object              # @rk
	.local	rk
	.comm	rk,176,16
	.type	Te4,@object             # @Te4
	.data
	.p2align	4
Te4:
	.long	1667457891              # 0x63636363
	.long	2088533116              # 0x7c7c7c7c
	.long	2004318071              # 0x77777777
	.long	2071690107              # 0x7b7b7b7b
	.long	4076008178              # 0xf2f2f2f2
	.long	1802201963              # 0x6b6b6b6b
	.long	1869573999              # 0x6f6f6f6f
	.long	3318072773              # 0xc5c5c5c5
	.long	808464432               # 0x30303030
	.long	16843009                # 0x1010101
	.long	1734829927              # 0x67676767
	.long	724249387               # 0x2b2b2b2b
	.long	4278124286              # 0xfefefefe
	.long	3621246935              # 0xd7d7d7d7
	.long	2880154539              # 0xabababab
	.long	1987475062              # 0x76767676
	.long	3402287818              # 0xcacacaca
	.long	2189591170              # 0x82828282
	.long	3385444809              # 0xc9c9c9c9
	.long	2105376125              # 0x7d7d7d7d
	.long	4210752250              # 0xfafafafa
	.long	1499027801              # 0x59595959
	.long	1195853639              # 0x47474747
	.long	4042322160              # 0xf0f0f0f0
	.long	2913840557              # 0xadadadad
	.long	3570717908              # 0xd4d4d4d4
	.long	2728567458              # 0xa2a2a2a2
	.long	2947526575              # 0xafafafaf
	.long	2627509404              # 0x9c9c9c9c
	.long	2762253476              # 0xa4a4a4a4
	.long	1920103026              # 0x72727272
	.long	3233857728              # 0xc0c0c0c0
	.long	3082270647              # 0xb7b7b7b7
	.long	4261281277              # 0xfdfdfdfd
	.long	2475922323              # 0x93939393
	.long	640034342               # 0x26262626
	.long	909522486               # 0x36363636
	.long	1061109567              # 0x3f3f3f3f
	.long	4160223223              # 0xf7f7f7f7
	.long	3435973836              # 0xcccccccc
	.long	875836468               # 0x34343434
	.long	2779096485              # 0xa5a5a5a5
	.long	3857049061              # 0xe5e5e5e5
	.long	4059165169              # 0xf1f1f1f1
	.long	1903260017              # 0x71717171
	.long	3638089944              # 0xd8d8d8d8
	.long	825307441               # 0x31313131
	.long	353703189               # 0x15151515
	.long	67372036                # 0x4040404
	.long	3351758791              # 0xc7c7c7c7
	.long	589505315               # 0x23232323
	.long	3284386755              # 0xc3c3c3c3
	.long	404232216               # 0x18181818
	.long	2526451350              # 0x96969696
	.long	84215045                # 0x5050505
	.long	2593823386              # 0x9a9a9a9a
	.long	117901063               # 0x7070707
	.long	303174162               # 0x12121212
	.long	2155905152              # 0x80808080
	.long	3806520034              # 0xe2e2e2e2
	.long	3958107115              # 0xebebebeb
	.long	656877351               # 0x27272727
	.long	2998055602              # 0xb2b2b2b2
	.long	1970632053              # 0x75757575
	.long	151587081               # 0x9090909
	.long	2206434179              # 0x83838383
	.long	741092396               # 0x2c2c2c2c
	.long	437918234               # 0x1a1a1a1a
	.long	454761243               # 0x1b1b1b1b
	.long	1852730990              # 0x6e6e6e6e
	.long	1515870810              # 0x5a5a5a5a
	.long	2694881440              # 0xa0a0a0a0
	.long	1381126738              # 0x52525252
	.long	993737531               # 0x3b3b3b3b
	.long	3604403926              # 0xd6d6d6d6
	.long	3014898611              # 0xb3b3b3b3
	.long	690563369               # 0x29292929
	.long	3823363043              # 0xe3e3e3e3
	.long	791621423               # 0x2f2f2f2f
	.long	2223277188              # 0x84848484
	.long	1397969747              # 0x53535353
	.long	3520188881              # 0xd1d1d1d1
	.long	0                       # 0x0
	.long	3991793133              # 0xedededed
	.long	538976288               # 0x20202020
	.long	4244438268              # 0xfcfcfcfc
	.long	2981212593              # 0xb1b1b1b1
	.long	1532713819              # 0x5b5b5b5b
	.long	1785358954              # 0x6a6a6a6a
	.long	3419130827              # 0xcbcbcbcb
	.long	3200171710              # 0xbebebebe
	.long	960051513               # 0x39393939
	.long	1246382666              # 0x4a4a4a4a
	.long	1280068684              # 0x4c4c4c4c
	.long	1482184792              # 0x58585858
	.long	3486502863              # 0xcfcfcfcf
	.long	3503345872              # 0xd0d0d0d0
	.long	4025479151              # 0xefefefef
	.long	2863311530              # 0xaaaaaaaa
	.long	4227595259              # 0xfbfbfbfb
	.long	1128481603              # 0x43434343
	.long	1296911693              # 0x4d4d4d4d
	.long	858993459               # 0x33333333
	.long	2240120197              # 0x85858585
	.long	1162167621              # 0x45454545
	.long	4193909241              # 0xf9f9f9f9
	.long	33686018                # 0x2020202
	.long	2139062143              # 0x7f7f7f7f
	.long	1347440720              # 0x50505050
	.long	1010580540              # 0x3c3c3c3c
	.long	2678038431              # 0x9f9f9f9f
	.long	2829625512              # 0xa8a8a8a8
	.long	1364283729              # 0x51515151
	.long	2745410467              # 0xa3a3a3a3
	.long	1077952576              # 0x40404040
	.long	2408550287              # 0x8f8f8f8f
	.long	2459079314              # 0x92929292
	.long	2644352413              # 0x9d9d9d9d
	.long	943208504               # 0x38383838
	.long	4126537205              # 0xf5f5f5f5
	.long	3166485692              # 0xbcbcbcbc
	.long	3065427638              # 0xb6b6b6b6
	.long	3671775962              # 0xdadadada
	.long	555819297               # 0x21212121
	.long	269488144               # 0x10101010
	.long	4294967295              # 0xffffffff
	.long	4092851187              # 0xf3f3f3f3
	.long	3537031890              # 0xd2d2d2d2
	.long	3452816845              # 0xcdcdcdcd
	.long	202116108               # 0xc0c0c0c
	.long	320017171               # 0x13131313
	.long	3974950124              # 0xecececec
	.long	1600085855              # 0x5f5f5f5f
	.long	2543294359              # 0x97979797
	.long	1145324612              # 0x44444444
	.long	387389207               # 0x17171717
	.long	3301229764              # 0xc4c4c4c4
	.long	2812782503              # 0xa7a7a7a7
	.long	2122219134              # 0x7e7e7e7e
	.long	1027423549              # 0x3d3d3d3d
	.long	1684300900              # 0x64646464
	.long	1566399837              # 0x5d5d5d5d
	.long	421075225               # 0x19191919
	.long	1936946035              # 0x73737373
	.long	1616928864              # 0x60606060
	.long	2172748161              # 0x81818181
	.long	1330597711              # 0x4f4f4f4f
	.long	3705461980              # 0xdcdcdcdc
	.long	572662306               # 0x22222222
	.long	707406378               # 0x2a2a2a2a
	.long	2425393296              # 0x90909090
	.long	2290649224              # 0x88888888
	.long	1179010630              # 0x46464646
	.long	4008636142              # 0xeeeeeeee
	.long	3099113656              # 0xb8b8b8b8
	.long	336860180               # 0x14141414
	.long	3739147998              # 0xdededede
	.long	1583242846              # 0x5e5e5e5e
	.long	185273099               # 0xb0b0b0b
	.long	3688618971              # 0xdbdbdbdb
	.long	3772834016              # 0xe0e0e0e0
	.long	842150450               # 0x32323232
	.long	976894522               # 0x3a3a3a3a
	.long	168430090               # 0xa0a0a0a
	.long	1229539657              # 0x49494949
	.long	101058054               # 0x6060606
	.long	606348324               # 0x24242424
	.long	1549556828              # 0x5c5c5c5c
	.long	3267543746              # 0xc2c2c2c2
	.long	3553874899              # 0xd3d3d3d3
	.long	2896997548              # 0xacacacac
	.long	1650614882              # 0x62626262
	.long	2442236305              # 0x91919191
	.long	2509608341              # 0x95959595
	.long	3840206052              # 0xe4e4e4e4
	.long	2038004089              # 0x79797979
	.long	3890735079              # 0xe7e7e7e7
	.long	3368601800              # 0xc8c8c8c8
	.long	926365495               # 0x37373737
	.long	1835887981              # 0x6d6d6d6d
	.long	2374864269              # 0x8d8d8d8d
	.long	3587560917              # 0xd5d5d5d5
	.long	1313754702              # 0x4e4e4e4e
	.long	2846468521              # 0xa9a9a9a9
	.long	1819044972              # 0x6c6c6c6c
	.long	1448498774              # 0x56565656
	.long	4109694196              # 0xf4f4f4f4
	.long	3941264106              # 0xeaeaeaea
	.long	1701143909              # 0x65656565
	.long	2054847098              # 0x7a7a7a7a
	.long	2930683566              # 0xaeaeaeae
	.long	134744072               # 0x8080808
	.long	3132799674              # 0xbabababa
	.long	2021161080              # 0x78787878
	.long	623191333               # 0x25252525
	.long	774778414               # 0x2e2e2e2e
	.long	471604252               # 0x1c1c1c1c
	.long	2795939494              # 0xa6a6a6a6
	.long	3031741620              # 0xb4b4b4b4
	.long	3334915782              # 0xc6c6c6c6
	.long	3907578088              # 0xe8e8e8e8
	.long	3722304989              # 0xdddddddd
	.long	1953789044              # 0x74747474
	.long	522133279               # 0x1f1f1f1f
	.long	1263225675              # 0x4b4b4b4b
	.long	3183328701              # 0xbdbdbdbd
	.long	2341178251              # 0x8b8b8b8b
	.long	2324335242              # 0x8a8a8a8a
	.long	1886417008              # 0x70707070
	.long	1044266558              # 0x3e3e3e3e
	.long	3048584629              # 0xb5b5b5b5
	.long	1717986918              # 0x66666666
	.long	1212696648              # 0x48484848
	.long	50529027                # 0x3030303
	.long	4143380214              # 0xf6f6f6f6
	.long	235802126               # 0xe0e0e0e
	.long	1633771873              # 0x61616161
	.long	892679477               # 0x35353535
	.long	1465341783              # 0x57575757
	.long	3115956665              # 0xb9b9b9b9
	.long	2256963206              # 0x86868686
	.long	3250700737              # 0xc1c1c1c1
	.long	488447261               # 0x1d1d1d1d
	.long	2661195422              # 0x9e9e9e9e
	.long	3789677025              # 0xe1e1e1e1
	.long	4177066232              # 0xf8f8f8f8
	.long	2560137368              # 0x98989898
	.long	286331153               # 0x11111111
	.long	1768515945              # 0x69696969
	.long	3654932953              # 0xd9d9d9d9
	.long	2391707278              # 0x8e8e8e8e
	.long	2492765332              # 0x94949494
	.long	2610666395              # 0x9b9b9b9b
	.long	505290270               # 0x1e1e1e1e
	.long	2273806215              # 0x87878787
	.long	3924421097              # 0xe9e9e9e9
	.long	3469659854              # 0xcececece
	.long	1431655765              # 0x55555555
	.long	673720360               # 0x28282828
	.long	3755991007              # 0xdfdfdfdf
	.long	2358021260              # 0x8c8c8c8c
	.long	2711724449              # 0xa1a1a1a1
	.long	2307492233              # 0x89898989
	.long	218959117               # 0xd0d0d0d
	.long	3217014719              # 0xbfbfbfbf
	.long	3873892070              # 0xe6e6e6e6
	.long	1111638594              # 0x42424242
	.long	1751672936              # 0x68686868
	.long	1094795585              # 0x41414141
	.long	2576980377              # 0x99999999
	.long	757935405               # 0x2d2d2d2d
	.long	252645135               # 0xf0f0f0f
	.long	2964369584              # 0xb0b0b0b0
	.long	1414812756              # 0x54545454
	.long	3149642683              # 0xbbbbbbbb
	.long	370546198               # 0x16161616
	.size	Te4, 1024

	.type	Td0,@object             # @Td0
	.section	.rodata,"a",@progbits
	.p2align	4
Td0:
	.long	1374988112              # 0x51f4a750
	.long	2118214995              # 0x7e416553
	.long	437757123               # 0x1a17a4c3
	.long	975658646               # 0x3a275e96
	.long	1001089995              # 0x3bab6bcb
	.long	530400753               # 0x1f9d45f1
	.long	2902087851              # 0xacfa58ab
	.long	1273168787              # 0x4be30393
	.long	540080725               # 0x2030fa55
	.long	2910219766              # 0xad766df6
	.long	2295101073              # 0x88cc7691
	.long	4110568485              # 0xf5024c25
	.long	1340463100              # 0x4fe5d7fc
	.long	3307916247              # 0xc52acbd7
	.long	641025152               # 0x26354480
	.long	3043140495              # 0xb562a38f
	.long	3736164937              # 0xdeb15a49
	.long	632953703               # 0x25ba1b67
	.long	1172967064              # 0x45ea0e98
	.long	1576976609              # 0x5dfec0e1
	.long	3274667266              # 0xc32f7502
	.long	2169303058              # 0x814cf012
	.long	2370213795              # 0x8d4697a3
	.long	1809054150              # 0x6bd3f9c6
	.long	59727847                # 0x38f5fe7
	.long	361929877               # 0x15929c95
	.long	3211623147              # 0xbf6d7aeb
	.long	2505202138              # 0x955259da
	.long	3569255213              # 0xd4be832d
	.long	1484005843              # 0x587421d3
	.long	1239443753              # 0x49e06929
	.long	2395588676              # 0x8ec9c844
	.long	1975683434              # 0x75c2896a
	.long	4102977912              # 0xf48e7978
	.long	2572697195              # 0x99583e6b
	.long	666464733               # 0x27b971dd
	.long	3202437046              # 0xbee14fb6
	.long	4035489047              # 0xf088ad17
	.long	3374361702              # 0xc920ac66
	.long	2110667444              # 0x7dce3ab4
	.long	1675577880              # 0x63df4a18
	.long	3843699074              # 0xe51a3182
	.long	2538681184              # 0x97513360
	.long	1649639237              # 0x62537f45
	.long	2976151520              # 0xb16477e0
	.long	3144396420              # 0xbb6bae84
	.long	4269907996              # 0xfe81a01c
	.long	4178062228              # 0xf9082b94
	.long	1883793496              # 0x70486858
	.long	2403728665              # 0x8f45fd19
	.long	2497604743              # 0x94de6c87
	.long	1383856311              # 0x527bf8b7
	.long	2876494627              # 0xab73d323
	.long	1917518562              # 0x724b02e2
	.long	3810496343              # 0xe31f8f57
	.long	1716890410              # 0x6655ab2a
	.long	3001755655              # 0xb2eb2807
	.long	800440835               # 0x2fb5c203
	.long	2261089178              # 0x86c57b9a
	.long	3543599269              # 0xd33708a5
	.long	807962610               # 0x302887f2
	.long	599762354               # 0x23bfa5b2
	.long	33778362                # 0x2036aba
	.long	3977675356              # 0xed16825c
	.long	2328828971              # 0x8acf1c2b
	.long	2809771154              # 0xa779b492
	.long	4077384432              # 0xf307f2f0
	.long	1315562145              # 0x4e69e2a1
	.long	1708848333              # 0x65daf4cd
	.long	101039829               # 0x605bed5
	.long	3509871135              # 0xd134621f
	.long	3299278474              # 0xc4a6fe8a
	.long	875451293               # 0x342e539d
	.long	2733856160              # 0xa2f355a0
	.long	92987698                # 0x58ae132
	.long	2767645557              # 0xa4f6eb75
	.long	193195065               # 0xb83ec39
	.long	1080094634              # 0x4060efaa
	.long	1584504582              # 0x5e719f06
	.long	3178106961              # 0xbd6e1051
	.long	1042385657              # 0x3e218af9
	.long	2531067453              # 0x96dd063d
	.long	3711829422              # 0xdd3e05ae
	.long	1306967366              # 0x4de6bd46
	.long	2438237621              # 0x91548db5
	.long	1908694277              # 0x71c45d05
	.long	67556463                # 0x406d46f
	.long	1615861247              # 0x605015ff
	.long	429456164               # 0x1998fb24
	.long	3602770327              # 0xd6bde997
	.long	2302690252              # 0x894043cc
	.long	1742315127              # 0x67d99e77
	.long	2968011453              # 0xb0e842bd
	.long	126454664               # 0x7898b88
	.long	3877198648              # 0xe7195b38
	.long	2043211483              # 0x79c8eedb
	.long	2709260871              # 0xa17c0a47
	.long	2084704233              # 0x7c420fe9
	.long	4169408201              # 0xf8841ec9
	.long	0                       # 0x0
	.long	159417987               # 0x9808683
	.long	841739592               # 0x322bed48
	.long	504459436               # 0x1e1170ac
	.long	1817866830              # 0x6c5a724e
	.long	4245618683              # 0xfd0efffb
	.long	260388950               # 0xf853856
	.long	1034867998              # 0x3daed51e
	.long	908933415               # 0x362d3927
	.long	168810852               # 0xa0fd964
	.long	1750902305              # 0x685ca621
	.long	2606453969              # 0x9b5b54d1
	.long	607530554               # 0x24362e3a
	.long	202008497               # 0xc0a67b1
	.long	2472011535              # 0x9357e70f
	.long	3035535058              # 0xb4ee96d2
	.long	463180190               # 0x1b9b919e
	.long	2160117071              # 0x80c0c54f
	.long	1641816226              # 0x61dc20a2
	.long	1517767529              # 0x5a774b69
	.long	470948374               # 0x1c121a16
	.long	3801332234              # 0xe293ba0a
	.long	3231722213              # 0xc0a02ae5
	.long	1008918595              # 0x3c22e043
	.long	303765277               # 0x121b171d
	.long	235474187               # 0xe090d0b
	.long	4069246893              # 0xf28bc7ad
	.long	766945465               # 0x2db6a8b9
	.long	337553864               # 0x141ea9c8
	.long	1475418501              # 0x57f11985
	.long	2943682380              # 0xaf75074c
	.long	4003061179              # 0xee99ddbb
	.long	2743034109              # 0xa37f60fd
	.long	4144047775              # 0xf701269f
	.long	1551037884              # 0x5c72f5bc
	.long	1147550661              # 0x44663bc5
	.long	1543208500              # 0x5bfb7e34
	.long	2336434550              # 0x8b432976
	.long	3408119516              # 0xcb23c6dc
	.long	3069049960              # 0xb6edfc68
	.long	3102011747              # 0xb8e4f163
	.long	3610369226              # 0xd731dcca
	.long	1113818384              # 0x42638510
	.long	328671808               # 0x13972240
	.long	2227573024              # 0x84c61120
	.long	2236228733              # 0x854a247d
	.long	3535486456              # 0xd2bb3df8
	.long	2935566865              # 0xaef93211
	.long	3341394285              # 0xc729a16d
	.long	496906059               # 0x1d9e2f4b
	.long	3702665459              # 0xdcb230f3
	.long	226906860               # 0xd8652ec
	.long	2009195472              # 0x77c1e3d0
	.long	733156972               # 0x2bb3166c
	.long	2842737049              # 0xa970b999
	.long	294930682               # 0x119448fa
	.long	1206477858              # 0x47e96422
	.long	2835123396              # 0xa8fc8cc4
	.long	2700099354              # 0xa0f03f1a
	.long	1451044056              # 0x567d2cd8
	.long	573804783               # 0x223390ef
	.long	2269728455              # 0x87494ec7
	.long	3644379585              # 0xd938d1c1
	.long	2362090238              # 0x8ccaa2fe
	.long	2564033334              # 0x98d40b36
	.long	2801107407              # 0xa6f581cf
	.long	2776292904              # 0xa57ade28
	.long	3669462566              # 0xdab78e26
	.long	1068351396              # 0x3fadbfa4
	.long	742039012               # 0x2c3a9de4
	.long	1350078989              # 0x5078920d
	.long	1784663195              # 0x6a5fcc9b
	.long	1417561698              # 0x547e4662
	.long	4136440770              # 0xf68d13c2
	.long	2430122216              # 0x90d8b8e8
	.long	775550814               # 0x2e39f75e
	.long	2193862645              # 0x82c3aff5
	.long	2673705150              # 0x9f5d80be
	.long	1775276924              # 0x69d0937c
	.long	1876241833              # 0x6fd52da9
	.long	3475313331              # 0xcf2512b3
	.long	3366754619              # 0xc8ac993b
	.long	270040487               # 0x10187da7
	.long	3902563182              # 0xe89c636e
	.long	3678124923              # 0xdb3bbb7b
	.long	3441850377              # 0xcd267809
	.long	1851332852              # 0x6e5918f4
	.long	3969562369              # 0xec9ab701
	.long	2203032232              # 0x834f9aa8
	.long	3868552805              # 0xe6956e65
	.long	2868897406              # 0xaaffe67e
	.long	566021896               # 0x21bccf08
	.long	4011190502              # 0xef15e8e6
	.long	3135740889              # 0xbae79bd9
	.long	1248802510              # 0x4a6f36ce
	.long	3936291284              # 0xea9f09d4
	.long	699432150               # 0x29b07cd6
	.long	832877231               # 0x31a4b2af
	.long	708780849               # 0x2a3f2331
	.long	3332740144              # 0xc6a59430
	.long	899835584               # 0x35a266c0
	.long	1951317047              # 0x744ebc37
	.long	4236429990              # 0xfc82caa6
	.long	3767586992              # 0xe090d0b0
	.long	866637845               # 0x33a7d815
	.long	4043610186              # 0xf104984a
	.long	1106041591              # 0x41ecdaf7
	.long	2144161806              # 0x7fcd500e
	.long	395441711               # 0x1791f62f
	.long	1984812685              # 0x764dd68d
	.long	1139781709              # 0x43efb04d
	.long	3433712980              # 0xccaa4d54
	.long	3835036895              # 0xe49604df
	.long	2664543715              # 0x9ed1b5e3
	.long	1282050075              # 0x4c6a881b
	.long	3240894392              # 0xc12c1fb8
	.long	1181045119              # 0x4665517f
	.long	2640243204              # 0x9d5eea04
	.long	25965917                # 0x18c355d
	.long	4203181171              # 0xfa877473
	.long	4211818798              # 0xfb0b412e
	.long	3009879386              # 0xb3671d5a
	.long	2463879762              # 0x92dbd252
	.long	3910161971              # 0xe9105633
	.long	1842759443              # 0x6dd64713
	.long	2597806476              # 0x9ad7618c
	.long	933301370               # 0x37a10c7a
	.long	1509430414              # 0x59f8148e
	.long	3943906441              # 0xeb133c89
	.long	3467192302              # 0xcea927ee
	.long	3076639029              # 0xb761c935
	.long	3776767469              # 0xe11ce5ed
	.long	2051518780              # 0x7a47b13c
	.long	2631065433              # 0x9cd2df59
	.long	1441952575              # 0x55f2733f
	.long	404016761               # 0x1814ce79
	.long	1942435775              # 0x73c737bf
	.long	1408749034              # 0x53f7cdea
	.long	1610459739              # 0x5ffdaa5b
	.long	3745345300              # 0xdf3d6f14
	.long	2017778566              # 0x7844db86
	.long	3400528769              # 0xcaaff381
	.long	3110650942              # 0xb968c43e
	.long	941896748               # 0x3824342c
	.long	3265478751              # 0xc2a3405f
	.long	371049330               # 0x161dc372
	.long	3168937228              # 0xbce2250c
	.long	675039627               # 0x283c498b
	.long	4279080257              # 0xff0d9541
	.long	967311729               # 0x39a80171
	.long	135050206               # 0x80cb3de
	.long	3635733660              # 0xd8b4e49c
	.long	1683407248              # 0x6456c190
	.long	2076935265              # 0x7bcb8461
	.long	3576870512              # 0xd532b670
	.long	1215061108              # 0x486c5c74
	.long	3501741890              # 0xd0b85742
	.size	Td0, 1024

	.type	Td1,@object             # @Td1
	.p2align	4
Td1:
	.long	1347548327              # 0x5051f4a7
	.long	1400783205              # 0x537e4165
	.long	3273267108              # 0xc31a17a4
	.long	2520393566              # 0x963a275e
	.long	3409685355              # 0xcb3bab6b
	.long	4045380933              # 0xf11f9d45
	.long	2880240216              # 0xabacfa58
	.long	2471224067              # 0x934be303
	.long	1428173050              # 0x552030fa
	.long	4138563181              # 0xf6ad766d
	.long	2441661558              # 0x9188cc76
	.long	636813900               # 0x25f5024c
	.long	4233094615              # 0xfc4fe5d7
	.long	3620022987              # 0xd7c52acb
	.long	2149987652              # 0x80263544
	.long	2411029155              # 0x8fb562a3
	.long	1239331162              # 0x49deb15a
	.long	1730525723              # 0x6725ba1b
	.long	2554718734              # 0x9845ea0e
	.long	3781033664              # 0xe15dfec0
	.long	46346101                # 0x2c32f75
	.long	310463728               # 0x12814cf0
	.long	2743944855              # 0xa38d4697
	.long	3328955385              # 0xc66bd3f9
	.long	3875770207              # 0xe7038f5f
	.long	2501218972              # 0x9515929c
	.long	3955191162              # 0xebbf6d7a
	.long	3667219033              # 0xda955259
	.long	768917123               # 0x2dd4be83
	.long	3545789473              # 0xd3587421
	.long	692707433               # 0x2949e069
	.long	1150208456              # 0x448ec9c8
	.long	1786102409              # 0x6a75c289
	.long	2029293177              # 0x78f48e79
	.long	1805211710              # 0x6b99583e
	.long	3710368113              # 0xdd27b971
	.long	3065962831              # 0xb6bee14f
	.long	401639597               # 0x17f088ad
	.long	1724457132              # 0x66c920ac
	.long	3028143674              # 0xb47dce3a
	.long	409198410               # 0x1863df4a
	.long	2196052529              # 0x82e51a31
	.long	1620529459              # 0x60975133
	.long	1164071807              # 0x4562537f
	.long	3769721975              # 0xe0b16477
	.long	2226875310              # 0x84bb6bae
	.long	486441376               # 0x1cfe81a0
	.long	2499348523              # 0x94f9082b
	.long	1483753576              # 0x58704868
	.long	428819965               # 0x198f45fd
	.long	2274680428              # 0x8794de6c
	.long	3075636216              # 0xb7527bf8
	.long	598438867               # 0x23ab73d3
	.long	3799141122              # 0xe2724b02
	.long	1474502543              # 0x57e31f8f
	.long	711349675               # 0x2a6655ab
	.long	129166120               # 0x7b2eb28
	.long	53458370                # 0x32fb5c2
	.long	2592523643              # 0x9a86c57b
	.long	2782082824              # 0xa5d33708
	.long	4063242375              # 0xf2302887
	.long	2988687269              # 0xb223bfa5
	.long	3120694122              # 0xba02036a
	.long	1559041666              # 0x5ced1682
	.long	730517276               # 0x2b8acf1c
	.long	2460449204              # 0x92a779b4
	.long	4042459122              # 0xf0f307f2
	.long	2706270690              # 0xa14e69e2
	.long	3446004468              # 0xcd65daf4
	.long	3573941694              # 0xd50605be
	.long	533804130               # 0x1fd13462
	.long	2328143614              # 0x8ac4a6fe
	.long	2637442643              # 0x9d342e53
	.long	2695033685              # 0xa0a2f355
	.long	839224033               # 0x32058ae1
	.long	1973745387              # 0x75a4f6eb
	.long	957055980               # 0x390b83ec
	.long	2856345839              # 0xaa4060ef
	.long	106852767               # 0x65e719f
	.long	1371368976              # 0x51bd6e10
	.long	4181598602              # 0xf93e218a
	.long	1033297158              # 0x3d96dd06
	.long	2933734917              # 0xaedd3e05
	.long	1179510461              # 0x464de6bd
	.long	3046200461              # 0xb591548d
	.long	91341917                # 0x571c45d
	.long	1862534868              # 0x6f0406d4
	.long	4284502037              # 0xff605015
	.long	605657339               # 0x241998fb
	.long	2547432937              # 0x97d6bde9
	.long	3431546947              # 0xcc894043
	.long	2003294622              # 0x7767d99e
	.long	3182487618              # 0xbdb0e842
	.long	2282195339              # 0x8807898b
	.long	954669403               # 0x38e7195b
	.long	3682191598              # 0xdb79c8ee
	.long	1201765386              # 0x47a17c0a
	.long	3917234703              # 0xe97c420f
	.long	3388507166              # 0xc9f8841e
	.long	0                       # 0x0
	.long	2198438022              # 0x83098086
	.long	1211247597              # 0x48322bed
	.long	2887651696              # 0xac1e1170
	.long	1315723890              # 0x4e6c5a72
	.long	4227665663              # 0xfbfd0eff
	.long	1443857720              # 0x560f8538
	.long	507358933               # 0x1e3daed5
	.long	657861945               # 0x27362d39
	.long	1678381017              # 0x640a0fd9
	.long	560487590               # 0x21685ca6
	.long	3516619604              # 0xd19b5b54
	.long	975451694               # 0x3a24362e
	.long	2970356327              # 0xb10c0a67
	.long	261314535               # 0xf9357e7
	.long	3535072918              # 0xd2b4ee96
	.long	2652609425              # 0x9e1b9b91
	.long	1333838021              # 0x4f80c0c5
	.long	2724322336              # 0xa261dc20
	.long	1767536459              # 0x695a774b
	.long	370938394               # 0x161c121a
	.long	182621114               # 0xae293ba
	.long	3854606378              # 0xe5c0a02a
	.long	1128014560              # 0x433c22e0
	.long	487725847               # 0x1d121b17
	.long	185469197               # 0xb0e090d
	.long	2918353863              # 0xadf28bc7
	.long	3106780840              # 0xb92db6a8
	.long	3356761769              # 0xc8141ea9
	.long	2237133081              # 0x8557f119
	.long	1286567175              # 0x4caf7507
	.long	3152976349              # 0xbbee99dd
	.long	4255350624              # 0xfda37f60
	.long	2683765030              # 0x9ff70126
	.long	3160175349              # 0xbc5c72f5
	.long	3309594171              # 0xc544663b
	.long	878443390               # 0x345bfb7e
	.long	1988838185              # 0x768b4329
	.long	3704300486              # 0xdccb23c6
	.long	1756818940              # 0x68b6edfc
	.long	1673061617              # 0x63b8e4f1
	.long	3403100636              # 0xcad731dc
	.long	272786309               # 0x10426385
	.long	1075025698              # 0x40139722
	.long	545572369               # 0x2084c611
	.long	2105887268              # 0x7d854a24
	.long	4174560061              # 0xf8d2bb3d
	.long	296679730               # 0x11aef932
	.long	1841768865              # 0x6dc729a1
	.long	1260232239              # 0x4b1d9e2f
	.long	4091327024              # 0xf3dcb230
	.long	3960309330              # 0xec0d8652
	.long	3497509347              # 0xd077c1e3
	.long	1814803222              # 0x6c2bb316
	.long	2578018489              # 0x99a970b9
	.long	4195456072              # 0xfa119448
	.long	575138148               # 0x2247e964
	.long	3299409036              # 0xc4a8fc8c
	.long	446754879               # 0x1aa0f03f
	.long	3629546796              # 0xd8567d2c
	.long	4011996048              # 0xef223390
	.long	3347532110              # 0xc787494e
	.long	3252238545              # 0xc1d938d1
	.long	4270639778              # 0xfe8ccaa2
	.long	915985419               # 0x3698d40b
	.long	3483825537              # 0xcfa6f581
	.long	681933534               # 0x28a57ade
	.long	651868046               # 0x26dab78e
	.long	2755636671              # 0xa43fadbf
	.long	3828103837              # 0xe42c3a9d
	.long	223377554               # 0xd507892
	.long	2607439820              # 0x9b6a5fcc
	.long	1649704518              # 0x62547e46
	.long	3270937875              # 0xc2f68d13
	.long	3901806776              # 0xe890d8b8
	.long	1580087799              # 0x5e2e39f7
	.long	4118987695              # 0xf582c3af
	.long	3198115200              # 0xbe9f5d80
	.long	2087309459              # 0x7c69d093
	.long	2842678573              # 0xa96fd52d
	.long	3016697106              # 0xb3cf2512
	.long	1003007129              # 0x3bc8ac99
	.long	2802849917              # 0xa710187d
	.long	1860738147              # 0x6ee89c63
	.long	2077965243              # 0x7bdb3bbb
	.long	164439672               # 0x9cd2678
	.long	4100872472              # 0xf46e5918
	.long	32283319                # 0x1ec9ab7
	.long	2827177882              # 0xa8834f9a
	.long	1709610350              # 0x65e6956e
	.long	2125135846              # 0x7eaaffe6
	.long	136428751               # 0x821bccf
	.long	3874428392              # 0xe6ef15e8
	.long	3652904859              # 0xd9bae79b
	.long	3460984630              # 0xce4a6f36
	.long	3572145929              # 0xd4ea9f09
	.long	3593056380              # 0xd629b07c
	.long	2939266226              # 0xaf31a4b2
	.long	824852259               # 0x312a3f23
	.long	818324884               # 0x30c6a594
	.long	3224740454              # 0xc035a266
	.long	930369212               # 0x37744ebc
	.long	2801566410              # 0xa6fc82ca
	.long	2967507152              # 0xb0e090d0
	.long	355706840               # 0x1533a7d8
	.long	1257309336              # 0x4af10498
	.long	4148292826              # 0xf741ecda
	.long	243256656               # 0xe7fcd50
	.long	790073846               # 0x2f1791f6
	.long	2373340630              # 0x8d764dd6
	.long	1296297904              # 0x4d43efb0
	.long	1422699085              # 0x54ccaa4d
	.long	3756299780              # 0xdfe49604
	.long	3818836405              # 0xe39ed1b5
	.long	457992840               # 0x1b4c6a88
	.long	3099667487              # 0xb8c12c1f
	.long	2135319889              # 0x7f466551
	.long	77422314                # 0x49d5eea
	.long	1560382517              # 0x5d018c35
	.long	1945798516              # 0x73fa8774
	.long	788204353               # 0x2efb0b41
	.long	1521706781              # 0x5ab3671d
	.long	1385356242              # 0x5292dbd2
	.long	870912086               # 0x33e91056
	.long	325965383               # 0x136dd647
	.long	2358957921              # 0x8c9ad761
	.long	2050466060              # 0x7a37a10c
	.long	2388260884              # 0x8e59f814
	.long	2313884476              # 0x89eb133c
	.long	4006521127              # 0xeecea927
	.long	901210569               # 0x35b761c9
	.long	3990953189              # 0xede11ce5
	.long	1014646705              # 0x3c7a47b1
	.long	1503449823              # 0x599cd2df
	.long	1062597235              # 0x3f55f273
	.long	2031621326              # 0x791814ce
	.long	3212035895              # 0xbf73c737
	.long	3931371469              # 0xea53f7cd
	.long	1533017514              # 0x5b5ffdaa
	.long	350174575               # 0x14df3d6f
	.long	2256028891              # 0x867844db
	.long	2177544179              # 0x81caaff3
	.long	1052338372              # 0x3eb968c4
	.long	741876788               # 0x2c382434
	.long	1606591296              # 0x5fc2a340
	.long	1914052035              # 0x72161dc3
	.long	213705253               # 0xcbce225
	.long	2334669897              # 0x8b283c49
	.long	1107234197              # 0x41ff0d95
	.long	1899603969              # 0x7139a801
	.long	3725069491              # 0xde080cb3
	.long	2631447780              # 0x9cd8b4e4
	.long	2422494913              # 0x906456c1
	.long	1635502980              # 0x617bcb84
	.long	1893020342              # 0x70d532b6
	.long	1950903388              # 0x74486c5c
	.long	1120974935              # 0x42d0b857
	.size	Td1, 1024

	.type	Td2,@object             # @Td2
	.p2align	4
Td2:
	.long	2807058932              # 0xa75051f4
	.long	1699970625              # 0x65537e41
	.long	2764249623              # 0xa4c31a17
	.long	1586903591              # 0x5e963a27
	.long	1808481195              # 0x6bcb3bab
	.long	1173430173              # 0x45f11f9d
	.long	1487645946              # 0x58abacfa
	.long	59984867                # 0x3934be3
	.long	4199882800              # 0xfa552030
	.long	1844882806              # 0x6df6ad76
	.long	1989249228              # 0x769188cc
	.long	1277555970              # 0x4c25f502
	.long	3623636965              # 0xd7fc4fe5
	.long	3419915562              # 0xcbd7c52a
	.long	1149249077              # 0x44802635
	.long	2744104290              # 0xa38fb562
	.long	1514790577              # 0x5a49deb1
	.long	459744698               # 0x1b6725ba
	.long	244860394               # 0xe9845ea
	.long	3235995134              # 0xc0e15dfe
	.long	1963115311              # 0x7502c32f
	.long	4027744588              # 0xf012814c
	.long	2544078150              # 0x97a38d46
	.long	4190530515              # 0xf9c66bd3
	.long	1608975247              # 0x5fe7038f
	.long	2627016082              # 0x9c951592
	.long	2062270317              # 0x7aebbf6d
	.long	1507497298              # 0x59da9552
	.long	2200818878              # 0x832dd4be
	.long	567498868               # 0x21d35874
	.long	1764313568              # 0x692949e0
	.long	3359936201              # 0xc8448ec9
	.long	2305455554              # 0x896a75c2
	.long	2037970062              # 0x7978f48e
	.long	1047239000              # 0x3e6b9958
	.long	1910319033              # 0x71dd27b9
	.long	1337376481              # 0x4fb6bee1
	.long	2904027272              # 0xad17f088
	.long	2892417312              # 0xac66c920
	.long	984907214               # 0x3ab47dce
	.long	1243112415              # 0x4a1863df
	.long	830661914               # 0x3182e51a
	.long	861968209               # 0x33609751
	.long	2135253587              # 0x7f456253
	.long	2011214180              # 0x77e0b164
	.long	2927934315              # 0xae84bb6b
	.long	2686254721              # 0xa01cfe81
	.long	731183368               # 0x2b94f908
	.long	1750626376              # 0x68587048
	.long	4246310725              # 0xfd198f45
	.long	1820824798              # 0x6c8794de
	.long	4172763771              # 0xf8b7527b
	.long	3542330227              # 0xd323ab73
	.long	48394827                # 0x2e2724b
	.long	2404901663              # 0x8f57e31f
	.long	2871682645              # 0xab2a6655
	.long	671593195               # 0x2807b2eb
	.long	3254988725              # 0xc2032fb5
	.long	2073724613              # 0x7b9a86c5
	.long	145085239               # 0x8a5d337
	.long	2280796200              # 0x87f23028
	.long	2779915199              # 0xa5b223bf
	.long	1790575107              # 0x6aba0203
	.long	2187128086              # 0x825ced16
	.long	472615631               # 0x1c2b8acf
	.long	3029510009              # 0xb492a779
	.long	4075877127              # 0xf2f0f307
	.long	3802222185              # 0xe2a14e69
	.long	4107101658              # 0xf4cd65da
	.long	3201631749              # 0xbed50605
	.long	1646252340              # 0x621fd134
	.long	4270507174              # 0xfe8ac4a6
	.long	1402811438              # 0x539d342e
	.long	1436590835              # 0x55a0a2f3
	.long	3778151818              # 0xe132058a
	.long	3950355702              # 0xeb75a4f6
	.long	3963161475              # 0xec390b83
	.long	4020912224              # 0xefaa4060
	.long	2667994737              # 0x9f065e71
	.long	273792366               # 0x1051bd6e
	.long	2331590177              # 0x8af93e21
	.long	104699613               # 0x63d96dd
	.long	95345982                # 0x5aedd3e
	.long	3175501286              # 0xbd464de6
	.long	2377486676              # 0x8db59154
	.long	1560637892              # 0x5d0571c4
	.long	3564045318              # 0xd46f0406
	.long	369057872               # 0x15ff6050
	.long	4213447064              # 0xfb241998
	.long	3919042237              # 0xe997d6bd
	.long	1137477952              # 0x43cc8940
	.long	2658625497              # 0x9e7767d9
	.long	1119727848              # 0x42bdb0e8
	.long	2340947849              # 0x8b880789
	.long	1530455833              # 0x5b38e719
	.long	4007360968              # 0xeedb79c8
	.long	172466556               # 0xa47a17c
	.long	266959938               # 0xfe97c42
	.long	516552836               # 0x1ec9f884
	.long	0                       # 0x0
	.long	2256734592              # 0x86830980
	.long	3980931627              # 0xed48322b
	.long	1890328081              # 0x70ac1e11
	.long	1917742170              # 0x724e6c5a
	.long	4294704398              # 0xfffbfd0e
	.long	945164165               # 0x38560f85
	.long	3575528878              # 0xd51e3dae
	.long	958871085               # 0x3927362d
	.long	3647212047              # 0xd9640a0f
	.long	2787207260              # 0xa621685c
	.long	1423022939              # 0x54d19b5b
	.long	775562294               # 0x2e3a2436
	.long	1739656202              # 0x67b10c0a
	.long	3876557655              # 0xe70f9357
	.long	2530391278              # 0x96d2b4ee
	.long	2443058075              # 0x919e1b9b
	.long	3310321856              # 0xc54f80c0
	.long	547512796               # 0x20a261dc
	.long	1265195639              # 0x4b695a77
	.long	437656594               # 0x1a161c12
	.long	3121275539              # 0xba0ae293
	.long	719700128               # 0x2ae5c0a0
	.long	3762502690              # 0xe0433c22
	.long	387781147               # 0x171d121b
	.long	218828297               # 0xd0b0e09
	.long	3350065803              # 0xc7adf28b
	.long	2830708150              # 0xa8b92db6
	.long	2848461854              # 0xa9c8141e
	.long	428169201               # 0x198557f1
	.long	122466165               # 0x74caf75
	.long	3720081049              # 0xddbbee99
	.long	1627235199              # 0x60fda37f
	.long	648017665               # 0x269ff701
	.long	4122762354              # 0xf5bc5c72
	.long	1002783846              # 0x3bc54466
	.long	2117360635              # 0x7e345bfb
	.long	695634755               # 0x29768b43
	.long	3336358691              # 0xc6dccb23
	.long	4234721005              # 0xfc68b6ed
	.long	4049844452              # 0xf163b8e4
	.long	3704280881              # 0xdccad731
	.long	2232435299              # 0x85104263
	.long	574624663               # 0x22401397
	.long	287343814               # 0x112084c6
	.long	612205898               # 0x247d854a
	.long	1039717051              # 0x3df8d2bb
	.long	840019705               # 0x3211aef9
	.long	2708326185              # 0xa16dc729
	.long	793451934               # 0x2f4b1d9e
	.long	821288114               # 0x30f3dcb2
	.long	1391201670              # 0x52ec0d86
	.long	3822090177              # 0xe3d077c1
	.long	376187827               # 0x166c2bb3
	.long	3113855344              # 0xb999a970
	.long	1224348052              # 0x48fa1194
	.long	1679968233              # 0x642247e9
	.long	2361698556              # 0x8cc4a8fc
	.long	1058709744              # 0x3f1aa0f0
	.long	752375421               # 0x2cd8567d
	.long	2431590963              # 0x90ef2233
	.long	1321699145              # 0x4ec78749
	.long	3519142200              # 0xd1c1d938
	.long	2734591178              # 0xa2fe8cca
	.long	188127444               # 0xb3698d4
	.long	2177869557              # 0x81cfa6f5
	.long	3727205754              # 0xde28a57a
	.long	2384911031              # 0x8e26dab7
	.long	3215212461              # 0xbfa43fad
	.long	2648976442              # 0x9de42c3a
	.long	2450346104              # 0x920d5078
	.long	3432737375              # 0xcc9b6a5f
	.long	1180849278              # 0x4662547e
	.long	331544205               # 0x13c2f68d
	.long	3102249176              # 0xb8e890d8
	.long	4150144569              # 0xf75e2e39
	.long	2952102595              # 0xaff582c3
	.long	2159976285              # 0x80be9f5d
	.long	2474404304              # 0x937c69d0
	.long	766078933               # 0x2da96fd5
	.long	313773861               # 0x12b3cf25
	.long	2570832044              # 0x993bc8ac
	.long	2108100632              # 0x7da71018
	.long	1668212892              # 0x636ee89c
	.long	3145456443              # 0xbb7bdb3b
	.long	2013908262              # 0x7809cd26
	.long	418672217               # 0x18f46e59
	.long	3070356634              # 0xb701ec9a
	.long	2594734927              # 0x9aa8834f
	.long	1852171925              # 0x6e65e695
	.long	3867060991              # 0xe67eaaff
	.long	3473416636              # 0xcf0821bc
	.long	3907448597              # 0xe8e6ef15
	.long	2614737639              # 0x9bd9bae7
	.long	919489135               # 0x36ce4a6f
	.long	164948639               # 0x9d4ea9f
	.long	2094410160              # 0x7cd629b0
	.long	2997825956              # 0xb2af31a4
	.long	590424639               # 0x23312a3f
	.long	2486224549              # 0x9430c6a5
	.long	1723872674              # 0x66c035a2
	.long	3157750862              # 0xbc37744e
	.long	3399941250              # 0xcaa6fc82
	.long	3501252752              # 0xd0b0e090
	.long	3625268135              # 0xd81533a7
	.long	2555048196              # 0x984af104
	.long	3673637356              # 0xdaf741ec
	.long	1343127501              # 0x500e7fcd
	.long	4130281361              # 0xf62f1791
	.long	3599595085              # 0xd68d764d
	.long	2957853679              # 0xb04d43ef
	.long	1297403050              # 0x4d54ccaa
	.long	81781910                # 0x4dfe496
	.long	3051593425              # 0xb5e39ed1
	.long	2283490410              # 0x881b4c6a
	.long	532201772               # 0x1fb8c12c
	.long	1367295589              # 0x517f4665
	.long	3926170974              # 0xea049d5e
	.long	895287692               # 0x355d018c
	.long	1953757831              # 0x7473fa87
	.long	1093597963              # 0x412efb0b
	.long	492483431               # 0x1d5ab367
	.long	3528626907              # 0xd25292db
	.long	1446242576              # 0x5633e910
	.long	1192455638              # 0x47136dd6
	.long	1636604631              # 0x618c9ad7
	.long	209336225               # 0xc7a37a1
	.long	344873464               # 0x148e59f8
	.long	1015671571              # 0x3c89eb13
	.long	669961897               # 0x27eecea9
	.long	3375740769              # 0xc935b761
	.long	3857572124              # 0xe5ede11c
	.long	2973530695              # 0xb13c7a47
	.long	3747192018              # 0xdf599cd2
	.long	1933530610              # 0x733f55f2
	.long	3464042516              # 0xce791814
	.long	935293895               # 0x37bf73c7
	.long	3454686199              # 0xcdea53f7
	.long	2858115069              # 0xaa5b5ffd
	.long	1863638845              # 0x6f14df3d
	.long	3683022916              # 0xdb867844
	.long	4085369519              # 0xf381caaf
	.long	3292445032              # 0xc43eb968
	.long	875313188               # 0x342c3824
	.long	1080017571              # 0x405fc2a3
	.long	3279033885              # 0xc372161d
	.long	621591778               # 0x250cbce2
	.long	1233856572              # 0x498b283c
	.long	2504130317              # 0x9541ff0d
	.long	24197544                # 0x17139a8
	.long	3017672716              # 0xb3de080c
	.long	3835484340              # 0xe49cd8b4
	.long	3247465558              # 0xc1906456
	.long	2220981195              # 0x84617bcb
	.long	3060847922              # 0xb670d532
	.long	1551124588              # 0x5c74486c
	.long	1463996600              # 0x5742d0b8
	.size	Td2, 1024

	.type	Td3,@object             # @Td3
	.p2align	4
Td3:
	.long	4104605777              # 0xf4a75051
	.long	1097159550              # 0x4165537e
	.long	396673818               # 0x17a4c31a
	.long	660510266               # 0x275e963a
	.long	2875968315              # 0xab6bcb3b
	.long	2638606623              # 0x9d45f11f
	.long	4200115116              # 0xfa58abac
	.long	3808662347              # 0xe303934b
	.long	821712160               # 0x30fa5520
	.long	1986918061              # 0x766df6ad
	.long	3430322568              # 0xcc769188
	.long	38544885                # 0x24c25f5
	.long	3856137295              # 0xe5d7fc4f
	.long	718002117               # 0x2acbd7c5
	.long	893681702               # 0x35448026
	.long	1654886325              # 0x62a38fb5
	.long	2975484382              # 0xb15a49de
	.long	3122358053              # 0xba1b6725
	.long	3926825029              # 0xea0e9845
	.long	4274053469              # 0xfec0e15d
	.long	796197571               # 0x2f7502c3
	.long	1290801793              # 0x4cf01281
	.long	1184342925              # 0x4697a38d
	.long	3556361835              # 0xd3f9c66b
	.long	2405426947              # 0x8f5fe703
	.long	2459735317              # 0x929c9515
	.long	1836772287              # 0x6d7aebbf
	.long	1381620373              # 0x5259da95
	.long	3196267988              # 0xbe832dd4
	.long	1948373848              # 0x7421d358
	.long	3764988233              # 0xe0692949
	.long	3385345166              # 0xc9c8448e
	.long	3263785589              # 0xc2896a75
	.long	2390325492              # 0x8e7978f4
	.long	1480485785              # 0x583e6b99
	.long	3111247143              # 0xb971dd27
	.long	3780097726              # 0xe14fb6be
	.long	2293045232              # 0x88ad17f0
	.long	548169417               # 0x20ac66c9
	.long	3459953789              # 0xce3ab47d
	.long	3746175075              # 0xdf4a1863
	.long	439452389               # 0x1a3182e5
	.long	1362321559              # 0x51336097
	.long	1400849762              # 0x537f4562
	.long	1685577905              # 0x6477e0b1
	.long	1806599355              # 0x6bae84bb
	.long	2174754046              # 0x81a01cfe
	.long	137073913               # 0x82b94f9
	.long	1214797936              # 0x48685870
	.long	1174215055              # 0x45fd198f
	.long	3731654548              # 0xde6c8794
	.long	2079897426              # 0x7bf8b752
	.long	1943217067              # 0x73d323ab
	.long	1258480242              # 0x4b02e272
	.long	529487843               # 0x1f8f57e3
	.long	1437280870              # 0x55ab2a66
	.long	3945269170              # 0xeb2807b2
	.long	3049390895              # 0xb5c2032f
	.long	3313212038              # 0xc57b9a86
	.long	923313619               # 0x3708a5d3
	.long	679998000               # 0x2887f230
	.long	3215307299              # 0xbfa5b223
	.long	57326082                # 0x36aba02
	.long	377642221               # 0x16825ced
	.long	3474729866              # 0xcf1c2b8a
	.long	2041877159              # 0x79b492a7
	.long	133361907               # 0x7f2f0f3
	.long	1776460110              # 0x69e2a14e
	.long	3673476453              # 0xdaf4cd65
	.long	96392454                # 0x5bed506
	.long	878845905               # 0x34621fd1
	.long	2801699524              # 0xa6fe8ac4
	.long	777231668               # 0x2e539d34
	.long	4082475170              # 0xf355a0a2
	.long	2330014213              # 0x8ae13205
	.long	4142626212              # 0xf6eb75a4
	.long	2213296395              # 0x83ec390b
	.long	1626319424              # 0x60efaa40
	.long	1906247262              # 0x719f065e
	.long	1846563261              # 0x6e1051bd
	.long	562755902               # 0x218af93e
	.long	3708173718              # 0xdd063d96
	.long	1040559837              # 0x3e05aedd
	.long	3871163981              # 0xe6bd464d
	.long	1418573201              # 0x548db591
	.long	3294430577              # 0xc45d0571
	.long	114585348               # 0x6d46f04
	.long	1343618912              # 0x5015ff60
	.long	2566595609              # 0x98fb2419
	.long	3186202582              # 0xbde997d6
	.long	1078185097              # 0x4043cc89
	.long	3651041127              # 0xd99e7767
	.long	3896688048              # 0xe842bdb0
	.long	2307622919              # 0x898b8807
	.long	425408743               # 0x195b38e7
	.long	3371096953              # 0xc8eedb79
	.long	2081048481              # 0x7c0a47a1
	.long	1108339068              # 0x420fe97c
	.long	2216610296              # 0x841ec9f8
	.long	0                       # 0x0
	.long	2156299017              # 0x80868309
	.long	736970802               # 0x2bed4832
	.long	292596766               # 0x1170ac1e
	.long	1517440620              # 0x5a724e6c
	.long	251657213               # 0xefffbfd
	.long	2235061775              # 0x8538560f
	.long	2933202493              # 0xaed51e3d
	.long	758720310               # 0x2d392736
	.long	265905162               # 0xfd9640a
	.long	1554391400              # 0x5ca62168
	.long	1532285339              # 0x5b54d19b
	.long	908999204               # 0x362e3a24
	.long	174567692               # 0xa67b10c
	.long	1474760595              # 0x57e70f93
	.long	4002861748              # 0xee96d2b4
	.long	2610011675              # 0x9b919e1b
	.long	3234156416              # 0xc0c54f80
	.long	3693126241              # 0xdc20a261
	.long	2001430874              # 0x774b695a
	.long	303699484               # 0x121a161c
	.long	2478443234              # 0x93ba0ae2
	.long	2687165888              # 0xa02ae5c0
	.long	585122620               # 0x22e0433c
	.long	454499602               # 0x1b171d12
	.long	151849742               # 0x90d0b0e
	.long	2345119218              # 0x8bc7adf2
	.long	3064510765              # 0xb6a8b92d
	.long	514443284               # 0x1ea9c814
	.long	4044981591              # 0xf1198557
	.long	1963412655              # 0x75074caf
	.long	2581445614              # 0x99ddbbee
	.long	2137062819              # 0x7f60fda3
	.long	19308535                # 0x1269ff7
	.long	1928707164              # 0x72f5bc5c
	.long	1715193156              # 0x663bc544
	.long	4219352155              # 0xfb7e345b
	.long	1126790795              # 0x4329768b
	.long	600235211               # 0x23c6dccb
	.long	3992742070              # 0xedfc68b6
	.long	3841024952              # 0xe4f163b8
	.long	836553431               # 0x31dccad7
	.long	1669664834              # 0x63851042
	.long	2535604243              # 0x97224013
	.long	3323011204              # 0xc6112084
	.long	1243905413              # 0x4a247d85
	.long	3141400786              # 0xbb3df8d2
	.long	4180808110              # 0xf93211ae
	.long	698445255               # 0x29a16dc7
	.long	2653899549              # 0x9e2f4b1d
	.long	2989552604              # 0xb230f3dc
	.long	2253581325              # 0x8652ec0d
	.long	3252932727              # 0xc1e3d077
	.long	3004591147              # 0xb3166c2b
	.long	1891211689              # 0x70b999a9
	.long	2487810577              # 0x9448fa11
	.long	3915653703              # 0xe9642247
	.long	4237083816              # 0xfc8cc4a8
	.long	4030667424              # 0xf03f1aa0
	.long	2100090966              # 0x7d2cd856
	.long	865136418               # 0x3390ef22
	.long	1229899655              # 0x494ec787
	.long	953270745               # 0x38d1c1d9
	.long	3399679628              # 0xcaa2fe8c
	.long	3557504664              # 0xd40b3698
	.long	4118925222              # 0xf581cfa6
	.long	2061379749              # 0x7ade28a5
	.long	3079546586              # 0xb78e26da
	.long	2915017791              # 0xadbfa43f
	.long	983426092               # 0x3a9de42c
	.long	2022837584              # 0x78920d50
	.long	1607244650              # 0x5fcc9b6a
	.long	2118541908              # 0x7e466254
	.long	2366882550              # 0x8d13c2f6
	.long	3635996816              # 0xd8b8e890
	.long	972512814               # 0x39f75e2e
	.long	3283088770              # 0xc3aff582
	.long	1568718495              # 0x5d80be9f
	.long	3499326569              # 0xd0937c69
	.long	3576539503              # 0xd52da96f
	.long	621982671               # 0x2512b3cf
	.long	2895723464              # 0xac993bc8
	.long	410887952               # 0x187da710
	.long	2623762152              # 0x9c636ee8
	.long	1002142683              # 0x3bbb7bdb
	.long	645401037               # 0x267809cd
	.long	1494807662              # 0x5918f46e
	.long	2595684844              # 0x9ab701ec
	.long	1335535747              # 0x4f9aa883
	.long	2507040230              # 0x956e65e6
	.long	4293295786              # 0xffe67eaa
	.long	3167684641              # 0xbccf0821
	.long	367585007               # 0x15e8e6ef
	.long	3885750714              # 0xe79bd9ba
	.long	1865862730              # 0x6f36ce4a
	.long	2668221674              # 0x9f09d4ea
	.long	2960971305              # 0xb07cd629
	.long	2763173681              # 0xa4b2af31
	.long	1059270954              # 0x3f23312a
	.long	2777952454              # 0xa59430c6
	.long	2724642869              # 0xa266c035
	.long	1320957812              # 0x4ebc3774
	.long	2194319100              # 0x82caa6fc
	.long	2429595872              # 0x90d0b0e0
	.long	2815956275              # 0xa7d81533
	.long	77089521                # 0x4984af1
	.long	3973773121              # 0xecdaf741
	.long	3444575871              # 0xcd500e7f
	.long	2448830231              # 0x91f62f17
	.long	1305906550              # 0x4dd68d76
	.long	4021308739              # 0xefb04d43
	.long	2857194700              # 0xaa4d54cc
	.long	2516901860              # 0x9604dfe4
	.long	3518358430              # 0xd1b5e39e
	.long	1787304780              # 0x6a881b4c
	.long	740276417               # 0x2c1fb8c1
	.long	1699839814              # 0x65517f46
	.long	1592394909              # 0x5eea049d
	.long	2352307457              # 0x8c355d01
	.long	2272556026              # 0x877473fa
	.long	188821243               # 0xb412efb
	.long	1729977011              # 0x671d5ab3
	.long	3687994002              # 0xdbd25292
	.long	274084841               # 0x105633e9
	.long	3594982253              # 0xd647136d
	.long	3613494426              # 0xd7618c9a
	.long	2701949495              # 0xa10c7a37
	.long	4162096729              # 0xf8148e59
	.long	322734571               # 0x133c89eb
	.long	2837966542              # 0xa927eece
	.long	1640576439              # 0x61c935b7
	.long	484830689               # 0x1ce5ede1
	.long	1202797690              # 0x47b13c7a
	.long	3537852828              # 0xd2df599c
	.long	4067639125              # 0xf2733f55
	.long	349075736               # 0x14ce7918
	.long	3342319475              # 0xc737bf73
	.long	4157467219              # 0xf7cdea53
	.long	4255800159              # 0xfdaa5b5f
	.long	1030690015              # 0x3d6f14df
	.long	1155237496              # 0x44db8678
	.long	2951971274              # 0xaff381ca
	.long	1757691577              # 0x68c43eb9
	.long	607398968               # 0x24342c38
	.long	2738905026              # 0xa3405fc2
	.long	499347990               # 0x1dc37216
	.long	3794078908              # 0xe2250cbc
	.long	1011452712              # 0x3c498b28
	.long	227885567               # 0xd9541ff
	.long	2818666809              # 0xa8017139
	.long	213114376               # 0xcb3de08
	.long	3034881240              # 0xb4e49cd8
	.long	1455525988              # 0x56c19064
	.long	3414450555              # 0xcb84617b
	.long	850817237               # 0x32b670d5
	.long	1817998408              # 0x6c5c7448
	.long	3092726480              # 0xb85742d0
	.size	Td3, 1024

	.type	Te0,@object             # @Te0
	.data
	.p2align	4
Te0:
	.long	3328402341              # 0xc66363a5
	.long	4168907908              # 0xf87c7c84
	.long	4000806809              # 0xee777799
	.long	4135287693              # 0xf67b7b8d
	.long	4294111757              # 0xfff2f20d
	.long	3597364157              # 0xd66b6bbd
	.long	3731845041              # 0xde6f6fb1
	.long	2445657428              # 0x91c5c554
	.long	1613770832              # 0x60303050
	.long	33620227                # 0x2010103
	.long	3462883241              # 0xce6767a9
	.long	1445669757              # 0x562b2b7d
	.long	3892248089              # 0xe7fefe19
	.long	3050821474              # 0xb5d7d762
	.long	1303096294              # 0x4dababe6
	.long	3967186586              # 0xec76769a
	.long	2412431941              # 0x8fcaca45
	.long	528646813               # 0x1f82829d
	.long	2311702848              # 0x89c9c940
	.long	4202528135              # 0xfa7d7d87
	.long	4026202645              # 0xeffafa15
	.long	2992200171              # 0xb25959eb
	.long	2387036105              # 0x8e4747c9
	.long	4226871307              # 0xfbf0f00b
	.long	1101901292              # 0x41adadec
	.long	3017069671              # 0xb3d4d467
	.long	1604494077              # 0x5fa2a2fd
	.long	1169141738              # 0x45afafea
	.long	597466303               # 0x239c9cbf
	.long	1403299063              # 0x53a4a4f7
	.long	3832705686              # 0xe4727296
	.long	2613100635              # 0x9bc0c05b
	.long	1974974402              # 0x75b7b7c2
	.long	3791519004              # 0xe1fdfd1c
	.long	1033081774              # 0x3d9393ae
	.long	1277568618              # 0x4c26266a
	.long	1815492186              # 0x6c36365a
	.long	2118074177              # 0x7e3f3f41
	.long	4126668546              # 0xf5f7f702
	.long	2211236943              # 0x83cccc4f
	.long	1748251740              # 0x6834345c
	.long	1369810420              # 0x51a5a5f4
	.long	3521504564              # 0xd1e5e534
	.long	4193382664              # 0xf9f1f108
	.long	3799085459              # 0xe2717193
	.long	2883115123              # 0xabd8d873
	.long	1647391059              # 0x62313153
	.long	706024767               # 0x2a15153f
	.long	134480908               # 0x804040c
	.long	2512897874              # 0x95c7c752
	.long	1176707941              # 0x46232365
	.long	2646852446              # 0x9dc3c35e
	.long	806885416               # 0x30181828
	.long	932615841               # 0x379696a1
	.long	168101135               # 0xa05050f
	.long	798661301               # 0x2f9a9ab5
	.long	235341577               # 0xe070709
	.long	605164086               # 0x24121236
	.long	461406363               # 0x1b80809b
	.long	3756188221              # 0xdfe2e23d
	.long	3454790438              # 0xcdebeb26
	.long	1311188841              # 0x4e272769
	.long	2142417613              # 0x7fb2b2cd
	.long	3933566367              # 0xea75759f
	.long	302582043               # 0x1209091b
	.long	495158174               # 0x1d83839e
	.long	1479289972              # 0x582c2c74
	.long	874125870               # 0x341a1a2e
	.long	907746093               # 0x361b1b2d
	.long	3698224818              # 0xdc6e6eb2
	.long	3025820398              # 0xb45a5aee
	.long	1537253627              # 0x5ba0a0fb
	.long	2756858614              # 0xa45252f6
	.long	1983593293              # 0x763b3b4d
	.long	3084310113              # 0xb7d6d661
	.long	2108928974              # 0x7db3b3ce
	.long	1378429307              # 0x5229297b
	.long	3722699582              # 0xdde3e33e
	.long	1580150641              # 0x5e2f2f71
	.long	327451799               # 0x13848497
	.long	2790478837              # 0xa65353f5
	.long	3117535592              # 0xb9d1d168
	.long	0                       # 0x0
	.long	3253595436              # 0xc1eded2c
	.long	1075847264              # 0x40202060
	.long	3825007647              # 0xe3fcfc1f
	.long	2041688520              # 0x79b1b1c8
	.long	3059440621              # 0xb65b5bed
	.long	3563743934              # 0xd46a6abe
	.long	2378943302              # 0x8dcbcb46
	.long	1740553945              # 0x67bebed9
	.long	1916352843              # 0x7239394b
	.long	2487896798              # 0x944a4ade
	.long	2555137236              # 0x984c4cd4
	.long	2958579944              # 0xb05858e8
	.long	2244988746              # 0x85cfcf4a
	.long	3151024235              # 0xbbd0d06b
	.long	3320835882              # 0xc5efef2a
	.long	1336584933              # 0x4faaaae5
	.long	3992714006              # 0xedfbfb16
	.long	2252555205              # 0x864343c5
	.long	2588757463              # 0x9a4d4dd7
	.long	1714631509              # 0x66333355
	.long	293963156               # 0x11858594
	.long	2319795663              # 0x8a4545cf
	.long	3925473552              # 0xe9f9f910
	.long	67240454                # 0x4020206
	.long	4269768577              # 0xfe7f7f81
	.long	2689618160              # 0xa05050f0
	.long	2017213508              # 0x783c3c44
	.long	631218106               # 0x259f9fba
	.long	1269344483              # 0x4ba8a8e3
	.long	2723238387              # 0xa25151f3
	.long	1571005438              # 0x5da3a3fe
	.long	2151694528              # 0x804040c0
	.long	93294474                # 0x58f8f8a
	.long	1066570413              # 0x3f9292ad
	.long	563977660               # 0x219d9dbc
	.long	1882732616              # 0x70383848
	.long	4059428100              # 0xf1f5f504
	.long	1673313503              # 0x63bcbcdf
	.long	2008463041              # 0x77b6b6c1
	.long	2950355573              # 0xafdada75
	.long	1109467491              # 0x42212163
	.long	537923632               # 0x20101030
	.long	3858759450              # 0xe5ffff1a
	.long	4260623118              # 0xfdf3f30e
	.long	3218264685              # 0xbfd2d26d
	.long	2177748300              # 0x81cdcd4c
	.long	403442708               # 0x180c0c14
	.long	638784309               # 0x26131335
	.long	3287084079              # 0xc3ecec2f
	.long	3193921505              # 0xbe5f5fe1
	.long	899127202               # 0x359797a2
	.long	2286175436              # 0x884444cc
	.long	773265209               # 0x2e171739
	.long	2479146071              # 0x93c4c457
	.long	1437050866              # 0x55a7a7f2
	.long	4236148354              # 0xfc7e7e82
	.long	2050833735              # 0x7a3d3d47
	.long	3362022572              # 0xc86464ac
	.long	3126681063              # 0xba5d5de7
	.long	840505643               # 0x3219192b
	.long	3866325909              # 0xe6737395
	.long	3227541664              # 0xc06060a0
	.long	427917720               # 0x19818198
	.long	2655997905              # 0x9e4f4fd1
	.long	2749160575              # 0xa3dcdc7f
	.long	1143087718              # 0x44222266
	.long	1412049534              # 0x542a2a7e
	.long	999329963               # 0x3b9090ab
	.long	193497219               # 0xb888883
	.long	2353415882              # 0x8c4646ca
	.long	3354324521              # 0xc7eeee29
	.long	1807268051              # 0x6bb8b8d3
	.long	672404540               # 0x2814143c
	.long	2816401017              # 0xa7dede79
	.long	3160301282              # 0xbc5e5ee2
	.long	369822493               # 0x160b0b1d
	.long	2916866934              # 0xaddbdb76
	.long	3688947771              # 0xdbe0e03b
	.long	1681011286              # 0x64323256
	.long	1949973070              # 0x743a3a4e
	.long	336202270               # 0x140a0a1e
	.long	2454276571              # 0x924949db
	.long	201721354               # 0xc06060a
	.long	1210328172              # 0x4824246c
	.long	3093060836              # 0xb85c5ce4
	.long	2680341085              # 0x9fc2c25d
	.long	3184776046              # 0xbdd3d36e
	.long	1135389935              # 0x43acacef
	.long	3294782118              # 0xc46262a6
	.long	965841320               # 0x399191a8
	.long	831886756               # 0x319595a4
	.long	3554993207              # 0xd3e4e437
	.long	4068047243              # 0xf279798b
	.long	3588745010              # 0xd5e7e732
	.long	2345191491              # 0x8bc8c843
	.long	104281945               # 0x6373759
	.long	3664604599              # 0xda6d6db7
	.long	26054028                # 0x18d8d8c
	.long	2983581028              # 0xb1d5d564
	.long	2622377682              # 0x9c4e4ed2
	.long	1235855840              # 0x49a9a9e0
	.long	3630984372              # 0xd86c6cb4
	.long	2891339514              # 0xac5656fa
	.long	4092916743              # 0xf3f4f407
	.long	3488279077              # 0xcfeaea25
	.long	3395642799              # 0xca6565af
	.long	4101667470              # 0xf47a7a8e
	.long	1202630377              # 0x47aeaee9
	.long	268961816               # 0x10080818
	.long	1874508501              # 0x6fbabad5
	.long	4034427016              # 0xf0787888
	.long	1243948399              # 0x4a25256f
	.long	1546530418              # 0x5c2e2e72
	.long	941366308               # 0x381c1c24
	.long	1470539505              # 0x57a6a6f1
	.long	1941222599              # 0x73b4b4c7
	.long	2546386513              # 0x97c6c651
	.long	3421038627              # 0xcbe8e823
	.long	2715671932              # 0xa1dddd7c
	.long	3899946140              # 0xe874749c
	.long	1042226977              # 0x3e1f1f21
	.long	2521517021              # 0x964b4bdd
	.long	1639824860              # 0x61bdbddc
	.long	227249030               # 0xd8b8b86
	.long	260737669               # 0xf8a8a85
	.long	3765465232              # 0xe0707090
	.long	2084453954              # 0x7c3e3e42
	.long	1907733956              # 0x71b5b5c4
	.long	3429263018              # 0xcc6666aa
	.long	2420656344              # 0x904848d8
	.long	100860677               # 0x6030305
	.long	4160157185              # 0xf7f6f601
	.long	470683154               # 0x1c0e0e12
	.long	3261161891              # 0xc26161a3
	.long	1781871967              # 0x6a35355f
	.long	2924959737              # 0xae5757f9
	.long	1773779408              # 0x69b9b9d0
	.long	394692241               # 0x17868691
	.long	2579611992              # 0x99c1c158
	.long	974986535               # 0x3a1d1d27
	.long	664706745               # 0x279e9eb9
	.long	3655459128              # 0xd9e1e138
	.long	3958962195              # 0xebf8f813
	.long	731420851               # 0x2b9898b3
	.long	571543859               # 0x22111133
	.long	3530123707              # 0xd26969bb
	.long	2849626480              # 0xa9d9d970
	.long	126783113               # 0x78e8e89
	.long	865375399               # 0x339494a7
	.long	765172662               # 0x2d9b9bb6
	.long	1008606754              # 0x3c1e1e22
	.long	361203602               # 0x15878792
	.long	3387549984              # 0xc9e9e920
	.long	2278477385              # 0x87cece49
	.long	2857719295              # 0xaa5555ff
	.long	1344809080              # 0x50282878
	.long	2782912378              # 0xa5dfdf7a
	.long	59542671                # 0x38c8c8f
	.long	1503764984              # 0x59a1a1f8
	.long	160008576               # 0x9898980
	.long	437062935               # 0x1a0d0d17
	.long	1707065306              # 0x65bfbfda
	.long	3622233649              # 0xd7e6e631
	.long	2218934982              # 0x844242c6
	.long	3496503480              # 0xd06868b8
	.long	2185314755              # 0x824141c3
	.long	697932208               # 0x299999b0
	.long	1512910199              # 0x5a2d2d77
	.long	504303377               # 0x1e0f0f11
	.long	2075177163              # 0x7bb0b0cb
	.long	2824099068              # 0xa85454fc
	.long	1841019862              # 0x6dbbbbd6
	.long	739644986               # 0x2c16163a
	.size	Te0, 1024

	.type	Te1,@object             # @Te1
	.p2align	4
Te1:
	.long	2781242211              # 0xa5c66363
	.long	2230877308              # 0x84f87c7c
	.long	2582542199              # 0x99ee7777
	.long	2381740923              # 0x8df67b7b
	.long	234877682               # 0xdfff2f2
	.long	3184946027              # 0xbdd66b6b
	.long	2984144751              # 0xb1de6f6f
	.long	1418839493              # 0x5491c5c5
	.long	1348481072              # 0x50603030
	.long	50462977                # 0x3020101
	.long	2848876391              # 0xa9ce6767
	.long	2102799147              # 0x7d562b2b
	.long	434634494               # 0x19e7fefe
	.long	1656084439              # 0x62b5d7d7
	.long	3863849899              # 0xe64dabab
	.long	2599188086              # 0x9aec7676
	.long	1167051466              # 0x458fcaca
	.long	2636087938              # 0x9d1f8282
	.long	1082771913              # 0x4089c9c9
	.long	2281340285              # 0x87fa7d7d
	.long	368048890               # 0x15effafa
	.long	3954334041              # 0xebb25959
	.long	3381544775              # 0xc98e4747
	.long	201060592               # 0xbfbf0f0
	.long	3963727277              # 0xec41adad
	.long	1739838676              # 0x67b3d4d4
	.long	4250903202              # 0xfd5fa2a2
	.long	3930435503              # 0xea45afaf
	.long	3206782108              # 0xbf239c9c
	.long	4149453988              # 0xf753a4a4
	.long	2531553906              # 0x96e47272
	.long	1536934080              # 0x5b9bc0c0
	.long	3262494647              # 0xc275b7b7
	.long	484572669               # 0x1ce1fdfd
	.long	2923271059              # 0xae3d9393
	.long	1783375398              # 0x6a4c2626
	.long	1517041206              # 0x5a6c3636
	.long	1098792767              # 0x417e3f3f
	.long	49674231                # 0x2f5f7f7
	.long	1334037708              # 0x4f83cccc
	.long	1550332980              # 0x5c683434
	.long	4098991525              # 0xf451a5a5
	.long	886171109               # 0x34d1e5e5
	.long	150598129               # 0x8f9f1f1
	.long	2481090929              # 0x93e27171
	.long	1940642008              # 0x73abd8d8
	.long	1398944049              # 0x53623131
	.long	1059722517              # 0x3f2a1515
	.long	201851908               # 0xc080404
	.long	1385547719              # 0x5295c7c7
	.long	1699095331              # 0x65462323
	.long	1587397571              # 0x5e9dc3c3
	.long	674240536               # 0x28301818
	.long	2704774806              # 0xa1379696
	.long	252314885               # 0xf0a0505
	.long	3039795866              # 0xb52f9a9a
	.long	151914247               # 0x90e0707
	.long	908333586               # 0x36241212
	.long	2602270848              # 0x9b1b8080
	.long	1038082786              # 0x3ddfe2e2
	.long	651029483               # 0x26cdebeb
	.long	1766729511              # 0x694e2727
	.long	3447698098              # 0xcd7fb2b2
	.long	2682942837              # 0x9fea7575
	.long	454166793               # 0x1b120909
	.long	2652734339              # 0x9e1d8383
	.long	1951935532              # 0x74582c2c
	.long	775166490               # 0x2e341a1a
	.long	758520603               # 0x2d361b1b
	.long	3000790638              # 0xb2dc6e6e
	.long	4004797018              # 0xeeb45a5a
	.long	4217086112              # 0xfb5ba0a0
	.long	4137964114              # 0xf6a45252
	.long	1299594043              # 0x4d763b3b
	.long	1639438038              # 0x61b7d6d6
	.long	3464344499              # 0xce7db3b3
	.long	2068982057              # 0x7b522929
	.long	1054729187              # 0x3edde3e3
	.long	1901997871              # 0x715e2f2f
	.long	2534638724              # 0x97138484
	.long	4121318227              # 0xf5a65353
	.long	1757008337              # 0x68b9d1d1
	.long	0                       # 0x0
	.long	750906861               # 0x2cc1eded
	.long	1614815264              # 0x60402020
	.long	535035132               # 0x1fe3fcfc
	.long	3363418545              # 0xc879b1b1
	.long	3988151131              # 0xedb65b5b
	.long	3201591914              # 0xbed46a6a
	.long	1183697867              # 0x468dcbcb
	.long	3647454910              # 0xd967bebe
	.long	1265776953              # 0x4b723939
	.long	3734260298              # 0xde944a4a
	.long	3566750796              # 0xd4984c4c
	.long	3903871064              # 0xe8b05858
	.long	1250283471              # 0x4a85cfcf
	.long	1807470800              # 0x6bbbd0d0
	.long	717615087               # 0x2ac5efef
	.long	3847203498              # 0xe54faaaa
	.long	384695291               # 0x16edfbfb
	.long	3313910595              # 0xc5864343
	.long	3617213773              # 0xd79a4d4d
	.long	1432761139              # 0x55663333
	.long	2484176261              # 0x94118585
	.long	3481945413              # 0xcf8a4545
	.long	283769337               # 0x10e9f9f9
	.long	100925954               # 0x6040202
	.long	2180939647              # 0x81fe7f7f
	.long	4037038160              # 0xf0a05050
	.long	1148730428              # 0x44783c3c
	.long	3123027871              # 0xba259f9f
	.long	3813386408              # 0xe34ba8a8
	.long	4087501137              # 0xf3a25151
	.long	4267549603              # 0xfe5da3a3
	.long	3229630528              # 0xc0804040
	.long	2315620239              # 0x8a058f8f
	.long	2906624658              # 0xad3f9292
	.long	3156319645              # 0xbc219d9d
	.long	1215313976              # 0x48703838
	.long	82966005                # 0x4f1f5f5
	.long	3747855548              # 0xdf63bcbc
	.long	3245848246              # 0xc177b6b6
	.long	1974459098              # 0x75afdada
	.long	1665278241              # 0x63422121
	.long	807407632               # 0x30201010
	.long	451280895               # 0x1ae5ffff
	.long	251524083               # 0xefdf3f3
	.long	1841287890              # 0x6dbfd2d2
	.long	1283575245              # 0x4c81cdcd
	.long	337120268               # 0x14180c0c
	.long	891687699               # 0x35261313
	.long	801369324               # 0x2fc3ecec
	.long	3787349855              # 0xe1be5f5f
	.long	2721421207              # 0xa2359797
	.long	3431482436              # 0xcc884444
	.long	959321879               # 0x392e1717
	.long	1469301956              # 0x5793c4c4
	.long	4065699751              # 0xf255a7a7
	.long	2197585534              # 0x82fc7e7e
	.long	1199193405              # 0x477a3d3d
	.long	2898814052              # 0xacc86464
	.long	3887750493              # 0xe7ba5d5d
	.long	724703513               # 0x2b321919
	.long	2514908019              # 0x95e67373
	.long	2696962144              # 0xa0c06060
	.long	2551808385              # 0x98198181
	.long	3516813135              # 0xd19e4f4f
	.long	2141445340              # 0x7fa3dcdc
	.long	1715741218              # 0x66442222
	.long	2119445034              # 0x7e542a2a
	.long	2872807568              # 0xab3b9090
	.long	2198571144              # 0x830b8888
	.long	3398190662              # 0xca8c4646
	.long	700968686               # 0x29c7eeee
	.long	3547052216              # 0xd36bb8b8
	.long	1009259540              # 0x3c281414
	.long	2041044702              # 0x79a7dede
	.long	3803995742              # 0xe2bc5e5e
	.long	487983883               # 0x1d160b0b
	.long	1991105499              # 0x76addbdb
	.long	1004265696              # 0x3bdbe0e0
	.long	1449407026              # 0x56643232
	.long	1316239930              # 0x4e743a3a
	.long	504629770               # 0x1e140a0a
	.long	3683797321              # 0xdb924949
	.long	168560134               # 0xa0c0606
	.long	1816667172              # 0x6c482424
	.long	3837287516              # 0xe4b85c5c
	.long	1570751170              # 0x5d9fc2c2
	.long	1857934291              # 0x6ebdd3d3
	.long	4014189740              # 0xef43acac
	.long	2797888098              # 0xa6c46262
	.long	2822345105              # 0xa8399191
	.long	2754712981              # 0xa4319595
	.long	936633572               # 0x37d3e4e4
	.long	2347923833              # 0x8bf27979
	.long	852879335               # 0x32d5e7e7
	.long	1133234376              # 0x438bc8c8
	.long	1500395319              # 0x596e3737
	.long	3084545389              # 0xb7da6d6d
	.long	2348912013              # 0x8c018d8d
	.long	1689376213              # 0x64b1d5d5
	.long	3533459022              # 0xd29c4e4e
	.long	3762923945              # 0xe049a9a9
	.long	3034082412              # 0xb4d86c6c
	.long	4205598294              # 0xfaac5656
	.long	133428468               # 0x7f3f4f4
	.long	634383082               # 0x25cfeaea
	.long	2949277029              # 0xafca6565
	.long	2398386810              # 0x8ef47a7a
	.long	3913789102              # 0xe947aeae
	.long	403703816               # 0x18100808
	.long	3580869306              # 0xd56fbaba
	.long	2297460856              # 0x88f07878
	.long	1867130149              # 0x6f4a2525
	.long	1918643758              # 0x725c2e2e
	.long	607656988               # 0x24381c1c
	.long	4049053350              # 0xf157a6a6
	.long	3346248884              # 0xc773b4b4
	.long	1368901318              # 0x5197c6c6
	.long	600565992               # 0x23cbe8e8
	.long	2090982877              # 0x7ca1dddd
	.long	2632479860              # 0x9ce87474
	.long	557719327               # 0x213e1f1f
	.long	3717614411              # 0xdd964b4b
	.long	3697393085              # 0xdc61bdbd
	.long	2249034635              # 0x860d8b8b
	.long	2232388234              # 0x850f8a8a
	.long	2430627952              # 0x90e07070
	.long	1115438654              # 0x427c3e3e
	.long	3295786421              # 0xc471b5b5
	.long	2865522278              # 0xaacc6666
	.long	3633334344              # 0xd8904848
	.long	84280067                # 0x5060303
	.long	33027830                # 0x1f7f6f6
	.long	303828494               # 0x121c0e0e
	.long	2747425121              # 0xa3c26161
	.long	1600795957              # 0x5f6a3535
	.long	4188952407              # 0xf9ae5757
	.long	3496589753              # 0xd069b9b9
	.long	2434238086              # 0x91178686
	.long	1486471617              # 0x5899c1c1
	.long	658119965               # 0x273a1d1d
	.long	3106381470              # 0xb9279e9e
	.long	953803233               # 0x38d9e1e1
	.long	334231800               # 0x13ebf8f8
	.long	3005978776              # 0xb32b9898
	.long	857870609               # 0x33221111
	.long	3151128937              # 0xbbd26969
	.long	1890179545              # 0x70a9d9d9
	.long	2298973838              # 0x89078e8e
	.long	2805175444              # 0xa7339494
	.long	3056442267              # 0xb62d9b9b
	.long	574365214               # 0x223c1e1e
	.long	2450884487              # 0x92158787
	.long	550103529               # 0x20c9e9e9
	.long	1233637070              # 0x4987cece
	.long	4289353045              # 0xffaa5555
	.long	2018519080              # 0x78502828
	.long	2057691103              # 0x7aa5dfdf
	.long	2399374476              # 0x8f038c8c
	.long	4166623649              # 0xf859a1a1
	.long	2148108681              # 0x80098989
	.long	387583245               # 0x171a0d0d
	.long	3664101311              # 0xda65bfbf
	.long	836232934               # 0x31d7e6e6
	.long	3330556482              # 0xc6844242
	.long	3100665960              # 0xb8d06868
	.long	3280093505              # 0xc3824141
	.long	2955516313              # 0xb0299999
	.long	2002398509              # 0x775a2d2d
	.long	287182607               # 0x111e0f0f
	.long	3413881008              # 0xcb7bb0b0
	.long	4238890068              # 0xfca85454
	.long	3597515707              # 0xd66dbbbb
	.long	975967766               # 0x3a2c1616
	.size	Te1, 1024

	.type	Te2,@object             # @Te2
	.p2align	4
Te2:
	.long	1671808611              # 0x63a5c663
	.long	2089089148              # 0x7c84f87c
	.long	2006576759              # 0x7799ee77
	.long	2072901243              # 0x7b8df67b
	.long	4061003762              # 0xf20dfff2
	.long	1807603307              # 0x6bbdd66b
	.long	1873927791              # 0x6fb1de6f
	.long	3310653893              # 0xc55491c5
	.long	810573872               # 0x30506030
	.long	16974337                # 0x1030201
	.long	1739181671              # 0x67a9ce67
	.long	729634347               # 0x2b7d562b
	.long	4263110654              # 0xfe19e7fe
	.long	3613570519              # 0xd762b5d7
	.long	2883997099              # 0xabe64dab
	.long	1989864566              # 0x769aec76
	.long	3393556426              # 0xca458fca
	.long	2191335298              # 0x829d1f82
	.long	3376449993              # 0xc94089c9
	.long	2106063485              # 0x7d87fa7d
	.long	4195741690              # 0xfa15effa
	.long	1508618841              # 0x59ebb259
	.long	1204391495              # 0x47c98e47
	.long	4027317232              # 0xf00bfbf0
	.long	2917941677              # 0xadec41ad
	.long	3563566036              # 0xd467b3d4
	.long	2734514082              # 0xa2fd5fa2
	.long	2951366063              # 0xafea45af
	.long	2629772188              # 0x9cbf239c
	.long	2767672228              # 0xa4f753a4
	.long	1922491506              # 0x7296e472
	.long	3227229120              # 0xc05b9bc0
	.long	3082974647              # 0xb7c275b7
	.long	4246528509              # 0xfd1ce1fd
	.long	2477669779              # 0x93ae3d93
	.long	644500518               # 0x266a4c26
	.long	911895606               # 0x365a6c36
	.long	1061256767              # 0x3f417e3f
	.long	4144166391              # 0xf702f5f7
	.long	3427763148              # 0xcc4f83cc
	.long	878471220               # 0x345c6834
	.long	2784252325              # 0xa5f451a5
	.long	3845444069              # 0xe534d1e5
	.long	4043897329              # 0xf108f9f1
	.long	1905517169              # 0x7193e271
	.long	3631459288              # 0xd873abd8
	.long	827548209               # 0x31536231
	.long	356461077               # 0x153f2a15
	.long	67897348                # 0x40c0804
	.long	3344078279              # 0xc75295c7
	.long	593839651               # 0x23654623
	.long	3277757891              # 0xc35e9dc3
	.long	405286936               # 0x18283018
	.long	2527147926              # 0x96a13796
	.long	84871685                # 0x50f0a05
	.long	2595565466              # 0x9ab52f9a
	.long	118033927               # 0x7090e07
	.long	305538066               # 0x12362412
	.long	2157648768              # 0x809b1b80
	.long	3795705826              # 0xe23ddfe2
	.long	3945188843              # 0xeb26cdeb
	.long	661212711               # 0x27694e27
	.long	2999812018              # 0xb2cd7fb2
	.long	1973414517              # 0x759fea75
	.long	152769033               # 0x91b1209
	.long	2208177539              # 0x839e1d83
	.long	745822252               # 0x2c74582c
	.long	439235610               # 0x1a2e341a
	.long	455947803               # 0x1b2d361b
	.long	1857215598              # 0x6eb2dc6e
	.long	1525593178              # 0x5aeeb45a
	.long	2700827552              # 0xa0fb5ba0
	.long	1391895634              # 0x52f6a452
	.long	994932283               # 0x3b4d763b
	.long	3596728278              # 0xd661b7d6
	.long	3016654259              # 0xb3ce7db3
	.long	695947817               # 0x297b5229
	.long	3812548067              # 0xe33edde3
	.long	795958831               # 0x2f715e2f
	.long	2224493444              # 0x84971384
	.long	1408607827              # 0x53f5a653
	.long	3513301457              # 0xd168b9d1
	.long	0                       # 0x0
	.long	3979133421              # 0xed2cc1ed
	.long	543178784               # 0x20604020
	.long	4229948412              # 0xfc1fe3fc
	.long	2982705585              # 0xb1c879b1
	.long	1542305371              # 0x5bedb65b
	.long	1790891114              # 0x6abed46a
	.long	3410398667              # 0xcb468dcb
	.long	3201918910              # 0xbed967be
	.long	961245753               # 0x394b7239
	.long	1256100938              # 0x4ade944a
	.long	1289001036              # 0x4cd4984c
	.long	1491644504              # 0x58e8b058
	.long	3477767631              # 0xcf4a85cf
	.long	3496721360              # 0xd06bbbd0
	.long	4012557807              # 0xef2ac5ef
	.long	2867154858              # 0xaae54faa
	.long	4212583931              # 0xfb16edfb
	.long	1137018435              # 0x43c58643
	.long	1305975373              # 0x4dd79a4d
	.long	861234739               # 0x33556633
	.long	2241073541              # 0x85941185
	.long	1171229253              # 0x45cf8a45
	.long	4178635257              # 0xf910e9f9
	.long	33948674                # 0x2060402
	.long	2139225727              # 0x7f81fe7f
	.long	1357946960              # 0x50f0a050
	.long	1011120188              # 0x3c44783c
	.long	2679776671              # 0x9fba259f
	.long	2833468328              # 0xa8e34ba8
	.long	1374921297              # 0x51f3a251
	.long	2751356323              # 0xa3fe5da3
	.long	1086357568              # 0x40c08040
	.long	2408187279              # 0x8f8a058f
	.long	2460827538              # 0x92ad3f92
	.long	2646352285              # 0x9dbc219d
	.long	944271416               # 0x38487038
	.long	4110742005              # 0xf504f1f5
	.long	3168756668              # 0xbcdf63bc
	.long	3066132406              # 0xb6c177b6
	.long	3665145818              # 0xda75afda
	.long	560153121               # 0x21634221
	.long	271589392               # 0x10302010
	.long	4279952895              # 0xff1ae5ff
	.long	4077846003              # 0xf30efdf3
	.long	3530407890              # 0xd26dbfd2
	.long	3444343245              # 0xcd4c81cd
	.long	202643468               # 0xc14180c
	.long	322250259               # 0x13352613
	.long	3962553324              # 0xec2fc3ec
	.long	1608629855              # 0x5fe1be5f
	.long	2543990167              # 0x97a23597
	.long	1154254916              # 0x44cc8844
	.long	389623319               # 0x17392e17
	.long	3294073796              # 0xc45793c4
	.long	2817676711              # 0xa7f255a7
	.long	2122513534              # 0x7e82fc7e
	.long	1028094525              # 0x3d477a3d
	.long	1689045092              # 0x64acc864
	.long	1575467613              # 0x5de7ba5d
	.long	422261273               # 0x192b3219
	.long	1939203699              # 0x7395e673
	.long	1621147744              # 0x60a0c060
	.long	2174228865              # 0x81981981
	.long	1339137615              # 0x4fd19e4f
	.long	3699352540              # 0xdc7fa3dc
	.long	577127458               # 0x22664422
	.long	712922154               # 0x2a7e542a
	.long	2427141008              # 0x90ab3b90
	.long	2290289544              # 0x88830b88
	.long	1187679302              # 0x46ca8c46
	.long	3995715566              # 0xee29c7ee
	.long	3100863416              # 0xb8d36bb8
	.long	339486740               # 0x143c2814
	.long	3732514782              # 0xde79a7de
	.long	1591917662              # 0x5ee2bc5e
	.long	186455563               # 0xb1d160b
	.long	3681988059              # 0xdb76addb
	.long	3762019296              # 0xe03bdbe0
	.long	844522546               # 0x32566432
	.long	978220090               # 0x3a4e743a
	.long	169743370               # 0xa1e140a
	.long	1239126601              # 0x49db9249
	.long	101321734               # 0x60a0c06
	.long	611076132               # 0x246c4824
	.long	1558493276              # 0x5ce4b85c
	.long	3260915650              # 0xc25d9fc2
	.long	3547250131              # 0xd36ebdd3
	.long	2901361580              # 0xacef43ac
	.long	1655096418              # 0x62a6c462
	.long	2443721105              # 0x91a83991
	.long	2510565781              # 0x95a43195
	.long	3828863972              # 0xe437d3e4
	.long	2039214713              # 0x798bf279
	.long	3878868455              # 0xe732d5e7
	.long	3359869896              # 0xc8438bc8
	.long	928607799               # 0x37596e37
	.long	1840765549              # 0x6db7da6d
	.long	2374762893              # 0x8d8c018d
	.long	3580146133              # 0xd564b1d5
	.long	1322425422              # 0x4ed29c4e
	.long	2850048425              # 0xa9e049a9
	.long	1823791212              # 0x6cb4d86c
	.long	1459268694              # 0x56faac56
	.long	4094161908              # 0xf407f3f4
	.long	3928346602              # 0xea25cfea
	.long	1706019429              # 0x65afca65
	.long	2056189050              # 0x7a8ef47a
	.long	2934523822              # 0xaee947ae
	.long	135794696               # 0x8181008
	.long	3134549946              # 0xbad56fba
	.long	2022240376              # 0x7888f078
	.long	628050469               # 0x256f4a25
	.long	779246638               # 0x2e725c2e
	.long	472135708               # 0x1c24381c
	.long	2800834470              # 0xa6f157a6
	.long	3032970164              # 0xb4c773b4
	.long	3327236038              # 0xc65197c6
	.long	3894660072              # 0xe823cbe8
	.long	3715932637              # 0xdd7ca1dd
	.long	1956440180              # 0x749ce874
	.long	522272287               # 0x1f213e1f
	.long	1272813131              # 0x4bdd964b
	.long	3185336765              # 0xbddc61bd
	.long	2340818315              # 0x8b860d8b
	.long	2323976074              # 0x8a850f8a
	.long	1888542832              # 0x7090e070
	.long	1044544574              # 0x3e427c3e
	.long	3049550261              # 0xb5c471b5
	.long	1722469478              # 0x66aacc66
	.long	1222152264              # 0x48d89048
	.long	50660867                # 0x3050603
	.long	4127324150              # 0xf601f7f6
	.long	236067854               # 0xe121c0e
	.long	1638122081              # 0x61a3c261
	.long	895445557               # 0x355f6a35
	.long	1475980887              # 0x57f9ae57
	.long	3117443513              # 0xb9d069b9
	.long	2257655686              # 0x86911786
	.long	3243809217              # 0xc15899c1
	.long	489110045               # 0x1d273a1d
	.long	2662934430              # 0x9eb9279e
	.long	3778599393              # 0xe138d9e1
	.long	4162055160              # 0xf813ebf8
	.long	2561878936              # 0x98b32b98
	.long	288563729               # 0x11332211
	.long	1773916777              # 0x69bbd269
	.long	3648039385              # 0xd970a9d9
	.long	2391345038              # 0x8e89078e
	.long	2493985684              # 0x94a73394
	.long	2612407707              # 0x9bb62d9b
	.long	505560094               # 0x1e223c1e
	.long	2274497927              # 0x87921587
	.long	3911240169              # 0xe920c9e9
	.long	3460925390              # 0xce4987ce
	.long	1442818645              # 0x55ffaa55
	.long	678973480               # 0x28785028
	.long	3749357023              # 0xdf7aa5df
	.long	2358182796              # 0x8c8f038c
	.long	2717407649              # 0xa1f859a1
	.long	2306869641              # 0x89800989
	.long	219617805               # 0xd171a0d
	.long	3218761151              # 0xbfda65bf
	.long	3862026214              # 0xe631d7e6
	.long	1120306242              # 0x42c68442
	.long	1756942440              # 0x68b8d068
	.long	1103331905              # 0x41c38241
	.long	2578459033              # 0x99b02999
	.long	762796589               # 0x2d775a2d
	.long	252780047               # 0xf111e0f
	.long	2966125488              # 0xb0cb7bb0
	.long	1425844308              # 0x54fca854
	.long	3151392187              # 0xbbd66dbb
	.long	372911126               # 0x163a2c16
	.size	Te2, 1024

	.type	Te3,@object             # @Te3
	.p2align	4
Te3:
	.long	1667474886              # 0x6363a5c6
	.long	2088535288              # 0x7c7c84f8
	.long	2004326894              # 0x777799ee
	.long	2071694838              # 0x7b7b8df6
	.long	4075949567              # 0xf2f20dff
	.long	1802223062              # 0x6b6bbdd6
	.long	1869591006              # 0x6f6fb1de
	.long	3318043793              # 0xc5c55491
	.long	808472672               # 0x30305060
	.long	16843522                # 0x1010302
	.long	1734846926              # 0x6767a9ce
	.long	724270422               # 0x2b2b7d56
	.long	4278065639              # 0xfefe19e7
	.long	3621216949              # 0xd7d762b5
	.long	2880169549              # 0xababe64d
	.long	1987484396              # 0x76769aec
	.long	3402253711              # 0xcaca458f
	.long	2189597983              # 0x82829d1f
	.long	3385409673              # 0xc9c94089
	.long	2105378810              # 0x7d7d87fa
	.long	4210693615              # 0xfafa15ef
	.long	1499065266              # 0x5959ebb2
	.long	1195886990              # 0x4747c98e
	.long	4042263547              # 0xf0f00bfb
	.long	2913856577              # 0xadadec41
	.long	3570689971              # 0xd4d467b3
	.long	2728590687              # 0xa2a2fd5f
	.long	2947541573              # 0xafafea45
	.long	2627518243              # 0x9c9cbf23
	.long	2762274643              # 0xa4a4f753
	.long	1920112356              # 0x727296e4
	.long	3233831835              # 0xc0c05b9b
	.long	3082273397              # 0xb7b7c275
	.long	4261223649              # 0xfdfd1ce1
	.long	2475929149              # 0x9393ae3d
	.long	640051788               # 0x26266a4c
	.long	909531756               # 0x36365a6c
	.long	1061110142              # 0x3f3f417e
	.long	4160160501              # 0xf7f702f5
	.long	3435941763              # 0xcccc4f83
	.long	875846760               # 0x34345c68
	.long	2779116625              # 0xa5a5f451
	.long	3857003729              # 0xe5e534d1
	.long	4059105529              # 0xf1f108f9
	.long	1903268834              # 0x717193e2
	.long	3638064043              # 0xd8d873ab
	.long	825316194               # 0x31315362
	.long	353713962               # 0x15153f2a
	.long	67374088                # 0x4040c08
	.long	3351728789              # 0xc7c75295
	.long	589522246               # 0x23236546
	.long	3284360861              # 0xc3c35e9d
	.long	404236336               # 0x18182830
	.long	2526454071              # 0x9696a137
	.long	84217610                # 0x5050f0a
	.long	2593830191              # 0x9a9ab52f
	.long	117901582               # 0x707090e
	.long	303183396               # 0x12123624
	.long	2155911963              # 0x80809b1b
	.long	3806477791              # 0xe2e23ddf
	.long	3958056653              # 0xebeb26cd
	.long	656894286               # 0x2727694e
	.long	2998062463              # 0xb2b2cd7f
	.long	1970642922              # 0x75759fea
	.long	151591698               # 0x9091b12
	.long	2206440989              # 0x83839e1d
	.long	741110872               # 0x2c2c7458
	.long	437923380               # 0x1a1a2e34
	.long	454765878               # 0x1b1b2d36
	.long	1852748508              # 0x6e6eb2dc
	.long	1515908788              # 0x5a5aeeb4
	.long	2694904667              # 0xa0a0fb5b
	.long	1381168804              # 0x5252f6a4
	.long	993742198               # 0x3b3b4d76
	.long	3604373943              # 0xd6d661b7
	.long	3014905469              # 0xb3b3ce7d
	.long	690584402               # 0x29297b52
	.long	3823320797              # 0xe3e33edd
	.long	791638366               # 0x2f2f715e
	.long	2223281939              # 0x84849713
	.long	1398011302              # 0x5353f5a6
	.long	3520161977              # 0xd1d168b9
	.long	0                       # 0x0
	.long	3991743681              # 0xeded2cc1
	.long	538992704               # 0x20206040
	.long	4244381667              # 0xfcfc1fe3
	.long	2981218425              # 0xb1b1c879
	.long	1532751286              # 0x5b5bedb6
	.long	1785380564              # 0x6a6abed4
	.long	3419096717              # 0xcbcb468d
	.long	3200178535              # 0xbebed967
	.long	960056178               # 0x39394b72
	.long	1246420628              # 0x4a4ade94
	.long	1280103576              # 0x4c4cd498
	.long	1482221744              # 0x5858e8b0
	.long	3486468741              # 0xcfcf4a85
	.long	3503319995              # 0xd0d06bbb
	.long	4025428677              # 0xefef2ac5
	.long	2863326543              # 0xaaaae54f
	.long	4227536621              # 0xfbfb16ed
	.long	1128514950              # 0x4343c586
	.long	1296947098              # 0x4d4dd79a
	.long	859002214               # 0x33335566
	.long	2240123921              # 0x85859411
	.long	1162203018              # 0x4545cf8a
	.long	4193849577              # 0xf9f910e9
	.long	33687044                # 0x2020604
	.long	2139062782              # 0x7f7f81fe
	.long	1347481760              # 0x5050f0a0
	.long	1010582648              # 0x3c3c4478
	.long	2678045221              # 0x9f9fba25
	.long	2829640523              # 0xa8a8e34b
	.long	1364325282              # 0x5151f3a2
	.long	2745433693              # 0xa3a3fe5d
	.long	1077985408              # 0x4040c080
	.long	2408548869              # 0x8f8f8a05
	.long	2459086143              # 0x9292ad3f
	.long	2644360225              # 0x9d9dbc21
	.long	943212656               # 0x38384870
	.long	4126475505              # 0xf5f504f1
	.long	3166494563              # 0xbcbcdf63
	.long	3065430391              # 0xb6b6c177
	.long	3671750063              # 0xdada75af
	.long	555836226               # 0x21216342
	.long	269496352               # 0x10103020
	.long	4294908645              # 0xffff1ae5
	.long	4092792573              # 0xf3f30efd
	.long	3537006015              # 0xd2d26dbf
	.long	3452783745              # 0xcdcd4c81
	.long	202118168               # 0xc0c1418
	.long	320025894               # 0x13133526
	.long	3974901699              # 0xecec2fc3
	.long	1600119230              # 0x5f5fe1be
	.long	2543297077              # 0x9797a235
	.long	1145359496              # 0x4444cc88
	.long	387397934               # 0x1717392e
	.long	3301201811              # 0xc4c45793
	.long	2812801621              # 0xa7a7f255
	.long	2122220284              # 0x7e7e82fc
	.long	1027426170              # 0x3d3d477a
	.long	1684319432              # 0x6464acc8
	.long	1566435258              # 0x5d5de7ba
	.long	421079858               # 0x19192b32
	.long	1936954854              # 0x737395e6
	.long	1616945344              # 0x6060a0c0
	.long	2172753945              # 0x81819819
	.long	1330631070              # 0x4f4fd19e
	.long	3705438115              # 0xdcdc7fa3
	.long	572679748               # 0x22226644
	.long	707427924               # 0x2a2a7e54
	.long	2425400123              # 0x9090ab3b
	.long	2290647819              # 0x8888830b
	.long	1179044492              # 0x4646ca8c
	.long	4008585671              # 0xeeee29c7
	.long	3099120491              # 0xb8b8d36b
	.long	336870440               # 0x14143c28
	.long	3739122087              # 0xdede79a7
	.long	1583276732              # 0x5e5ee2bc
	.long	185277718               # 0xb0b1d16
	.long	3688593069              # 0xdbdb76ad
	.long	3772791771              # 0xe0e03bdb
	.long	842159716               # 0x32325664
	.long	976899700               # 0x3a3a4e74
	.long	168435220               # 0xa0a1e14
	.long	1229577106              # 0x4949db92
	.long	101059084               # 0x6060a0c
	.long	606366792               # 0x24246c48
	.long	1549591736              # 0x5c5ce4b8
	.long	3267517855              # 0xc2c25d9f
	.long	3553849021              # 0xd3d36ebd
	.long	2897014595              # 0xacacef43
	.long	1650632388              # 0x6262a6c4
	.long	2442242105              # 0x9191a839
	.long	2509612081              # 0x9595a431
	.long	3840161747              # 0xe4e437d3
	.long	2038008818              # 0x79798bf2
	.long	3890688725              # 0xe7e732d5
	.long	3368567691              # 0xc8c8438b
	.long	926374254               # 0x3737596e
	.long	1835907034              # 0x6d6db7da
	.long	2374863873              # 0x8d8d8c01
	.long	3587531953              # 0xd5d564b1
	.long	1313788572              # 0x4e4ed29c
	.long	2846482505              # 0xa9a9e049
	.long	1819063512              # 0x6c6cb4d8
	.long	1448540844              # 0x5656faac
	.long	4109633523              # 0xf4f407f3
	.long	3941213647              # 0xeaea25cf
	.long	1701162954              # 0x6565afca
	.long	2054852340              # 0x7a7a8ef4
	.long	2930698567              # 0xaeaee947
	.long	134748176               # 0x8081810
	.long	3132806511              # 0xbabad56f
	.long	2021165296              # 0x787888f0
	.long	623210314               # 0x25256f4a
	.long	774795868               # 0x2e2e725c
	.long	471606328               # 0x1c1c2438
	.long	2795958615              # 0xa6a6f157
	.long	3031746419              # 0xb4b4c773
	.long	3334885783              # 0xc6c65197
	.long	3907527627              # 0xe8e823cb
	.long	3722280097              # 0xdddd7ca1
	.long	1953799400              # 0x74749ce8
	.long	522133822               # 0x1f1f213e
	.long	1263263126              # 0x4b4bdd96
	.long	3183336545              # 0xbdbddc61
	.long	2341176845              # 0x8b8b860d
	.long	2324333839              # 0x8a8a850f
	.long	1886425312              # 0x707090e0
	.long	1044267644              # 0x3e3e427c
	.long	3048588401              # 0xb5b5c471
	.long	1718004428              # 0x6666aacc
	.long	1212733584              # 0x4848d890
	.long	50529542                # 0x3030506
	.long	4143317495              # 0xf6f601f7
	.long	235803164               # 0xe0e121c
	.long	1633788866              # 0x6161a3c2
	.long	892690282               # 0x35355f6a
	.long	1465383342              # 0x5757f9ae
	.long	3115962473              # 0xb9b9d069
	.long	2256965911              # 0x86869117
	.long	3250673817              # 0xc1c15899
	.long	488449850               # 0x1d1d273a
	.long	2661202215              # 0x9e9eb927
	.long	3789633753              # 0xe1e138d9
	.long	4177007595              # 0xf8f813eb
	.long	2560144171              # 0x9898b32b
	.long	286339874               # 0x11113322
	.long	1768537042              # 0x6969bbd2
	.long	3654906025              # 0xd9d970a9
	.long	2391705863              # 0x8e8e8907
	.long	2492770099              # 0x9494a733
	.long	2610673197              # 0x9b9bb62d
	.long	505291324               # 0x1e1e223c
	.long	2273808917              # 0x87879215
	.long	3924369609              # 0xe9e920c9
	.long	3469625735              # 0xcece4987
	.long	1431699370              # 0x5555ffaa
	.long	673740880               # 0x28287850
	.long	3755965093              # 0xdfdf7aa5
	.long	2358021891              # 0x8c8c8f03
	.long	2711746649              # 0xa1a1f859
	.long	2307489801              # 0x89898009
	.long	218961690               # 0xd0d171a
	.long	3217021541              # 0xbfbfda65
	.long	3873845719              # 0xe6e631d7
	.long	1111672452              # 0x4242c684
	.long	1751693520              # 0x6868b8d0
	.long	1094828930              # 0x4141c382
	.long	2576986153              # 0x9999b029
	.long	757954394               # 0x2d2d775a
	.long	252645662               # 0xf0f111e
	.long	2964376443              # 0xb0b0cb7b
	.long	1414855848              # 0x5454fca8
	.long	3149649517              # 0xbbbbd66d
	.long	370555436               # 0x16163a2c
	.size	Te3, 1024

	.type	Td4,@object             # @Td4
	.section	.rodata,"a",@progbits
	.p2align	4
Td4:
	.long	1381126738              # 0x52525252
	.long	151587081               # 0x9090909
	.long	1785358954              # 0x6a6a6a6a
	.long	3587560917              # 0xd5d5d5d5
	.long	808464432               # 0x30303030
	.long	909522486               # 0x36363636
	.long	2779096485              # 0xa5a5a5a5
	.long	943208504               # 0x38383838
	.long	3217014719              # 0xbfbfbfbf
	.long	1077952576              # 0x40404040
	.long	2745410467              # 0xa3a3a3a3
	.long	2661195422              # 0x9e9e9e9e
	.long	2172748161              # 0x81818181
	.long	4092851187              # 0xf3f3f3f3
	.long	3621246935              # 0xd7d7d7d7
	.long	4227595259              # 0xfbfbfbfb
	.long	2088533116              # 0x7c7c7c7c
	.long	3823363043              # 0xe3e3e3e3
	.long	960051513               # 0x39393939
	.long	2189591170              # 0x82828282
	.long	2610666395              # 0x9b9b9b9b
	.long	791621423               # 0x2f2f2f2f
	.long	4294967295              # 0xffffffff
	.long	2273806215              # 0x87878787
	.long	875836468               # 0x34343434
	.long	2391707278              # 0x8e8e8e8e
	.long	1128481603              # 0x43434343
	.long	1145324612              # 0x44444444
	.long	3301229764              # 0xc4c4c4c4
	.long	3739147998              # 0xdededede
	.long	3924421097              # 0xe9e9e9e9
	.long	3419130827              # 0xcbcbcbcb
	.long	1414812756              # 0x54545454
	.long	2071690107              # 0x7b7b7b7b
	.long	2492765332              # 0x94949494
	.long	842150450               # 0x32323232
	.long	2795939494              # 0xa6a6a6a6
	.long	3267543746              # 0xc2c2c2c2
	.long	589505315               # 0x23232323
	.long	1027423549              # 0x3d3d3d3d
	.long	4008636142              # 0xeeeeeeee
	.long	1280068684              # 0x4c4c4c4c
	.long	2509608341              # 0x95959595
	.long	185273099               # 0xb0b0b0b
	.long	1111638594              # 0x42424242
	.long	4210752250              # 0xfafafafa
	.long	3284386755              # 0xc3c3c3c3
	.long	1313754702              # 0x4e4e4e4e
	.long	134744072               # 0x8080808
	.long	774778414               # 0x2e2e2e2e
	.long	2711724449              # 0xa1a1a1a1
	.long	1717986918              # 0x66666666
	.long	673720360               # 0x28282828
	.long	3654932953              # 0xd9d9d9d9
	.long	606348324               # 0x24242424
	.long	2998055602              # 0xb2b2b2b2
	.long	1987475062              # 0x76767676
	.long	1532713819              # 0x5b5b5b5b
	.long	2728567458              # 0xa2a2a2a2
	.long	1229539657              # 0x49494949
	.long	1835887981              # 0x6d6d6d6d
	.long	2341178251              # 0x8b8b8b8b
	.long	3520188881              # 0xd1d1d1d1
	.long	623191333               # 0x25252525
	.long	1920103026              # 0x72727272
	.long	4177066232              # 0xf8f8f8f8
	.long	4143380214              # 0xf6f6f6f6
	.long	1684300900              # 0x64646464
	.long	2256963206              # 0x86868686
	.long	1751672936              # 0x68686868
	.long	2560137368              # 0x98989898
	.long	370546198               # 0x16161616
	.long	3570717908              # 0xd4d4d4d4
	.long	2762253476              # 0xa4a4a4a4
	.long	1549556828              # 0x5c5c5c5c
	.long	3435973836              # 0xcccccccc
	.long	1566399837              # 0x5d5d5d5d
	.long	1701143909              # 0x65656565
	.long	3065427638              # 0xb6b6b6b6
	.long	2459079314              # 0x92929292
	.long	1819044972              # 0x6c6c6c6c
	.long	1886417008              # 0x70707070
	.long	1212696648              # 0x48484848
	.long	1347440720              # 0x50505050
	.long	4261281277              # 0xfdfdfdfd
	.long	3991793133              # 0xedededed
	.long	3115956665              # 0xb9b9b9b9
	.long	3671775962              # 0xdadadada
	.long	1583242846              # 0x5e5e5e5e
	.long	353703189               # 0x15151515
	.long	1179010630              # 0x46464646
	.long	1465341783              # 0x57575757
	.long	2812782503              # 0xa7a7a7a7
	.long	2374864269              # 0x8d8d8d8d
	.long	2644352413              # 0x9d9d9d9d
	.long	2223277188              # 0x84848484
	.long	2425393296              # 0x90909090
	.long	3638089944              # 0xd8d8d8d8
	.long	2880154539              # 0xabababab
	.long	0                       # 0x0
	.long	2358021260              # 0x8c8c8c8c
	.long	3166485692              # 0xbcbcbcbc
	.long	3553874899              # 0xd3d3d3d3
	.long	168430090               # 0xa0a0a0a
	.long	4160223223              # 0xf7f7f7f7
	.long	3840206052              # 0xe4e4e4e4
	.long	1482184792              # 0x58585858
	.long	84215045                # 0x5050505
	.long	3099113656              # 0xb8b8b8b8
	.long	3014898611              # 0xb3b3b3b3
	.long	1162167621              # 0x45454545
	.long	101058054               # 0x6060606
	.long	3503345872              # 0xd0d0d0d0
	.long	741092396               # 0x2c2c2c2c
	.long	505290270               # 0x1e1e1e1e
	.long	2408550287              # 0x8f8f8f8f
	.long	3402287818              # 0xcacacaca
	.long	1061109567              # 0x3f3f3f3f
	.long	252645135               # 0xf0f0f0f
	.long	33686018                # 0x2020202
	.long	3250700737              # 0xc1c1c1c1
	.long	2947526575              # 0xafafafaf
	.long	3183328701              # 0xbdbdbdbd
	.long	50529027                # 0x3030303
	.long	16843009                # 0x1010101
	.long	320017171               # 0x13131313
	.long	2324335242              # 0x8a8a8a8a
	.long	1802201963              # 0x6b6b6b6b
	.long	976894522               # 0x3a3a3a3a
	.long	2442236305              # 0x91919191
	.long	286331153               # 0x11111111
	.long	1094795585              # 0x41414141
	.long	1330597711              # 0x4f4f4f4f
	.long	1734829927              # 0x67676767
	.long	3705461980              # 0xdcdcdcdc
	.long	3941264106              # 0xeaeaeaea
	.long	2543294359              # 0x97979797
	.long	4076008178              # 0xf2f2f2f2
	.long	3486502863              # 0xcfcfcfcf
	.long	3469659854              # 0xcececece
	.long	4042322160              # 0xf0f0f0f0
	.long	3031741620              # 0xb4b4b4b4
	.long	3873892070              # 0xe6e6e6e6
	.long	1936946035              # 0x73737373
	.long	2526451350              # 0x96969696
	.long	2896997548              # 0xacacacac
	.long	1953789044              # 0x74747474
	.long	572662306               # 0x22222222
	.long	3890735079              # 0xe7e7e7e7
	.long	2913840557              # 0xadadadad
	.long	892679477               # 0x35353535
	.long	2240120197              # 0x85858585
	.long	3806520034              # 0xe2e2e2e2
	.long	4193909241              # 0xf9f9f9f9
	.long	926365495               # 0x37373737
	.long	3907578088              # 0xe8e8e8e8
	.long	471604252               # 0x1c1c1c1c
	.long	1970632053              # 0x75757575
	.long	3755991007              # 0xdfdfdfdf
	.long	1852730990              # 0x6e6e6e6e
	.long	1195853639              # 0x47474747
	.long	4059165169              # 0xf1f1f1f1
	.long	437918234               # 0x1a1a1a1a
	.long	1903260017              # 0x71717171
	.long	488447261               # 0x1d1d1d1d
	.long	690563369               # 0x29292929
	.long	3318072773              # 0xc5c5c5c5
	.long	2307492233              # 0x89898989
	.long	1869573999              # 0x6f6f6f6f
	.long	3082270647              # 0xb7b7b7b7
	.long	1650614882              # 0x62626262
	.long	235802126               # 0xe0e0e0e
	.long	2863311530              # 0xaaaaaaaa
	.long	404232216               # 0x18181818
	.long	3200171710              # 0xbebebebe
	.long	454761243               # 0x1b1b1b1b
	.long	4244438268              # 0xfcfcfcfc
	.long	1448498774              # 0x56565656
	.long	1044266558              # 0x3e3e3e3e
	.long	1263225675              # 0x4b4b4b4b
	.long	3334915782              # 0xc6c6c6c6
	.long	3537031890              # 0xd2d2d2d2
	.long	2038004089              # 0x79797979
	.long	538976288               # 0x20202020
	.long	2593823386              # 0x9a9a9a9a
	.long	3688618971              # 0xdbdbdbdb
	.long	3233857728              # 0xc0c0c0c0
	.long	4278124286              # 0xfefefefe
	.long	2021161080              # 0x78787878
	.long	3452816845              # 0xcdcdcdcd
	.long	1515870810              # 0x5a5a5a5a
	.long	4109694196              # 0xf4f4f4f4
	.long	522133279               # 0x1f1f1f1f
	.long	3722304989              # 0xdddddddd
	.long	2829625512              # 0xa8a8a8a8
	.long	858993459               # 0x33333333
	.long	2290649224              # 0x88888888
	.long	117901063               # 0x7070707
	.long	3351758791              # 0xc7c7c7c7
	.long	825307441               # 0x31313131
	.long	2981212593              # 0xb1b1b1b1
	.long	303174162               # 0x12121212
	.long	269488144               # 0x10101010
	.long	1499027801              # 0x59595959
	.long	656877351               # 0x27272727
	.long	2155905152              # 0x80808080
	.long	3974950124              # 0xecececec
	.long	1600085855              # 0x5f5f5f5f
	.long	1616928864              # 0x60606060
	.long	1364283729              # 0x51515151
	.long	2139062143              # 0x7f7f7f7f
	.long	2846468521              # 0xa9a9a9a9
	.long	421075225               # 0x19191919
	.long	3048584629              # 0xb5b5b5b5
	.long	1246382666              # 0x4a4a4a4a
	.long	218959117               # 0xd0d0d0d
	.long	757935405               # 0x2d2d2d2d
	.long	3857049061              # 0xe5e5e5e5
	.long	2054847098              # 0x7a7a7a7a
	.long	2678038431              # 0x9f9f9f9f
	.long	2475922323              # 0x93939393
	.long	3385444809              # 0xc9c9c9c9
	.long	2627509404              # 0x9c9c9c9c
	.long	4025479151              # 0xefefefef
	.long	2694881440              # 0xa0a0a0a0
	.long	3772834016              # 0xe0e0e0e0
	.long	993737531               # 0x3b3b3b3b
	.long	1296911693              # 0x4d4d4d4d
	.long	2930683566              # 0xaeaeaeae
	.long	707406378               # 0x2a2a2a2a
	.long	4126537205              # 0xf5f5f5f5
	.long	2964369584              # 0xb0b0b0b0
	.long	3368601800              # 0xc8c8c8c8
	.long	3958107115              # 0xebebebeb
	.long	3149642683              # 0xbbbbbbbb
	.long	1010580540              # 0x3c3c3c3c
	.long	2206434179              # 0x83838383
	.long	1397969747              # 0x53535353
	.long	2576980377              # 0x99999999
	.long	1633771873              # 0x61616161
	.long	387389207               # 0x17171717
	.long	724249387               # 0x2b2b2b2b
	.long	67372036                # 0x4040404
	.long	2122219134              # 0x7e7e7e7e
	.long	3132799674              # 0xbabababa
	.long	2004318071              # 0x77777777
	.long	3604403926              # 0xd6d6d6d6
	.long	640034342               # 0x26262626
	.long	3789677025              # 0xe1e1e1e1
	.long	1768515945              # 0x69696969
	.long	336860180               # 0x14141414
	.long	1667457891              # 0x63636363
	.long	1431655765              # 0x55555555
	.long	555819297               # 0x21212121
	.long	202116108               # 0xc0c0c0c
	.long	2105376125              # 0x7d7d7d7d
	.size	Td4, 1024

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"xlen >= 0"
	.size	.L.str.11, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"dudect-examples/aes32/sources/random.c"
	.size	.L.str.1, 39

	.type	.L__PRETTY_FUNCTION__.randombytes,@object # @__PRETTY_FUNCTION__.randombytes
.L__PRETTY_FUNCTION__.randombytes:
	.asciz	"void randombytes(uint8_t *, size_t)"
	.size	.L__PRETTY_FUNCTION__.randombytes, 36

	.type	randombytes.fd,@object  # @randombytes.fd
	.data
	.p2align	2
randombytes.fd:
	.long	4294967295              # 0xffffffff
	.size	randombytes.fd, 4

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"/dev/urandom"
	.size	.L.str.2, 13

	.ident	"clang version 10.0.0 "
	.ident	"clang version 10.0.0 "
	.ident	"clang version 10.0.0 "
	.ident	"clang version 10.0.0 "
	.section	".note.GNU-stack","",@progbits