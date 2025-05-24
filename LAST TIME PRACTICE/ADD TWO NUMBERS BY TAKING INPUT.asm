



.MODEL SMALL
.STACK 100H

.DATA
   MSG1 DB 10, 13, "ENTER THE FIRST NUMBER: $"
   MSG2 DB 10, 13, "ENTER THE SECOND NUMBER: $"
   MSG3 DB 10, 13, "THE RESULT IS: $"


.CODE
MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG1
     MOV AH, 09H
     INT 21H
     
     
     
     
     MOV AH, 1
     INT 21H 
     
     SUB AL, 30H
     
     MOV BL, AL 
     
     
    LEA DX, MSG2
     MOV AH, 09H
     INT 21H
     
     MOV AH, 1
     INT 21H 
     
     SUB AL, 30H
     
     MOV BH, AL
     
     
     ADD BL, BH
     
     
     
    LEA DX, MSG3
     MOV AH, 09H
     INT 21H  
       
       
        MOV AH, 2 
     MOV DL, BL 
     
     ADD DL, 30H
    
     ;SUB DL,48 
     INT 21H
     
    
    
END MAIN