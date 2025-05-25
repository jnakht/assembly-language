 ;print Number 1 to 15 using While Loop.

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
    MOV CX, 1           ; starts at 1
WHILE_LOOP:             
    CMP CX, 16          ; While CX < 16
    JGE EXIT            ; Exit loop if CX >= 16
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
    INT 21H             ; Increment counter
    INC CX
    JMP WHILE_LOOP
EXIT:
    MOV AH, 4CH
    INT 21H
PRINT_NUM PROC
    MOV BX, 10
    XOR DX, DX
    DIV BX              ; AX / 10 ? AL = quotient, DL = remainder
    ADD AL, '0'         ; Convert quotient to ASCII
    MOV NUM, AL
    ADD DL, '0'         ; Convert remainder to ASCII
    MOV NUM+1, DL
    MOV NUM+2, '$'      
    RET
PRINT_NUM ENDP
END MAIN





