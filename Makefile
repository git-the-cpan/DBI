# This Makefile is for the DBI extension to perl.
#
# It was generated automatically by MakeMaker version
# 5.21 (Revision: 1.174) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#	ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker Parameters:

#	DEFINE => q[-Wall -pedantic -Wno-comment -g -Wpointer-arith -Wcast-align -Wconversion]
#	INST_ARCHLIB => q[$(INSTALLARCHLIB)]
#	INST_LIB => q[$(INSTALLPRIVLIB)]
#	NAME => q[DBI]
#	VERSION_FROM => q[DBI.pm]
#	dist => { DIST_DEFAULT=>q[clean distcheck disttest ci tardist] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/local/lib/perl5/sun4-solaris/5.002/Config.pm)

# They may have been overridden via Makefile.PL or on the command line
AR = ar
CC = gcc
CCCDLFLAGS = -fpic
CCDLFLAGS =  
DLEXT = so
DLSRC = dl_dlopen.xs
LD = gcc
LDDLFLAGS = -G -L/usr/local/lib -L/opt/gnu/lib
LDFLAGS =  -L/usr/local/lib -L/opt/gnu/lib
LIBC = /lib/libc.so
LIB_EXT = .a
OBJ_EXT = .o
RANLIB = :
SITELIBEXP = /usr/local/lib/perl5/site_perl
SITEARCHEXP = /usr/local/lib/perl5/site_perl/sun4-solaris
SO = so


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
NAME = DBI
DISTNAME = DBI
NAME_SYM = DBI
VERSION = 0.67
VERSION_SYM = 0_67
XS_VERSION = 0.67
INST_LIB = $(INSTALLPRIVLIB)
INST_ARCHLIB = $(INSTALLARCHLIB)
INST_EXE = ./blib/bin/
PREFIX = /usr/local
INSTALLDIRS = site
INSTALLPRIVLIB = $(PREFIX)/lib/perl5
INSTALLARCHLIB = $(PREFIX)/lib/perl5/sun4-solaris/5.002
INSTALLSITELIB = $(PREFIX)/lib/perl5/site_perl
INSTALLSITEARCH = $(PREFIX)/lib/perl5/site_perl/sun4-solaris
INSTALLBIN = $(PREFIX)/bin
PERL_LIB = /usr/local/lib/perl5
PERL_ARCHLIB = /usr/local/lib/perl5/sun4-solaris/5.002
SITELIBEXP = /usr/local/lib/perl5/site_perl
SITEARCHEXP = /usr/local/lib/perl5/site_perl/sun4-solaris
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/local/lib/perl5/sun4-solaris/5.002/CORE/
PERL = /usr/local/bin/perl
FULLPERL = /usr/local/bin/perl

VERSION_MACRO = VERSION
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"

MAKEMAKER = $(PERL_LIB)/ExtUtils/MakeMaker.pm
MM_VERSION = 5.21
MM_REVISION = 

# FULLEXT = Pathname for extension directory (eg DBD/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT.
# ROOTEXT = Directory part of FULLEXT with leading slash (eg /DBD)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = DBI
BASEEXT = DBI
ROOTEXT = 
DLBASE = $(BASEEXT)
VERSION_FROM = DBI.pm
DEFINE = -Wall -pedantic -Wno-comment -g -Wpointer-arith -Wcast-align -Wconversion
OBJECT = $(BASEEXT)$(OBJ_EXT)
OBJECT = $(BASEEXT)$(OBJ_EXT)
LDFROM = $(OBJECT)
LINKTYPE = dynamic

# Handy lists of source code files:
XS_FILES= DBI.xs
C_FILES = DBI.c
O_FILES = DBI.o
H_FILES = DBIXS.h
MAN1PODS = 
MAN3PODS = 
INST_MAN1DIR = ./blib/man1/
INSTALLMAN1DIR = $(PREFIX)/man/man1
MAN1EXT = 1
INST_MAN3DIR = ./blib/man3/
INSTALLMAN3DIR = $(PREFIX)/lib/perl5/man/man3
MAN3EXT = 3

# work around a famous dec-osf make(1) feature(?):
makemakerdflt: all

.SUFFIXES: .xs .c .C $(OBJ_EXT)

# Nick wanted to get rid of .PRECIOUS. I don't remember why. I seem to recall, that
# some make implementations will delete the Makefile when we rebuild it. Because
# we call false(1) when we rebuild it. So make(1) is not completely wrong when it
# does so. Our milage may vary.
# .PRECIOUS: Makefile    # seems to be not necessary anymore

.PHONY: all config static dynamic test linkext manifest

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)/Config.pm $(PERL_INC)/config.h $(VERSION_FROM)

# Where to put things:
INST_LIBDIR     = $(INST_LIB)$(ROOTEXT)
INST_ARCHLIBDIR = $(INST_ARCHLIB)$(ROOTEXT)

INST_AUTODIR      = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR  = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC  = $(INST_ARCHAUTODIR)/$(BASEEXT)$(LIB_EXT)
INST_DYNAMIC = $(INST_ARCHAUTODIR)/$(DLBASE).$(DLEXT)
INST_BOOT    = $(INST_ARCHAUTODIR)/$(BASEEXT).bs

EXPORT_LIST = 

PERL_ARCHIVE = 

INST_PM = $(INST_ARCHLIBDIR)/DBI/DBIXS.h \
	$(INST_LIB)/DBD/ExampleP.pm \
	$(INST_LIB)/DBD/NullP.pm \
	$(INST_LIB)/DBD/Sponge.pm \
	$(INST_LIBDIR)/DBI.pm


# --- MakeMaker const_loadlibs section:

# DBI might depend on some other libraries:
# (These comments may need revising:)
#
# Dependent libraries can be linked in one of three ways:
#
#  1.  (For static extensions) by the ld command when the perl binary
#      is linked with the extension library. See EXTRALIBS below.
#
#  2.  (For dynamic extensions) by the ld command when the shared
#      object is built/linked. See LDLOADLIBS below.
#
#  3.  (For dynamic extensions) by the DynaLoader when the shared
#      object is loaded. See BSLOADLIBS below.
#
# EXTRALIBS =	List of libraries that need to be linked with when
#		linking a perl binary which includes this extension
#		Only those libraries that actually exist are included.
#		These are written to a file and used when linking perl.
#
# LDLOADLIBS =	List of those libraries which can or must be linked into
#		the shared library when created using ld. These may be
#		static or dynamic libraries.
#		LD_RUN_PATH is a colon separated list of the directories
#		in LDLOADLIBS. It is passed as an environment variable to
#		the process that links the shared library.
#
# BSLOADLIBS =	List of those libraries that are needed but can be
#		linked in dynamically at run time on this platform.
#		SunOS/Solaris does not need this because ld records
#		the information (from LDLOADLIBS) into the object file.
#		This list is used to create a .bs (bootstrap) file.
#
EXTRALIBS  = 
LDLOADLIBS = 
BSLOADLIBS = 
LD_RUN_PATH= 


# --- MakeMaker const_cccmd section:
CCCMD = $(CC) -c $(INC) -DDEBUGGING -I/usr/local/include -I/opt/gnu/include -g $(DEFINE_VERSION) $(XS_DEFINE_VERSION)


# --- MakeMaker tool_autosplit section:

# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" -e 'use AutoSplit;autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1) ;'


# --- MakeMaker tool_xsubpp section:

XSUBPPDIR = /usr/local/lib/perl5/ExtUtils
XSUBPP = $(XSUBPPDIR)/xsubpp
XSPROTOARG = 
XSUBPPDEPS = $(XSUBPPDIR)/typemap
XSUBPPARGS = -typemap $(XSUBPPDIR)/typemap


# --- MakeMaker tools_other section:

SHELL = /bin/sh
LD = gcc
TOUCH = touch
CP = cp
MV = mv
RM_F  = rm -f
RM_RF = rm -rf
CHMOD = chmod
UMASK_NULL = umask 0

# The following is a portable way to say mkdir -p
# To see which directories are created, change the if 0 to if 1
MKPATH = $(PERL) -wle '$$"="/"; foreach $$p (@ARGV){' \
-e 'next if -d $$p; my(@p); foreach(split(/\//,$$p)){' \
-e 'push(@p,$$_); next if -d "@p/"; print "mkdir @p" if 0;' \
-e 'mkdir("@p",0777)||die $$! } } exit 0;'

# This helps us to minimize the effect of the .exists files A yet
# better solution would be to have a stable file in the perl
# distribution with a timestamp of zero. But this solution doesn't
# need any changes to the core distribution and works with older perls
EQUALIZE_TIMESTAMP = $(PERL) -we 'open F, ">$$ARGV[1]"; close F;' \
-e 'utime ((stat("$$ARGV[0]"))[8,9], $$ARGV[1])'

# Here we warn users that an old packlist file was found somewhere,
# and that they should call some uninstall routine
WARN_IF_OLD_PACKLIST = $(PERL) -we 'exit unless -f $$ARGV[0];' \
-e 'print "WARNING: I have found an old package in\n";' \
-e 'print "\t$$ARGV[0].\n";' \
-e 'print "Please make sure the two installations are not conflicting\n";'

MOD_INSTALL = $(PERL) -I$(INST_LIB) -MExtUtils::Install \
-e 'install({@ARGV},1);'

DOC_INSTALL = $(PERL) -e '$$\="\n\n";print "=head3 ", scalar(localtime), ": C<", shift, ">";' \
-e 'print "=over 4";' \
-e 'while ($$key = shift and $$val = shift){print "=item *";print "C<$$key: $$val>";}' \
-e 'print "=back";'

UNINSTALL =   $(PERL) -MExtUtils::Install \
-e 'uninstall($$ARGV[0],1);'



# --- MakeMaker dist section:
# DIST_DEFAULT, clean distcheck disttest ci tardist

DISTVNAME = $(DISTNAME)-$(VERSION)
TAR  = tar
TARFLAGS = cvf
COMPRESS = compress
SUFFIX = Z
SHAR = shar
PREOP = @true
POSTOP = @true
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = clean distcheck disttest ci tardist


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = INSTALLPRIVLIB="$(INSTALLPRIVLIB)"\
	INSTALLARCHLIB="$(INSTALLARCHLIB)"\
	INSTALLBIN="$(INSTALLBIN)"\
	INSTALLMAN1DIR="$(INSTALLMAN1DIR)"\
	INSTALLMAN3DIR="$(INSTALLMAN3DIR)"\
	LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"\
	INSTALLSITELIB="$(INSTALLSITELIB)"\
	INSTALLSITEARCH="$(INSTALLSITEARCH)"\
	INSTALLDIRS="$(INSTALLDIRS)"


# --- MakeMaker c_o section:

.c$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) -I$(PERL_INC) $(DEFINE) $*.c

.C$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) -I$(PERL_INC) $(DEFINE) $*.C


# --- MakeMaker xs_c section:

.xs.c:
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) $(XSUBPP) $(XSPROTOARG) $(XSUBPPARGS) $*.xs >$*.tc && mv $*.tc $@


# --- MakeMaker xs_o section:

.xs$(OBJ_EXT):
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) $(XSUBPP) $(XSPROTOARG) $(XSUBPPARGS) $*.xs >xstmp.c && mv xstmp.c $*.c
	$(CCCMD) $(CCCDLFLAGS) -I$(PERL_INC) $(DEFINE) $*.c


# --- MakeMaker top_targets section:

all ::	config $(INST_PM) subdirs linkext manifypods

subdirs :: $(MYEXTLIB)



config :: Makefile $(INST_LIBDIR)/.exists

config :: $(INST_ARCHAUTODIR)/.exists

config :: $(INST_AUTODIR)/.exists

config :: Version_check


$(INST_AUTODIR)/.exists :: /usr/local/lib/perl5/sun4-solaris/5.002/CORE/perl.h
	@$(MKPATH) $(INST_AUTODIR)
	@$(EQUALIZE_TIMESTAMP) $(PERL) $(INST_AUTODIR)/.exists
	-@$(CHMOD) 755 $(INST_AUTODIR)

$(INST_LIBDIR)/.exists :: /usr/local/lib/perl5/sun4-solaris/5.002/CORE/perl.h
	@$(MKPATH) $(INST_LIBDIR)
	@$(EQUALIZE_TIMESTAMP) $(PERL) $(INST_LIBDIR)/.exists
	-@$(CHMOD) 755 $(INST_LIBDIR)

$(INST_ARCHAUTODIR)/.exists :: /usr/local/lib/perl5/sun4-solaris/5.002/CORE/perl.h
	@$(MKPATH) $(INST_ARCHAUTODIR)
	@$(EQUALIZE_TIMESTAMP) $(PERL) $(INST_ARCHAUTODIR)/.exists
	-@$(CHMOD) 755 $(INST_ARCHAUTODIR)

$(O_FILES): $(H_FILES)

help:
	perldoc ExtUtils::MakeMaker

Version_check:
	@$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) \
		-MExtUtils::MakeMaker=Version_check \
		-e 'Version_check("$(MM_VERSION)")'


# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)



# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

# $(INST_PM) has been moved to the all: target.
# It remains here for awhile to allow for old usage: "make dynamic"
dynamic :: Makefile $(INST_DYNAMIC) $(INST_BOOT) $(INST_PM)



# --- MakeMaker dynamic_bs section:

BOOTSTRAP = DBI.bs

# As Mkbootstrap might not write a file (if none is required)
# we use touch to prevent make continually trying to remake it.
# The DynaLoader only reads a non-empty file.
$(BOOTSTRAP): Makefile  $(INST_ARCHAUTODIR)/.exists
	@echo "Running Mkbootstrap for $(NAME) ($(BSLOADLIBS))"
	@$(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" \
		-e 'use ExtUtils::Mkbootstrap;' \
		-e 'Mkbootstrap("$(BASEEXT)","$(BSLOADLIBS)");'
	@$(TOUCH) $(BOOTSTRAP)
	$(CHMOD) 644 $@

$(INST_BOOT): $(BOOTSTRAP) $(INST_ARCHAUTODIR)/.exists
	@rm -rf $(INST_BOOT)
	-cp $(BOOTSTRAP) $(INST_BOOT)
	$(CHMOD) 644 $@


# --- MakeMaker dynamic_lib section:

# This section creates the dynamically loadable $(INST_DYNAMIC)
# from $(OBJECT) and possibly $(MYEXTLIB).
ARMAYBE = :
OTHERLDFLAGS = 
INST_DYNAMIC_DEP = 

$(INST_DYNAMIC): $(OBJECT) $(MYEXTLIB) $(BOOTSTRAP) $(INST_ARCHAUTODIR)/.exists $(EXPORT_LIST) $(PERL_ARCHIVE) $(INST_DYNAMIC_DEP)
	LD_RUN_PATH="$(LD_RUN_PATH)" $(LD) -o $@ $(LDDLFLAGS) $(LDFROM) $(OTHERLDFLAGS) $(MYEXTLIB) $(LDLOADLIBS) $(EXPORT_LIST) $(PERL_ARCHIVE)
	$(CHMOD) 755 $@


# --- MakeMaker static section:

# $(INST_PM) has been moved to the all: target.
# It remains here for awhile to allow for old usage: "make static"
static :: Makefile $(INST_STATIC) $(INST_PM)



# --- MakeMaker static_lib section:

$(INST_STATIC): $(OBJECT) $(MYEXTLIB) $(INST_ARCHAUTODIR)/.exists
	$(AR) $(AR_STATIC_ARGS) $@ $(OBJECT) && $(RANLIB) $@
	@echo "$(EXTRALIBS)" > $(INST_ARCHAUTODIR)/extralibs.ld
	$(CHMOD) 755 $@


# --- MakeMaker installpm section:
inst_pm :: $(INST_PM)


# installpm: DBI.pm => $(INST_LIBDIR)/DBI.pm, splitlib=$(INST_LIB)

$(INST_LIBDIR)/DBI.pm: DBI.pm Makefile $(INST_LIBDIR)/.exists $(INST_ARCHAUTODIR)/.exists
	@rm -f $@
	$(UMASK_NULL) && cp DBI.pm $@
	@$(AUTOSPLITFILE) $@ $(INST_LIB)/auto


# installpm: DBIXS.h => $(INST_ARCHLIBDIR)/DBI/DBIXS.h, splitlib=$(INST_LIB)

$(INST_ARCHLIBDIR)/DBI/DBIXS.h: DBIXS.h Makefile $(INST_ARCHLIBDIR)/DBI/.exists $(INST_ARCHAUTODIR)/.exists
	@rm -f $@
	$(UMASK_NULL) && cp DBIXS.h $@

$(INST_ARCHLIBDIR)/DBI/.exists :: /usr/local/lib/perl5/sun4-solaris/5.002/CORE/perl.h
	@$(MKPATH) $(INST_ARCHLIBDIR)/DBI
	@$(EQUALIZE_TIMESTAMP) $(PERL) $(INST_ARCHLIBDIR)/DBI/.exists
	-@$(CHMOD) 755 $(INST_ARCHLIBDIR)/DBI


# installpm: lib/DBD/ExampleP.pm => $(INST_LIB)/DBD/ExampleP.pm, splitlib=$(INST_LIB)

$(INST_LIB)/DBD/ExampleP.pm: lib/DBD/ExampleP.pm Makefile $(INST_LIB)/DBD/.exists $(INST_ARCHAUTODIR)/.exists
	@rm -f $@
	$(UMASK_NULL) && cp lib/DBD/ExampleP.pm $@
	@$(AUTOSPLITFILE) $@ $(INST_LIB)/auto

$(INST_LIB)/DBD/.exists :: /usr/local/lib/perl5/sun4-solaris/5.002/CORE/perl.h
	@$(MKPATH) $(INST_LIB)/DBD
	@$(EQUALIZE_TIMESTAMP) $(PERL) $(INST_LIB)/DBD/.exists
	-@$(CHMOD) 755 $(INST_LIB)/DBD


# installpm: lib/DBD/NullP.pm => $(INST_LIB)/DBD/NullP.pm, splitlib=$(INST_LIB)

$(INST_LIB)/DBD/NullP.pm: lib/DBD/NullP.pm Makefile $(INST_LIB)/DBD/.exists $(INST_ARCHAUTODIR)/.exists
	@rm -f $@
	$(UMASK_NULL) && cp lib/DBD/NullP.pm $@
	@$(AUTOSPLITFILE) $@ $(INST_LIB)/auto


# installpm: lib/DBD/Sponge.pm => $(INST_LIB)/DBD/Sponge.pm, splitlib=$(INST_LIB)

$(INST_LIB)/DBD/Sponge.pm: lib/DBD/Sponge.pm Makefile $(INST_LIB)/DBD/.exists $(INST_ARCHAUTODIR)/.exists
	@rm -f $@
	$(UMASK_NULL) && cp lib/DBD/Sponge.pm $@
	@$(AUTOSPLITFILE) $@ $(INST_LIB)/auto



# --- MakeMaker manifypods section:

manifypods :


# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	-rm -rf DBI.c ./blib $(MAKE_APERL_FILE) $(INST_ARCHAUTODIR)/extralibs.all perlmain.c mon.out core so_locations *~ */*~ */*/*~ *$(OBJ_EXT) *$(LIB_EXT) perl.exe $(BOOTSTRAP) $(BASEEXT).bso $(BASEEXT).def $(BASEEXT).exp
	-mv Makefile Makefile.old 2>/dev/null


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	rm -rf $(INST_AUTODIR) $(INST_ARCHAUTODIR)
	rm -f $(INST_DYNAMIC) $(INST_BOOT)
	rm -f $(INST_STATIC) $(INST_PM)
	rm -rf Makefile Makefile.old


# --- MakeMaker dist_basics section:

distclean :: realclean distcheck

distcheck :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -e 'use ExtUtils::Manifest "&fullcheck";' \
		-e 'fullcheck();'

skipcheck :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -e 'use ExtUtils::Manifest "&skipcheck";' \
		-e 'skipcheck();'

manifest :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -e 'use ExtUtils::Manifest "&mkmanifest";' \
		-e 'mkmanifest();'


# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT)

tardist : $(DISTVNAME).tar.$(SUFFIX)

$(DISTVNAME).tar.$(SUFFIX) : distdir
	$(PREOP)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

uutardist : $(DISTVNAME).tar.$(SUFFIX)
	uuencode $(DISTVNAME).tar.$(SUFFIX) \
		$(DISTVNAME).tar.$(SUFFIX) > \
		$(DISTVNAME).tar.$(SUFFIX).uu

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker dist_dir section:

distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -e 'use ExtUtils::Manifest "/mani/";' \
		-e 'manicopy(maniread(),"$(DISTVNAME)", "$(DIST_CP)");'


# --- MakeMaker dist_test section:

disttest : distdir
	cd $(DISTVNAME) && $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) Makefile.PL
	cd $(DISTVNAME) && $(MAKE)
	cd $(DISTVNAME) && $(MAKE) test


# --- MakeMaker dist_ci section:

ci :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -e 'use ExtUtils::Manifest "&maniread";' \
		-e '@all = keys %{ maniread() };' \
		-e 'print("Executing $(CI) @all\n"); system("$(CI) @all");' \
		-e 'print("Executing $(RCS_LABEL) ...\n"); system("$(RCS_LABEL) @all");'


# --- MakeMaker install section:

install :: all pure_install doc_install

install_perl :: pure_perl_install doc_perl_install

install_site :: pure_site_install doc_site_install

install_ :: install_site
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_install :: pure_$(INSTALLDIRS)_install

doc_install :: doc_$(INSTALLDIRS)_install
	@echo Appending installation info to $(INSTALLARCHLIB)/perllocal.pod

pure__install : pure_site_install
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install ::
	@$(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(INSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(INSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(INSTALLARCHLIB) \
		$(INST_EXE) $(INSTALLBIN) \
		$(INST_MAN1DIR) $(INSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(INSTALLMAN3DIR)
	@$(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)/


pure_site_install ::
	@$(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(INSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(INSTALLSITELIB) \
		$(INST_ARCHLIB) $(INSTALLSITEARCH) \
		$(INST_EXE) $(INSTALLBIN) \
		$(INST_MAN1DIR) $(INSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(INSTALLMAN3DIR)
	@$(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)/

doc_perl_install ::
	@$(DOC_INSTALL) \
		"$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(INSTALLARCHLIB)/perllocal.pod

doc_site_install ::
	@$(DOC_INSTALL) \
		"Module $(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(INSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs

uninstall_from_perldirs ::
	@$(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	@$(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE:


# --- MakeMaker perldepend section:

PERL_HDRS = $(PERL_INC)/EXTERN.h $(PERL_INC)/INTERN.h \
    $(PERL_INC)/XSUB.h	$(PERL_INC)/av.h	$(PERL_INC)/cop.h \
    $(PERL_INC)/cv.h	$(PERL_INC)/dosish.h	$(PERL_INC)/embed.h \
    $(PERL_INC)/form.h	$(PERL_INC)/gv.h	$(PERL_INC)/handy.h \
    $(PERL_INC)/hv.h	$(PERL_INC)/keywords.h	$(PERL_INC)/mg.h \
    $(PERL_INC)/op.h	$(PERL_INC)/opcode.h	$(PERL_INC)/patchlevel.h \
    $(PERL_INC)/perl.h	$(PERL_INC)/perly.h	$(PERL_INC)/pp.h \
    $(PERL_INC)/proto.h	$(PERL_INC)/regcomp.h	$(PERL_INC)/regexp.h \
    $(PERL_INC)/scope.h	$(PERL_INC)/sv.h	$(PERL_INC)/unixish.h \
    $(PERL_INC)/util.h	$(PERL_INC)/config.h



$(OBJECT) : $(PERL_HDRS)

DBI.c : $(XSUBPPDEPS)


# --- MakeMaker makefile section:

$(OBJECT) : $(FIRST_MAKEFILE)

# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
Makefile :	Makefile.PL $(CONFIGDEP)
	@echo "Makefile out-of-date with respect to $?"
	@echo "Cleaning current config before rebuilding Makefile..."
	-@mv Makefile Makefile.old
	-$(MAKE) -f Makefile.old clean >/dev/null 2>&1 || true
	$(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" Makefile.PL 
	@echo ">>> Your Makefile has been rebuilt. <<<"
	@echo ">>> Please rerun the make command.  <<<"; false


# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/local/bin/perl

$(MAP_TARGET) :: $(MAKE_APERL_FILE)
	$(MAKE) -f $(MAKE_APERL_FILE) static $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE)
	@echo Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	@$(PERL) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)

test :: $(TEST_TYPE)

test_dynamic :: all
	PERL_DL_NONLAZY=1 $(FULLPERL) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -e 'use Test::Harness qw(&runtests $$verbose); $$verbose=$(TEST_VERBOSE); runtests @ARGV;' t/*.t
	PERL_DL_NONLAZY=1 $(FULLPERL) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) test.pl

test_ : test_dynamic

test_static :: all $(MAP_TARGET)
	PERL_DL_NONLAZY=1 ./$(MAP_TARGET) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -e 'use Test::Harness qw(&runtests $$verbose); $$verbose=$(TEST_VERBOSE); runtests @ARGV;' t/*.t
	PERL_DL_NONLAZY=1 ./$(MAP_TARGET) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) test.pl



# --- MakeMaker postamble section:


# --- MakeMaker selfdocument section:

# Full list of MakeMaker attribute values:
#	AR => q[ar]
#	AR_STATIC_ARGS => q[cr]
#	BASEEXT => q[DBI]
#	BOOTDEP => q[]
#	C => [q[DBI.c]]
#	CC => q[gcc]
#	CCCDLFLAGS => q[-fpic]
#	CCDLFLAGS => q[ ]
#	CHMOD => q[chmod]
#	CONFIG => [q[ar], q[cc], q[cccdlflags], q[ccdlflags], q[dlext], q[dlsrc], q[ld], q[lddlflags], q[ldflags], q[libc], q[lib_ext], q[obj_ext], q[ranlib], q[sitelibexp], q[sitearchexp], q[so]]
#	CONST_CCCMD => q[CCCMD = $(CC) -c $(INC) -DDEBUGGING -I/usr/local/include -I/opt/gnu/include -g $(DEFINE_VERSION) $(XS_DEFINE_VERSION) ]
#	CP => q[cp]
#	DEFINE => q[-Wall -pedantic -Wno-comment -g -Wpointer-arith -Wcast-align -Wconversion]
#	DIR => []
#	DIR_TARGET => { PACK001=HASH(...)=>{ $(INST_ARCHAUTODIR)=>q[3], $(INST_LIBDIR)=>q[2], $(INST_LIB)/DBD=>q[3], $(INST_AUTODIR)=>q[1], $(INST_ARCHLIBDIR)/DBI=>q[1] } }
#	DISTNAME => q[DBI]
#	DLBASE => q[$(BASEEXT)]
#	DLEXT => q[so]
#	DLSRC => q[dl_dlopen.xs]
#	FIRST_MAKEFILE => q[Makefile]
#	FULLEXT => q[DBI]
#	FULLPERL => q[/usr/local/bin/perl]
#	H => [q[DBIXS.h]]
#	HAS_LINK_CODE => q[1]
#	INSTALLARCHLIB => q[$(PREFIX)/lib/perl5/sun4-solaris/5.002]
#	INSTALLBIN => q[$(PREFIX)/bin]
#	INSTALLDIRS => q[site]
#	INSTALLMAN1DIR => q[$(PREFIX)/man/man1]
#	INSTALLMAN3DIR => q[$(PREFIX)/lib/perl5/man/man3]
#	INSTALLPRIVLIB => q[$(PREFIX)/lib/perl5]
#	INSTALLSITEARCH => q[$(PREFIX)/lib/perl5/site_perl/sun4-solaris]
#	INSTALLSITELIB => q[$(PREFIX)/lib/perl5/site_perl]
#	INST_ARCHLIB => q[$(INSTALLARCHLIB)]
#	INST_EXE => q[./blib/bin/]
#	INST_LIB => q[$(INSTALLPRIVLIB)]
#	INST_MAN1DIR => q[./blib/man1/]
#	INST_MAN3DIR => q[./blib/man3/]
#	LD => q[gcc]
#	LDDLFLAGS => q[-G -L/usr/local/lib -L/opt/gnu/lib]
#	LDFLAGS => q[ -L/usr/local/lib -L/opt/gnu/lib]
#	LDFROM => q[$(OBJECT)]
#	LD_RUN_PATH => q[]
#	LIBC => q[/lib/libc.so]
#	LIBPERL_A => q[libperl.a]
#	LIBS => [q[]]
#	LIB_EXT => q[.a]
#	LINKTYPE => q[dynamic]
#	MAKEFILE => q[Makefile]
#	MAKE_APERL_FILE => q[Makefile.aperl]
#	MAN1EXT => q[1]
#	MAN1PODS => {  }
#	MAN3EXT => q[3]
#	MAN3PODS => {  }
#	MAP_TARGET => q[perl]
#	MV => q[mv]
#	NAME => q[DBI]
#	NAME_SYM => q[DBI]
#	NEEDS_LINKING => q[1]
#	NOECHO => q[@]
#	NOOP => q[]
#	OBJECT => q[$(BASEEXT)$(OBJ_EXT)]
#	OBJ_EXT => q[.o]
#	O_FILES => [q[DBI.o]]
#	PERL => q[/usr/local/bin/perl]
#	PERLMAINCC => q[$(CC)]
#	PERL_ARCHLIB => q[/usr/local/lib/perl5/sun4-solaris/5.002]
#	PERL_INC => q[/usr/local/lib/perl5/sun4-solaris/5.002/CORE/]
#	PERL_LIB => q[/usr/local/lib/perl5]
#	PERL_SRC => undef
#	PL_FILES => {  }
#	PM => { DBIXS.h=>q[$(INST_ARCHLIBDIR)/DBI/DBIXS.h], DBI.pm=>q[$(INST_LIBDIR)/DBI.pm], lib/DBD/NullP.pm=>q[$(INST_LIB)/DBD/NullP.pm], lib/DBD/ExampleP.pm=>q[$(INST_LIB)/DBD/ExampleP.pm], lib/DBD/Sponge.pm=>q[$(INST_LIB)/DBD/Sponge.pm] }
#	PMLIBDIRS => [q[lib]]
#	PREFIX => q[/usr/local]
#	RANLIB => q[:]
#	RM_F => q[rm -f]
#	RM_RF => q[rm -rf]
#	ROOTEXT => q[]
#	SITEARCHEXP => q[/usr/local/lib/perl5/site_perl/sun4-solaris]
#	SITELIBEXP => q[/usr/local/lib/perl5/site_perl]
#	SKIPHASH => {  }
#	SO => q[so]
#	TOUCH => q[touch]
#	UMASK_NULL => q[umask 0]
#	VERSION => q[0.67]
#	VERSION_FROM => q[DBI.pm]
#	VERSION_SYM => q[0_67]
#	XS => { DBI.xs=>q[DBI.c] }
#	XSPROTOARG => q[]
#	XS_VERSION => q[0.67]
#	dist => { DIST_DEFAULT=>q[clean distcheck disttest ci tardist] }

# End.
