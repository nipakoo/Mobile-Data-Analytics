AUTHORNAME := "kortström"

.PHONY: clean

all: $(AUTHORNAME)-report.pdf clean

$(AUTHORNAME)-report.pdf: report.tex
	latexmk -pdf report.tex
	mv report.pdf $@

clean:
	latexmk -c

distclean: clean
	rm -f $(AUTHORNAME)-report.pdf
