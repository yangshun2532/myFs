# Makefile.in generated by automake 1.12.1 from Makefile.am.
# example/Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994-2012 Free Software Foundation, Inc.

# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.





am__make_dryrun = \
  { \
    am__dry=no; \
    case $$MAKEFLAGS in \
      *\\[\ \	]*) \
        echo 'am--echo: ; @echo "AM"  OK' | $(MAKE) -f - 2>/dev/null \
          | grep '^AM OK$$' >/dev/null || am__dry=yes;; \
      *) \
        for am__flg in $$MAKEFLAGS; do \
          case $$am__flg in \
            *=*|--*) ;; \
            *n*) am__dry=yes; break;; \
          esac; \
        done;; \
    esac; \
    test $$am__dry = yes; \
  }
pkgdatadir = $(datadir)/fuse
pkgincludedir = $(includedir)/fuse
pkglibdir = $(libdir)/fuse
pkglibexecdir = $(libexecdir)/fuse
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = i686-pc-linux-gnu
host_triplet = i686-pc-linux-gnu
target_triplet = i686-pc-linux-gnu
noinst_PROGRAMS = fusexmp$(EXEEXT) fusexmp_fh$(EXEEXT) null$(EXEEXT) \
	hello$(EXEEXT) hello_ll$(EXEEXT) fioc$(EXEEXT) \
	fioclient$(EXEEXT) fsel$(EXEEXT) fselclient$(EXEEXT) \
	cusexmp$(EXEEXT)
subdir = example
DIST_COMMON = $(noinst_HEADERS) $(srcdir)/Makefile.am \
	$(srcdir)/Makefile.in $(top_srcdir)/depcomp
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/m4/libtool.m4 \
	$(top_srcdir)/m4/ltoptions.m4 $(top_srcdir)/m4/ltsugar.m4 \
	$(top_srcdir)/m4/ltversion.m4 $(top_srcdir)/m4/lt~obsolete.m4 \
	$(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = $(top_builddir)/include/config.h
CONFIG_CLEAN_FILES =
CONFIG_CLEAN_VPATH_FILES =
PROGRAMS = $(noinst_PROGRAMS)
cusexmp_SOURCES = cusexmp.c
cusexmp_OBJECTS = cusexmp.$(OBJEXT)
cusexmp_LDADD = $(LDADD)
cusexmp_DEPENDENCIES = ../lib/libfuse.la
AM_V_lt = $(am__v_lt_$(V))
am__v_lt_ = $(am__v_lt_$(AM_DEFAULT_VERBOSITY))
am__v_lt_0 = --silent
fioc_SOURCES = fioc.c
fioc_OBJECTS = fioc.$(OBJEXT)
fioc_LDADD = $(LDADD)
fioc_DEPENDENCIES = ../lib/libfuse.la
fioclient_SOURCES = fioclient.c
fioclient_OBJECTS = fioclient-fioclient.$(OBJEXT)
fioclient_DEPENDENCIES =
fioclient_LINK = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) \
	$(fioclient_LDFLAGS) $(LDFLAGS) -o $@
fsel_SOURCES = fsel.c
fsel_OBJECTS = fsel.$(OBJEXT)
fsel_LDADD = $(LDADD)
fsel_DEPENDENCIES = ../lib/libfuse.la
fselclient_SOURCES = fselclient.c
fselclient_OBJECTS = fselclient-fselclient.$(OBJEXT)
fselclient_DEPENDENCIES =
fselclient_LINK = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) \
	$(fselclient_LDFLAGS) $(LDFLAGS) -o $@
fusexmp_SOURCES = fusexmp.c
fusexmp_OBJECTS = fusexmp.$(OBJEXT)
fusexmp_LDADD = $(LDADD)
fusexmp_DEPENDENCIES = ../lib/libfuse.la
fusexmp_fh_SOURCES = fusexmp_fh.c
fusexmp_fh_OBJECTS = fusexmp_fh.$(OBJEXT)
fusexmp_fh_DEPENDENCIES = ../lib/libfuse.la ../lib/libulockmgr.la
hello_SOURCES = hello.c
hello_OBJECTS = hello.$(OBJEXT)
hello_LDADD = $(LDADD)
hello_DEPENDENCIES = ../lib/libfuse.la
hello_ll_SOURCES = hello_ll.c
hello_ll_OBJECTS = hello_ll.$(OBJEXT)
hello_ll_LDADD = $(LDADD)
hello_ll_DEPENDENCIES = ../lib/libfuse.la
null_SOURCES = null.c
null_OBJECTS = null.$(OBJEXT)
null_LDADD = $(LDADD)
null_DEPENDENCIES = ../lib/libfuse.la
DEFAULT_INCLUDES = -I. -I$(top_builddir)/include
depcomp = $(SHELL) $(top_srcdir)/depcomp
am__depfiles_maybe = depfiles
am__mv = mv -f
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
LTCOMPILE = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=compile $(CC) $(DEFS) \
	$(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) \
	$(AM_CFLAGS) $(CFLAGS)
AM_V_CC = $(am__v_CC_$(V))
am__v_CC_ = $(am__v_CC_$(AM_DEFAULT_VERBOSITY))
am__v_CC_0 = @echo "  CC      " $@;
AM_V_at = $(am__v_at_$(V))
am__v_at_ = $(am__v_at_$(AM_DEFAULT_VERBOSITY))
am__v_at_0 = @
CCLD = $(CC)
LINK = $(LIBTOOL) $(AM_V_lt) --tag=CC $(AM_LIBTOOLFLAGS) \
	$(LIBTOOLFLAGS) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) \
	$(AM_LDFLAGS) $(LDFLAGS) -o $@
AM_V_CCLD = $(am__v_CCLD_$(V))
am__v_CCLD_ = $(am__v_CCLD_$(AM_DEFAULT_VERBOSITY))
am__v_CCLD_0 = @echo "  CCLD    " $@;
AM_V_GEN = $(am__v_GEN_$(V))
am__v_GEN_ = $(am__v_GEN_$(AM_DEFAULT_VERBOSITY))
am__v_GEN_0 = @echo "  GEN     " $@;
SOURCES = cusexmp.c fioc.c fioclient.c fsel.c fselclient.c fusexmp.c \
	fusexmp_fh.c hello.c hello_ll.c null.c
DIST_SOURCES = cusexmp.c fioc.c fioclient.c fsel.c fselclient.c \
	fusexmp.c fusexmp_fh.c hello.c hello_ll.c null.c
am__can_run_installinfo = \
  case $$AM_UPDATE_INFO_DIR in \
    n|no|NO) false;; \
    *) (install-info --version) >/dev/null 2>&1;; \
  esac
HEADERS = $(noinst_HEADERS)
ETAGS = etags
CTAGS = ctags
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
ACLOCAL = ${SHELL} /home/guest/fuse-2.9.3/missing --run aclocal-1.12
AMTAR = $${TAR-tar}
AM_DEFAULT_VERBOSITY = 0
AR = ar
AUTOCONF = ${SHELL} /home/guest/fuse-2.9.3/missing --run autoconf
AUTOHEADER = ${SHELL} /home/guest/fuse-2.9.3/missing --run autoheader
AUTOMAKE = ${SHELL} /home/guest/fuse-2.9.3/missing --run automake-1.12
AWK = mawk
CC = gcc
CCDEPMODE = depmode=gcc3
CFLAGS = -Wall -W -Wno-sign-compare -Wstrict-prototypes -Wmissing-declarations -Wwrite-strings -g -O2 -fno-strict-aliasing
CPP = gcc -E
CPPFLAGS = 
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DLLTOOL = false
DSYMUTIL = 
DUMPBIN = 
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = /bin/grep -E
EXEEXT = 
FGREP = /bin/grep -F
GREP = /bin/grep
INIT_D_PATH = /etc/init.d
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
LD = /usr/bin/ld
LDFLAGS = 
LIBICONV = 
LIBOBJS = 
LIBS = 
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIPO = 
LN_S = ln -s
LTLIBICONV = 
LTLIBOBJS = 
MAKEINFO = ${SHELL} /home/guest/fuse-2.9.3/missing --run makeinfo
MANIFEST_TOOL = :
MKDIR_P = /bin/mkdir -p
MOUNT_FUSE_PATH = /sbin
NM = /usr/bin/nm -B
NMEDIT = 
OBJDUMP = objdump
OBJEXT = o
OTOOL = 
OTOOL64 = 
PACKAGE = fuse
PACKAGE_BUGREPORT = 
PACKAGE_NAME = fuse
PACKAGE_STRING = fuse 2.9.3
PACKAGE_TARNAME = fuse
PACKAGE_URL = 
PACKAGE_VERSION = 2.9.3
PATH_SEPARATOR = :
RANLIB = ranlib
SED = /bin/sed
SET_MAKE = 
SHELL = /bin/bash
STRIP = strip
UDEV_RULES_PATH = /etc/udev/rules.d
VERSION = 2.9.3
abs_builddir = /home/guest/fuse-2.9.3/example
abs_srcdir = /home/guest/fuse-2.9.3/example
abs_top_builddir = /home/guest/fuse-2.9.3
abs_top_srcdir = /home/guest/fuse-2.9.3
ac_ct_AR = ar
ac_ct_CC = gcc
ac_ct_DUMPBIN = 
am__include = include
am__leading_dot = .
am__quote = 
am__tar = $${TAR-tar} chof - "$$tardir"
am__untar = $${TAR-tar} xf -
bindir = ${exec_prefix}/bin
build = i686-pc-linux-gnu
build_alias = 
build_cpu = i686
build_os = linux-gnu
build_vendor = pc
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
host = i686-pc-linux-gnu
host_alias = 
host_cpu = i686
host_os = linux-gnu
host_vendor = pc
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = ${SHELL} /home/guest/fuse-2.9.3/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
libfuse_libs = -lrt -ldl  
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
mkdir_p = /bin/mkdir -p
oldincludedir = /usr/include
pdfdir = ${docdir}
pkgconfigdir = ${libdir}/pkgconfig
prefix = /usr/local
program_transform_name = s,x,x,
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
subdirs2 = include lib util example
sysconfdir = ${prefix}/etc
target = i686-pc-linux-gnu
target_alias = 
target_cpu = i686
target_os = linux-gnu
target_vendor = pc
top_build_prefix = ../
top_builddir = ..
top_srcdir = ..
AM_CPPFLAGS = -I$(top_srcdir)/include -D_FILE_OFFSET_BITS=64 -D_REENTRANT
noinst_HEADERS = fioc.h
LDADD = ../lib/libfuse.la
fusexmp_fh_LDADD = ../lib/libfuse.la ../lib/libulockmgr.la
fioclient_CPPFLAGS = 
fioclient_LDFLAGS = 
fioclient_LDADD = 
fselclient_CPPFLAGS = 
fselclient_LDFLAGS = 
fselclient_LDADD = 
all: all-am

.SUFFIXES:
.SUFFIXES: .c .lo .o .obj
$(srcdir)/Makefile.in:  $(srcdir)/Makefile.am  $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      ( cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh ) \
	        && { if test -f $@; then exit 0; else break; fi; }; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --gnu example/Makefile'; \
	$(am__cd) $(top_srcdir) && \
	  $(AUTOMAKE) --gnu example/Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh

$(top_srcdir)/configure:  $(am__configure_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(ACLOCAL_M4):  $(am__aclocal_m4_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(am__aclocal_m4_deps):

clean-noinstPROGRAMS:
	@list='$(noinst_PROGRAMS)'; test -n "$$list" || exit 0; \
	echo " rm -f" $$list; \
	rm -f $$list || exit $$?; \
	test -n "$(EXEEXT)" || exit 0; \
	list=`for p in $$list; do echo "$$p"; done | sed 's/$(EXEEXT)$$//'`; \
	echo " rm -f" $$list; \
	rm -f $$list
cusexmp$(EXEEXT): $(cusexmp_OBJECTS) $(cusexmp_DEPENDENCIES) $(EXTRA_cusexmp_DEPENDENCIES) 
	@rm -f cusexmp$(EXEEXT)
	$(AM_V_CCLD)$(LINK) $(cusexmp_OBJECTS) $(cusexmp_LDADD) $(LIBS)
fioc$(EXEEXT): $(fioc_OBJECTS) $(fioc_DEPENDENCIES) $(EXTRA_fioc_DEPENDENCIES) 
	@rm -f fioc$(EXEEXT)
	$(AM_V_CCLD)$(LINK) $(fioc_OBJECTS) $(fioc_LDADD) $(LIBS)
fioclient$(EXEEXT): $(fioclient_OBJECTS) $(fioclient_DEPENDENCIES) $(EXTRA_fioclient_DEPENDENCIES) 
	@rm -f fioclient$(EXEEXT)
	$(AM_V_CCLD)$(fioclient_LINK) $(fioclient_OBJECTS) $(fioclient_LDADD) $(LIBS)
fsel$(EXEEXT): $(fsel_OBJECTS) $(fsel_DEPENDENCIES) $(EXTRA_fsel_DEPENDENCIES) 
	@rm -f fsel$(EXEEXT)
	$(AM_V_CCLD)$(LINK) $(fsel_OBJECTS) $(fsel_LDADD) $(LIBS)
fselclient$(EXEEXT): $(fselclient_OBJECTS) $(fselclient_DEPENDENCIES) $(EXTRA_fselclient_DEPENDENCIES) 
	@rm -f fselclient$(EXEEXT)
	$(AM_V_CCLD)$(fselclient_LINK) $(fselclient_OBJECTS) $(fselclient_LDADD) $(LIBS)
fusexmp$(EXEEXT): $(fusexmp_OBJECTS) $(fusexmp_DEPENDENCIES) $(EXTRA_fusexmp_DEPENDENCIES) 
	@rm -f fusexmp$(EXEEXT)
	$(AM_V_CCLD)$(LINK) $(fusexmp_OBJECTS) $(fusexmp_LDADD) $(LIBS)
fusexmp_fh$(EXEEXT): $(fusexmp_fh_OBJECTS) $(fusexmp_fh_DEPENDENCIES) $(EXTRA_fusexmp_fh_DEPENDENCIES) 
	@rm -f fusexmp_fh$(EXEEXT)
	$(AM_V_CCLD)$(LINK) $(fusexmp_fh_OBJECTS) $(fusexmp_fh_LDADD) $(LIBS)
hello$(EXEEXT): $(hello_OBJECTS) $(hello_DEPENDENCIES) $(EXTRA_hello_DEPENDENCIES) 
	@rm -f hello$(EXEEXT)
	$(AM_V_CCLD)$(LINK) $(hello_OBJECTS) $(hello_LDADD) $(LIBS)
hello_ll$(EXEEXT): $(hello_ll_OBJECTS) $(hello_ll_DEPENDENCIES) $(EXTRA_hello_ll_DEPENDENCIES) 
	@rm -f hello_ll$(EXEEXT)
	$(AM_V_CCLD)$(LINK) $(hello_ll_OBJECTS) $(hello_ll_LDADD) $(LIBS)
null$(EXEEXT): $(null_OBJECTS) $(null_DEPENDENCIES) $(EXTRA_null_DEPENDENCIES) 
	@rm -f null$(EXEEXT)
	$(AM_V_CCLD)$(LINK) $(null_OBJECTS) $(null_LDADD) $(LIBS)

mostlyclean-compile:
	-rm -f *.$(OBJEXT)

distclean-compile:
	-rm -f *.tab.c

include ./$(DEPDIR)/cusexmp.Po
include ./$(DEPDIR)/fioc.Po
include ./$(DEPDIR)/fioclient-fioclient.Po
include ./$(DEPDIR)/fsel.Po
include ./$(DEPDIR)/fselclient-fselclient.Po
include ./$(DEPDIR)/fusexmp.Po
include ./$(DEPDIR)/fusexmp_fh.Po
include ./$(DEPDIR)/hello.Po
include ./$(DEPDIR)/hello_ll.Po
include ./$(DEPDIR)/null.Po

.c.o:
	$(AM_V_CC)$(COMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ $<
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Po
#	$(AM_V_CC)source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(COMPILE) -c $<

.c.obj:
	$(AM_V_CC)$(COMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ `$(CYGPATH_W) '$<'`
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Po
#	$(AM_V_CC)source='$<' object='$@' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(COMPILE) -c `$(CYGPATH_W) '$<'`

.c.lo:
	$(AM_V_CC)$(LTCOMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ $<
	$(AM_V_at)$(am__mv) $(DEPDIR)/$*.Tpo $(DEPDIR)/$*.Plo
#	$(AM_V_CC)source='$<' object='$@' libtool=yes \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(LTCOMPILE) -c -o $@ $<

fioclient-fioclient.o: fioclient.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(fioclient_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT fioclient-fioclient.o -MD -MP -MF $(DEPDIR)/fioclient-fioclient.Tpo -c -o fioclient-fioclient.o `test -f 'fioclient.c' || echo '$(srcdir)/'`fioclient.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/fioclient-fioclient.Tpo $(DEPDIR)/fioclient-fioclient.Po
#	$(AM_V_CC)source='fioclient.c' object='fioclient-fioclient.o' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(fioclient_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -c -o fioclient-fioclient.o `test -f 'fioclient.c' || echo '$(srcdir)/'`fioclient.c

fioclient-fioclient.obj: fioclient.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(fioclient_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT fioclient-fioclient.obj -MD -MP -MF $(DEPDIR)/fioclient-fioclient.Tpo -c -o fioclient-fioclient.obj `if test -f 'fioclient.c'; then $(CYGPATH_W) 'fioclient.c'; else $(CYGPATH_W) '$(srcdir)/fioclient.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/fioclient-fioclient.Tpo $(DEPDIR)/fioclient-fioclient.Po
#	$(AM_V_CC)source='fioclient.c' object='fioclient-fioclient.obj' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(fioclient_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -c -o fioclient-fioclient.obj `if test -f 'fioclient.c'; then $(CYGPATH_W) 'fioclient.c'; else $(CYGPATH_W) '$(srcdir)/fioclient.c'; fi`

fselclient-fselclient.o: fselclient.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(fselclient_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT fselclient-fselclient.o -MD -MP -MF $(DEPDIR)/fselclient-fselclient.Tpo -c -o fselclient-fselclient.o `test -f 'fselclient.c' || echo '$(srcdir)/'`fselclient.c
	$(AM_V_at)$(am__mv) $(DEPDIR)/fselclient-fselclient.Tpo $(DEPDIR)/fselclient-fselclient.Po
#	$(AM_V_CC)source='fselclient.c' object='fselclient-fselclient.o' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(fselclient_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -c -o fselclient-fselclient.o `test -f 'fselclient.c' || echo '$(srcdir)/'`fselclient.c

fselclient-fselclient.obj: fselclient.c
	$(AM_V_CC)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(fselclient_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -MT fselclient-fselclient.obj -MD -MP -MF $(DEPDIR)/fselclient-fselclient.Tpo -c -o fselclient-fselclient.obj `if test -f 'fselclient.c'; then $(CYGPATH_W) 'fselclient.c'; else $(CYGPATH_W) '$(srcdir)/fselclient.c'; fi`
	$(AM_V_at)$(am__mv) $(DEPDIR)/fselclient-fselclient.Tpo $(DEPDIR)/fselclient-fselclient.Po
#	$(AM_V_CC)source='fselclient.c' object='fselclient-fselclient.obj' libtool=no \
#	DEPDIR=$(DEPDIR) $(CCDEPMODE) $(depcomp) \
#	$(AM_V_CC_no)$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(fselclient_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS) -c -o fselclient-fselclient.obj `if test -f 'fselclient.c'; then $(CYGPATH_W) 'fselclient.c'; else $(CYGPATH_W) '$(srcdir)/fselclient.c'; fi`

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonempty = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	mkid -fID $$unique
tags: TAGS

TAGS:  $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	set x; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS)  $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonempty = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	shift; \
	if test -z "$(ETAGS_ARGS)$$*$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  if test $$# -gt 0; then \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      "$$@" $$unique; \
	  else \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      $$unique; \
	  fi; \
	fi
ctags: CTAGS
CTAGS:  $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	list='$(SOURCES) $(HEADERS)  $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonempty = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	test -z "$(CTAGS_ARGS)$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && $(am__cd) $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) "$$here"

cscopelist:  $(HEADERS) $(SOURCES) $(LISP)
	list='$(SOURCES) $(HEADERS) $(LISP)'; \
	case "$(srcdir)" in \
	  [\\/]* | ?:[\\/]*) sdir="$(srcdir)" ;; \
	  *) sdir=$(subdir)/$(srcdir) ;; \
	esac; \
	for i in $$list; do \
	  if test -f "$$i"; then \
	    echo "$(subdir)/$$i"; \
	  else \
	    echo "$$sdir/$$i"; \
	  fi; \
	done >> $(top_builddir)/cscope.files

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags

distdir: $(DISTFILES)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d "$(distdir)/$$file"; then \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -fpR $(srcdir)/$$file "$(distdir)$$dir" || exit 1; \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    cp -fpR $$d/$$file "$(distdir)$$dir" || exit 1; \
	  else \
	    test -f "$(distdir)/$$file" \
	    || cp -p $$d/$$file "$(distdir)/$$file" \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile $(PROGRAMS) $(HEADERS)
installdirs:
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	if test -z '$(STRIP)'; then \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	      install; \
	else \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	    "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'" install; \
	fi
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)
	-test . = "$(srcdir)" || test -z "$(CONFIG_CLEAN_VPATH_FILES)" || rm -f $(CONFIG_CLEAN_VPATH_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-generic clean-libtool clean-noinstPROGRAMS \
	mostlyclean-am

distclean: distclean-am
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
distclean-am: clean-am distclean-compile distclean-generic \
	distclean-tags

dvi: dvi-am

dvi-am:

html: html-am

html-am:

info: info-am

info-am:

install-data-am:

install-dvi: install-dvi-am

install-dvi-am:

install-exec-am:

install-html: install-html-am

install-html-am:

install-info: install-info-am

install-info-am:

install-man:

install-pdf: install-pdf-am

install-pdf-am:

install-ps: install-ps-am

install-ps-am:

installcheck-am:

maintainer-clean: maintainer-clean-am
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-compile mostlyclean-generic \
	mostlyclean-libtool

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am:

.MAKE: install-am install-strip

.PHONY: CTAGS GTAGS all all-am check check-am clean clean-generic \
	clean-libtool clean-noinstPROGRAMS cscopelist ctags distclean \
	distclean-compile distclean-generic distclean-libtool \
	distclean-tags distdir dvi dvi-am html html-am info info-am \
	install install-am install-data install-data-am install-dvi \
	install-dvi-am install-exec install-exec-am install-html \
	install-html-am install-info install-info-am install-man \
	install-pdf install-pdf-am install-ps install-ps-am \
	install-strip installcheck installcheck-am installdirs \
	maintainer-clean maintainer-clean-generic mostlyclean \
	mostlyclean-compile mostlyclean-generic mostlyclean-libtool \
	pdf pdf-am ps ps-am tags uninstall uninstall-am


# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
