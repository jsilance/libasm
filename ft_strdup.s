            global	ft_strdup
extern	__errno_location
extern	ft_strlen
extern	malloc
extern	strcpy

ft_strdup:	xor		rax, rax
			xor		r8, r8
			cmp		rdi, 0
			je		error
			call	ft_strlen WRT ..plt
			mov		rcx, rax
			inc		rcx
			push	rdi
			mov		rdi, rcx

memal:		call	malloc WRT ..plt
			jc		error
			mov		r8, rax

cpy:		pop		rsi
			mov		rdi, r8
			call	strcpy WRT ..plt
			ret

error:		call	__errno_location WRT ..plt
			mov		rax, 0
			ret