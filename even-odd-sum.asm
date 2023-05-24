 mov ax,10 ; Move the value of x into ax register
 cmp ax, 0x0 ; Compare x with 0
 jle exit ; Jump to exit if x <= 0
 cmp ax, 0x5 ; Compare x with 5
 jge check_x ; Jump to check_x if x >= 5
    
    ; x is between 0 and 5 , sum odd numbers
    mov ax, 0 ; Clear ax register
    mov bx, 0x01h ; Move the value of the counter into bx register
    mov cx, 0x64h ; Move the value of the limit (100 decimal = 64 hex) into CX register
    
odd_loop:
    add ax, bx ; Add the value of bx to ax (accumulating the sum)
    add bx, 2 ; Increment the counter by 2 to get the next odd number
    cmp bx, cx ; Compare the counter with the limit
    jle odd_loop ; Jump to odd_loop if the counter is less than or equal to the limit
    
    
   
    jmp exit ; Jump to exit
    
check_x:
    cmp ax, 0xA ; Compare x with 10
    jg exit ; Jump to exit if x > 10
    
    ; x is between 5 and 10 (inclusive), sum even numbers
    mov ax, 0 ; Clear AX register
    mov bx, 0x02h ; Start with the first even number, 2
    mov cx, 0x64h ; Move the value of the limit into CX register    

    
even_loop:
    add ax, bx ; Add the value of bx to ax (accumulating the sum)
    add bx, 2 ; Increment the counter by 2 to get the next even number
    cmp bx, cx ; Compare the counter with the limit
    jle even_loop ; Jump to even_loop if the counter is less than or equal to the limit
    
    jmp exit ; Jump to exit

exit:
mov si, ax ; Move the final sum from ax to si