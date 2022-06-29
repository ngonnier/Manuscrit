# Adapt this path if needed.
FIGS = $(wildcard *.svg)
PDFS_FROM_SVG = $(patsubst %.svg, %.pdf, $(FIGS))

figs : $(PDFS_FROM_SVG)
%.pdf : %.svg
	rsvg-convert -f pdf -o $@ $<


