# Adapt this path if needed.
FIGS = $(wildcard ./figures/*.svg)
PDFS_FROM_SVG = $(patsubst %.svg, %.pdf, $(FIGS))

figs : $(PDFS_FROM_SVG)
%.pdf : %.svg
	rsvg-convert -f pdf -o $@ $<


pdf :
	pdflatex -jobname=chapter-05 source.tex
	biber chapter-05
	pdflatex -jobname=chapter-05 source.tex
