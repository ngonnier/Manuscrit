
help:## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)
draft:## create pdf output with comments in red and draft elements
	pdflatex -jobname=these-draft '\def\draftmode{}\input' main.tex 
	bibtex these-draft.aux
	pdflatex -jobname=these-draft '\def\draftmode{}\input' main.tex 
	pdflatex -jobname=these-draft '\def\draftmode{}\input' main.tex 

review:## create pdf output without comments and draft parts, but with extended margin to facilitate annotations
	pdflatex -jobname=these '\def\reviewmode{}\input' main.tex 
	bibtex these.aux
	pdflatex -jobname=these '\def\reviewmode{}\input' main.tex 
	pdflatex -jobname=these '\def\reviewmode{}\input' main.tex 

release:## create release version
	pdflatex -jobname=these main.tex
	biber these
	pdflatex -jobname=these main.tex

clean:## Remove temporary files
	rm *.bbl *blg *.aux *.mtc* *.maf *.toc *.log *.fls *.fdb_latexmk *.flg these*.pdf
