data segment
data ends

code segment
	assume ds:data,cs:code;cs:data
start:
        
        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        
        mov     ax, 9121
        call    play
        call    pause

        mov     ax, 9121
        call    play
        call    pause

        mov     ax, 8126
        call    play
        call    pause

        mov     ax, 9121
        call    play
        call    pause

        mov     ax, 6833
        call    play
        call    pause

        mov     ax, 7239
        call    play


        in      al, 61h         ; Turn off note (get value from
                                ;  port 61h).
        and     al, 11111100b   ; Reset bits 1 and 0.
        out     61h, al         ; Send new value.


        mov ah,4ch
        int 21h
        hlt

play:
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 15          ; Pause for duration of note.
playnote:
        mov     cx, 65535
noteplay:
        dec     cx
        jne     noteplay
        dec     bx
        jne     playnote

        ret


pause:
        mov     ax, 01
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 1          ; Pause for duration of note.
pausenote:
        mov     cx, 65535
notepause:
        dec     cx
        jne     notepause
        dec     bx
        jne     pausenote

        ret

code ends
end start