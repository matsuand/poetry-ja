##
## This is part of Japanese translation version for Poetry's documantation.
##

SUBDIRS = docs

.PHONY: all _copyfiles
all: _copyfiles

copyfiles = \
	.cirrus.yml             \
	.pre-commit-config.yaml \
	.pre-commit-hooks.yaml  \
	poetry.lock             \
	pyproject.toml

_copyfiles:
	@for f in $(copyfiles); do \
	  if test ! -e $$f; then \
	    cp -p $(abs_poetrydir)/$$f .; \
	  fi \
	done
