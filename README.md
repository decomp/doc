Decompilation
=============

This paper is written for the [Final Year Engineering Project][PJE40] at
[Portsmouth University][] during the academic session 2014 - 2015.

[PJE40]: https://register.port.ac.uk/apex/f?p=111:3:0::NO::P3_UNIT_ID:397236263
[Portsmouth University]: http://www.port.ac.uk/

Project Plan
------------

1. ~~Register a [dedicated GitHub organization][] to keep track of all
   repositories related to the project.~~
2. Investigate [which][CI] Continuous Integration services to use for:
	- ~~[compilation status][travis] for commits and pull requests (SUCCESS/FAILURE)~~
	- ~~[test cases][travis] (PASS/FAIL)~~
	- ~~[code coverage][coveralls] (percentage)~~
	- benchmarks?
3. Make use of [Semantic Versioning][] from day one.
4. Search for relevant literature.
5. Conduct a literature review which will form the theoretical basis of the
   report and facilitate the design and brainstorming process.
6. Work out a general design which specifies the major components of the
   artifact.
7. Create an issue for each point which tracks its progress, relates it to a
   milestone, and enforces a hard deadline for completion.
8. Start by developing, porting, or creating a binding to a [LLVM IR][]
   [bitcode][] parser. This is one of the components which will be fundamental
   to the project, as all decompilation phases will build upon the parsed
   intermediate representation. The data structure of the LLVM IR has to be
   chosen with careful consideration; research idiomatic data structures and
   experiment enough until it feels just right.
9. Add test cases to ensure the reliability of the LLVM IR bitcode parser as it
   has to be accurate.
10. Create simple test cases for the decompilation process using bitcode as
    input and C code, pseudo-code, or a high level [AST][] as output.
11. Research about various decompilation phases and the steps that can be
    conducted to lift the low level IR to a high level AST.
12. Brainstorm about additional decompilation steps. Identify structural
    patterns in the low level IR which conveys information about the high level
    semantics.
	- Patterns of incrementation instructions, conditional jumps, and
     unconditional jumps may be represented as for loops using initialization,
     condition, and post statements.
	- Jumps to offsets specified by branch tables may represent switch
     statements.
	- Increments and decrements of the stack pointer register may indicate
     function prologues and epilogues respectively; which conveys information
     about local variables.

[dedicated GitHub organization]: https://github.com/mewrev
[CI]: https://jmcvetta.github.io/blog/2013/08/30/continuous-integration-for-go-code/
[travis]: https://travis-ci.org/
[coveralls]: https://coveralls.io/
[Semantic Versioning]: http://semver.org/
[LLVM IR]: http://llvm.org/docs/LangRef.html
[bitcode]: http://llvm.org/docs/BitCodeFormat.html
[AST]: https://en.wikipedia.org/wiki/Abstract_syntax_tree

public domain
-------------

This paper is hereby released into the *[public domain][]*.

[public domain]: https://creativecommons.org/publicdomain/zero/1.0/
