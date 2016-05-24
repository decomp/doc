all: poster.pdf

poster.tex: inc

%.pdf: %.tex
	latexmk -pdf $<
	latexmk -bibtex -c $<

.PHONY: clean inc

inc:
	make -C $@/

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.fls *.fdb_latexmk
