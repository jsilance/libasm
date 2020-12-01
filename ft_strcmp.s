			global	ft_strcmp

ft_strcmp:  mov		rax, 0
			mov		rcx, -1

incr:		inc		rcx

comp:		cmp		BYTE[rdi + rcx], 0
			je		result
			cmp		BYTE[rsi + rcx], 0
			je		result
			mov		dh, BYTE[rdi + rcx]
			cmp		dh, BYTE[rsi + rcx]
			je		incr

result:		movzx	rax, BYTE[rdi + rcx]
			movzx	rdx, BYTE[rsi + rcx]
			sub		rax, rdx

end:		ret