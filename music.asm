data segment
data ends

code segment
	assume ds:data,cs:code;cs:data
start:
        
        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 9121        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 15          ; Pause for duration of note.
pause11:
        mov     cx, 65535
pause12:
        dec     cx
        jne     pause12
        dec     bx
        jne     pause11


mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 01        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 1          ; Pause for duration of note.
pause13:
        mov     cx, 65535
pause14:
        dec     cx
        jne     pause14
        dec     bx
        jne     pause13



        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 9121        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 15          ; Pause for duration of note.
pause1:
        mov     cx, 65535
pause2:
        dec     cx
        jne     pause2
        dec     bx
        jne     pause1


        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 01        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 1          ; Pause for duration of note.
pause15:
        mov     cx, 65535
pause16:
        dec     cx
        jne     pause16
        dec     bx
        jne     pause15



        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 8126        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 15          ; Pause for duration of note.
pause3:
        mov     cx, 65535
pause4:
        dec     cx
        jne     pause4
        dec     bx
        jne     pause3


        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 01        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 1          ; Pause for duration of note.
pause17:
        mov     cx, 65535
pause18:
        dec     cx
        jne     pause18
        dec     bx
        jne     pause17


        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 9121        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 15          ; Pause for duration of note.
pause5:
        mov     cx, 65535
pause6:
        dec     cx
        jne     pause6
        dec     bx
        jne     pause5



        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 01        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 1          ; Pause for duration of note.
pause19:
        mov     cx, 65535
pause20:
        dec     cx
        jne     pause20
        dec     bx
        jne     pause19





        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 6833        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 15          ; Pause for duration of note.
pause7:
        mov     cx, 65535
pause8:
        dec     cx
        jne     pause8
        dec     bx
        jne     pause7



        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 01        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 1          ; Pause for duration of note.
pause21:
        mov     cx, 65535
pause22:
        dec     cx
        jne     pause22
        dec     bx
        jne     pause21



        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 7239        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al 
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 15          ; Pause for duration of note.
pause9:
        mov     cx, 65535
pause10:
        dec     cx
        jne     pause10
        dec     bx
        jne     pause9


        in      al, 61h         ; Turn off note (get value from
                                ;  port 61h).
        and     al, 11111100b   ; Reset bits 1 and 0.
        out     61h, al         ; Send new value.

        mov ah,4ch
        int 21h
        hlt
code ends
end start