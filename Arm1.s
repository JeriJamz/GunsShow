	.text
	.global start
start:  ldr sp, =stack_top //gonna remember ldr
	bl sum //branch link sum(call sum)
stop:   b  stop//some how this is a loop
sum: //int sum() will add the total of an array. ion think this it
	stmfd sp!, {r0-r4, lr}//it does do that
	mov r0, #0
	ldr r1, =RESULTS
	ldr r2, =N //= is apointer
	ldr r2, [r2]
loop:	ldr r3, r1 #4//this is anincrementation
	add r0,r0,r3 //r0 += r3
	sub r2,r2,r1 //r2-- decrementation
	cmp r2, #0 //compare(i think)makes it an if. see if we can makewhile loops
	bne loop //goto spegatti
	ldr r4, =RESULTS//r4 is loaded
	str r0,[r4]
	lmdfd sp!, {r0-r4, pc}
mal:	stmfd sp!,{r5-r7, lr}
	ldr r5, #6
	ldr r6,#4
	ldr r7, =SUM
	MULS =SUM,r5,r6
	lmdfd sp!,{r5-r7,pc}//my bad trying to save the register before it takes this data and make sure it doesnt reset the whole thing