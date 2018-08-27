#
# Usage:
#	$ make
#

all:
	echo 1

echo:
	@echo $(A)

#---
.DELETE_ON_ERROR:

.PHONY: echo
