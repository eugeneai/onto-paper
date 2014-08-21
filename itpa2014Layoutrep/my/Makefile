.PHONY: all view

all: Cherkashin-onto.pdf

Cherkashin-onto.pdf: Cherkashin-onto.tex
	pdflatex -synctex=1 $< && pdflatex $<

view: Cherkashin-onto.pdf
	evince $<
