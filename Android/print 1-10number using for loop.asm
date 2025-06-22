 ;print 1 to 15 number using for loop

.MODEL SMALL
.STACK 100H
.DATA
    MSG DB ' $'
    NEWLINE DB 0DH, 0AH, '$'
    NUM DB '0$' 
.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX
    MOV CX, 1           ; Start from 1
PRINT_LOOP:
    CMP CX, 16          ; Until 15 
    JGE EXIT
                  
    MOV AH, 09H
    LEA DX, MSG
    INT 21H             ; Convert CX to ASCII and store in NUM
    MOV AX, CX
    CALL PRINT_NUM
    MOV AH, 09H
    LEA DX, NUM
    INT 21H             ; Print newline
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    INC CX
    JMP PRINT_LOOP
EXIT:
    MOV AH, 4CH
    INT 21H
PRINT_NUM PROC
    MOV BX, 10
    XOR DX, DX
    DIV BX              ; AX / 10 ? AL = quotient, DL = remainder
    ADD AL, '0'         ; Convert quotient to ASCII
    MOV NUM, AL
    ADD DL, '0'         
    MOV NUM+1, DL
    MOV NUM+2, '$'      

    RET
PRINT_NUM ENDP
END MAIN




