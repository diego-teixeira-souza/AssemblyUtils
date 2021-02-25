
; ** Name 		 : intToChar
; ** Description : Convert and unsigned integer, to respective ASCII char
; ** Parameters  : An 32bit variable
; ** Returns     : The correspondent char, or zero

section .data
	iFrmt db "%u",0

section .text
	global _intToChar
	extern _malloc
	global _WinMain@16
	extern _printf
	
_WinMain@16:
_intToChar:

; Function entry	
	push ebp
	mov ebp, esp
	
; Set registers
	mov eax, [ebp + 8]
	xor edx, edx
	xor ecx, ecx
	
	.count:
		mov ebx, 10
		div ebx
		add ecx, 1
		cmp eax, 0
		jg .count 
	
; Loop
	push eax
	push iFrmt
	call _printf
	add esp, 8
		

; Function exit	
	leave
	ret
