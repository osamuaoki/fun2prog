PATH := $(CURDIR)/../../bin:$(PATH)

all: fibo-test.log

%.log: %.sh
	r $*

distclean:
	-rm -f *.log

clean:
