
.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB "ENTER A NUMBER (1-9): $"
    MSG2 DB 10,13, "HELLO WORLD$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

  
    LEA DX, MSG1
    MOV AH, 09H
    INT 21H

   
    MOV AH, 01H
    INT 21H
    SUB AL, 30H    
    MOV CH, AL      
    MOV CL, 0       

FOR_LOOP:
    CMP CL, CH     
    JAE END_LOOP   

   
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H

    INC CL          
    JMP FOR_LOOP   

END_LOOP:
    ; Exit
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
