PATH := $(CURDIR)/../../bin:$(PATH)

all: integer-bash.log integer-dash.log fibo-test.log

%.log: %.sh
	r $*

distclean:
	-rm -f *.log

