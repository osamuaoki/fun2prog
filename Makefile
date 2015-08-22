# build: update data and build new html
# clean only non-timeconsuming (leave html)
# distclean everything
# 

TERM = dumb
DOCNAME	= fun2prog
SHELL	= /bin/sh
PATH	:= (CURDIR)/bin:$(PATH)

PACKAGES = \
	autoconf \
	automake \
	autotools-dev \
	bash \
	bc \
	build-essential \
	dash \
	debhelper \
	devscripts \
	gcc \
	gdb \
	libboost-dev \
	libc6-dbg \
	libc6-dev \
	libgee-dev \
	libglib2.0-dev \
	liblua5.2-dev \
	libstdc++6 \
	libstdc++-4.9-dev \
	linux-base \
	linux-tools \
	lua5.2 \
	perl \
	pkg-config \
	python-all \
	python3-all \
	source-highlight \
	sudo \
	unifdef \
	valac \
# EOL    


export DOCNAME SHELL PATH TERM

# explicit targets
all:
	$(MAKE) data
	$(MAKE) clean
	$(MAKE) $(DOCNAME).html

clean:
	-rm -f *.html

# distclean is the implicit target
# reset clean the statistics of the installed packages, too.
reset:
	$(MAKE) distclean
	$(MAKE) -C stat/lang reset

$(DOCNAME).html: $(wildcard *.txt)
	-asciidoc -d book -atoc2 $(DOCNAME).txt

draft:
	-asciidoc -d book -atoc2 _draft.txt

remote:
	cp -f $(DOCNAME).html ../$(DOCNAME).html
	#$(MAKE) distclean
	tar --exclude-vcs --xz -cvf ../$(DOCNAME).tar.xz ./
	scp ../$(DOCNAME).html people.debian.org:~osamu/public_html/
	scp ../$(DOCNAME).tar.xz people.debian.org:~osamu/public_html/

prep:
	sudo apt-get update
	sudo apt-get dist-upgrade
	sudo apt-get install $(PACKAGES)

# Following targets are not called directly

data:
	$(MAKE) -C hello all
	$(MAKE) -C gcc all
	$(MAKE) -C cli all
	$(MAKE) -C lib all
	$(MAKE) -C gui all
	$(MAKE) -C c2lua all
	$(MAKE) -C dist all
	$(MAKE) -C sqlite all
	$(MAKE) -C ideas all
	$(MAKE) -C prime all
	$(MAKE) -C fibo all
	$(MAKE) -C stat all
	$(MAKE) -C process all
	$(MAKE) -C python all

%:
	-rm -f *.xml *~
	$(MAKE) -C hello $@
	$(MAKE) -C gcc $@
	$(MAKE) -C cli $@
	$(MAKE) -C lib $@
	$(MAKE) -C gui $@
	$(MAKE) -C c2lua $@
	$(MAKE) -C dist $@
	$(MAKE) -C sqlite $@
	$(MAKE) -C ideas $@
	$(MAKE) -C prime $@
	$(MAKE) -C fibo $@
	$(MAKE) -C stat $@
	$(MAKE) -C process $@
	$(MAKE) -C python $@

