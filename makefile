inputFile = report.tex
outputFile = report.pdf
tmpdir = tmp

$(outputFile): $(tmpdir)/$(outputFile)
	cp $< $@

$(tmpdir)/$(outputFile): $(inputFile) *.tex $(tmpdir)
	pdflatex -output-directory=tmp $<
	pdflatex -output-directory=tmp $<

$(tmpdir):
	mkdir $(tmpdir)
