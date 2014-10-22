all: moll

moll: graphs
	texi2pdf -q -c $@.tex

graphs: inc/for-loop.png inc/if.png

inc/for-loop.png:
	dot -Tpng -o inc/for-loop.png inc/for-loop.dot

inc/if.png:
	dot -Tpng -o inc/if.png inc/if.dot

clean:
	rm -f *.aux *.log *.out *.toc
