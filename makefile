SHELL = /bin/sh
.SUFFIXES :=
MAKEFLAGS += --no-builtin-rules 
MAKEFLAGS += --no-builtin-variables
JEKYLL := bundle exec jekyll
JEKYLL_OPTS := --verbose --livereload --profile --trace

.PHONY: all clean s

all:
	${true}

clean:
	${JEKYLL} clean

s: clean
	${JEKYLL} serve ${JEKYLL_OPTS} ${o}
