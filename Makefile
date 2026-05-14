graphs=$(wildcard *.dot)

all: $(graphs:.dot=.svg)

%.svg: %.dot
	dot -Tsvg $< >$@
