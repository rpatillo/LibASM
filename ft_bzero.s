;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 19:38:09 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:05:05 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global	_ft_bzero

section	.text

_ft_bzero:
		cmp	rsi, 0
		je	_return
		mov [rdi], byte 0
		dec	rsi
		inc	rdi
		jmp	_ft_bzero

_return:
		ret