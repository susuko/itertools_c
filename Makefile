
NAME = main
SRCS = main.c darr.c darr_iter.c elem.c filter.c foreach.c get_next_line.c iter.c map.c range.c reduce.c sort.c str.c
OBJS = $(SRCS:.c=.o)

CC = gcc
RM = rm -f

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: $(NAME) all clean fclean re
