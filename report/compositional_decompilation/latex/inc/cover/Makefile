all: cover.pdf

%.pdf: %.tex
	latexmk -pdf $<
	latexmk -bibtex -c $<
