
; ** Name 		 : memCpy
; ** Description : Copy block of memory
; ** Parameters  : Two pointers, and the size of bytes to be copied 
; ** Returns     : Nothing

; NASM MACRO defs
%define src [ebp + 8]
%define dest [ebp + 12]
%define sz [ebp + 16]

; Code segment
section .text							
	global _memCpy					; Function name
	
; Function Start
_memCpy:
	
; C Calling Convention, entry
	push ebp							; Save ebp onto stack
	mov ebp, esp						; ebp = esp
	
; Save registers
	push esi							; save esi
	push edi							; save edi
	
; Set registers
	mov esi, src					    ; esi = address of buffer to copy from
	mov edi, dest 						; edi = address of buffer to copy to
	mov ecx, sz 						; ecx = number of bytes to copy
		
	
; Main loop
	cld									; Clear direction flag, right to left
	rep movsb							; repeat movsb, decrement ecx, until ecx is zero
										; movsb copy per byte esi:edi and increment both registers
										
.done:
; Restore registers
	pop edi								; restore edi
	pop esi								; restore esi
	
; C Calling Convention, leave
	mov esp, ebp						; esp = ebp
	pop ebp								; restore ebp
	
; Function End
	ret									; return nothing