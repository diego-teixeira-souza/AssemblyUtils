; ** Name 		 : isEven
; ** Description : Test an signed integer 32 bit variable, for check is is even
; ** Parameters  : An unsigned integer 32 bit 
; ** Returns     : True is is event, False otherwise

%define PARAM_NUMBER [ebp + 8]
%define MASK_ONE	 0b00000000000000000000000000000001
%define MASK_MAX	 0xFFFFFFFF
										
; Code segment							
section .text
	global _isEven						; C function name	

; Main function	
_isEven:								; Entry point		
	
; Setup stack 
	push ebp							; save ebp on stack
	mov ebp, esp						; ebp = esp
	
; Main
	mov eax, PARAM_NUMBER				; eax = parameter	
	xor eax, MASK_MAX					; Invert all bits
	and eax, MASK_ONE					; Check if the fist bit is zero, if is then is odd

; Restore stack	
	mov esp, ebp						; esp = ebp
	pop ebp								; restore ebp

; Return	
	ret									; Return from function