##
## EPITECH PROJECT, 2025
## Makfile
## File description:
## Makefile
##

.PHONY: all clean fclean re unit_tests tests_run

NAME = wolfram

BUILD_DIR = $(shell stack path --local-install-root)

USER_RIGHT = --allow-different-user

all:
	stack build $(USER_RIGHT)
	cp $(BUILD_DIR)/bin/$(NAME) .

clean:
	stack clean $(USER_RIGHT)

fclean: clean
	stack clean --full $(USER_RIGHT)
	rm -f $(NAME)

re: fclean all

unit_tests:
	stack test $(USER_RIGHT)

tests_run: unit_tests
