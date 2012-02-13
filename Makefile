TARGETDIR=latex/
TARGET=thesis
NEWNAME=rschmitt_thesis
SECTIONS := $(wildcard sections/*.tex)

# run latex/Makefile then copy results here
all: ${NEWNAME}.pdf

# create pdf via latex
${TARGETDIR}${TARGET}.pdf: ${TARGETDIR}${TARGET}.tex $(SECTIONS)
	cd ${TARGETDIR}; make

%.pdf: ${TARGETDIR}${TARGET}.pdf
	cp ${TARGETDIR}${TARGET}.pdf ${NEWNAME}.pdf


clean:
	cd ${TARGETDIR}; make reallyclean

reallyclean: clean
	rm -f ${NEWNAME}.pdf


PHONY: all clean
