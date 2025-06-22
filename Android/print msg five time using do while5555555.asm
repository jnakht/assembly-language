MOV CX, 0          ; Initialize CX to 0

DO_WHILE_LOOP:
    MOV AH, 09H    
    LEA DX, MSG    
    INT 21H        

    INC CX         
    CMP CX, 7      
    JL DO_WHILE_LOOP   ; Repeat if CX < 7

EXIT:
    MOV AH, 4CH    
    INT 21H        

MSG DB 'WELCOME TO City University', 0DH, 0AH, '$'

