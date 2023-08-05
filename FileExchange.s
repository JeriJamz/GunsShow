    .text
    .global Size
    .global Nput
    .global Req
    .global start
start:
    stmfd sp!,{r7-r11}
    bl letsTryandGrabNput
stop



letsTryandGrabNput://Im finna have to google this
        bl Console
        bl UsrNput
	bl listDadir

        Console:
                .data
                        .message//i dont have to count bit for strings in arm?!?!?!
                            "Welcome, yada, what file you looking for?"
                .stop//?
        UsrNput:
		ldr r7//lets see if we can get this to point to user data? keyboard data
		ldr r7, =


fileS:
        Size:        .word 7,7//two-bit this should be a decent file size(i think this the file size)
        cmp Size, Req//this should compare the list name which im calling size to the request
        tst Size, Req//this should give me an add factor I dont think I need the cmp now
        bne listDir
listDir:
	cmp Req, listDadir
	eq listDadir, Req
	.data
		.message
			fileS
		.stop	
	

chDir:
      cmp 
      bne //they match		


lmdfd, sp!{r7-r11}




term:
	push cs
	pop  ds
	mov  si,156h

listDadir:
	loadsb
	mov ah, 0Eh
	mov bh,0
	mov bl, 7
	int 10h
	dec cx
	cmp cx,0
	jne looper

	mov ah, 004c
	int 21h

	db 'dir'
	
