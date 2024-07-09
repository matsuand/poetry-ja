##
## This is part of Japanese translation version for Poetry's documantation.
##

thisdir = layouts
SUBDIRS = partials

copydirs = \
	_default   \
	blog       \
	docs       \
	page       \
	shortcodes

all: _copydirs _copyfiles

_copydirs:
	@for d in $(copydirs); do \
	  if test ! -d $$d; then \
	    cp -pR $(abs_websitedir)/$(thisdir)/$$d .; \
	  fi \
	done

copyfiles = \
	404.html  \
	home.html

_copyfiles:
	@for f in $(copyfiles); do \
	  if test ! -e $$f; then \
	    cp -p $(abs_websitedir)/$(thisdir)/$$f .; \
	  fi \
	done

.PHONY: all _copydirs _copyfiles
