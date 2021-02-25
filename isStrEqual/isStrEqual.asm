
; ** Name 		 : isStrEqual
; ** Description : Receives two strings and a size, and check if they are equal
; ** Parameters  : Two string pointers, and the size to be checked
; ** Returns     : True of false, if they are equal

%define strA [ebp + 8]
%define strB [ebp + 12]
%define sz [ebp + 16]

; Code segment
section .code											; declares start of code
	global _isStrEqual									; c standard function name
														
_isStrEqual:											; global entry point
isStrEqual:												; global entry point

; C function entry convetion
	push ebp											; save ebp on stack
	mov ebp, esp										; ebp = esp

; Save registers	
	push esi											; Save esi
	push edi											; Save edi

; Set registers	
	xor eax, eax										; zeroing eax
	mov ecx, sz											; ecx = size 
	mov esi, strA										; esi = first string
	mov edi, strB										; edi = second string
	
	cld
; Main loop, test each byte in both strings, for each byte equal inc eax
	.loop:												; test each byte in both string, and increment eax if they are equal
		cmpsb											; compare an byte from both first and second string, set flags, and increment esi and edi 
		jne .not_equal									; if they are not equal goto not_equal
		.equal:											; if they are equal
			inc eax										; increment eax by 1
		.not_equal:										; when not equal do nothing
		loop .loop										; decrement ecx, and if ecx is not zero, repeat the main loop
	
; Check if the eax value is equal to the size passed
	mov ecx, sz											; ecx = size 
	cmp eax, ecx										; compare eax with ecx
	jne .is_not_same_size								; if eax is not the same of ecx
	.is_same_size:										; ; if are same
		mov eax, 1										; eax = 1(true)
		jmp .done										; done
	.is_not_same_size:									; else if are diferent
		mov eax, 0										; eax = 0(false)

; Restore registers
	.done:	
	pop edi
	pop esi
	
; Function exit
	mov esp, ebp										; esp = ebp
	pop ebp												; restore ebp

; Function return value in EAX
	ret													; return from function with result stored in EAx