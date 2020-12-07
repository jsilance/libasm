            global  ft_write
extern	__errno_location

ft_write:	mov     rax, 1
			syscall
			cmp		rax, 0
			jl		error
			ret

error:      neg		rax
			push	rax
			pop		r8
			call    __errno_location WRT ..plt
			mov		[rax], r8
			mov     rax, -1
			ret