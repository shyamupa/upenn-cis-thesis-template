.SUFFIXES: .tex .in .dvi .ps .pdf
all: thesis.pdf
.tex.pdf:
	xelatex $<
	-bibtex $*
	xelatex $<
	xelatex $<
introduction.pdf:
	xelatex introduction.tex
	bibtex introduction.aux
	xelatex introduction.tex
	xelatex introduction.tex
chapter1.pdf: chapter1
	xelatex chapter1/chapter1.tex
	bibtex chapter1.aux
	xelatex chapter1/chapter1.tex
	xelatex chapter1/chapter1.tex
chapter2.pdf: chapter2
	xelatex chapter2/chapter2.tex
	bibtex chapter2.aux
	xelatex chapter2/chapter2.tex
	xelatex chapter2/chapter2.tex
conclusion.pdf:
	xelatex conclusion.tex
	bibtex conclusion.aux
	xelatex conclusion.tex
	xelatex conclusion.tex
clean:
	rm -f *.aux *.dvi *.ps *.bbl *.blg *.out *.log *.toc *.lof *.lot *.nav *.snm *.bak *~ *.acn *.ist *.syg *.acn *.glsdefs *.ist *.syg thesis.pdf introduction.pdf chapter1.pdf chapter2.pdf conclusion.pdf
