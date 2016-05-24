# *.dot -> *.png
DOT = $(wildcard *.dot)
PNG = $(DOT:.dot=.png)

all: $(PNG)
	# 1) $$ make prepare
	# 2) Manual edit of graphs to highlight subgraph to node merges in red.

%.png: %.dot
	dot -Gdpi=300 -Tpng -o $@ $<

prepare: stmt_0.png stmt_1.png stmt_2.png stmt_3.png stmt_4.png stmt_5.png

stmt_0.png: stmt_0.dot
	dot -Tpng -o $@ $<

stmt_1.png: stmt_1.dot
	dot -Tpng -o $@ $<

stmt_2.png: stmt_2.dot
	dot -Tpng -o $@ $<

stmt_3.png: stmt_3.dot
	dot -Tpng -o $@ $<

stmt_4.png: stmt_4.dot
	dot -Tpng -o $@ $<

stmt_5.png: stmt_5.dot
	dot -Tpng -o $@ $<

stmt_1.dot: stmt_0.dot
	merge -img -o stmt_1.dot pre_loop.dot $<
	sar -i '\n\n' '\n' $@
	sar -i '[[]' ' [' $@
	sar -i '  ' ' ' $@
	sar -i ' label=([a-z]+) ' 'label=\"$${1}\"' $@

stmt_2.dot: stmt_1.dot
	merge -img -o stmt_2.dot list.dot $<
	sar -i '\n\n' '\n' $@
	sar -i '[[]' ' [' $@
	sar -i '  ' ' ' $@
	sar -i ' label=([a-z]+) ' 'label=\"$${1}\"' $@

stmt_3.dot: stmt_2.dot
	merge -img -o stmt_3.dot if.dot $<
	sar -i '\n\n' '\n' $@
	sar -i '[[]' ' [' $@
	sar -i '  ' ' ' $@
	sar -i ' label=([a-z]+) ' 'label=\"$${1}\"' $@

stmt_4.dot: stmt_3.dot
	merge -img -o stmt_4.dot if_return.dot $<
	sar -i '\n\n' '\n' $@
	sar -i '[[]' ' [' $@
	sar -i '  ' ' ' $@
	sar -i ' label=([a-z]+) ' 'label=\"$${1}\"' $@

stmt_5.dot: stmt_4.dot
	merge -img -o stmt_5.dot if_else.dot $<
	sar -i '\n\n' '\n' $@
	sar -i '[[]' ' [' $@
	sar -i '  ' ' ' $@
	sar -i ' label=([a-z]+) ' 'label=\"$${1}\"' $@
