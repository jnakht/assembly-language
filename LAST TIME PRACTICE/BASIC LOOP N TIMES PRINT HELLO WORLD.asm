



.MODEL SMALL
.STACK 100H

.DATA       
    INPUTMSG DB "ENTER A NUMBER:(1-9) $"
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
    
    
    MOV BH, 0H
    MOV CX, BX
    
    LOOP_LABEL:
        
        LEA DX, OUTPUTMSG
        MOV AH, 09H
        INT 21H
        
    LOOP LOOP_LABEL
    
END MAIN
        
    