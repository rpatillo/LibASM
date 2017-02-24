;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 19:50:41 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:04:53 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text

global	_ft_memcpy

_ft_memcpy:
		mov		rcx, rdx
		push	rdi
		rep		movsb
		pop		rax
		ret