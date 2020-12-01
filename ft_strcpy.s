			global	ft_strcpy
			extern	ft_strlen

ft_strcpy:	mov		rax, 0
			mov		rcx, -1

cpy:		inc		rcx
			cmp		BYTE[rsi + rcx], 0
			je		end
			mov		dl, BYTE[rsi + rcx]
			mov		BYTE[rdi + rcx], dl
			jmp		cpy

end:		mov		BYTE[rdi + rcx], 0
			mov		rax, rdi
			ret