RM := rm

INSTALL := install
INSTALLDATA := install -m 644

prefix = /usr/local
# Prefix for each installed program,
# normally empty or `g'.
binprefix =
# The directory to install tar in.
bindir = $(prefix)/bin

.PHONY: clean doc install

# Compile rules
all: smlrc-tr3200 vlink vasm-tr3200

smlrc-tr3200: SmallerC
	cd SmallerC && make CPPFLAGS=-DTR3200 smlrc
	mv SmallerC/smlrc smlrc-tr3200

vlink: vlink_src
	cd vlink_src && make -f Makefile
	mv vlink_src/vlink .

vasm-tr3200: vasm
	cd vasm && make -f Makefile CPU=tr3200 SYNTAX=oldstyle
	mv vasm/vasmtr3200_oldstyle vasm-tr3200

# Grab source code
vlink_src:
	wget http://sun.hasenbraten.de/vlink/daily/vlink.tar.gz
	tar -xvzf vlink.tar.gz
	mv vlink vlink_src
	cp vlink_makefilewin32 ./vlink_src/Makefile.Win32FromLinux

SmallerC:
	git submodule init
	git submodule update
	cd SmallerC && ./configure

vasm:
	wget http://sun.hasenbraten.de/vasm/daily/vasm.tar.gz
	tar -xvzf vasm.tar.gz
	cd vasm && patch -p1 < ./patches/fix_rjmp.patch


# Generate doc rules
doc:
	cd vasm && make -f Makefile doc/vasm.html
	mv vasm/doc/*.html ./doc/vasm/

# Install rules
install: all
	$(INSTALL) smlrc-tr3200 $(bindir)/$(binprefix)smlrc-tr3200
	$(INSTALL) vasm-tr3200 $(bindir)/$(binprefix)vasm-tr3200
	$(INSTALL) vlink $(bindir)/$(binprefix)vlink

# Clean rules
clean:
	$(RM) -f smlrc-tr3200
	cd SmallerC && make clean
	$(RM) -f vlink
	$(RM) -f vasm-tr3200
	cd vasm && make clean
