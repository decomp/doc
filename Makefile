all: pdf

pdf: inc
	texi2pdf -q -c decompilation.tex

word: inc
	latex decompilation
	bibtex decompilation
	latex decompilation
	latex decompilation
	pdflatex decompilation
	latex2rtf decompilation

.PHONY: clean inc

inc:
	make -C $@/

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.dvi *.rtf *.bcf *.run.xml sections/*.aux

# TODO: Remove temporary rules for sections.

intro: inc
	texi2pdf -q -c 1_intro.tex

lit_review: inc
	texi2pdf -q -c 2_lit_review.tex

rel_work: inc
	texi2pdf -q -c 3_rel_work.tex

method: inc
	texi2pdf -q -c 4_method.tex

req: inc
	texi2pdf -q -c 5_req.tex

design: inc
	texi2pdf -q -c 6_design.tex

impl: inc
	texi2pdf -q -c 7_impl.tex

ver: inc
	texi2pdf -q -c 8_ver.tex

eval: inc
	texi2pdf -q -c 9_eval.tex

con: inc
	texi2pdf -q -c 10_con.tex
