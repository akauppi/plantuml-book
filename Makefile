#
# Usage:
#	$ make
#
# Requires:
#	- docker
#
# Note: By purpose, we don't step into the GitBook's area but only use the Makefile for creating the images for it.
#	 	That is, this file is minion to the 'package.json'. This is mainly to keep the GitBook experience topmost.

# Note: Images mentioned in the GitBook need to be explicitly mentioned here.
#
PICTURES = \
	chapter1/hello.png chapter1/hello.svg \
	chapter1/sequence-hello.png chapter1/sequence-hello.svg

all: $(PICTURES)

# PlantUML conversions
%.png: %.uml
	cat $< | docker run --rm -i think/plantuml -tpng > $@

%.svg: %.uml
	cat $< | docker run --rm -i think/plantuml > $@

clean:
	-rm ${PICTURES}

echo:
	docker info

#---
.DELETE_ON_ERROR:

.PHONY: echo
