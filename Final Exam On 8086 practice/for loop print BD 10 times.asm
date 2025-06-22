







.MODEL SMALL
.STACK 100H

.DATA 
    MSG1 DB 10, 13, "BANGLADESH$"               
    
    
    
  
.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CX, 0
    
    FOR_LOOP:
        CMP CX, 10
        JGE EXIT
        
        
        LEA DX, MSG1
        MOV AH, 09H
        INT 21H
        
        INC CX
        
        JMP FOR_LOOP
        
        
       
        
        
        EXIT: 
            MOV AH, 4CH
            INT 21H

MAIN ENDP
END MAIN
    
    
    
    
    
    
    
    
     