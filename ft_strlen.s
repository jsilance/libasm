			global	ft_strlen

ft_strlen:	xor		rcx, rcx
			xor		rax, rax

count:		cmp		BYTE[rdi + rcx], 0
			je		end
			inc		rcx
			jmp		count

end:		mov		rax, rcx
			ret
