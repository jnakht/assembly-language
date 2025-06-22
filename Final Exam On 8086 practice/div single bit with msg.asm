







.MODEL SMALL
.STACK 100H


.DATA
    MSG1 DB 10, 13, "ENTER THE FIRST NUMBER: $"
    MSG2 DB 10, 13, "ENTER THE SECOND NUMBER: $"
    MSG3 DB 10, 13, "THE RESULT IS: $"
    
    
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ;FIST MSG
    LEA DX, MSG1
    MOV AH, 09H
    INT 21H
    ;INPUT
    MOV AH, 1
    INT 21H
    SUB AL, 48
    ;BL
    MOV BL, AL
    
    ;SECOND MSG
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H
    ;INPUT
    MOV AH, 1
    INT 21H 
    SUB AL, 48
    ;CL
    MOV CL, AL
    
    ;MSG3
    LEA DX, MSG3
    MOV AH, 09H
    INT 21H
    
    ;CALC
    MOV AL, BL
    XOR AH, AH
    DIV CL
    
    ;PRINTING
    ADD AL, 48
    MOV DL, AL
    MOV AH, 2
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN