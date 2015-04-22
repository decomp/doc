C_SRC=$(wildcard *.c)
OBJ=$(C_SRC:.c=.o)
LL_SRC=$(OBJ:.o=.ll)

all: $(OBJ) $(LL_SRC)

# NOTE: Dagger seems to have better support for Mach-o files than ELF files. Use
# precompiled hello.o file for now. Generated using gcc on Sam's Mac :)
#
# TODO: Enable clang rule when Dagger has better support for ELF files.
#
%.o: %.c
#	clang -c -o $@ $<

# NOTE: The latest version of Dagger (4cc033f8bedfd76d94a9c32aef01cd1c3abd741e)
# generates LLVM IR which is not valid in LLVM 3.6. The optimiser of the Dagger
# release has therefore been used instead of the one installed on the system.
#
# TODO: Enable the decompilation and optimization rule when Dagger produces
# valid LLVM IR for LLVM 3.6.
%.ll: %.o
#	llvm-dec $< > $@
#	opt -O3 -S -o $@ $@

.PHONY: clean

# TODO: Remove *.o files when the precompiled binary is no longer needed.
# TODO: Remove *.ll files when the optimised LLVM IR is no longer needed.
clean:
#	rm -rf *.o *.ll
