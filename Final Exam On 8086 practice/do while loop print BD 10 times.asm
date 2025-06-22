




.MODEL SMALL
.STACK 100H
   
   
.DATA
     MSG1 DB 10, 13, "BANGLADESH$"


.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CX, 0
    
    DO_WHILE:
        
        LEA DX, MSG1
        MOV AH, 09H
        INT 21H
        
        INC CX
        CMP CX, 10
        JL DO_WHILE
        
        
        MOV AH, 4CH
        INT 21H  
        
        
        
       
        
        
MAIN ENDP
END MAIN