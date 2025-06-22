
    .MODEL SMALL
    .STACK 100H
    .CODE
    MAIN PROC   
        
        
        MOV AH,1
        INT 21H
        MOV BL,AL 
         
         
        ;NEW LINE
              
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,13
         INT 21H    
              
              
              
        
        MOV AH,1
        INT 21H
        MOV BH,AL  
        
        
        ;NEW LINE
              
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,13
         INT 21H
        
        SUB BL,BH
        ADD BL,48
        
        MOV AH,2
        MOV DL,BL
        INT 21H
        
        EXIT:
        MOV AH,4CH
        INT 21H
        MAIN ENDP
    END MAIN
        



