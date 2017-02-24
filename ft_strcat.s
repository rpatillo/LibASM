;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/13 19:58:17 by rpatillo          #+#    #+#              ;
;    Updated: 2015/06/14 11:06:21 by rpatillo         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text

extern _ft_strlen
extern _ft_strcpy
global _ft_strcat

_ft_strcat:
		push	rdi
		call	_ft_strlen
		lea		rdi, [rdi + rax]
		call	_ft_strcpy
		pop		rax
		ret