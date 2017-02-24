;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/14 11:01:48 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:04:59 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy
	global _ft_strdup

_ft_strdup:
		push	rdi
		call	_ft_strlen
		mov		rdi, rax
		inc		rdi
		call	_malloc
		cmp		rax, 0
		jz		.return
		pop		rsi
		dec		rdi
		mov		rcx, rdi
		mov		rdi, rax
		call	_ft_strcpy
		ret
	.return:
		pop rdi
		ret
