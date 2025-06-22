







.MODEL SMALL
.STACK 100H

.DATA 
   ; MSG1 DB 10, 13, "BANGLADESH$"
    
    
.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CX, 0
    
    WHILE_LOOP:
        CMP CX, 10
        JGE END_WHILE
        
        LEA DX, MSG1
        MOV AH, 09H
        INT 21H
        
        INC CX
        
        JMP WHILE_LOOP
    
    END_WHILE:
    MOV AH, 4CH
    INT 21H
    
     
     MSG1 DB 10, 13, "BANGLADESH$" 
     
     
     