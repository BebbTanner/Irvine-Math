;Mathematical equation that allows user input. The equation that I will be using is: (8x + y).
;I will be using the Irvine32 library for this.

INCLUDE Irvine23.inc

.data

;These are the messages that I am using that I will call later on in the program
xValue BYTE "Enter a value for x: ", 0
yValue BYTE "Enter a vaule for y: ", 0
resultText BYTE "f(x) = ", 0
xx SDWORD ?
yy SDWORD ?
result SDWORD ?

.code

;This is the equation function, this will 
Equation PROC

Equation ENDP


main PROC

main ENDP
END main