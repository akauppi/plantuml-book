#
# Usage:
#	$ make
#
# Requires:
#	- docker
#

all: chapter1/hello.png chapter1/hello.svg \
	chapter1/sequence-hello.png chapter1/sequence-hello.svg

# PlantUML conversions
%.png: %.uml
	cat $< | docker run --rm -i think/plantuml -tpng > $@

%.svg: %.uml
	cat $< | docker run --rm -i think/plantuml > $@

echo:
	docker info

#---
.DELETE_ON_ERROR:

.PHONY: echo
