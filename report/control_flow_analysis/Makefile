all: control_flow_analysis.pdf

# TODO: remove
interval:
	latexrun 3_2_interval.tex

%.pdf: %.tex
	latexrun $<

.PHONY: clean

clean:
	rm -rf latex.out
