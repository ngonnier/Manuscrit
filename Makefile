
help:## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)
draft:## create pdf output with comments in red and draft elements
	pdflatex -jobname=these-draft '\def\draftmode{}\input' main.tex 
	bibtex these-draft.tex
	pdflatex -jobname=these-draft '\def\draftmode{}\input' main.tex 
	pdflatex -jobname=these-draft '\def\draftmode{}\input' main.tex 

review:## create pdf output without comments and draft parts, but with extended margin to facilitate annotations
	pdflatex -jobname=these '\def\reviewmode{}\input' main.tex 
	bibtex these.tex
	pdflatex -jobname=these '\def\reviewmode{}\input' main.tex 
	pdflatex -jobname=these '\def\reviewmode{}\input' main.tex 

release:## create release version
	pdflatex -jobname=these main.tex	
	bibtex these.tex
	pdflatex -jobname=these main.tex 
	pdflatex -jobname=these main.tex 	
clean:## Remove temporary files
	rm *.bbl *blg *.aux *.mtc* *.maf *.toc *.log *.fls *.fdb_latexmk *.flg these*.pdf

chapter:##compile only one chapter. Usage : chapter CHAP=<directory_name>, with directory = 01-Modularite, 02-SOM, 03-Representation, 04-Analyse, 05-Application
	pdflatex -jobname=chapter-${CHAP} '\includeonly{${CHAP}/source}\input' main.tex
