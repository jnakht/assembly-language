;print 1 to 15 number using do while loop

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
DO_WHILE_LOOP:
    MOV AH, 09H
    LEA DX, MSG
    INT 21H                   ; Convert CX to ASCII
    MOV AX, CX                
    CALL PRINT_NUM
    MOV AH, 09H
    LEA DX, NUM
    INT 21H
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    INC CX
    CMP CX, 16                ; do while (CX < 16)
    JL DO_WHILE_LOOP          ; Jump back if condition is true
EXIT:
    MOV AH, 4CH
    INT 21H
PRINT_NUM PROC
    MOV BX, 10
    XOR DX, DX
    DIV BX                    ; AX / 10 ? AL = quotient, DL = remainder
    ADD AL, '0'               ; Convert quotient to ASCII
    MOV NUM, AL
    ADD DL, '0'               ; Convert remainder to ASCII
    MOV NUM+1, DL
    MOV NUM+2, '$'      

    RET
PRINT_NUM ENDP

END MAIN





