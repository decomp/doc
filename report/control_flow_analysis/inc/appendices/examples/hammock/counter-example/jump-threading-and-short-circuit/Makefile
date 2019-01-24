all: jump-threading-and-short-circuit.ll jump-threading-and-short-circuit.ll jump-threading-and-short-circuit_dbg.ll jump-threading-and-short-circuit_jump_dbg.ll jump-threading-and-short-circuit_jump

%.ll: %.c
	clang -S -emit-llvm -o $@ $<

%_dbg.ll: %.c
	clang -g -S -emit-llvm -o $@ $<

%_jump.ll: %.ll
	sar -i "optnone " "" $<
	opt -S -jump-threading -o $@ $<

%_jump_dbg.ll: %_dbg.ll
	sar -i "optnone " "" $<
	opt -S -jump-threading -o $@ $<

jump-threading-and-short-circuit_jump: jump-threading-and-short-circuit_jump.ll
	ll2dot2 -f $<
	restructure2 -steps jump-threading-and-short-circuit_jump_graphs/f.dot
	./fix_names.sh
	dot2png jump-threading-and-short-circuit_jump_graphs/*.dot
	cp -r jump-threading-and-short-circuit_jump_graphs jump-threading-and-short-circuit_jump

.PHONY: clean

clean:
	$(RM) -v *.ll
	$(RM) -v -r jump-threading-and-short-circuit_jump_graphs
	$(RM) -v -r jump-threading-and-short-circuit_jump
