
.MODEL SMALL
 .STACK 100H
  .DATA
  MSG1 DB 10,13, "ENTER THE FIRST NUMBER:$" 
  MSG2 DB 10,13, "ENTER THE SECOND NUMBER:$" 
  MSG3 DB 10,13, "THE RESULT IS:$" 
 
 
 .CODE
 
 MAIN PROC
       MOV AX,@DATA
       MOV DS,AX
       LEA DX,MSG1   
       MOV AH,09H
       INT 21H
       
    
    MOV AH,1
    INT 21H
    MOV BL,AL
       
       
       
       LEA DX,MSG2   
       MOV AH,09H
       INT 21H       
              
            
    MOV AH,1
    INT 21H
    MOV BH,AL 
      
      
       LEA DX,MSG3   
       MOV AH,09H
       INT 21H
    
    SUB  BL,BH
    ADD BL,48
    
    MOV AH,2
    MOV DL,BL
    INT 21H




