
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

MOV AL, 5  ; Load the first number into AL
MOV BL, 3  ; Load the second number into BL
DIV BL     ; Divide AL by BL, result in AL(quotient), remainder in AH

;Exit program
MOV AH, 4ch ; DOS interrupt for program termination
INT 21h     ; Call DOS interrupt


END




