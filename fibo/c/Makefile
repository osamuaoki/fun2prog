PATH := $(CURDIR)/../../bin:$(PATH)

all: fibo.log fibo-test.log strtol-test.log checksize.log

%.log: %.sh
	q $*

distclean:
	-rm -f *.log
	-rm -f fibo strtol-test checksize

clean:

