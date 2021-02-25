
; ** Name 		 : factorial
; ** Description : Calculates the factorial of an unsigned integer
; ** Parameters  : An unsigned integer 32 bit 
; ** Returns     : The factorial

%define PARAM_NUMBER [ebp + 8]

; Code segment
section .text 
	global _factorial					; C function name

; Main
_factorial:	

; Standard Entry point	
	push ebp							; Save ebp into the stack
	mov ebp, esp						; ebp = esp

; Save registers and flags
	pushf								; Save flags
	
; Set registers	
	mov eax, 1							; eax = 1		
	mov ecx, PARAM_NUMBER				; ecx = parameter

; Main loop	
	.calc_factorial:
		mul ecx							; eax = eax * ecx
		loop .calc_factorial			; Decrement ecx, and check if ecx is zero, if not repeat .calc_factorial
										; else continue

; Restore registers	and flags
	popf
	
; Standard Leave point	
	mov esp, ebp						; esp = ebp
	pop ebp								; restore ebp

; Function return value in EAX	
	ret