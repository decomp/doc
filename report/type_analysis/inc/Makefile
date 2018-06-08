# *.dot -> *.png
DOT=$(wildcard *.dot)
PNG=$(DOT:.dot=.png)

# *.c -> *.o
SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)

all: $(PNG) $(OBJ)

%.png: %.dot
	dot -Gdpi=300 -Tpng -o $@ $<

%.o: %.c
	gcc -fno-exceptions -m32 -c -fno-pic -fno-stack-protector -o $@ $<

struct.o: struct.c
	gcc -fno-exceptions -O3 -m32 -c -fno-pic -fno-stack-protector -o $@ $<
