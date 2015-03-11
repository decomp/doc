C_SRC=$(wildcard *.c)
LL_SRC=$(C_SRC:.c=.ll)
GO_SRC=$(LL_SRC:.ll=.go)

all: $(GO_SRC) $(LL_SRC)

%.go: $(LL_SRC)
	ll2go -f $<
	ll2gofix $@ ; echo $?
	@sar "\n\n" "\n" $@ > tmp_$@
	@mv tmp_$@ $@
	goimports -w $@

%.ll: %.c
	clang -S -emit-llvm -o $@ $<
	opt -S --mem2reg -o $@ $@
