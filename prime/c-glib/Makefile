PATH := $(CURDIR)/../../bin:$(PATH)

all: prime.log prime-test.log

%.log: %.sh
	q $*

distclean:
	-rm -f *.log prime
