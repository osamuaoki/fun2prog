PATH := $(CURDIR)/../../bin:$(PATH)

all:
	$(MAKE) prime8-core.log
	$(MAKE) prime8.log
	$(MAKE) prime9.log
	#$(MAKE) prime10.log
	$(MAKE) prime.log
	$(MAKE) prime-gdb1.log
	$(MAKE) prime-gdb2.log

%.log: %.sh
	r $*

distclean:
	-rm -f *.log *.o *-gdb *.cmd
	-rm -f prime prime9.c
	-rm core core.*


.PHONY: all clean distclean
