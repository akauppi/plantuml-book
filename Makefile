#
# Usage:
#	$ make
#
# Requires:
#	- docker
#

# Note: Images mentioned in the GitBook need to be explicitly mentioned here.
#
PICTURES = chapter1/hello.png chapter1/hello.svg \
	chapter1/sequence-hello.png chapter1/sequence-hello.svg

_BOOK=_book

all: $(PICTURES)

# PlantUML conversions
%.png: %.uml
	cat $< | docker run --rm -i think/plantuml -tpng > $@

%.svg: %.uml
	cat $< | docker run --rm -i think/plantuml > $@

clean:
	-rm -rf ${_BOOK}/*

echo:
	docker info

#---
.DELETE_ON_ERROR:

.PHONY: echo