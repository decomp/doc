# Design Documents

This repository contains design documents related to the decompilation pipeline of [decomp/decomp](https://github.com/decomp/decomp).

## Architecture of the Decompilation Pipeline

1. *paper* Compositional Decompilation using LLVM IR ([compositional_decompilation.pdf](https://github.com/decomp/doc/raw/master/report/compositional_decompilation/compositional_decompilation.pdf))
    - An overview of the compositional architecture used in the `decomp/decomp` decompilation pipeline.
2. *slides* Using LLVM for Decompilation and Binary Analysis ([intro.slide](http://talks.godoc.org/github.com/decomp/doc/talk/intro.slide))
    - Introductory talk providing an overview of the `decomp/decomp` decompilation pipeline (presented at LLVM Sweden Socials in Aug 2017).

## Control Flow Recovery

1. *paper* Evaluation of Methods for Effective Control Flow Recovery ([control_flow_recovery.pdf](https://github.com/decomp/doc/raw/master/report/control_flow_recovery/control_flow_recovery.pdf))
    - An evaluation of control flow recovery methods, outlining key ideas, showcasing strenghts and providing insight into failure modes.
2. *slides* Evaluation of Methods for Effective Control Flow Recovery ([cfa_presentation.pdf](https://github.com/decomp/doc/raw/master/presentation/control_flow_analysis/cfa_presentation.pdf))
    - A high-level presentation of key ideas, strenghts and failure modes of different control flow recovery methods.

## Type Recovery

1. *paper* Type Analysis of Low-level Code ([type_analysis.pdf](https://github.com/decomp/doc/raw/master/report/type_analysis/type_analysis.pdf))
    - A meta-study of type recovery methods used during binary lifting.

## Auxiliary material

### Poster

Poster summarizing the current capabilities of the decompilation pipeline.

[![Poster: Compositional Decompilation](https://raw.githubusercontent.com/decomp/doc/master/poster/poster.png)](https://github.com/decomp/doc/raw/master/poster/poster.pdf)

### Abstract

*Abstract of the [compositional_decompilation.pdf](https://github.com/decomp/doc/raw/master/report/compositional_decompilation/compositional_decompilation.pdf) report; presented here to make it indexable by search engines*.

Decompilation or reverse compilation is the process of translating low-level machine-readable code into high-level human-readable code. The problem is non-trivial due to the amount of information lost during compilation, but it can be divided into several smaller problems which may be solved independently. This report explores the feasibility of composing a decompilation pipeline from independent components, and the potential of exposing those components to the end-user. The components of the decompilation pipeline are conceptually grouped into three modules. Firstly, the front-end translates a source language (e.g. x86 assembly) into LLVM IR; a platform-independent low-level intermediate representation. Secondly, the middle-end structures the LLVM IR by identifying high-level control flow primitives (e.g. pre-test loops, 2-way conditionals). Lastly, the back-end translates the structured LLVM IR into a high-level target programming language (e.g. Go). The control flow analysis stage of the middle-end uses subgraph isomorphism search algorithms to locate control flow primitives in CFGs, both of which are described using Graphviz DOT files.

The decompilation pipeline has been proven capable of recovering nested pre-test and post-test loops (e.g. `while`, `do-while`), and 1-way and 2-way conditionals (e.g. `if`, `if-else`) from LLVM IR. Furthermore, the data-driven design of the control flow analysis stage facilitates extensions to identify new control flow primitives. There is huge potential for future development. The Go output could be made more idiomatic by extending the post-processing stage, using components such as Grind by Russ Cox which moves variable declarations closer to their usage. The language-agnostic aspects of the design will be validated by implementing components in other languages; e.g. data flow analysis in Haskell. Additional back-ends (e.g. Python output) will be implemented to verify that the general decompilation tasks (e.g. control flow analysis, data flow analysis) are handled by the middle-end.
