# Adapt this path if needed.
FIGS = $(wildcard *.svg)
PDFS_FROM_SVG = $(patsubst %.svg, %.pdf, $(FIGS))

figs : $(PDFS_FROM_SVG)
%.pdf : %.svg
	rsvg-convert -f pdf -o $@ $<

pdf :
	pdflatex -jobname=chapter-02 source.tex
	bibtex chapter-02
	pdflatex -jobname=chapter-02 source.tex
	pdflatex -jobname=chapter-02 source.tex