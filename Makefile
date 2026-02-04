# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    MakeFile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aurele <aurele@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/02/04 23:54:20 by aurele            #+#    #+#              #
#    Updated: 2026/02/05 00:05:56 by aurele           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS            =   ft_printf.c ft_put.c ft_utils.c
					 
OBJS            = $(SRCS:.c=.o)

CC                = cc
RM                = rm -f
CFLAGS            = -Wall -Wextra -Werror

NAME            = libftprintf.a


all:            $(NAME)


$(NAME):        $(OBJS)
				ar rcs $(NAME) $(OBJS)

%.o:%.c ft_printf.h
				$(CC) $(CFLAGS) -c $< -o $@
clean:
				$(RM) $(OBJS) $(OBJS_BNS)

fclean:            clean
				$(RM) $(NAME)

re:             fclean $(NAME)


.PHONY:            all clean fclean re bonus