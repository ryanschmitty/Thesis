TARGETDIR=latex/
TARGET=thesis
NEWNAME=rschmitt_thesis

# run latex/Makefile then copy results here
all: ${NEWNAME}.pdf

# create pdf via latex
${TARGETDIR}${TARGET}.pdf:
	cd ${TARGETDIR}; make

%.pdf: ${TARGETDIR}${TARGET}.pdf
	cp ${TARGETDIR}${TARGET}.pdf ${NEWNAME}.pdf


clean:
	rm -f ${NEWNAME}.pdf
	cd ${TARGETDIR}; make reallyclean


PHONY: all clean
