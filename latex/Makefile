TARGET=thesis
SECTIONS := $(wildcard ../sections/*.tex)
TEXARGS=#-no-shell-escape -interaction=nonstopmode -interaction=batchmode

# make pdf by default
all: ${TARGET}.pdf

# make pdf
%.pdf : ${TARGET}.bbl ${TARGET}.tex $(SECTIONS)
	pdflatex ${TEXARGS} $*

${TARGET}.bbl: thesis.bib
	pdflatex ${TEXARGS} ${TARGET}.tex
# get the citations out of the bibliography
	bibtex -terse ${TARGET}
# do it again in case there are out-of-order cross-references
	@pdflatex ${TEXARGS} ${TARGET}.tex

clean:
	rm -f ${TARGET}.{out,log,aux,bbl,blg,lof,lot,toc}

reallyclean: clean
	rm -f ${TARGET}.pdf


PHONY : all clean reallyclean
