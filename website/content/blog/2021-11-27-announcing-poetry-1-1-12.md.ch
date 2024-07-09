%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.1.12"
date: 2021-11-27 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
---
@y
---
layout: single
title: "Announcing Poetry 1.1.12"
date: 2021-11-27 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.1.12**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.1.12**.
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
getting Poetry **1.1.12** is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry **1.1.12** is as easy as:
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
- Fixed broken caches on Windows due to `Path` starting with a slash ([#4549](https://github.com/python-poetry/poetry/pull/4549))
- Fixed `JSONDecodeError` when installing packages by updating `cachecontrol` version ([#4831](https://github.com/python-poetry/poetry/pull/4831))
- Fixed dropped markers in dependency walk ([#4686](https://github.com/python-poetry/poetry/pull/4686))
@y
- Fixed broken caches on Windows due to `Path` starting with a slash ([#4549](https://github.com/python-poetry/poetry/pull/4549))
- Fixed `JSONDecodeError` when installing packages by updating `cachecontrol` version ([#4831](https://github.com/python-poetry/poetry/pull/4831))
- Fixed dropped markers in dependency walk ([#4686](https://github.com/python-poetry/poetry/pull/4686))
@z
