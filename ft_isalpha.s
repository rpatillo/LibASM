;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 16:53:11 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:04:16 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text

global 	_ft_isalpha
extern	_ft_islower
extern	_ft_isupper

_ft_isalpha:
		call	_ft_islower
		cmp		rax, 1
		je		_return
		call	_ft_isupper

_return:
		ret