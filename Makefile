##
## EPITECH PROJECT, 2023
## ProjectDay03
## File description:
## test
## test
##

CC = gcc
CFLAGS = -Wall -Wextra -g3
FLAGS = -lm -lcsfml-graphics -lcsfml-audio -lcsfml-system -lcsfml-window
EXEC = my_paint
SRC_FILES = $(wildcard *.c)
OBJ_FILES = $(SRC_FILES:.c=.o)

all: 

$(EXEC): $(OBJ_FILES)
	@($(CC) -o $(EXEC) $^ $(FLAGS) )
	@(echo "Éxecutable compilé")

%.o: %.c
	@($(CC) -o $@ -c $< $(CFLAGS) -w)
	@(echo "Fichiers .o compilés")

.PHONY: clean fclean

clean:
	# @(rm -f libmy.a)
	# @(rm -f *.o $(OBJ_FILES))
	# @(make fclean -C lib/my)
	# @(echo "Fichiers .o supprimés")

fclean: clean
	@(rm -f $(EXEC))
	@(echo "Éxecutable supprimé")

run:$(EXEC)
	@(./$(EXEC))

code: fclean
	@(~/coding-style-checker/coding-style.sh . .)
	@(cat coding-style-reports.log)

re :	fclean all
