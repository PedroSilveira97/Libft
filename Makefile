NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror -I .
SRC =	Source/ft_atoi.c \
		Source/ft_bzero.c \
		Source/ft_calloc.c \
		Source/ft_isalnum.c \
		Source/ft_isalpha.c \
		Source/ft_isascii.c \
		Source/ft_isdigit.c \
		Source/ft_isprint.c \
		Source/ft_memchr.c \
		Source/ft_memcmp.c \
		Source/ft_memcpy.c \
		Source/ft_memmove.c \
		Source/ft_memset.c \
		Source/ft_strchr.c \
		Source/ft_strrchr.c \
		Source/ft_strdup.c \
		Source/ft_strjoin.c \
		Source/ft_strlcat.c \
		Source/ft_strlcpy.c \
		Source/ft_strlen.c \
		Source/ft_strncmp.c \
		Source/ft_strnstr.c \
		Source/ft_substr.c \
		Source/ft_tolower.c \
		Source/ft_toupper.c \
		Source/ft_strtrim.c \
		Source/ft_split.c \
		Source/ft_itoa.c \
		Source/ft_strmapi.c \
		Source/ft_striteri.c \
		Source/ft_putchar_fd.c \
		Source/ft_putstr_fd.c \
		Source/ft_putendl_fd.c \
		Source/ft_putnbr_fd.c \

BONUS =	Bonus/ft_lstnew.c \
		Bonus/ft_lstadd_front.c \
		Bonus/ft_lstsize.c \
		Bonus/ft_lstlast.c \
		Bonus/ft_lstadd_back.c \
		Bonus/ft_lstdelone.c \
		Bonus/ft_lstclear.c \
		Bonus/ft_lstiter.c \
		Bonus/ft_lstmap.c


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

bonus:
	@$(MAKE) $(NAME)
	@$(MAKE) $(B_OBJ)
	@ar rcs $(NAME) $(B_OBJ)

.PHONY: all bonus clean fclean re
