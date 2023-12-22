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

;This is the equation function, this will carry out the equation listed above.
Equation PROC

Equation ENDP


main PROC

mov edx, OFFSET xValue		;Move the offset of xvalue to the edx register.
call WriteString		;Display the string that is stored in the edx register.
call ReadInt		;Read the next integer that the user inputs(This value should be saved to the eax register).
mov xx, eax			;Store the value of eax into xx.

mov edx, OFFSET yValue		;Move the offset of yvalue to the edx register.
call WriteString		;Display the string that is stored in the edx register.
call ReadInt		;Read the next integer that the user inputs.
mov yy, eax		;Store the value of eax into yy.

main ENDP
END main