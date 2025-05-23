


.MODEL SMALL
.data
    msg DB "HELLO WORLD!", 13, 10, "$"
    
.code 
    START:
        MOV AX, @data
        MOV DS, AX   
        
        MOV CX, 5H
        
        LOOP_LABEL:
        LEA DX, msg
        MOV AH, 09H
        INT 21H
        
        
        LOOP LOOP_LABEL
        MOV AH, 4CH
        INT 21H
     END START
        