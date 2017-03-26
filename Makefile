TARGET := cv

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex personal.tex photo.pdf publications.bib
	lualatex $<
	bibtex $(TARGET)
	lualatex $<

clean:
	rm -f $(TARGET).{aux,bbl,blg,log,out} personal.aux

realclean: clean
	rm -f $(TARGET).pdf

