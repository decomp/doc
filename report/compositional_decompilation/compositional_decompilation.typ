#import "@preview/latex-lookalike:0.1.4"
#import "@preview/hydra:0.6.2": hydra

#set document(title: [Compositional Decompilation using LLVM IR])
#set document(author: "Robin Eklind")
#set document(date: datetime(year: 2015, month: 04, day: 21)) // "2015-04-21"

#set text(font: "New Computer Modern")
#set text(size: 11.5pt)

#set heading(numbering: "1.1")

// Display a heading's numbering and body for hydra.
#let display-hydra(
	// The context in which the element was found.
	ctx,
	// The heading to display.
	candidate,
) = {
	if candidate.has("numbering") and candidate.numbering != none {
		numbering(candidate.numbering, ..counter(heading).at(candidate.location()))
		h(1em)
	}

	candidate.body
}

#set page(
	margin: 2.54cm, // 1 inch
	header: [
		#grid(
			columns: (1fr, 1fr),
			align: (left, right),
			stroke: (bottom: 0.5pt + black),
			inset: (y: 5pt),
			[
				#context emph(hydra(2, skip-starting: false, display: display-hydra))
			], [
				#context emph(upper(hydra(1, skip-starting: false, display: display-hydra)))
			],
		)
	],
	header-ascent: 31%,
)

#set par(
	justify: true
)

#show heading: latex-lookalike.style-heading
#show outline: latex-lookalike.style-outline

// Document

// <howto>
// * Critically evaluate why you are doing things, throughout the entire report.

// === [ Front matter ] ========================================================

#set page(numbering: "i")

// --- [ Cover page ] ----------------------------------------------------------

// TODO: \includepdf[pages=-]{inc/cover/cover.pdf}

// --- [ Title page ] ----------------------------------------------------------

#{
set page(header: none)

latex-lookalike.make-title()

include("/sections/abstract.typ")

pagebreak(weak: true)
}

// --- [ Acknowledgements ] ----------------------------------------------------

#include("/sections/0_acknowledgements.typ")

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
	#v(3.4cm)

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

#bibliography("references.bib", title: "References")

#pagebreak(weak: true)

// --- [ Appendices ] ----------------------------------------------------------

// TODO: uncomment
//#include("/sections/appendices.typ")
