all: SmallTwiBook-unaligned.pdf SmallTwiBook.pdf SmallTwiBook-coverbatch.pdf SmallTwiBook-innenbatch.pdf

test: SmallTwiBook-unaligned.pdf
	~/programme/evinceterminal.sh SmallTwiBook-unaligned.pdf
clean:
	rm *.aux
	rm *.log

SmallTwiBook-unaligned.pdf: smalltwibook.tex smalltwibook.toc
	xelatex smalltwibook.tex
	mv smalltwibook.pdf SmallTwiBook-unaligned.pdf

SmallTwiBook.pdf SmallTwiBook-coverbatch.pdf SmallTwiBook-innenbatch.pdf: SmallTwiBook-unaligned.pdf
	./postprocess.ipy

edit:
	nano smalltwibook.tex
