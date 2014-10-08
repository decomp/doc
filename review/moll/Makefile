all: moll

moll: graphs
	texi2pdf -q -c $@.tex

graphs: for-loop if

for-loop:
	dot -Tpng -o inc/$@.png inc/$@.dot

if:
	dot -Tpng -o inc/$@.png inc/$@.dot

clean:
	rm -f *.aux *.log *.out *.toc
