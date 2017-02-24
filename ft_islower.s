;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 18:24:59 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:05:47 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global	_ft_islower

section .text

_ft_islower:
		mov rax, 1
		cmp rdi, 'a'
		jb	_return
		cmp	rdi, 'z'
		ja	_return
		ret

_return:
		mov rax, 0
		ret