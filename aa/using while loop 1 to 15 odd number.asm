.MODEL SMALL
.STACK 100H
.DATA
    MSG DB ' $'
    NEWLINE DB 0DH, 0AH, '$'
    NUM DB '00$'     
.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX
    MOV CX, 1           
WHILE_LOOP:
    CMP CX, 16            ; while CX < 16
    JGE EXIT             
    MOV AX, CX
    AND AL, 1             ; Check if CX is odd
    JZ SKIP_PRINT        
    MOV AH, 09H
    LEA DX, MSG
    INT 21H
    MOV AX, CX
    CALL PRINT_NUM
    MOV AH, 09H
    LEA DX, NUM
    INT 21H
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
SKIP_PRINT:
    INC CX
    JMP WHILE_LOOP        
EXIT:
    MOV AH, 4CH
    INT 21H
PRINT_NUM PROC
    MOV BX, 10
    XOR DX, DX
    DIV BX                ; AX / 10 ? AL = quotient, DL = remainder
    ADD AL, '0'          
    MOV NUM, AL
    ADD DL, '0'           ; Convert remainder to ASCII
    MOV NUM+1, DL
    MOV NUM+2, '$'
    RET
PRINT_NUM ENDP
END MAIN




