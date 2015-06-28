all: proposal.pdf

%.pdf: %.tex literature.bib
	pdflatex -output-format=pdf $*.tex
	bibtex $*
	pdflatex -output-format=pdf $*.tex
	pdflatex -output-format=pdf $*.tex

clean:
	rm -f *.aux *.log proposal.pdf *.bbl
