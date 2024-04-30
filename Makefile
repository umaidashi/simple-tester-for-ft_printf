# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yoishi <yoishi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/30 19:37:32 by yoishi            #+#    #+#              #
#    Updated: 2024/04/30 20:43:19 by yoishi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Change to your ft_printf project path
# / is not needed at the end
LIBFTPRINTF_DIR := ..

# configs
TEST_CONTENT_FILE := main.c
LIBPRINTF := $(LIBFTPRINTF_DIR)/libftprintf.a
CFLAGS := -Wno-format
DIFF_FLAGS := -a -U 1 --color
PRINTF_EXECTABLE := printf
FTPRINTF_EXECTABLE := ft_printf
DIFF_FILE := diff.txt
PRINTF_RESULT_FILE := printf_result.txt
FTPRINTF_RESULT_FILE := ft_printf_result.txt

# colors
DEF_COLOR = \033[0;39m
GREEN = \033[0;92m
MAGENTA = \033[0;95m

test:
	@make title
	@make -C $(LIBFTPRINTF_DIR)
	@echo "$(GREEN)-----------------------------------------"
	@echo "      Your ft_printf was compiled"
	@echo "-----------------------------------------$(DEF_COLOR)"
	@make bundle

testbonus:
	@make title
	@make -C $(LIBFTPRINTF_DIR) bonus
	@echo "$(GREEN)-----------------------------------------"
	@echo "   Your bonus ft_printf was compiled"
	@echo "-----------------------------------------$(DEF_COLOR)"
	@make bundle

bundle:
	@make compile
	@make exec
	@make diff

compile:
	@cc $(CFLAGS) $(TEST_CONTENT_FILE) -o $(PRINTF_EXECTABLE)
	@cc $(CFLAGS) $(TEST_CONTENT_FILE) $(LIBPRINTF) -D FT_PRINTF -o $(FTPRINTF_EXECTABLE)

exec:
	@./$(PRINTF_EXECTABLE) > $(PRINTF_RESULT_FILE)
	@./$(FTPRINTF_EXECTABLE) > $(FTPRINTF_RESULT_FILE)

diff:
	@diff $(DIFF_FLAGS) $(FTPRINTF_RESULT_FILE) $(PRINTF_RESULT_FILE) > $(DIFF_FILE) || true
	@diff $(DIFF_FLAGS) $(FTPRINTF_RESULT_FILE) $(PRINTF_RESULT_FILE) || true
# @rm -rf $(FTPRINTF_RESULT_FILE) $(PRINTF_RESULT_FILE)
	@rm -rf $(PRINTF_EXECTABLE) $(FTPRINTF_EXECTABLE)
	@echo "$(MAGENTA)=============FIN.=============$(DEF_COLOR)"

title:
	@echo
	@echo "███████╗██╗███╗   ███╗██████╗ ██╗     ███████╗    ████████╗███████╗███████╗████████╗███████╗██████╗ "
	@echo "██╔════╝██║████╗ ████║██╔══██╗██║     ██╔════╝    ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝██╔══██╗"
	@echo "███████╗██║██╔████╔██║██████╔╝██║     █████╗         ██║   █████╗  ███████╗   ██║   █████╗  ██████╔╝"
	@echo "╚════██║██║██║╚██╔╝██║██╔═══╝ ██║     ██╔══╝         ██║   ██╔══╝  ╚════██║   ██║   ██╔══╝  ██╔══██╗"
	@echo "███████║██║██║ ╚═╝ ██║██║     ███████╗███████╗       ██║   ███████╗███████║   ██║   ███████╗██║  ██║"
	@echo "╚══════╝╚═╝╚═╝     ╚═╝╚═╝     ╚══════╝╚══════╝       ╚═╝   ╚══════╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝"
	@echo "███████╗ ██████╗ ██████╗     ███████╗████████╗     ██████╗ ██████╗ ██╗███╗   ██╗████████╗███████╗   "
	@echo "██╔════╝██╔═══██╗██╔══██╗    ██╔════╝╚══██╔══╝     ██╔══██╗██╔══██╗██║████╗  ██║╚══██╔══╝██╔════╝   "
	@echo "█████╗  ██║   ██║██████╔╝    █████╗     ██║        ██████╔╝██████╔╝██║██╔██╗ ██║   ██║   █████╗     "
	@echo "██╔══╝  ██║   ██║██╔══██╗    ██╔══╝     ██║        ██╔═══╝ ██╔══██╗██║██║╚██╗██║   ██║   ██╔══╝     "
	@echo "██║     ╚██████╔╝██║  ██║    ██║        ██║███████╗██║     ██║  ██║██║██║ ╚████║   ██║   ██║        "
	@echo "╚═╝      ╚═════╝ ╚═╝  ╚═╝    ╚═╝        ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝        "
	@echo

.PHONY: test testbonus bundle compile exec diff title
