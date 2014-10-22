all: decompilation

decompilation: graphs
	texi2pdf -q -c $@.tex

graphs: inc/overview.png

inc/overview.png:
	dot -Tpng -o inc/overview.png inc/overview.dot

clean:
	rm -f *.aux *.log *.out *.toc
