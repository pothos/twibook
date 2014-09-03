all: SmallTwiBook.pdf SmallTwiBook-aligned.pdf SmallTwiBook-coverbatch.pdf SmallTwiBook-innenbatch.pdf

test: SmallTwiBook.pdf
	~/programme/evinceterminal.sh SmallTwiBook.pdf
clean:
	rm *.aux
	rm *.log

SmallTwiBook.pdf: smalltwibook.tex smalltwibook.toc
	xelatex smalltwibook.tex
	mv smalltwibook.pdf SmallTwiBook.pdf

SmallTwiBook-aligned.pdf SmallTwiBook-coverbatch.pdf SmallTwiBook-innenbatch.pdf: SmallTwiBook.pdf
	./postprocess.ipy

edit:
	nano smalltwibook.tex
