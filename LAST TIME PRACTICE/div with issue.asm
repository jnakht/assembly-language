.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB 10,13, "ENTER THE FIRST NUMBER (0-9): $"
    MSG2 DB 10,13, "ENTER THE SECOND NUMBER (1-9): $"
    MSG3 DB 10,13, "THE RESULT IS: $"
    MSG_ERR DB 10,13, "DIVIDE BY ZERO ERROR!$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; First number input
    LEA DX, MSG1
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    SUB AL, 30H        ; ASCII to number
    MOV BL, AL         ; Save first number in BL

    ; Second number input
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    SUB AL, 30H        ; ASCII to number

    CMP AL, 0
    JE DIV_ZERO_ERR    ; If second number is 0, jump to error

    MOV BH, AL         ; Save second number

    ; Perform division
    MOV AL, BL         ; Dividend
    XOR AH, AH         ; Clear AH for 8-bit division
    DIV BH             ; AL / BH ? Quotient in AL, Remainder in AH

    ; Show result
    LEA DX, MSG3
    MOV AH, 09H
    INT 21H

    ADD AL, 30H        ; Convert quotient to ASCII
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    JMP END_PROGRAM

DIV_ZERO_ERR:
    LEA DX, MSG_ERR
    MOV AH, 09H
    INT 21H

END_PROGRAM:
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
