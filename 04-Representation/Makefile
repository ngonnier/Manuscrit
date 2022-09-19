# Adapt this path if needed.
FIGS = $(wildcard *.svg)
PDFS_FROM_SVG = $(patsubst %.svg, %.pdf, $(FIGS))



pdf :
	pdflatex -jobname=chapter-04 source.tex
	biber chapter-04
	pdflatex -jobname=chapter-04 source.tex