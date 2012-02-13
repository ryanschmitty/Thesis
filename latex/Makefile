TARGET=thesis
SECTIONS := $(wildcard ../sections/*.tex)

# make pdf by default
all: ${TARGET}.pdf

# make pdf
%.pdf : ${TARGET}.bbl ${TARGET}.tex $(SECTIONS)
	pdflatex $*

${TARGET}.bbl: thesis.bib
	pdflatex ${TARGET}.tex
# get the citations out of the bibliography
	bibtex ${TARGET}
# do it again in case there are out-of-order cross-references
	@pdflatex ${TARGET}.tex

clean:
	rm -f ${TARGET}.{out,log,aux,bbl,blg,lof,lot,toc}

reallyclean: clean
	rm -f ${TARGET}.pdf


PHONY : all clean reallyclean
