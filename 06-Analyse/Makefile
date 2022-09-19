# Adapt this path if needed.
FIGS = $(wildcard *.svg)
PDFS_FROM_SVG = $(patsubst %.svg, %.pdf, $(FIGS))

figs : $(PDFS_FROM_SVG)
%.pdf : %.svg
	rsvg-convert -f pdf -o $@ $<

%.pdf : %.svg
	rsvg-convert -f pdf -o $@ $<


pdf :
	pdflatex -jobname=chapter-06 source.tex
	biber chapter-06
	pdflatex -jobname=chapter-06 source.tex
