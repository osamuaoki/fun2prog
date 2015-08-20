PATH := $(CURDIR)/../../bin:$(PATH)

all: fibo.log

%.log: %.sh
	r $*

distclean:
	-rm -f *.log

