all: type_analysis.pdf

%.pdf: %.tex
	latexrun $<

.PHONY: clean

clean:
	rm -rf latex.out
