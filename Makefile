all: cv.pdf letter.pdf

cv.pdf: common.tex personal.tex photo.pdf publications.bib moderncvstylecustom.sty
letter.pdf: common.tex personal.tex moderncvstylecustom.sty

cv.pdf: cv.tex
	lualatex $<
	bibtex $(subst .tex,.aux,$<)
	lualatex $<
	lualatex $<

letter.pdf: letter.tex
	lualatex $<
	lualatex $<

clean:
	rm -f *.{aux,bbl,blg,log,out} personal.aux

realclean: clean
	rm -f cv.pdf letter.pdf
