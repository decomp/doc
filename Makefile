all: pdf

pdf: inc
	texi2pdf -q -c decompilation.tex

word:
	latex decompilation
	bibtex decompilation
	latex decompilation
	latex decompilation
	pdflatex decompilation
	latex2rtf decompilation

.PHONY: clean inc

inc:
	make -C $@/

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.dvi *.rtf *.bcf *.run.xml sections/*.aux
