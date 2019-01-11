all: presentation.pdf

%.pdf: %.tex
	latexrun --latex-cmd=xelatex -o $@ $<
	# NOTE: run twice to fix page numbers.
	latexrun --latex-cmd=xelatex -o $@ $<

.PHONY: clean

clean:
	rm -rf latex.out
