#import "@preview/latex-lookalike:0.1.4"

#set document(title: [Compositional Decompilation using LLVM IR])
#set document(author: "Robin Eklind")
#set document(date: datetime(year: 2015, month: 04, day: 21)) // "2015-04-21"

// Document

// <howto>
// * Critically evaluate why you are doing things, throughout the entire report.

// === [ Front matter ] ========================================================

#set page(numbering: "i")

// --- [ Cover page ] ----------------------------------------------------------

// TODO: \includepdf[pages=-]{inc/cover/cover.pdf}

// --- [ Title page ] ----------------------------------------------------------

#latex-lookalike.make-title()

// TODO: uncomment
//#include("/sections/abstract.typ")

#pagebreak(weak: true)

// --- [ Acknowledgements ] ----------------------------------------------------

// TODO: uncomment
//#include("/sections/0_acknowledgements.typ")

#pagebreak(weak: true)

// --- [ Table of contents ] ---------------------------------------------------

#outline()

#pagebreak(weak: true)

// --- [ Blank page ] ----------------------------------------------------------

// No paper is complete without at least one blank page.

#page(
	header: none,
	footer: none,
)[
	#v(2.5cm)

	#align(center)[
		#emph[This page is unintentionally left blank.]
	]

	#pagebreak(weak: true)
]

// === [ Main matter ] =========================================================

#counter(page).update(1) // reset page number
#set page(numbering: "1")

// TODO: uncomment
//#include("/sections/1_introduction.typ")
#pagebreak(weak: true)
// TODO: uncomment
//#include("/sections/2_literature_review.typ")
#pagebreak(weak: true)
// TODO: uncomment
//#include("/sections/3_related_work.typ")
#pagebreak(weak: true)
// TODO: uncomment
//#include("/sections/4_methodology.typ")
#pagebreak(weak: true)
// TODO: uncomment
//#include("/sections/5_requirements.typ")
#pagebreak(weak: true)
// TODO: uncomment
//#include("/sections/6_design.typ")
#pagebreak(weak: true)
// TODO: uncomment
//#include("/sections/7_implementation.typ")
#pagebreak(weak: true)
// TODO: uncomment
//#include("/sections/8_verification.typ")
#pagebreak(weak: true)
// TODO: uncomment
//#include("/sections/9_evaluation.typ")
#pagebreak(weak: true)
// TODO: uncomment
//#include("/sections/10_conclusion.typ")
#pagebreak(weak: true)

// === [ Back matter ] =========================================================

// --- [ References ] ----------------------------------------------------------

#bibliography("references.bib")

#pagebreak(weak: true)

// --- [ Appendices ] ----------------------------------------------------------

// TODO: uncomment
//#include("/sections/appendices.typ")
