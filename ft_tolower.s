;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 18:46:19 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:05:58 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


section .text

global	_ft_tolower
extern	_ft_isupper

_ft_tolower:
		call	_ft_isupper
		cmp		rax, 0
		je		_return
		add		rdi, 32

_return:
		mov		rax, rdi
		ret