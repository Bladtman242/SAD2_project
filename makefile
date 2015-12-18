inputFile = report.tex
outputFile = report.pdf
tmpdir = tmp
.PHONY: appendix.pdf

$(outputFile): $(tmpdir)/$(outputFile)
	cp $< $@

$(tmpdir)/$(outputFile): $(inputFile) *.tex $(tmpdir) appendix.pdf
	pdflatex -output-directory=tmp $<
	pdflatex -output-directory=tmp $<

appendix.pdf: appendix/appendix.pdf
	$(MAKE) -C appendix/
	cp appendix/appendix.pdf .

$(tmpdir):
	mkdir $(tmpdir)
