%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.7.0 is out"
date: 2018-04-04 09:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.7.0 is out"
date: 2018-04-04 09:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-7-0-is-out.html
---
@y
aliases:
  - poetry-0-7-0-is-out.html
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
### Support for Python 3.4+
@y
### Support for Python 3.4+
@z

@x
Previously, Poetry supported Python 3.6+ but after some consideration
it was decided that it would support all Python 3 versions currently by the
Python core team (see https://devguide.python.org/#status-of-python-branches).
@y
Previously, Poetry supported Python 3.6+ but after some consideration
it was decided that it would support all Python 3 versions currently by the
Python core team (see https://devguide.python.org/#status-of-python-branches).
@z

@x
So now, Poetry supports Python 3.4+.
@y
So now, Poetry supports Python 3.4+.
@z

@x
### New standalone installer
@y
### New standalone installer
@z

@x
Poetry now provides a custom installer that will install `poetry` isolated
from the rest of your system by vendorizing its dependencies. This is the
recommended way of installing `poetry`.
@y
Poetry now provides a custom installer that will install `poetry` isolated
from the rest of your system by vendorizing its dependencies. This is the
recommended way of installing `poetry`.
@z

@x
```bash
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
```
@y
```bash
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
```
@z

@x
Alternatively, you can download the `get-poetry.py` file and execute it separately.
@y
Alternatively, you can download the `get-poetry.py` file and execute it separately.
@z

@x
If you want to install prerelease versions, you can do so by passing `--preview` to `get-poetry.py`:
@y
If you want to install prerelease versions, you can do so by passing `--preview` to `get-poetry.py`:
@z

@x
```bash
python get-poetry.py --preview
```
@y
```bash
python get-poetry.py --preview
```
@z

@x
Similarly, if you want to install a specific version, you can use `--version`:
@y
Similarly, if you want to install a specific version, you can use `--version`:
@z

@x
```bash
python get-poetry.py --version 0.7.0
```
@y
```bash
python get-poetry.py --version 0.7.0
```
@z

@x
<aside class="note">
<p>Using <code>pip</code> to install <code>poetry</code> is also possible.</p>
<div class="highlight">
<pre class=" language-bash">
<code class=" language-bash" data-lang="bash">pip install --user poetry</code>
</pre>
</div>
<p>Be aware, however, that it will also install poetry's dependencies
which might cause conflicts.</p>
</aside>
@y
<aside class="note">
<p>Using <code>pip</code> to install <code>poetry</code> is also possible.</p>
<div class="highlight">
<pre class=" language-bash">
<code class=" language-bash" data-lang="bash">pip install --user poetry</code>
</pre>
</div>
<p>Be aware, however, that it will also install poetry's dependencies
which might cause conflicts.</p>
</aside>
@z

@x
### New `version` command
@y
### New `version` command
@z

@x
The `version` has been added which allows you to bump automatically
the version of the project and write the new version back to `pyproject.toml`
@y
The `version` has been added which allows you to bump automatically
the version of the project and write the new version back to `pyproject.toml`
@z

@x
The new version should ideally be a valid semver string or a valid bump rule:
`patch`, `minor`, `major`, `prepatch`, `preminor`, `premajor`, `prerelease`.
@y
The new version should ideally be a valid semver string or a valid bump rule:
`patch`, `minor`, `major`, `prepatch`, `preminor`, `premajor`, `prerelease`.
@z

@x
### New `script` command
@y
### New `script` command
@z

@x
The `script` command executes one of the scripts defined in `pyproject.toml`.
@y
The `script` command executes one of the scripts defined in `pyproject.toml`.
@z

@x
So, if you have a script defined like this:
@y
So, if you have a script defined like this:
@z

@x
```toml
[tool.poetry.scripts]
my-script = "my_module:main"
```
@y
```toml
[tool.poetry.scripts]
my-script = "my_module:main"
```
@z

@x
You can execute it like so:
@y
You can execute it like so:
@z

@x
```bash
poetry script my-script
```
@y
```bash
poetry script my-script
```
@z

@x
### Support for trove classifiers
@y
### Support for trove classifiers
@z

@x
The `tool.poetry` section of the `pyproject.toml` file now accepts
a `classifiers` property which allows you to specify trove classifiers.
@y
The `tool.poetry` section of the `pyproject.toml` file now accepts
a `classifiers` property which allows you to specify trove classifiers.
@z

@x
```toml
classifiers = [
    "Topic :: Software Development :: Build Tools",
    "Topic :: Software Development :: Libraries :: Python Modules"
]
```
@y
```toml
classifiers = [
    "Topic :: Software Development :: Build Tools",
    "Topic :: Software Development :: Libraries :: Python Modules"
]
```
@z

@x
Note that Python classifiers are still automatically added for you and are
determined by your `python` requirement.
@y
Note that Python classifiers are still automatically added for you and are
determined by your `python` requirement.
@z

@x
The `license` property will also set the License classifer automatically.
@y
The `license` property will also set the License classifer automatically.
@z

@x
## Changes
@y
## Changes
@z

@x
- Improved dependency resolution to avoid unnecessary operations.
- Improved dependency resolution speed.
- Improved CLI reactivity by deferring imports.
@y
- Improved dependency resolution to avoid unnecessary operations.
- Improved dependency resolution speed.
- Improved CLI reactivity by deferring imports.
@z

@x
## Fixes
@y
## Fixes
@z

@x
- Fixed handling of markers with the `in` operator.
- Fixed `update` not properly adding new packages to the lock file.
- Fixed solver adding uninstall operations for non-installed packages.
- Fixed `new` command creating invalid `pyproject.toml` files.
@y
- Fixed handling of markers with the `in` operator.
- Fixed `update` not properly adding new packages to the lock file.
- Fixed solver adding uninstall operations for non-installed packages.
- Fixed `new` command creating invalid `pyproject.toml` files.
@z
