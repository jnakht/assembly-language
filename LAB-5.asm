



.MODEL SMALL
.STACK 100H

.DATA
    PROMPT DB "ENTER A DIGIT $"
    NEWLINE DB 10,13,"$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    
    LEA DX, PROMPT
    MOV AH, 09H
    INT 21H

   
    MOV AH, 01H
    INT 21H
    SUB AL, 30H       
    MOV CL, AL
    
    
    LEA DX, NEWLINE
    MOV AH, 09H
    INT 21H
           

WHILE_LOOP:
    
    MOV DL, CL
    ADD DL, 30H
    MOV AH, 02H
    INT 21H

   
    LEA DX, NEWLINE
    MOV AH, 09H
    INT 21H

    DEC CL
    JNZ WHILE_LOOP

    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
