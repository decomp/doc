all: compositional_decompilation.pdf book.pdf

# TODO: Fix
#    $ make -C inc/
# It currently requires bin_descend

#compositional_decompilation.pdf: inc

%.pdf: %.tex
	latexrun $<

.PHONY: clean inc

inc:
	make -s -C $@/

clean:
	rm -rf latex.out
