##
## This is part of Japanese translation version for Poetry's documantation.
##
thisdir        = ${shell echo $(subdir) | sed -e "s|^website/||" -e "s|^website|\.|"}
abs_websitedir = @abs_websitedir@/$(thisdir)
srcdir         = @srcdir@
abs_thisdir    = @abs_srcdir@

from1_dir = $(abs_websitedir)
from2_dir = $(srcdir)

.PHONY: all ctie
all: ctie
ctie:
	@if test ! -x "$(top_builddir)/build-aux/$@/$@"; then \
	  $(MAKE) -C $(top_builddir)/build-aux//$@ $@ >/dev/null; \
	fi
