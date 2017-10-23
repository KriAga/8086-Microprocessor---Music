data segment
data ends

code segment
        assume ds:data,cs:code;cs:data
start:
        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 6833        ; Frequency number (in decimal)
                                ;  for middle C.
        call kri        

        mov     ax, 9121        ; Frequency number (in decimal)
                                ;  for middle C.
        call kri



        in      al, 61h         ; Turn off note (get value from
                                ;  port 61h).
        and     al, 11111100b   ; Reset bits 1 and 0.
        out     61h, al         ; Send new value.


        mov ah,4ch
        int 21h
        hlt

kri:
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 15          ; Pause for duration of note.
pause13:
        mov     cx, 65535
pause14:
        dec     cx
        jne     pause14
        dec     bx
        jne     pause13

        ret




code ends
end start