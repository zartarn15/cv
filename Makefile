NAME := cv

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	@rubber -m xelatex -W all $(NAME).tex

clean:
	@rm -f $(NAME).aux $(NAME).log $(NAME).out

distclean: clean
	@rm -f $(NAME).pdf

.PHONY: clean distclean
