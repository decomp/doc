all: poster

poster: inc
	texi2pdf -I ../ -c -q $@.tex

.PHONY: clean inc

inc:
	make -C $@/

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg
