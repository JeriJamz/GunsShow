//this is some book work
//shouts out livejournal. they giving me some pointers on how to do this
//https://lateblt.livejournal.com/326017.html
mov cx, 0EEh; i didnt want to do 14 so were do whateva EE is I dont feel like counting in hex

beginning:
	mov ah, 0 ;int 16,0 reads one key input
	int 16h;;this is the function
	cmp ah,1;this is the escape key code"1"
	je ender
	cmp ah,1ch ; this looks for enter"1"
	je ender//this will end, like a bit function
	cmp ah, 0e;this looks for back space "0e"
	je backspace
	;no escape chars at this point
	//this should also output
	mov di, cx
	//cx holds the number of string
	//mov wont really wrk wit that. this should move, mov
	mov [156+di],al ;store string in buffer
	inc cx
	mov ah, 0EEh
	mov bh, 0//page number
	mov bl, 7//normal light gray texy black ground
 	int 10h
	jmp beginning

backspace:
	mov al, 8;8 is backspace
	mov ah, 0EEh;; int 10 output in al
	mov bl, 7 //normal grey
	int 10h
	mov al, 20h //20h is space
	mov ah,9 ;10, 9 output into al
	mov bh, 0 ;page number
	mov bl, 7 ;light gray text
	int 10h
	dec cx
	jmp beginning

ender:
	push cs
	pop ds;these two line makes bs currrent code
	mov si,156h;location of buffer

looper:
	lodsb
	mov ah, 0EEh
	mov bh,0
	mov bl,7
	int 10h
	dec cx
	cmp cx,0
	jne looper

	mov ah, 004c ;terminates the program
	int 21h

	db 'Your Input'