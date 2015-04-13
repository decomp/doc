all: example1_graphs/main.png

example1_graphs/main.dot: example1.ll
	ll2dot -f $<
	sar -i '\n\n' '\n' $@
	sar -i ';' '' $@
	sar -i '[[]' ' [' $@
	sar -i '  ' ' ' $@
	sar -i ' label=([a-z]+) ' 'label=\"$${1}\"' $@

example1_graphs/main.png: example1_graphs/main.dot
	dot -Tpng -o $@ $<
