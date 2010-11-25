	.file	"a.c"
	.arch msp430x169

/* Hardware multiplier registers: */
__MPY=0x130
__MPYS=0x132
__MAC=0x134
__MACS=0x136
__OP2=0x138
__RESLO=0x13a
__RESHI=0x13c
__SUMEXT=0x13e

.global	i
	.data
	.p2align 1,0
	.type	i,@object
	.size	i,2
i:
	.word	10
	.comm j,2,2
	.text
	.p2align 1,0
.global	main
	.type	main,@function
/***********************
 * Function `main' 
 ***********************/
main:
	mov	#__stack, r1 
	mov	r1, r4 
	/* prologue ends here (frame size = 0) */
.L__FrameSize_main=0x0
.L__FrameOffset_main=0x2

	/* epilogue: frame size = 0 */
	br	#__stop_progExec__
.Lfe1:
	.size	main,.Lfe1-main
;; End of function 


/*********************************************************************
 * File a.c: code size: 7 words (0x7)
 * incl. words in prologues: 3, epilogues: 4
 *********************************************************************/
