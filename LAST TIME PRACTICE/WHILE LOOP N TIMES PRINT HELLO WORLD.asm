


.MODEL SMALL
.STACK 100H

.DATA
    INPUTMSG DB "ENTER A NUMBER(1-9): $"
    OUTPUTMSG DB 10, 13, "HELLO WORLD$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 09H
    LEA DX, INPUTMSG
    INT 21H  
    
    MOV AH, 1
    INT 21H
    
    
    MOV BL, AL
    
    SUB BL, 30H 
    
    MOV CL, 0
    
    WHILE_LOOP:
           CMP CL, BL
           JGE EXIT_WHILE_LOOP
           
           LEA DX, OUTPUTMSG
           MOV AH, 09H
           INT 21H
           
           INC CL
           JMP WHILE_LOOP
    
    
    EXIT_WHILE_LOOP:
        MOV AH, 4CH
        INT 21H

END MAIN