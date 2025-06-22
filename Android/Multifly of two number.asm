
 .MODEL SMALL
 .STACK 100H
 .DATA
 
 A DB ?
 B DB ?
 .CODE
 
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV A,AL
    
    
     ;NEW LINE
              
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,13
         INT 21H  
     
    
    MOV AH,1
    INT 21H
    SUB AL,48    
    
    
    MUL A 
    
    
    
    AAM   
        
        
        
    MOV BX,AX
    MOV AH,2
    MOV DL,BH 
    ADD DL,48
    INT 21H
    
    
    
    MOV AH,2
    MOV DL,BL
    ADD DL,48
    INT 21H
             
         
             
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN