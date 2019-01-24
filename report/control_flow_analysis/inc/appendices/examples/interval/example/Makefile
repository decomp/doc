all: sample.ll sample_jump.ll

%.ll: %.c
	clang -S -emit-llvm -o $@ $<

%_mem2reg.ll: %.ll
	sar -i "optnone " "" $<
	opt -S -mem2reg -o $@ $<

%_jump.ll: %.ll
	sar -i "optnone " "" $<
	opt -S -jump-threading -o $@ $<

.PHONY: clean

clean:
	$(RM) -v *.ll
