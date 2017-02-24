;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 17:31:47 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:05:14 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isdigit

section .text

_ft_isdigit:
		mov rax, 1
		cmp rdi, '0'
		jb	_return
		cmp rdi, '9'
		ja	_return
		ret

_return:
		mov rax, 0
		ret