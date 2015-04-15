C_SRC=$(wildcard *.c)
LL_SRC=$(C_SRC:.c=.ll)
GO_SRC=$(LL_SRC:.ll=.go)

all: $(GO_SRC) $(LL_SRC)

%.go: $(LL_SRC)
	ll2go -f $<
	go-post $@
	sar -i "\n\n" "\n" $@
	goimports -w $@

%.ll: %.c
	clang -S -emit-llvm -o $@ $<
	opt -S --mem2reg -o $@ $@
	sar -i '^; ModuleID(.|[\n])*define' 'define' $@
	sar -i '#[0-9]+ {' '{' $@
	sar -i '}\n\nattributes(.|[\n])*' '}\n' $@

.PHONY: clean

clean:
	rm -rf *.go *.ll *_graphs/
