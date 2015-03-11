# *.dot -> *.png
DOT=$(wildcard *.dot)
PNG=$(DOT:.dot=.png)

# *.eps -> *.pdf
EPS=$(wildcard *.eps)
PDF=$(EPS:.eps=.pdf)

all: $(PNG) $(PDF)

%.png: %.dot
	dot -Tpng -o $@ $<

%.pdf: %.eps
	epstopdf $<
