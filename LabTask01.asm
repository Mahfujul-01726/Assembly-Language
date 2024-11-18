
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; Swap two numbers using ADD and SUB instructions

MOV AL, 5    ; Load the first number into AL
MOV BL, 3    ; Load the second number into BL

; Swap logic
ADD AL, BL   ; AL = AL + BL (AL now holds the sum of the two numbers)
SUB BL, AL   ; BL = BL - AL (BL now holds the original value of AL)
NEG BL       ; Correct BL (because subtraction made it negative)
SUB AL, BL   ; AL = AL - BL (AL now holds the original value of BL)

; Exit program
MOV AH, 4Ch  ; DOS interrupt for program termination
INT 21h      ; Call DOS interrupt



END




