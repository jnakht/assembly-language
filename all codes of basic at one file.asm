
    
    
    ;i will write all codes on this single page, because i am practicing for my exam, i will look over this(just this) page before exam, it is like a rough note
    

;.MODEL SMALL
;.STACK 100H

;.CODE
;MAIN PROC    
    
    
    ;BASIC OUTPUT FUNCTION
   ; MOV AH, 2
   ; MOV DL, 'B'
    
   ; INT 21H
    
   ; INT 21H        
   
   
   
   ;BASIC INPUT FUNCTION
  ; MOV AH, 1
  ; INT 21H ; THE INPUT VALUE IS STORED IN AL REGISTER, INPUT SIZE MUST BE 0-9 FOR NOW
   
 ;  MOV AH, 2
 ;  MOV DL, AL
 ;  INT 21H            
 
 
 
 ;ITS ALWAYS GOOD PRACTICE TO MOVE THE AL(INPUT), BECAUSE IT MAY CHAGNE DUE TO OTHER VALUE, OTHER VALUES CAN COME IN THIS REGISTER TO PERFORM ANOTHER OPERATION
 
 
 
 ;MOV AH, 1
; INT 21H
 
; ;MOVE FROM AL
;; MOV BL, AL
; MOV DL, BL
 
; MOV AH, 2
; INT 21H      





    ;PRINT WITH NEWLINE  
    ;.MODEL SMALL
    ;.STACK 100H
    
   ; .CODE 
   ; MAIN PROC
   ;     MOV AH, 1
    ;    INT 21H 
        
        ;MOVING THE AL INTO ANOTHER SAFE PLACE  
        
        
        
        
   ;     MOV BL, AL    
        
        
         ;IF WE WANT WITH CARRIAGE RETURN (STARTING FROM FIRST PLACE)
    ;    MOV AH, 2
    ;    MOV DL, 0DH
    ;    INT 21H
         
         
        ;NEW LINE WITHOUT CARRIAGE RETURN
    ;    MOV AH, 2
    ;    MOV DL, 0AH
    ;    INT 21H   
        
        
       
        
    ;    MOV AH, 2
     ;   MOV DL, BL
    ;    INT 21H
                 
                 
                 
                 
                 
    ;printing a message
   ; .MODEL SMALL
   ; .STACK 100H
    
   ; .DATA
       ; msg1 DB "PLEASE ENTER A NUMBER: $"  
       ; msg2 DB 10, 13, "YOUR ENTERED VALUE IS: $"
    
   ; .CODE                             
       ; MAIN PROC
           ; MOV AX, @DATA
           ; MOV DS, AX
            
           ; LEA DX, msg1
           ; MOV AH, 09H
           ; INT 21H
            
          ;  MOV AH, 1
          ;  INT 21H
            
           ; MOV BL, AL   
            
            
            ;CARRIAGE RETURN
           ; MOV DL, 0DH
           ; MOV AH, 2
           ; INT 21H
            
            ;PRINTING NEW LINE
           ; MOV DL, 0AH 
           ; MOV AH, 2
           ; INT 21H
                      
            
            ;PRINTING WITH A OUTPUT MESSAGE
          ;  LEA DX, msg2
          ;  MOV AH, 09H
          ;  INT 21H
            
            
          ;  MOV DL, BL          
          ;  MOV AH, 2
          ;  INT 21H
                       
                       
                       
                       


           ;add two numbers
;.MODEL SMALL
;.STACK 100H

;.DATA
   ; MSG1 DB "ENTER THE FIRST NUMBER: $"
   ; MSG2 DB 10, 13, "ENTER THE SECOND NUMBER: $"
   ; MSG3 DB 10, 13, "THE SUM IS: $"

;.CODE 
;MAIN PROC
   ; MOV AX, @DATA
   ; MOV DS, AX
    
    ;INPUT MESSAGE 1
   ; LEA DX, MSG1
   ; MOV AH, 09H
   ; INT 21H
    
    ;INPUT
   ; MOV AH, 1
   ; INT 21H
    
    ;MOVE INPUT INTO BL
   ; MOV BL, AL  
    
    ;INPUT MESSAGE 2
  ;  LEA DX, MSG2
  ;  MOV AH, 09H
  ;  INT 21H
    
    ;INPUT
   ; MOV AH, 1
  ;  INT 21H
    
    ;MOVE INPUT INTO BH 
  ;  MOV CL, AL
     
    ;CONVERT BACK TO ASCII
 ;   SUB  BL, 30H
 ;   SUB CL, 30H 
 ;   ADD BL, CL 
  ;  ADD BL, 30H
    
    
     
    
    ;OUTPUT MSG
  ;  MOV AH, 09H 
   ; LEA DX, MSG3
  ;  INT 21H  
    
    
    ;OUTPUT VALUE  PRINT
   ; MOV AH, 2
   ; MOV DL, BL
    ;INT 21H   
    
    
    
    
    
    
    
    
    
    
    
    
               ;SUBTRACT two numbers
;.MODEL SMALL
;.STACK 100H

;.DATA
  ;  MSG1 DB "ENTER THE FIRST NUMBER: $"
  ;  MSG2 DB 10, 13, "ENTER THE SECOND NUMBER: $"
    ;MSG3 DB 10, 13, "THE SUBTRACT IS: $"

;.CODE 
;MAIN PROC
   ; MOV AX, @DATA
   ; MOV DS, AX
    
    ;INPUT MESSAGE 1
  ;  LEA DX, MSG1
  ;  MOV AH, 09H
   ; INT 21H
    
    ;INPUT
   ; MOV AH, 1
   ; INT 21H
    
    ;MOVE INPUT INTO BL
   ; MOV BL, AL  
    
    ;INPUT MESSAGE 2
  ;  LEA DX, MSG2
  ;  MOV AH, 09H
  ;  INT 21H
    
    ;INPUT
  ;  MOV AH, 1
  ;  INT 21H
  ;  
    ;MOVE INPUT INTO BH 
  ;  MOV CL, AL
     
 ;   ;CONVERT BACK TO ASCII
  ;  SUB  BL, 30H
 ;   SUB CL, 30H 
 ;   SUB BL, CL 
  ;  ADD BL, 30H
    
    
     
    
    ;OUTPUT MSG
  ;  MOV AH, 09H 
  ;  LEA DX, MSG3
   ; INT 21H  
    
    
    ;OUTPUT VALUE  PRINT
  ;  MOV AH, 2
  ;  MOV DL, BL
  ;  INT 21H
    
    
    
    
    
              
              
              
              
              
              
              
              
              
              
              
              
              
              
 
 
 
               ;MULTIPLY two numbers
.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB "ENTER THE FIRST NUMBER: $"
    MSG2 DB 10, 13, "ENTER THE SECOND NUMBER: $"
    MSG3 DB 10, 13, "THE MULT IS: $"

.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ;INPUT MESSAGE 1
    LEA DX, MSG1
    MOV AH, 09H
    INT 21H
    
    ;INPUT
    MOV AH, 1
    INT 21H
    
    ;MOVE INPUT INTO BL
    MOV BL, AL  
    
    ;INPUT MESSAGE 2
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H
    
    ;INPUT
    MOV AH, 1
    INT 21H
    
    ;MOVE INPUT INTO BH 
    ;MOV CL, AL
     
    ;CONVERT BACK TO ASCII
    SUB  BL, 30H
  ; SUB CL, 30H 
    MUL BL
  ; SUB BL, 30H
    
    
     
    
    ;OUTPUT MSG
    MOV AH, 09H 
    LEA DX, MSG3
    INT 21H  
    
    
    ;OUTPUT VALUE  PRINT
    MOV AH, 2
    MOV DX, AX
    INT 21H
    
    
    
    
    
    
    
    
    
    
        
        
    
    
 