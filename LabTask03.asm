
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


;If X, Y and Z are 3 variables, then perform the given mathematical operation(X / Y * Z) 

org 100h


; Initialize values
MOV AX, 20   ; X = 20 (Dividend)
MOV BL, 5    ; Y = 5  (Divisor)
MOV CL, 4    ; Z = 4  (Multiplier)

; Perform the operation X / Y * Z

DIV BL       ; AX = AX / BL (AX now holds the quotient, remainder is in AH)
MOV DX, AX   ; Save the quotient (result of X / Y) in DX for multiplication

MOV AX, DX   ; Load the quotient into AX
MUL CL       ; Multiply AX by Z (result in AX)

; Exit program
MOV AH, 4Ch  ; DOS interrupt for program termination
INT 21h      ; Call DOS interrupt




END




