;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/14 10:58:35 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:05:53 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%define	STDOUT	1
%define	WRITE	0x2000004

section .data
	nullstr		db	"(null)", 10

section .rodata
	endlstr		db	10

section .text
	extern _ft_strlen
	global _ft_puts

_ft_puts:
		cmp		rdi, 0
		je		.null_string
		push	rdi
		call	_ft_strlen
		mov		rdx, rax
		pop		rsi
		mov		rdi, STDOUT
		mov		rax, WRITE
		syscall
		lea		rsi, [rel endlstr]
		mov		rax, WRITE
		mov		rdx, 1
		syscall
		ret
	.null_string:
		mov		rdi, STDOUT
		lea		rsi, [rel nullstr]
		mov		rdx, 7
		mov		rax, WRITE
		syscall
		ret
