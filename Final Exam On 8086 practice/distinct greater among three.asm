

   
   
   
   
   
   
   
   
   
   
   
                       ; THIIS CODE WILL WORK ONLY IF ALL THE NUMBERS ARE DISTINCT
   
   
   
   
   
.MODEL SMALL
.STACK 100H


.DATA
   MSG1 DB 10, 13, "ENTER THE FIRST NUMBER: $"
   MSG2 DB 10, 13, "ENTER THE SECOND NUMBER: $"
   MSG3 DB 10, 13, "ENTER THE THIRD NUMBER: $"  
   MSG4 DB 10, 13, "THE FIRST ONE IS GREATER$"
   MSG5 DB 10, 13, "THE SECOND ONE IS GREATER$"
   MSG6 DB 10, 13, "THE THIRD ONE IS GREATER$"
   
   
   
   
.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ;MSG 1
    LEA DX, MSG1 
    MOV AH, 09H
    INT 21H
    ;INPUT
    MOV AH, 1
    INT 21H
    SUB AL, 48
    ;BL
    MOV BL, AL
    
    ;MSG 2
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H
    ;INPUT
    MOV AH, 1
    INT 21H  
    SUB AL, 48
    ;CL
    MOV CL, AL
    
    ;MSG 3
    LEA DX, MSG3
    MOV AH, 09H
    INT 21H
    ;INPUT
    MOV AH, 1
    INT 21H 
    SUB AL, 48
    ;DL
    MOV DL, AL
    
    
    
    ;COMPARE
    CMP BL, CL
    JG FIRST_GREATER_1 
    
    
    
    CMP CL, BL
    JG SECOND_GREATER_1
    
     ;THIRD ONE IS GREATER 
     THIRD_GREATER:
        LEA DX, MSG6
        MOV AH, 09H
        INT 21H
        JMP EXIT
    
    
    
    FIRST_GREATER_1:
        CMP BL, DL
        JG FIRST_GREATER_2
        JL THIRD_GREATER
        
        
       
        
    FIRST_GREATER_2:
        LEA DX, MSG4
        MOV AH, 09H
        INT 21H
        JMP EXIT
    
    
    SECOND_GREATER_1:
        CMP CL, DL
        JG SECOND_GREATER_2
        JL THIRD_GREATER
    
    
    SECOND_GREATER_2:
        LEA DX, MSG5
        MOV AH, 09H
        INT 21H
        JMP EXIT
    
    
    EXIT:
        MOV AH, 4CH
        INT 21H


MAIN ENDP
END MAIN
    
    
    