;Mathematical equation that allows user input. The equation that I will be using is: (8x + y).
;I will be using the Irvine32 library for this.
;This is not running for me because my system is unable to access the irvine32 lib. Not sure why I know that I set it up correctly.

include Irvine32.inc

.data

;These are the messages that I am using that I will call later on in the program
xValue BYTE "Enter a value for x: ", 0
yValue BYTE "Enter a vaule for y: ", 0
resultText BYTE "f(x) = ", 0
xx SDWORD ?
yy SDWORD ?
result SDWORD ?

.code

;This is the equation function, this will carry out the equation listed one line 1.
Equation PROC
;EAX = stored x value
;EBX = stored y value
;Final result should be: EAX = (8 * x) + y

add eax, eax				;2x
add eax, eax				;4x
add eax, eax				;8x
add eax, ebx				;8x + y

Equation ENDP

main PROC

mov edx, OFFSET xValue		;Move the offset of xvalue to the edx register.
call WriteString			;Display the string that is stored in the edx register.
call ReadInt				;Read the next integer that the user inputs(This value should be saved to the eax register).
mov xx, eax					;Store the value of eax into xx.

mov edx, OFFSET yValue		;Move the offset of yvalue to the edx register.
call WriteString			;Display the string that is stored in the edx register.
call ReadInt				;Read the next integer that the user inputs.
mov yy, eax					;Store the value of eax into yy.

mov eax, xx					;Move the value of xx into the eax register.
mov ebx, yy					;Move the value of yy into the ebx register.
call Equation				;Call the Equation function.
mov result, eax				;After the equation function has finished it will store the value in eax, this line will then store the value of eax to the result variable.

mov edx, OFFSET resultText	;Move the offset value to the edx register
call WriteString			;Display the string that is stored in the edx register
mov eax, result				;Store the value of result in the eax register.
call WriteInt				;Display the integer that is stored in the eax register
call Crlf					;Moves the cursor to the next line

call WaitMsg
exit

main ENDP
END main