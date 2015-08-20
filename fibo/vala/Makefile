PATH := $(CURDIR)/../../bin:$(PATH)

all: fibo.log fibo-test.log

%.log: %.sh
	q $*
	sed -i 's#$(CURDIR)/#/full/path/to/#g' $*.log
distclean:
	-rm -f fibo.log fibo
