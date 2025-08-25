// === [ Introduction ] ========================================================

#quote(
	block: true,
	attribution: [Chuck Palahniuk @patterns_quote],
)[
	#emph["What we call chaos is just patterns we haven't recognized. What we call random is just patterns we can't decipher."]
]

= Introduction
<sec:introduction>

A compiler is a piece of software which translates human readable high-level programming languages (e.g. C) to machine readable low-level languages (e.g. Assembly). In the usual flow of compilation, code is lowered through a set of transformations from a high-level to a low-level representation. The decompilation process (also referred to as reverse compilation @reverse_comp) moves in the opposite direction by lifting code from a low-level to a high-level representation.

Decompilation enables source code reconstruction of binary applications and libraries. Both security researchers and software engineers may benefit from decompilation as it facilitates analysis, modification and reconstruction of object code. The applications of decompilation are versatile, and may include one of the following uses:

- Analyse malware

- Recover source code

- Migrate software from legacy platforms or programming languages

- Optimise existing binary applications

- Discover and mitigate bugs and security vulnerabilities

- Verify compiler output with regards to correctness

- Analyse proprietary algorithms

- Improve interoperability with other software

- Add new features to existing software

As recognised by Edsger W. Dijkstra in his 1972 ACM Turing Lecture (an extract of which is presented in figure @fig:dijkstra_lecture), one of the most powerful tools for solving complex problems in Computer Science is the use of abstractions and separation of concerns. This paper explores a compositional approach to decompilation which facilitates abstractions to create a decompilation pipeline of self-contained components. Since each component interacts through language-agnostic interfaces (well-defined input and output) they may be written in a variety of programming languages. Furthermore, for each component of the decompilation pipeline there may exist multiple implementations with their respective advantages and limitations. The end user (e.g. malware analyst, security researcher or reverse engineer) may select the components which solve their task most efficiently.

#figure(
	quote(
		block: true,
	)[
		#set align(left)
		#emph["We all know that the only mental tool by means of which a very finite piece of reasoning can cover a myriad cases is called "abstraction"; as a result the effective exploitation of their powers of abstraction must be regarded as one of the most vital activities of a competent programmer. In this connection it might be worthwhile to point out that the purpose of abstracting is not to be vague, but to create a new semantic level in which one can be absolutely precise."]
	],
	caption: [An extract from the ACM Turing Lecture given by Edsger W. Dijkstra in 1972 @abstractions_quote.]
) <fig:dijkstra_lecture>

// === [ Subsections ] =========================================================

#include("/sections/1_introduction/1_project_aim_and_objectives.typ")
#include("/sections/1_introduction/2_deliverables.typ")
#include("/sections/1_introduction/3_disposition.typ")
