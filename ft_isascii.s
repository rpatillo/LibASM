;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 18:13:21 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:04:46 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global	_ft_isascii

section .text

_ft_isascii:
		mov	rax, 1
		cmp	rdi, 0
		jb	_return
		cmp	rdi, 127
		ja	_return
		ret

_return:
		mov rax, 0
		ret