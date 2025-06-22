
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AL,8
    MOV BL,8
    DIV BL
    
    MOV CL,AL
    MOV CH,AH
    
    MOV AH,2
    MOV DL,CL
    ADD DL,48
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    ADD DL,48
    INT 21H
    
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

