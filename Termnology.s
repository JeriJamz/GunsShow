	.text
	.global start


term:
	psuh cs
	pop  ds
	mov  si, 156h
setjmp:
	stmfd sp!,  {fp, lr}
	add  fp, sp, #4
	ldr  r1, [fp] //returns lr
	str  r1, [r0]//save LR in env
	ldr  r1, [fp, #-4]//caller's fp
	str  r1, [r0, #4] // save FP in env[1]
	mov  r0, #0 // return 0 to caller
	sub  sp, fp, #4
	ldmfd sp!,  {fp, pc}
longjmp:
	stmfd sp!,  {fp,lr}
	add  fp, sp, #4
	ldr  r2, [r0]
	str  r2, [fp]
	ldr  r2, [r0, #4]
	str  r2, [fp, #-4]
	mov  r0,r1
	sub  sp, fp, #4
	ldmfd sp!,  {fp,pc}