
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;If A,B and C are 3 variables, perform the given mathematical operation A=B-(A+C) 


;Initialize values
MOV AL, 5    ; A=5 
MOV BL, 3    ; B=10
MOv CL, 3    ; C=3

; Perform the operation A=B-(A+C)

ADD AL, CL   ; AL=A+C(AL now contains A+C)
SUB BL, AL   ; BL=B-(A+C), result in BL
MOV AL, BL   ; Store the result in A

; Exit program
MOV AH, 4Ch  ; DOS interrupt for program termination
INT 21h      ; Call DOS interrupt



END




