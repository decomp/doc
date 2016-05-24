C_SRC=$(wildcard *.c)
LL_SRC=$(C_SRC:.c=.ll)

all: $(LL_SRC)

%.ll: %.c
	clang -S -emit-llvm -o $@ $<
	opt -S --mem2reg -o $@ $@
	sar -i '^; ModuleID(.|[\n])*define' 'define' $@
	sar -i '#[0-9]+ {' '{' $@
	sar -i '}\n\nattributes(.|[\n])*' '}\n' $@
