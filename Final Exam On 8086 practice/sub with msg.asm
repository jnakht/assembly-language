.MODEL SMALL
.STACK 100H

.DATA 
    MSG1 DB 10, 13, "ENTER THE FIRST NUMBER: $"
    MSG2 DB 10, 13, "ENTER THE SECOND NUMBER: $"
    MSG3 DB 10, 13, "FINAL RESULT IS: $"

.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Prompt for first number
    LEA DX, MSG1 
    MOV AH, 09H
    INT 21H  

    MOV AH, 1
    INT 21H
    SUB AL, 30H
    MOV BL, AL

    ; Prompt for second number
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H  

    MOV AH, 1
    INT 21H
    SUB AL, 30H
    MOV CL, AL

    ; Perform first - second
    SUB BL, CL

    ; Show result message
    LEA DX, MSG3
    MOV AH, 09H
    INT 21H

    ; Convert to ASCII and print result
    MOV DL, BL
    ADD DL, 30H
    MOV AH, 2
    INT 21H

    ; Exit
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
