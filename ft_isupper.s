;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 18:38:52 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:04:24 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global	_ft_isupper

section .text

_ft_isupper:
		mov rax, 1
		cmp rdi, 'A'
		jb	_return
		cmp	rdi, 'Z'
		ja	_return
		ret

_return:
		mov rax, 0
		ret