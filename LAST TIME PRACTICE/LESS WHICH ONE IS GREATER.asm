
.MODEL SMALL
.STACK 100H   

.DATA
    MSG1 DB "ENTER FIRST NUMBER: $"
    MSG2 DB 10, 13, "ENTER SECOND NUMBER: $"
    MSG3 DB 10, 13, "FIRST NUMBER IS LARGER$"
    MSG4 DB 10, 13, "SECOND NUMBER IS LARGER$"




.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, MSG1
    MOV AH, 09H
    INT 21H
    
    MOV AH, 1
    INT 21H
              
    SUB AL, 48
    MOV BL, AL
    
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    SUB AL, 48
    MOV BH, AL
    
    CMP BL, BH
    JL LESS
        
        LEA DX, MSG3
        MOV AH, 09H
        INT 21H
        
        MOV AH, 4CH
        INT 21H
    
    
    
    LESS: 
    LEA DX, MSG4
    MOV AH, 09H
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    

END MAIN