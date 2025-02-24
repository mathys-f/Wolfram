##
## EPITECH PROJECT, 2025
## Makfile
## File description:
## Makefile
##

.PHONY: all clean fclean re unit_tests tests_run

NAME = wolfram

BUILD_DIR = $(shell stack path --local-install-root)

all:
	stack build
	cp $(BUILD_DIR)/bin/$(NAME) .

clean:
	stack clean

fclean: clean
	stack clean --full
	rm -f $(NAME)

re: fclean all

unit_tests:
	stack test

tests_run: unit_tests
