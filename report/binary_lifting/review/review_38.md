Review notes.

## Idea

Use LLVM IR, a robust and well-tested IR for compilers, as IR for machine code.

## Conclusion

MC-Semantics approach to translation **is suitable** for lifting functions from binaries.

The output LLVM IR can be used with *symbolic execution* engines such as **KLEE** (KLEE can automatically produce test cases with high coverage), although for MC-Semantics the output _assembly stubs_ handling calling conventions have to be removed manually.

By manually rewriting the assembly stubs to corresponding LLVM IR, the author of the paper managed to solve a crackme using KLEE on the lifted LLVM IR output, where the "password" variable of the crackme was marked as a symbolic variable and then KLEE was run to produce test cases that has a high coverage (whether the coverage is complete or just high is not mentioned in the paper); i.e. it tries to exhaust the control flow graph search space based on symbolic input values. Using KLEE made a combinatorial problem that would be impossible to solve through brute force solvable using symbolic execution.

LLVM IR could also server as a basis for implementing a decompiler.

### MC-Semantics

MC-Semantics lifts binaries to LLVM IR in two steps.

First a CFG of the assembly is generated using one of several external tools (e.g. IDA, Binary Ninja). The CFG is stored in Protocol buffer format and is the input to the second step which translates each instruction to equivalent LLVM IR. MC-Semantics models CPU state changes by passing a `%RegState` structure as the single argument to each function. The lifted functions then read register values from and stores register values to the `%RegState` structure. The lifted functions have to return value but instead, the caller reads from the `%RegState` structure as well to determine the values of return parameters (e.g. changes to `rax`).

Jump tables (as produced by switch statements) are lifted to an array of function pointers, where a function is generated for each switch case. Why the LLVM IR instruction and language concept [switch}(https://llvm.org/docs/LangRef.html#switch-instruction) is not used is not mentioned in the paper.

At least at the time of the writing of the paper, the implementation of jump table recovery in MC-Semantics was buggy, such that when recompiling the recovered LLVM IR, the output binary would crash with a segmentation fault when executed.

To handle invocation of external functions, assembly stubs are generated for the respective calling convention, with an `__mcsema_attach_call`  assembly function which stores the corresponding registers to the `%RegState` structure, and an associate `__mcsema_dettach_ret` assembly function which returns control flow and copies native return registers to the corresponding `%RegState` structure register fields.

Limiting factors identified with MC-Semantics were that it generates a large amount of boilerplate code for the lifted LLVM IR output. This decreases readability. The LLVM optimizer could remove some of the unnecessary instructions in the output LLVM IR, but not everything.

Moreover, the local variables and function parameters were not recovered, as MC-Semantics models CPU state changes by passing a pointer to a `%RegState` structure to functions, and all local variables, function parameters, and return values are captured implicitly by updates to this structure.

MC-Semantics does not support self-modifying code, not exceptions (at least at the time of writing of the paper, 2017).

It does support lifting 32- and 64-bit x86 binaries to LLVM IR, and support most commonly used instructions, including FPU and SSE instructions, but there are also several instructions missing.

## Future

To solve the outlined problems, post-processing passes can be implemented to successively make the IR higher-level by adding analysis passes to recover local variables, function parameters and function return values explicitly.

Another future direction outlined in the paper would be to implement a decompiler based on LLVM IR that generates code with high readability.

Mentioned in passing is also a comparison between MC-Semantics and Remill, both developed by the IT-security company Trail of Bits, where MC-Semantics identifies functions in the input assembly and lifts them to corresponding LLVM IR functions, whereas Remill models each basic block in assembly as an LLVM IR function. The Remill output is better suited for dynamic program analysis tasks (such as symbolic execution).

GitHub repo for Python API on top of MC-Semantics developed by the author of the paper: https://github.com/thestr4ng3r/mcsema

For using KLEE with LLVM IR , there are also two blog posts mentioned:
* https://blog.trailofbits.com/2014/11/25/close-encounters-with-symbolic-execution/
* https://blog.trailofbits.com/2014/12/04/close-encounters-with-symbolic-execution-part-2/
