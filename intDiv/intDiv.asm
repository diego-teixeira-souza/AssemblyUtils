
; ** Name 		 : intDiv
; ** Description : Computes the integer division of two numbers.
; ** Parameters  : The dividend, the divisor, an pointer to the remanider
; ** Returns     : The quotient

%define PARAM_DIVIDEND [ebp + 8]
%define PARAM_DIVISOR [ebp + 12]
%define PARAM_REMAINDER [ebp + 16]

section .text 
	global _intDiv
	
_intDiv:
	
; Function Entry
	push ebp
	mov ebp, esp
	
	mov eax, PARAM_DIVIDEND
	mov edx, PARAM_DIVISOR
	xor ecx, ecx
	
	cmp eax, edx
	jg .compute_int_div
	
	xor eax, eax
	mov DWORD PARAM_REMAINDER, 0
	jmp .done
	
	.compute_int_div:
		sub eax, edx
		inc ecx
		cmp eax,0
		jg .compute_int_div
		
	mov DWORD PARAM_REMAINDER, eax
	mov eax, ecx
	
.done:
; Function Exit
	mov esp, ebp
	pop ebp
	ret