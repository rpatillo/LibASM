;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 19:48:24 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:05:20 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text

global	_ft_memset

_ft_memset:
		mov		rcx, rdx
		mov		rax, rsi
		push	rdi
		rep		stosb
		pop		rax
		ret