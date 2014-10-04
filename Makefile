all: decompilation

decompilation:
	texi2pdf -q -c $@.tex

clean:
	rm -f *.aux *.log *.out *.toc
