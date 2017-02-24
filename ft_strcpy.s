;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 19:54:29 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:04:32 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text

global _ft_strcpy
extern _ft_strlen
extern _ft_memcpy

_ft_strcpy:
		push	rdi
		mov		rdi, rsi
		call	_ft_strlen
		inc		rax
		mov		rdx, rax
		pop		rdi
		call	_ft_memcpy
		ret