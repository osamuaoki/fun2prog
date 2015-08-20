all:
	$(MAKE) -C c $@
	$(MAKE) -C python $@

%:
	$(MAKE) -C c $@
	$(MAKE) -C python $@
	# This is needed to remove httpd logs
	-rm -rf *.log

distclean:
	$(MAKE) clean
