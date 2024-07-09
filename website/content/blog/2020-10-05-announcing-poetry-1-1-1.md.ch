%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.1.1"
date: 2020-10-05 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
@y
---
layout: single
title: "Announcing Poetry 1.1.1"
date: 2020-10-05 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
@z

@x
aliases:
  - announcing-poetry-1-1-1.html
---
@y
aliases:
  - announcing-poetry-1-1-1.html
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry 1.1.1.
@y
The Poetry team is pleased to announce the immediate availability of Poetry 1.1.1.
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
getting Poetry 1.1.1 is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry 1.1.1 is as easy as:
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
### Features
@y
### Features
@z

@x
- Added `--no-update` option to `lock` command. ([#3034](https://github.com/python-poetry/poetry/pull/3034))
@y
- Added `--no-update` option to `lock` command. ([#3034](https://github.com/python-poetry/poetry/pull/3034))
@z

@x
### Fixes
@y
### Fixes
@z

@x
- Fixed resolution of packages with missing required extras. ([#3035](https://github.com/python-poetry/poetry/pull/3035))
- Fixed export of `requirements.txt` dependencies to include development dependencies. ([#3024](https://github.com/python-poetry/poetry/pull/3024))
- Fixed incorrect selection of unsupported binary distribution formats when selecting a package artifact to install. ([#3058](https://github.com/python-poetry/poetry/pull/3058))
- Fixed incorrect use of system executable when building package distributions via `build` command. ([#3056](https://github.com/python-poetry/poetry/pull/3056))
- Fixed errors in `init` command when specifying `--dependency` in non-interactive mode when a `pyproject.toml` file already exists. ([#3076](https://github.com/python-poetry/poetry/pull/3076))
- Fixed incorrect selection of configured source url when a publish repository url configuration with the same name already exists. ([#3047](https://github.com/python-poetry/poetry/pull/3047))
- Fixed dependency resolution issues when the same package is specified in multiple dependency extras. ([#3046](https://github.com/python-poetry/poetry/pull/3046))
@y
- Fixed resolution of packages with missing required extras. ([#3035](https://github.com/python-poetry/poetry/pull/3035))
- Fixed export of `requirements.txt` dependencies to include development dependencies. ([#3024](https://github.com/python-poetry/poetry/pull/3024))
- Fixed incorrect selection of unsupported binary distribution formats when selecting a package artifact to install. ([#3058](https://github.com/python-poetry/poetry/pull/3058))
- Fixed incorrect use of system executable when building package distributions via `build` command. ([#3056](https://github.com/python-poetry/poetry/pull/3056))
- Fixed errors in `init` command when specifying `--dependency` in non-interactive mode when a `pyproject.toml` file already exists. ([#3076](https://github.com/python-poetry/poetry/pull/3076))
- Fixed incorrect selection of configured source url when a publish repository url configuration with the same name already exists. ([#3047](https://github.com/python-poetry/poetry/pull/3047))
- Fixed dependency resolution issues when the same package is specified in multiple dependency extras. ([#3046](https://github.com/python-poetry/poetry/pull/3046))
@z
