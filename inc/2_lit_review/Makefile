# *.dot -> *.png
DOT = $(wildcard *.dot)
PNG = $(DOT:.dot=.png)

all: $(PNG) primitives

%.png: %.dot
	dot -Tpng -o $@ $<

.PHONY: primitives

primitives:
	make -C $@/
