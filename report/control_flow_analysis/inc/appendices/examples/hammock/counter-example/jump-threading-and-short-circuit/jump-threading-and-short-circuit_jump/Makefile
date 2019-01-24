# *.dot -> *.png
DOT = $(wildcard *.dot)
PNG = $(DOT:.dot=.png)

all: $(PNG)

%.png: %.dot
	dot -Gdpi=150 -Tpng -o $@ $<
	convert $@ -background White -gravity center -extent 550x1350 $@
