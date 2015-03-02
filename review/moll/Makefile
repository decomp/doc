all: moll

moll: graphs
	texi2pdf -q -c $@.tex

graphs: inc/pre_loop.png inc/if.png

inc/pre_loop.png:
	dot -Tpng -o inc/pre_loop.png inc/pre_loop.dot

inc/if.png:
	dot -Tpng -o inc/if.png inc/if.dot

clean:
	rm -f *.aux *.log *.out *.toc
