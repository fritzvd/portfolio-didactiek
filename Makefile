filename=main.tex

all: pdf html

pdf: bibtex
	pdflatex main.tex

html:
	pandoc -f latex -t html main.tex -o main.html --bibliography portfolio.bib
	cat tufte.css >> main.html
	open main.html

bibtex:
	pdflatex main.tex
	bibtex main

open: pdf
	open main.pdf

clean:
	rm main.aux main.log main.toc main.blg main.bbl main.pdf
	
