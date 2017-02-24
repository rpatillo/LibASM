;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 18:00:50 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:06:05 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section	.text

global	_ft_isalnum
extern	_ft_isdigit
extern	_ft_isalpha

_ft_isalnum:
		call	_ft_isdigit
		cmp		rax, 1
		je		_return
		call	_ft_isalpha

_return:
		ret