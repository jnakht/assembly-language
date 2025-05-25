
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'WELCOME TO City University', 0DH, 0AH, '$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV CX, 0  ; Counter initialized to 0

DO_WHILE:
    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    INC CX
    CMP CX, 7
    JL DO_WHILE  ; Continue while CX < 7

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN





