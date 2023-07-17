//ok this is just me i wanna make an if loop wanna make stuff small as possible	
//are if loops already in the processor
	.text
	.global start
@how do I take in input from the user, think thats in later chapers
loop:	stmfd sp!, {r0-r2,lr} //gonna use these to make the loop
	mov r0, #0
	ldrs r1, r1, #4 //incrementation
	cmp r0, #0//idk if eq2 0
	bne loop//this is the goto
	ldmfd sp!,{r0-r1,pc} 
	