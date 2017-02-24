;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/14 10:18:01 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:05:41 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define SYS_READ			3
%define SYS_WRITE			4
%define BUFF_SIZE			4096

section .data
	BUFFER times BUFF_SIZE db 0

section .text
	global _ft_cat

_ft_cat:
		push	rdx
		push	rsi
		push	rdi
		lea		rsi, [rel BUFFER]
	.read:
		mov		rdx, BUFF_SIZE
		pop		rdi
		push	rdi
		mov		rax, MACH_SYSCALL(SYS_READ)
		syscall
		jc		.end
		cmp		rax, 0
		jle		.end
	.write:
		mov		rdx, rax
		mov		rdi, STDOUT
		mov		rax, MACH_SYSCALL(SYS_WRITE)
		syscall
		jc		.end
		jmp		.read
	.end:
		pop		rdi
		pop		rsi
		pop		rdx
		ret
