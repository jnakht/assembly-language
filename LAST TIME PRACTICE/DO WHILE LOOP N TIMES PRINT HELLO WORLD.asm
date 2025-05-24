


.MODEL SMALL
.STACK 100H

.DATA
    INPUTMSG DB "ENTER A NUMBER: $"
    OUTPUTMSG DB 10, 13, "HELLO WORLD$"
    

.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, INPUTMSG
    MOV AH, 09H
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    SUB AL, 30H
    MOV BL, AL
    
    MOV CL, 0
    
    DO_WHILE_LOOP:
        LEA DX, OUTPUTMSG
        MOV AH, 09H
        INT 21H
         
        INC CL
        
        CMP CL, BL
        JGE EXIT_DO_WHILE_LOOP
        
        
        JMP DO_WHILE_LOOP
        
        
    EXIT_DO_WHILE_LOOP:
        MOV AH, 4CH
        INT 21H
        

END MAIN