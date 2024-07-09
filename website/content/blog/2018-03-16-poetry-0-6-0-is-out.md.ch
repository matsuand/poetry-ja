%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.6.0 is out"
date: 2018-03-16 09:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.6.0 is out"
date: 2018-03-16 09:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-6-0-is-out.html
---
@y
aliases:
  - poetry-0-6-0-is-out.html
---
@z

@x
This version brings some improvements and a bunch of bugfixes.
@y
This version brings some improvements and a bunch of bugfixes.
@z

@x
## New Features
@y
## New Features
@z

@x
### Virtualenv autogeneration
@y
### Virtualenv autogeneration
@z

@x
Now, whenever you install packages, Poetry, if not already inside a virtualenv,
will create a virtualenv automatically, or use a previously create one, to always
work isolated from the rest of your system.
@y
Now, whenever you install packages, Poetry, if not already inside a virtualenv,
will create a virtualenv automatically, or use a previously create one, to always
work isolated from the rest of your system.
@z

@x
<aside class="warning"><p>
Since Poetry is 3.6+ only, it will create virtualenvs
using the standard library `venv` module.</p>
@y
<aside class="warning"><p>
Since Poetry is 3.6+ only, it will create virtualenvs
using the standard library `venv` module.</p>
@z

@x
<p>So, if you want to work with a previous Python version in your
project, you will need to create your own virtualenvs using, for instance,
<a href="https://github.com/berdario/pew">pew</a>.
</p></aside>
@y
<p>So, if you want to work with a previous Python version in your
project, you will need to create your own virtualenvs using, for instance,
<a href="https://github.com/berdario/pew">pew</a>.
</p></aside>
@z

@x
### New `run` command
@y
### New `run` command
@z

@x
Related to the new virtualenv autogeneration, the `run` command executes the given
command inside the project's virtualenv.
@y
Related to the new virtualenv autogeneration, the `run` command executes the given
command inside the project's virtualenv.
@z

@x
### Markdown file support
@y
### Markdown file support
@z

@x
Poetry now support using Markdown files as README files.
@y
Poetry now support using Markdown files as README files.
@z

@x
### `pyproject.toml` file validation
@y
### `pyproject.toml` file validation
@z

@x
The `pyproject.toml` file's structure will now be automatically validated.
@y
The `pyproject.toml` file's structure will now be automatically validated.
@z

@x
### New `debug:resolve` command
@y
### New `debug:resolve` command
@z

@x
The `debug:resolve` command is the first of debug command which will help
debugging issues found in Poetry. This one in particular has been added to
have more insight when errors are encountered while resolving dependencies
@y
The `debug:resolve` command is the first of debug command which will help
debugging issues found in Poetry. This one in particular has been added to
have more insight when errors are encountered while resolving dependencies
@z

@x
## Fixes
@y
## Fixes
@z

@x
- Fixed color displayed in `show` command for semver-compatible updates.
- Fixed Python requirements in publishing metadata.
- Fixed `update` command reinstalling every dependency.
@y
- Fixed color displayed in `show` command for semver-compatible updates.
- Fixed Python requirements in publishing metadata.
- Fixed `update` command reinstalling every dependency.
@z
