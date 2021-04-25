; ** Name 		   : countBits32
; ** Description : Count how many 1s bits, have an 32bit variable
; ** Parameters  : An 32bit variable
; ** Returns     : The totan of 1s

; Defines
%define PARAM_NUMBER	 [ebp + 8]
%define MASK_ONE		 0b00000000000000000000000000000001	

; Code segment
section .text

; Global object file entries			
	global _countBits32					; C naming internal convention

; Main function	
_countBits32:	

; C Function Entry convetion, use ebp instead of esp
	push ebp							; save ebp on stack
	mov ebp, esp						; ebp = esp
	
; Save all registers and flags on stack
	pushfd								; save 32flags

; Set Registers
	xor eax, eax						; zeroing eax
	mov edx, PARAM_NUMBER				; edx = *(*ebp)+8)
	
; Main loop, realize AND between the variable and 1,
; add the result, it will be one or zero, in eax
; shift bits to the right and test if is zero
	.loop:
		mov ecx, edx					; ecx = edx
		and ecx, MASK_ONE				; ecx(edx(first parameter)) AND 1
		add eax, ecx					; eax = eax + ecx
		shr edx, MASK_ONE				; edx >> 1
		cmp edx, 0						; if edx != 0 then 
		jnz .loop						; repeat loop
	
; Restore all registers and flags on stack
	popfd								; restore 32flags
	
; C Function Exit convention
	mov esp, ebp						; esp = ebp
	pop ebp								; restore ebp previous value
	
; Return
	ret									; return from eip
