;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strclr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/14 11:29:14 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:29:18 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
		extern _ft_strlen
		global _ft_strclr

_ft_strclr:
		push rdi
		cmp rdi, 0
		je .return
		call _ft_strlen
		mov rcx, rax
		xor al, al
		cld
		rep stosb

.return:
		pop rdi
		ret