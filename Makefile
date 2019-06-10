TARGET := cv

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex personal.tex photo.pdf publications.bib moderncvstylecustom.sty
	lualatex $<
	bibtex $(TARGET)
	lualatex $<

clean:
	rm -f $(TARGET).{aux,bbl,blg,log,out} personal.aux

realclean: clean
	rm -f $(TARGET).pdf

