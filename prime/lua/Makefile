PATH := $(CURDIR)/../../bin:$(PATH)

all: prime-test.log

%.log: %.sh
	r $*

distclean:
	-rm -f *.log

