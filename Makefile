# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jsilance <jsilance@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/09 15:33:05 by jsilance          #+#    #+#              #
#    Updated: 2020/12/01 02:31:43 by jsilance         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

CC = nasm -f elf64

OBJ = $(SRC:.s=.o)

${NAME}: ${OBJ}
	@ar rc ${NAME} ${OBJ}

all: ${NAME}

%.o: %.s
	@${CC} -o $@ $?

clean:
	@rm -f ${OBJ}

fclean: clean
	@rm -f $(NAME)
	@rm -f a.out

re: fclean all

test: re
	@gcc main.c ${NAME} && ./a.out