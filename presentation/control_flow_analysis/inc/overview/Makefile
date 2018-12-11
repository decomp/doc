all: overview.ll

%.ll: %.c
	clang -S -emit-llvm -Xclang -disable-O0-optnone -o $@ $<
	opt -S -mem2reg -o $@ $@
