# *.dot -> *.png
DOT = $(wildcard *.dot)
PNG = $(DOT:.dot=.png)

all: $(PNG) printf.o

%.png: %.dot
	dot -Gdpi=300 -Tpng -o $@ $<

printf.o: printf.c
	gcc -m32 -c -fno-stack-protector -o $@ $<
