all: cv.tex publications.bib
	xelatex cv
	bibtex cv
	xelatex cv
	xelatex cv

open: cv.pdf
	open cv.pdf