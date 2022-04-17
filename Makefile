FLAGS = -Wall -Wextra -Werror
NAME = libft.a
HEADER = libft.h
SRC = ft_strlen.c ft_memset.c ft_bzero.c ft_isdigit.c ft_isalpha.c ft_isalnum.c ft_toupper.c \
ft_tolower.c ft_strchr.c ft_strrchr.c ft_strlcpy.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_memcpy.c \
ft_memccpy.c ft_isascii.c ft_isprint.c ft_isspace.c ft_memmove.c ft_strlcat.c ft_strnstr.c ft_atoi.c ft_calloc.c \
ft_strdup.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_itoa.c ft_substr.c ft_strjoin.c\
ft_strtrim.c ft_putnbr_fd.c ft_split.c ft_strmapi.c ft_strcmp.c ft_begins_with.c ft_ends_with.c
BNSRC = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c\
ft_lstclear.c ft_lstiter.c
OBJ = $(SRC:.c=.o)
BNOBJ = $(BNSRC:.c=.o)
all: $(NAME)

%.o: %.c $(HEADER)
	gcc $(FLAGS) -c $< -o $@

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ) $(BNOBJ)

fclean:	clean
	/bin/rm -f $(NAME)

re: fclean all

bonus: $(NAME) $(BNOBJ)
	ar rcs $(NAME) $(BNOBJ)
	ranlib $(NAME)

.PHONY: all clean fclean re bonus
