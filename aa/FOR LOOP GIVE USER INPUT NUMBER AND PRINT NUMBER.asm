;FOR LOOP 


.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL

    ; NEW LINE AFTER INPUT
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
     MOV CL,'1'

    FOR:
        CMP CL,BL
        JG EXIT:
        
        MOV AH,2
        MOV DL,CL
        INT 21H
        
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV AH,2
        MOV DL,0AH
        INT 21H

        INC CL
    JMP FOR:

    EXIT:
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

