



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
    
    ;FIRST MSG
    LEA DX, MSG1
    MOV AH, 09H
    INT 21H
    
    ;FIRST INPUT
    MOV AH, 1
    INT 21H
    SUB AL, 48
    ;BL
    MOV BL, AL
    
    
    ;SECOND MSG
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H
    
    ;SECOND INPUT
    MOV AH, 1
    INT 21H
    SUB AL, 48
    ;CL
    MOV CL, AL
    
    ;THIRD MSG
    LEA DX, MSG3
    MOV AH, 09H
    INT 21H
    
    ;MUL
    MOV AL, BL
    MUL CL 
    ADD AL, 48
    
    ;PRINT RESULT
    MOV DL, AL
    MOV AH, 2
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    
MAIN ENDP
END MAIN