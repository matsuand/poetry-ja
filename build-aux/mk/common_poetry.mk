##
## This is part of Japanese translation version for Poetry's documantation.
##
#thisdir       = ${shell echo $(subdir) | sed -e "s|^poetry/||" -e "s|^poetry|\.|"}
thisdir       = ${shell echo $(subdir) | sed -e "s|^poetry/||"}
abs_poetrydir = @abs_poetrydir@/$(thisdir)
srcdir        = @srcdir@
abs_thisdir   = @abs_srcdir@

from1_dir = $(abs_poetrydir)
from2_dir = $(srcdir)

.PHONY: all ctie
all: ctie
ctie:
	@if test ! -x "$(top_builddir)/build-aux/$@/$@"; then \
	  $(MAKE) -C $(top_builddir)/build-aux//$@ $@ >/dev/null; \
	fi
