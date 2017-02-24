;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 19:43:37 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:24:48 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global	_ft_strlen

section	.text

_ft_strlen:
		push rdi
		mov rcx, -1
		xor	al, al
		cld
		repne scasb
		mov	rax, -2
		sub	rax, rcx
		pop	rdi
		ret