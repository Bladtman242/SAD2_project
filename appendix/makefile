inputFile = appendix.tex
outputFile = appendix.pdf
tmpdir = tmp

$(outputFile): $(tmpdir)/$(outputFile)
	cp $< $@

$(tmpdir)/$(outputFile): $(inputFile) *.tex $(tmpdir) $(shell find code -type f -print)
	pdflatex -output-directory=tmp $<
	pdflatex -output-directory=tmp $<

$(tmpdir):
	mkdir $(tmpdir)
