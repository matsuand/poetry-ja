##
## This is part of Japanese translation version for Poetry's documantation.
##

SUBDIRS = content layouts

copydirs = \
	archetypes \
	assets     \
	bin        \
	resources  \
	src        \
	static

.PHONY: all _copydirs _copyfiles _build
all: _copydirs _copyfiles _build

_copydirs:
	@for d in $(copydirs); do \
	  if test ! -d $$d ; then \
	    cp -pR $(abs_websitedir)/$$d .; \
	  fi \
	done

copyfiles = \
	.eslintrc.js       \
	.pre-commit-config.yaml \
	.prettierrc.js     \
	babel.config.json  \
	config.toml        \
	Gemfile            \
	Gemfile.lock       \
	package.json       \
	package-lock.json  \
	poetry.lock        \
	postcss.config.js  \
	pyproject.toml     \
	README.md          \
	rollup.config.js   \
	tailwind.config.js \
	vercel.json

_copyfiles:
	@for f in $(copyfiles); do \
	  if test ! -e $$f ; then \
	    cp -p $(abs_websitedir)/$$f .; \
	  fi \
	done


_build:
	@pushd $(abs_srcdir)/../build/website; \
	  poetry run python bin/website build --local ../poetry ; \
	  if test ! -d node_modules; then \
	    npm ci && npm run prod ; \
	  fi ; \
	  $(HUGOBIN) -v --minify -d $(abs_srcdir)/../build/public \
	    -b http://lfstranslation5/poetry-ja/ ; \
	popd
