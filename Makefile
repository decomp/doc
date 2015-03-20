all: decompilation

decompilation: inc
	texi2pdf -q -c $@.tex

word:
	latex decompilation
	bibtex decompilation
	latex decompilation
	latex decompilation
	pdflatex decompilation

.PHONY: clean inc

inc:
	make -C $@/

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.dvi sections/*.aux
