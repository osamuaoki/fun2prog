PATH := $(CURDIR)/../../bin:$(PATH)

all: hello.log

%.log: %.sh
	q $*

distclean:
	-rm -f hello.log
