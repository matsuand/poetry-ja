%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.8.0 is out"
date: 2018-04-13 09:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.8.0 is out"
date: 2018-04-13 09:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-8-0-is-out.html
---
@y
aliases:
  - poetry-0-8-0-is-out.html
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
### Support for Python 2.7
@y
### Support for Python 2.7
@z

@x
After adding support for Python 3.4 and 3.5 in version 0.7.0, `poetry`
now supports Python 2.7.
@y
After adding support for Python 3.4 and 3.5 in version 0.7.0, `poetry`
now supports Python 2.7.
@z

@x
The decision was made so that Python 2.7 projects can benefit from
the advantages that `poetry` provides.
@y
The decision was made so that Python 2.7 projects can benefit from
the advantages that `poetry` provides.
@z

@x
### Fallback mechanism for missing dependencies
@y
### Fallback mechanism for missing dependencies
@z

@x
`poetry` uses the PyPI JSON API to retrieve package information.
@y
`poetry` uses the PyPI JSON API to retrieve package information.
@z

@x
However, some packages (like `boto3` for example) have missing dependency
information due to bad packaging/publishing which means that `poetry` won't
be able to properly resolve dependencies.
@y
However, some packages (like `boto3` for example) have missing dependency
information due to bad packaging/publishing which means that `poetry` won't
be able to properly resolve dependencies.
@z

@x
To workaround it, a fallback mechanism has been added to `poetry`
that will download packages distributions to check the dependencies.
@y
To workaround it, a fallback mechanism has been added to `poetry`
that will download packages distributions to check the dependencies.
@z

@x
While, in most cases, it will lead to a more exhaustive dependency resolution
it will also considerably slow down the process (up to 30 minutes in some extreme cases
like `boto3`).
@y
While, in most cases, it will lead to a more exhaustive dependency resolution
it will also considerably slow down the process (up to 30 minutes in some extreme cases
like `boto3`).
@z

@x
If you do not want the fallback mechanism, you can deactivate it like so.
@y
If you do not want the fallback mechanism, you can deactivate it like so.
@z

@x
```bash
poetry config settings.pypi.fallback false
```
@y
```bash
poetry config settings.pypi.fallback false
```
@z

@x
In this case you will need to specify the missing dependencies in you `pyproject.toml`
file.
@y
In this case you will need to specify the missing dependencies in you `pyproject.toml`
file.
@z

@x
Any case of missing dependencies should be reported to
the offical [repository](https://github.com/python-poetry/poetry/issues)
and on the repository of the package with missing dependencies.
@y
Any case of missing dependencies should be reported to
the offical [repository](https://github.com/python-poetry/poetry/issues)
and on the repository of the package with missing dependencies.
@z

@x
### New `search` command
@y
### New `search` command
@z

@x
The `search` command has been added which allows you to search for packages
by name on PyPI.
@y
The `search` command has been added which allows you to search for packages
by name on PyPI.
@z

@x
### New `self:update` command
@y
### New `self:update` command
@z

@x
The `self:update` command has been added to ease updating poetry.
@y
The `self:update` command has been added to ease updating poetry.
@z

@x
```bash
poetry self:update
```
@y
```bash
poetry self:update
```
@z

@x
If you want to install prerelease versions, you can use the `--preview` option.
@y
If you want to install prerelease versions, you can use the `--preview` option.
@z

@x
```bash
poetry self:update --preview
```
@y
```bash
poetry self:update --preview
```
@z

@x
And finally, if you want to install a spcific version you can pass it as an argument
to `self:update`.
@y
And finally, if you want to install a spcific version you can pass it as an argument
to `self:update`.
@z

@x
```bash
poetry self:update 0.8.0
```
@y
```bash
poetry self:update 0.8.0
```
@z

@x
### Support for local files dependencies
@y
### Support for local files dependencies
@z

@x
You can now add local files (wheels or sdist) as dependencies in your
`pyproject.toml` file.
@y
You can now add local files (wheels or sdist) as dependencies in your
`pyproject.toml` file.
@z

@x
```toml
[dependencies]
demo = { file = "./distributions/demo-0.1.0-py2.py3-none-any.whl" }
```
@y
```toml
[dependencies]
demo = { file = "./distributions/demo-0.1.0-py2.py3-none-any.whl" }
```
@z

@x
## Changes
@y
## Changes
@z

@x
- Improved dependency resolution time by using cache control.
@y
- Improved dependency resolution time by using cache control.
@z

@x
## Fixes
@y
## Fixes
@z

@x
- Fixed `install_requires` and `extras` in generated sdist.
- Fixed dependency resolution crash with malformed dependencies.
- Fixed errors when `license` metadata is not set.
- Fixed missing information in lock file.
@y
- Fixed `install_requires` and `extras` in generated sdist.
- Fixed dependency resolution crash with malformed dependencies.
- Fixed errors when `license` metadata is not set.
- Fixed missing information in lock file.
@z
