#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/13 16:57:28 by rpatillo          #+#    #+#              #
#    Updated: 2015/06/14 12:30:57 by rpatillo         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libfts.a

FLAG = -f macho64

ASM = nasm

SRCS =	ft_bzero.s \
		ft_strcat.s \
		ft_isalpha.s \
		ft_isdigit.s \
		ft_isalnum.s \
		ft_isascii.s \
		ft_isprint.s \
		ft_toupper.s \
		ft_tolower.s \
		ft_puts.s \
		ft_strlen.s \
		ft_memset.s \
		ft_memcpy.s \
		ft_strdup.s \
		ft_cat.s \
		ft_islower.s \
		ft_isupper.s \
		ft_strcpy.s \
		ft_isspace.s \
		ft_strclr.s \

OBJS = $(SRCS:.s=.o)

RM = rm -f

all : $(NAME)

$(NAME): $(OBJS)
		@ar rc $(NAME) $(OBJS)
		@ranlib $(NAME)
		@echo "		libASM by rpatillo"
		@echo ""
		@echo "		Make test to create ./testasm & test it !"

%o:%s
		@nasm $(FLAG) $<

clean:
		@$(RM) $(OBJS)

fclean: clean
		@$(RM) $(NAME)
		@$(RM) testasm

re:		fclean all

test:
	gcc -Wall -Werror -Wextra main.c libfts.a -o testasm
	./testasm

.PHONY: all clean fclean re