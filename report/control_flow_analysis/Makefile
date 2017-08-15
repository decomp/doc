all: control_flow_analysis.pdf

%.pdf: %.tex
	latexrun $<

.PHONY: clean

clean:
	rm -rf latex.out
