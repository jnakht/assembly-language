


.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB "Enter a number: $"
    MSG2 DB 10,13,"Hello World$"
    NEWLINE DB 10,13,"$"

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
    MOV CL, AL     

   
    MOV CH, 0        

PRINT_LOOP:
   
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H

   
    LEA DX, NEWLINE
    MOV AH, 09H
    INT 21H

    
    INC CH

    
    CMP CH, CL
    JB PRINT_LOOP     

    
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
