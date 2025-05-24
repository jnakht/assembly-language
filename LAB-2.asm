

.MODEL SMALL
.STACK 100H

.DATA
  MSG1 DB "ENTER THE FIRST NUMBER: $"
  MSG2 DB 10, 13, "ENTER THE SECOND NUMBER: $" 
  MSG3 DB 10, 13, "firstD$"
  MSG4 DB 10, 13, "second$"

.CODE 
MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG1
     
     MOV AH, 09H
     INT 21H
     
     MOV AH, 1
     INT 21H
     
     MOV BL, AL
     
     LEA DX, MSG2
     MOV AH, 09H
     INT 21H  
     
     MOV AH, 1
     INT 21H
     
     CMP BL, AL
     JG GRATER
      
     
     LEA DX, MSG4
     MOV AH, 09H
     INT 21H
     HLT         
           
     GRATER:
         LEA DX, MSG3
         MOV AH, 09H
         INT 21H
         HLT
    