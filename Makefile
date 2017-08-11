CC	= csc

RM	= rm -rf

NAME	= img

SRCS	= src/main.scm

OBJS	= $(SRCS:.scm=.o)

%.o: %.scm
	csc -c $< -o $@ $(CHICKENFLAGS)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS) *~

fclean: clean
	$(RM) $(NAME)

#TODO(carlendev): add test

re: fclean all

.PHONY: clean fclean re all
