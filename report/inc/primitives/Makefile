DOT = $(wildcard *.dot)
PNG = $(DOT:.dot=.png)

all: $(PNG)

%.png: %.dot
	dot -Gdpi=300 -Tpng -o $@ $<
