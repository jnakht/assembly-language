









.MODEL SMALL
.STACK 100H

.DATA 
    MSG1 DB 10, 13, "BANGLADESH$"               
    
    
    
  
.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CX, 1
    GENERAL_LOOP:
        LEA DX, MSG1
        MOV AH, 09H
        INT 21H
    LOOP GENERAL_LOOP
    
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
    
    
    
    
    
    
    
    
     