

extern printf
global main

section .text


main:

_begin:
	push ebp
	mov ebp, esp
	
	push DWORD message
	push DWORD message
	call printf
	add esp, 8
	
	push DWORD [message]
	push DWORD message
	call printf
	add esp, 8

_end:	
	mov esp, ebp
	pop ebp
	xor eax, eax
	ret

printStack:
	
	xor eax, eax
	ret

section .data
	message: db "\nCurrent Stack value is >> %d", 0
