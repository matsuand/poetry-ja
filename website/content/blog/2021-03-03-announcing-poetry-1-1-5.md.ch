%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.1.5"
date: 2021-03-03 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
@y
---
layout: single
title: "Announcing Poetry 1.1.5"
date: 2021-03-03 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
@z

@x
aliases:
  - announcing-poetry-1-1-5.html
---
@y
aliases:
  - announcing-poetry-1-1-5.html
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry 1.1.5.
@y
The Poetry team is pleased to announce the immediate availability of Poetry 1.1.5.
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
getting Poetry 1.1.5 is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry 1.1.5 is as easy as:
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
- Fixed an error in the `export` command when no lock file existed and a verbose flag was passed to the command. ([#3310](https://github.com/python-poetry/poetry/pull/3310))
- Fixed an error where the `pyproject.toml` was not reverted when using the `add` command. ([#3622](https://github.com/python-poetry/poetry/pull/3622))
- Fixed errors when using non-HTTPS indices. ([#3622](https://github.com/python-poetry/poetry/pull/3622))
- Fixed errors when handling simple indices redirection. ([#3622](https://github.com/python-poetry/poetry/pull/3622))
- Fixed errors when trying to handle newer wheels by using the latest version of `poetry-core` and `packaging`. ([#3677](https://github.com/python-poetry/poetry/pull/3677))
- Fixed an error when using some versions of `poetry-core` due to an incorrect import . ([#3696](https://github.com/python-poetry/poetry/pull/3696))
@y
- Fixed an error in the `export` command when no lock file existed and a verbose flag was passed to the command. ([#3310](https://github.com/python-poetry/poetry/pull/3310))
- Fixed an error where the `pyproject.toml` was not reverted when using the `add` command. ([#3622](https://github.com/python-poetry/poetry/pull/3622))
- Fixed errors when using non-HTTPS indices. ([#3622](https://github.com/python-poetry/poetry/pull/3622))
- Fixed errors when handling simple indices redirection. ([#3622](https://github.com/python-poetry/poetry/pull/3622))
- Fixed errors when trying to handle newer wheels by using the latest version of `poetry-core` and `packaging`. ([#3677](https://github.com/python-poetry/poetry/pull/3677))
- Fixed an error when using some versions of `poetry-core` due to an incorrect import . ([#3696](https://github.com/python-poetry/poetry/pull/3696))
@z
