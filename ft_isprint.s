;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 18:49:09 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:06:12 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text

global	_ft_isprint

_ft_isprint:
		mov rax, 1
		cmp	rdi, 32
		jb	_return
		cmp	rdi, 126
		ja	_return
		ret

_return:
		mov rax, 0
		ret