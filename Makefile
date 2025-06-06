NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
SRC = ft_atoi.c \
      ft_bzero.c \
      ft_calloc.c \
      ft_isalnum.c \
      ft_isalpha.c \
      ft_isascii.c \
      ft_isdigit.c \
      ft_isprint.c \
      ft_memchr.c \
      ft_memcmp.c \
      ft_memcpy.c \
      ft_memmove.c \
      ft_memset.c \
      ft_strchr.c \
	  ft_strrchr.c \
      ft_strdup.c \
      ft_strjoin.c \
      ft_strlcat.c \
      ft_strlcpy.c \
      ft_strlen.c \
      ft_strncmp.c \
      ft_strnstr.c \
      ft_substr.c \
      ft_tolower.c \
      ft_toupper.c \
      ft_strtrim.c \
      ft_split.c \
      ft_itoa.c \
      ft_strmapi.c \
      ft_striteri.c \
      ft_putchar_fd.c \
      ft_putstr_fd.c \
      ft_putendl_fd.c \
      ft_putnbr_fd.c \

BONUS = ft_lstnew.c \
        ft_lstadd_front.c \
        ft_lstsize.c \
        ft_lstlast.c \
        ft_lstadd_back.c \
        ft_lstdelone.c \
        ft_lstclear.c \
        ft_lstiter.c \
        ft_lstmap.c


OBJ = $(SRC:.c=.o)
B_OBJ = $(BONUS:.c=.o)
RM = rm -rf

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@$(RM) $(OBJ) $(B_OBJ)

fclean: clean
	@$(RM) $(NAME)

re: fclean all

bonus: $(B_OBJ)
	make
	@ar rcs $(NAME) $(B_OBJ)

.PHONY: all bonus clean fclean re
