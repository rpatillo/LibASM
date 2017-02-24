;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 18:41:16 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:06:32 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text

global	_ft_toupper
extern	_ft_islower

_ft_toupper:
		call	_ft_islower
		cmp		rax, 0
		je		_return
		sub		rdi, 32

_return:
		mov		rax, rdi
		ret