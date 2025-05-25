org 100h

; Prompt user for first digit
mov ah, 01h      ; Function to read a character from input
int 21h          ; Read first digit
sub al, '0'      ; Convert ASCII to numeric
mov bl, al       ; Store first digit in BL

; Prompt user for second digit
mov ah, 01h
int 21h          ; Read second digit
sub al, '0'      ; Convert ASCII to numeric
mov bh, al       ; Store second digit in BH

; Multiply BL and BH
mov al, bl
mul bh           ; AL = AL * BH (result in AX)

; Result is in AL (since 1-digit * 1-digit = max 81)
; Convert to ASCII and display

; Check if result is >= 10 (i.e., 2-digit result)
cmp al, 10
jl one_digit_result

; For 2-digit result
mov ah, 0        ; Clear AH
mov bl, 10
div bl           ; AL / 10, quotient in AL, remainder in AH
add al, '0'      ; Convert quotient to ASCII
mov dl, al
mov ah, 02h
int 21h          ; Display first digit (tens)

mov al, ah       ; Remainder
add al, '0'
mov dl, al
mov ah, 02h
int 21h          ; Display second digit (ones)

jmp exit

one_digit_result:
add al, '0'      ; Convert to ASCII
mov dl, al
mov ah, 02h
int 21h          ; Display result

exit:
mov ah, 4Ch
int 21h
