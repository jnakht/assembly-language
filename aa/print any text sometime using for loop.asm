
;Using For loop print text Seven times.

MOV CX, 0          

FOR_LOOP:
CMP CX, 7         
JGE EXIT          
MOV AH, 09H       
LEA DX, MSG        
INT 21H           
INC CX             
JMP FOR_LOOP      

EXIT:
MOV AH, 4CH       
INT 21H          

MSG DB 'WELCOME TO City University', 0DH, 0AH, '$'
