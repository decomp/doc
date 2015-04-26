# Compositional Decompilation using LLVM IR

**NOTE**: The source code is made available at [github.com/decomp](https://github.com/decomp)

[This paper](https://raw.githubusercontent.com/mewpaper/decompilation/master/decompilation.pdf) was written for the [Final Year Engineering Project][PJE40] at [Portsmouth University] during the academic session 2014 - 2015.

[PJE40]: https://register.port.ac.uk/apex/f?p=111:3:0::NO::P3_UNIT_ID:397236263
[Portsmouth University]: http://www.port.ac.uk/

## Poster

The following poster summarises the project outcomes. It was created for a student project conference which was held at Portsmouth University on the 18th of March 2015.

[![Poster: Compositional Decompilation](https://raw.githubusercontent.com/mewpaper/decompilation/master/poster/poster.png)](https://raw.githubusercontent.com/mewpaper/decompilation/master/poster/poster.pdf)

## Artefacts

As part of this project, the following components were developed for the decompilation pipeline (all of which have been released into the [public domain]):

* [llvm](https://github.com/llir/llvm) - Library for interacting with LLVM IR (*work in progress*)
* [ll2dot](https://github.com/decomp/ll2dot) - Control flow graph generation tool

> Generate control flow graphs from LLVM IR assembly files (e.g. *.ll -> *.dot)

* [graphs](https://github.com/decomp/graphs) - Subgraph isomorphism search algorithms and related tools
* [restructure](https://github.com/decomp/restructure) - Control flow analysis tool

> Recover control flow primitives from control flow graphs (e.g. *.dot -> *.json)

* [ll2go](https://github.com/decomp/ll2go) - Go code generation tool (*proof of concept*)

> Decompile LLVM IR assembly files to Go source code (e.g. *.ll -> *.go)

* [go-post](https://github.com/decomp/go-post) - Go post-processing tool

> Post-process Go source code to make it more idiomatic

## Report

A PDF version of the report has been hade available online ([decompilation.pdf](https://raw.githubusercontent.com/mewpaper/decompilation/master/decompilation.pdf)).

### Abstract

Decompilation or reverse compilation is the process of translating low-level machine-readable code into high-level human-readable code. The problem is non-trivial due to the amount of information lost during compilation, but it can be divided into several smaller problems which may be solved independently. This report explores the feasibility of composing a decompilation pipeline from independent components, and the potential of exposing those components to the end-user. The components of the decompilation pipeline are conceptually grouped into three modules. Firstly, the front-end translates a source language (e.g. x86 assembly) into LLVM IR; a platform-independent low-level intermediate representation. Secondly, the middle-end structures the LLVM IR by identifying high-level control flow primitives (e.g. pre-test loops, 2-way conditionals). Lastly, the back-end translates the structured LLVM IR into a high-level target programming language (e.g. Go). The control flow analysis stage of the middle-end uses subgraph isomorphism search algorithms to locate control flow primitives in CFGs, both of which are described using Graphviz DOT files.

The decompilation pipeline has been proven capable of recovering nested pre-test and post-test loops (e.g. `while`, `do-while`), and 1-way and 2-way conditionals (e.g. `if`, `if-else`) from LLVM IR. Furthermore, the data-driven design of the control flow analysis stage facilitates extensions to identify new control flow primitives. There is huge potential for future development. The Go output could be made more idiomatic by extending the post-processing stage, using components such as Grind by Russ Cox which moves variable declarations closer to their usage. The language-agnostic aspects of the design will be validated by implementing components in other languages; e.g. data flow analysis in Haskell. Additional back-ends (e.g. Python output) will be implemented to verify that the general decompilation tasks (e.g. control flow analysis, data flow analysis) are handled by the middle-end.


### Disposition

This report details every stage of the project from conceptualisation to successful completion. It follows a logical structure and outlines the major stages in chronological order. A brief summary of each section is presented in the list below.

* Section 1 - **Introduction**
    - *Introduces the concept of decompilation and its applications, outlines the project aim and objectives, and summarises its deliverables.*
* Section 2 - **Literature Review**
    - *Details the problem domain, reviews traditional decompilation techniques, and evaluates potential intermediate representations for the decompilation pipeline of the project.*
* Section 3 - **Related Work**
    - *Evaluates projects for translating native code to LLVM IR, and reviews the design of modern decompilers.*
* Section 4 - **Methodology**
    - *Surveys methodologies and best practices for software construction, and relates them to the specific problem domain.*
* Section 5 - **Requirements**
    - *Specifies and prioritises the requirements of the project artefacts.*
* Section 6 - **Design**
    - *Discusses the system architecture and the design of each component, motivates the choice of core algorithms and data structures, and highlights strengths and limitations of the design.*
* Section 7 - **Implementation**
    - *Discusses language considerations, describes the implementation process, and showcases how set-backs were dealt with.*
* Section 8 - **Verification**
    - *Describes the approaches taken to validate the correctness, performance and security of the artefacts.*
* Section 9 - **Evaluation**
    - *Assesses the outcome of the project and evaluates the artefacts against the requirements.*
* Section 10 - **Conclusion**
    - *Summarises the project outcomes, presents ideas for future work, reflects on personal development, and concludes with an attribution to the key idea of this project.*

### Table of Content

1. Introduction
    1. Project Aim and Objectives
    2. Deliverables
    3. Disposition
2. Literature Review
    1. The Anatomy of an Executable
    2. Decompilation Phases
        1. Binary Analysis
        2. Disassembly
        3. Control Flow Analysis
    3. Evaluation of Intermediate Representations
        1. REIL
        2. LLVM IR
3. Related Work
    1. Native Code to LLVM IR
        1. Dagger
        2. MC-Semantics
    2. Hex-Rays Decompiler
4. Methodology
    1. Operational Prototyping
        1. Throwaway Prototyping
        2. Evolutionary Prototyping
    2. Continuous Integration
5. Requirements
    1. LLVM IR Library
    2. Control Flow Analysis Library
    3. Control Flow Analysis Tool
6. Design
    1. System Architecture
    2. Front-end Components
        1. Native Code to LLVM IR
        2. Compilers
    3. Middle-end Components
        1. Control Flow Graph Generation
        2. Control Flow Analysis
    4. Back-end Components
        1. Post-processing
7. Implementation
    1. Language Considerations
    2. LLVM IR Library
    3. Go Bindings for LLVM
    4. Subgraph Isomorphism Search Library
    5. Documentation
8. Verification
    1. Test Cases
        1. Code Coverage
    2. Performance
        1. Profiling
        2. Benchmarks
    3. Security Assessment
    4. Continuous Integration
        1. Source Code Formatting
        2. Coding Style
        3. Code Correctness
        4. Build Status
        5. Test Cases
        6. Code Coverage
9. Evaluation
    1. LLVM IR Library
        1. Essential Requirements
        2. Desirable Requirements
    2. Control Flow Analysis Library
        1. Essential Requirements
        2. Important Requirements
        3. Desirable Requirements
    3. Control Flow Analysis Tool
        1. Essential Requirements
10. Conclusion
    1. Project Summary
    2. Future Work
        1. Design Validation
        2. Reliability Improvements
        3. Extended Capabilities
    3. Personal Development
    4. Final Thoughts
11. References
12. Appendices
    1. Project Initiation Document
    2. Certificate of Ethics Review
    3. Initial and Final Gantt Charts
    4. The REIL Instruction Set
    5. Patch for Unnamed Basic Blocks of LLVM
    6. Dagger Example
    7. MC-Semantics Example
    8. Clang Example
    9. Control Flow Graph Generation Example
    10. Control Flow Analysis Example
    11. Restructure Example
    12. Code Generation Example
    13. Post-processing Example
    14. Decompilation of Nested Primitives
    15. Decompilation of Post-test Loops

## Public domain

This paper and any original content of this repository is hereby released into the [public domain].

[public domain]: https://creativecommons.org/publicdomain/zero/1.0/
