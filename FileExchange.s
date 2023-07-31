    .text
    .global Size
    .global Nput
    .global Req
    .global start
start:
    stmfd sp!,{r0-r4}
    bl letsTryandGrabNput
stop:
letsTryandGrabNput://Im finna have to google this
        bl Console
        bl UsrNput
    /*
    Console://def finna tweak stack overflow. i aint got my book or i can fuckin .data wheres my uckin book
        mov r3, #0
        mov, r4, #5
            loop1:
                @ this gone print
                mov r7, #4//syscall write
                mov r0, #1  //output to the moniter
                
*/

        Console:
                .data
                        .message//i dont have to count bit for strings in arm?!?!?!
                            "Welcome, yada, what file you looking for?"
                .stop//?
        UsrNput:
		ldr r1//lets see if we can get this to point to user data? keyboard data
		ldr r1, =


fileS:
        Size:        .word 7,7//two-bit this should be a decent file size(i think this the file size)
        cmp Size, Req//this should compare the list name which im calling size to the request
        tst Size, Req//this should give me an add factor I dont think I need the cmp now
        bne listDir
listDir:
      	  cmp Req,Size
        eq Req,Size
        ldr Fetcher,=Req
        ldr Fetcher, [Req]
        .data
            .message
                "Fetcher"
            .stop
        ne req,Size
        .data
            .message
                "Thats not in here"
                mov r0, #1//this this print output idk.
            .end
chDir:
      cmp 
      bne //they match		


lmdfd, sp!{r0-r4}
