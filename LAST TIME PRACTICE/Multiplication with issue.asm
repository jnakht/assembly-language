.model small
.stack 100h

.data
    msg1 db 'Enter first digit (0-9): $'
    msg2 db 0Dh, 0Ah, 'Enter second digit (0-9): $'
    msg3 db 0Dh, 0Ah, 'Product is: $'

.code
main:
    mov ax, @data
    mov ds, ax

    ; Prompt for first digit
    lea dx, msg1
    mov ah, 09h
    int 21h

    ; Read first character
    mov ah, 01h
    int 21h
    sub al, 30h     ; Convert ASCII to numeric
    mov bl, al      ; Store in BL

    ; Prompt for second digit
    lea dx, msg2
    mov ah, 09h
    int 21h

    ; Read second character
    mov ah, 01h
    int 21h
    sub al, 30h     ; Convert ASCII to numeric
    mov bh, al      ; Store in BH

    ; Multiply the digits
    xor ax, ax      ; Clear AX before multiplication
    mov al, bl
    mul bh          ; AL * BH ? AX

    ; Show result message
    lea dx, msg3
    mov ah, 09h
    int 21h

    ; Display result from AX
    ; If result < 10, print one digit
    cmp al, 10
    jl PRINT_ONE_DIGIT

    ; Two-digit result: divide by 10
    mov ah, 0       ; Ensure AH = 0
    mov bl, 10
    div bl          ; AL = quotient (tens), AH = remainder (units)

    ; Print tens digit
    add al, 30h     ; Convert to ASCII
    mov dl, al
    mov ah, 02h
    int 21h

    ; Print units digit
    mov al, ah      ; Move remainder to AL
    add al, 30h     ; Convert to ASCII
    mov dl, al
    mov ah, 02h
    int 21h

    jmp EXIT

PRINT_ONE_DIGIT:
    add al, 30h     ; Convert to ASCII
    mov dl, al
    mov ah, 02h
    int 21h

EXIT:
    mov ah, 4Ch
    int 21h
