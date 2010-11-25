	.file	"cstartup.c"
	.arch msp430x2013

	.text
	.p2align 1,0
.global	__stop_progExec__
	.type	__stop_progExec__,@function
/***********************
 * Function `__stop_progExec__' 
 ***********************/
__stop_progExec__:
	/* prologue: naked */
.L__FrameSize___stop_progExec__=0x0
.L2:
	jmp	.L2
.Lfe1:
	.size	__stop_progExec__,.Lfe1-__stop_progExec__
;; End of function 

	.p2align 1,0
.global	dummy_fn
	.type	dummy_fn,@function
/***********************
 * Function `dummy_fn' 
 ***********************/
dummy_fn:
	/* prologue: naked */
.L__FrameSize_dummy_fn=0x0
.L5:
	jmp	.L5
.Lfe2:
	.size	dummy_fn,.Lfe2-dummy_fn
;; End of function 

	.p2align 1,0
.global	c_startup
	.type	c_startup,@function
/***********************
 * Function `c_startup' 
 ***********************/
c_startup:
	/* prologue: naked */
.L__FrameSize_c_startup=0x4
	mov	#_etext, 2(r4) 
	mov	#_sdata, @r4 
	jmp	.L8
.L9:
	mov	2(r4), r15 
	mov	@r15+, r14
	mov	@r15, r15
	mov	@r4, r13 
	mov	r14, @r13
	mov	r15, 2(r13)
	add	#4, @r4
	add	#4, 2(r4)
.L8:
	cmp	#_edata, @r4
	jlo	.L9
	mov	#_sbss, 2(r4) 
	jmp	.L10
.L11:
	mov	2(r4), r15 
	mov	#0, @r15
	mov	#lhi(0), 2(r15)
	add	#4, 2(r4)
.L10:
	cmp	#_ebss, 2(r4)
	jlo	.L11
	call	#main

	/* epilogue: naked */
.Lfe3:
	.size	c_startup,.Lfe3-c_startup
;; End of function 

.global	InterruptVectors
	.section	.vectors,"aw",@progbits
	.p2align 1,0
	.type	InterruptVectors,@object
	.size	InterruptVectors,32
InterruptVectors:
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	dummy_fn
	.word	c_startup

/*********************************************************************
 * File cstartup.c: code size: 0 words (0x0)
 * incl. words in prologues: 0, epilogues: 0
 *********************************************************************/
