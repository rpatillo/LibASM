;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isspace.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 19:34:27 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:11:22 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
		global _ft_isspace

_ft_isspace:
		mov rax, 1
		cmp rdi, 32
		jne .otherspace
		ret

.otherspace:
		cmp rdi, 9
		jb .return
		cmp rdi, 13
		ja .return
		ret

.return:
		mov rax, 0
		ret