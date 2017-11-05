data segment
data ends

code segment
	assume ds:data,cs:code;cs:data
start:
        
        mov     al, 182        
        out     43h, al        
        mov     ax, 9121        
                                
        out     42h, al       
        mov     al, ah         
        out     42h, al 
        in      al, 61h       
                               
        or      al, 00000011b  
        out     61h, al        
        mov     bx, 15         
pause11:
        mov     cx, 65535
pause12:
        dec     cx
        jne     pause12
        dec     bx
        jne     pause11
        
        in      al, 61h         
                                
        and     al, 11111100b   
        out     61h, al         

        mov ah,4ch
        int 21h
        hlt
code ends
end start