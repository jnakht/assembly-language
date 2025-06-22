                                                             
                                                             
                                                             
                                                             
                                                             
                                                             
                                                             
                                                             
.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB 10, 13, "ENTER THE FIRST NUMBER: $"
    MSG2 DB 10, 13, "ENTER THE SECOND NUMBER: $"
    MSG3 DB 10, 13, "NUMBERS ARE EQUAL $"
    MSG4 DB 10, 13, "NUMBERS ARE NOT EQUAL$"
    
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    
    ;FIRST MSG
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
    
    ;COMPARE
    CMP BL, CL
    JZ EQUAL
    
    LEA DX, MSG4
    MOV AH, 09H
    INT 21H
    
    JMP EXIT
    
    
    
    
    EQUAL:
        LEA DX, MSG3
        MOV AH, 09H
        INT 21H 
        JMP EXIT
        
        
    
    EXIT:
    MOV AH, 4CH
    INT 21H