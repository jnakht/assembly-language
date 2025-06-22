



.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB 10, 13, "ENTER THE FIRST NUMBER: $"
    MSG2 DB 10, 13, "ENTER THE SECOND NUMBER: $"
    MSG3 DB 10, 13, "FIRST NUMBER IS GREATER$" 
    MSG4 DB 10, 13, "SECOND NUMBER IS GREATER$"
    MSG5 DB 10, 13, "NUMBERS ARE EQUAL$"
    
    
    
    
    
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
    JE EQUAL  
    
    CMP BL, CL
    JG FIRST_GREATER 
   
    
    LEA DX, MSG4
    MOV AH, 09H
    INT 21H
    JMP EXIT
    
    
    FIRST_GREATER:
        LEA DX, MSG3
        MOV AH, 09H
        INT 21H
        
        JMP EXIT
        
        
        
        
    
    
    
    EQUAL: 
        LEA DX, MSG5
        MOV AH, 09H
        INT 21H
        
        JMP EXIT
        
        
        
        
    EXIT:
        MOV AH, 4CH
        INT 21H
        
        
MAIN ENDP
END MAIN