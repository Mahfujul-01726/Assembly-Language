
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


;Perform the following arithmetic operation: (3 + 4) * (3 –2 ) / 5 + 2 + 2 – (1 * 2)

org 100h

; Initialize values
MOV AL, 3    ; Load 3 into AL for the first addition
MOV BL, 4    ; Load 4 into BL for the first addition
ADD AL, BL   ; AL = 3 + 4 = 7

MOV BL, 3    ; Load 3 into BL for the subtraction
MOV CL, 2    ; Load 2 into CL for the subtraction
SUB BL, CL   ; BL = 3 - 2 = 1

; Now perform multiplication (AL * BL) and divide by 5
MOV DL, AL   ; Save AL (7) into DL for multiplication
MUL BL       ; Multiply AL (7) by BL (1), result in AX (7)

MOV BL, 5    ; Load 5 into BL for division
DIV BL       ; Divide AX by BL (AX / 5), result in AL (quotient), remainder in AH

; Now add 2 + 2
MOV BL, 2    ; Load 2 into BL
ADD AL, BL   ; AL = AL + 2

MOV BL, 2    ; Load another 2 into BL
ADD AL, BL   ; AL = AL + 2

; Subtract (1 * 2)
MOV BL, 1    ; Load 1 into BL
MOV CL, 2    ; Load 2 into CL
MUL CL       ; Multiply 1 by 2, result in AX
MOV BL, AL   ; Save the result of 1 * 2 into BL (which is 2)
SUB AL, BL   ; AL = AL - 2

; Exit program
MOV AH, 4Ch  ; DOS interrupt for program termination
INT 21h      ; Call DOS interrupt


END




