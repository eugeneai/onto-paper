.PHONY: all view

all: Cherkashin-onto.pdf

Cherkashin-onto.pdf: Cherkashin-onto.tex
	pdflatex $< && pdflatex $<

view: Cherkashin-onto.pdf
	evince $<
