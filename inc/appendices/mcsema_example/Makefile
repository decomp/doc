C_SRC=$(wildcard *.c)
OBJ=$(C_SRC:.c=.o)
CFG=$(OBJ:.o=.cfg)
CFG_TXT=$(CFG:.cfg=_cfg.txt)
BC=$(CFG:.cfg=.bc)
LL_SRC=$(BC:.bc=.ll)

all: $(OBJ) $(CFG) $(CFG_TXT) $(BC) $(LL_SRC)

%.o: %.c
	clang -m32 -c -o $@ $<

%.cfg: %.o
	bin_descend -d -entry-symbol=main -i=$<

%_cfg.txt: %.cfg
	protoc --decode Module CFG.proto < $< > $@

%.bc: %.cfg
	cfg_to_bc -i=$< -driver=foo,main,2,return,C -o $@

%.ll: %.bc
	llvm-dis $<
	opt -O3 -S -o $@ $@

.PHONY: clean

clean:
	rm -rf *.o *.cfg *_cfg.txt *.ll *.bc
