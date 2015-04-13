clang_example: example1.ll

example1.ll: example1.c
	clang -S -emit-llvm -o $@ $<
	opt --mem2reg -S -o $@ $@
	sar -i '^; ModuleID(.|[\n])*define' 'define' $@
	sar -i '#0 {' '{' $@
	sar -i '}(.|[\n])*' '}\n' $@
	sar -i '[ ]*; pred.*\n' '\n' $@
