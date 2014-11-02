all: decompilation

decompilation: graphs
	texi2pdf -q -c $@.tex

graphs: inc/modules_overview.png

inc/modules_overview.png:
	dot -Tpng -o inc/modules_overview.png inc/modules_overview.dot

clean:
	rm -f *.aux *.log *.out *.toc
