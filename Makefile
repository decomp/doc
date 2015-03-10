all: decompilation

decompilation: inc
	texi2pdf -q -c $@.tex

.PHONY: clean inc

inc:
	make -C $@/

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg sections/*.aux
