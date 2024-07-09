%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.0.1"
date: 2020-01-10 10:12:35
categories: [releases]
tags: ["1.x"]
@y
---
layout: single
title: "Announcing Poetry 1.0.1"
date: 2020-01-10 10:12:35
categories: [releases]
tags: ["1.x"]
@z

@x
aliases:
  - announcing-poetry-1-0-1.html
---
@y
aliases:
  - announcing-poetry-1-0-1.html
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry 1.0.1.
@y
The Poetry team is pleased to announce the immediate availability of Poetry 1.0.1.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
This release is a bugfix release.
@y
This release is a bugfix release.
@z

@x
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry 1.0.1 is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry 1.0.1 is as easy as:
@z

@x
```bash
$ poetry self update
```
@y
```bash
$ poetry self update
```
@z

@x
### Fixes
@y
### Fixes
@z

@x
- Fixed an error in `env use` where the wrong Python executable was being used to check compatibility ([#1736](https://github.com/python-poetry/poetry/pull/1736)).
- Fixed an error where VCS dependencies were not properly categorized as development dependencies ([#1725](https://github.com/python-poetry/poetry/pull/1725)).
- Fixed an error where some shells would no longer be usable after using the `shell` command ([#1673](https://github.com/python-poetry/poetry/pull/1673)).
- Fixed an error where explicitly included files where not included in wheel distributions ([#1750](https://github.com/python-poetry/poetry/pull/1750)).
- Fixed an error where some Git dependencies url were not properly parsed ([#1756](https://github.com/python-poetry/poetry/pull/1756)).
- Fixed an error in the `env` commands on Windows if the path to the executable contained a space ([#1774](https://github.com/python-poetry/poetry/pull/1774)).
- Fixed several errors and UX issues caused by `keyring` on some systems ([#1788](https://github.com/python-poetry/poetry/pull/1788)).
- Fixed errors when trying to detect installed packages ([#1786](https://github.com/python-poetry/poetry/pull/1786)).
- Fixed an error when packaging projects where Python packages were not properly detected ([#1592](https://github.com/python-poetry/poetry/pull/1592)).
- Fixed an error where local file dependencies were exported as editable when using the `export` command ([#1840](https://github.com/python-poetry/poetry/pull/1840)).
- Fixed the way environment markers are propagated and evaluated when resolving dependencies ([#1829](https://github.com/python-poetry/poetry/pull/1829), [#1789](https://github.com/python-poetry/poetry/pull/1789)).
- Fixed an error in the PEP-508 compliant representation of directory and file dependencies ([#1796](https://github.com/python-poetry/poetry/pull/1796)).
- Fixed an error where invalid virtual environments would be silently used. They will not be recreated and a warning will be displayed ([#1797](https://github.com/python-poetry/poetry/pull/1797)).
- Fixed an error where dependencies were not properly detected when reading the `setup.py` file in some cases ([#1764](https://github.com/python-poetry/poetry/pull/1764)).
@y
- Fixed an error in `env use` where the wrong Python executable was being used to check compatibility ([#1736](https://github.com/python-poetry/poetry/pull/1736)).
- Fixed an error where VCS dependencies were not properly categorized as development dependencies ([#1725](https://github.com/python-poetry/poetry/pull/1725)).
- Fixed an error where some shells would no longer be usable after using the `shell` command ([#1673](https://github.com/python-poetry/poetry/pull/1673)).
- Fixed an error where explicitly included files where not included in wheel distributions ([#1750](https://github.com/python-poetry/poetry/pull/1750)).
- Fixed an error where some Git dependencies url were not properly parsed ([#1756](https://github.com/python-poetry/poetry/pull/1756)).
- Fixed an error in the `env` commands on Windows if the path to the executable contained a space ([#1774](https://github.com/python-poetry/poetry/pull/1774)).
- Fixed several errors and UX issues caused by `keyring` on some systems ([#1788](https://github.com/python-poetry/poetry/pull/1788)).
- Fixed errors when trying to detect installed packages ([#1786](https://github.com/python-poetry/poetry/pull/1786)).
- Fixed an error when packaging projects where Python packages were not properly detected ([#1592](https://github.com/python-poetry/poetry/pull/1592)).
- Fixed an error where local file dependencies were exported as editable when using the `export` command ([#1840](https://github.com/python-poetry/poetry/pull/1840)).
- Fixed the way environment markers are propagated and evaluated when resolving dependencies ([#1829](https://github.com/python-poetry/poetry/pull/1829), [#1789](https://github.com/python-poetry/poetry/pull/1789)).
- Fixed an error in the PEP-508 compliant representation of directory and file dependencies ([#1796](https://github.com/python-poetry/poetry/pull/1796)).
- Fixed an error where invalid virtual environments would be silently used. They will not be recreated and a warning will be displayed ([#1797](https://github.com/python-poetry/poetry/pull/1797)).
- Fixed an error where dependencies were not properly detected when reading the `setup.py` file in some cases ([#1764](https://github.com/python-poetry/poetry/pull/1764)).
@z
