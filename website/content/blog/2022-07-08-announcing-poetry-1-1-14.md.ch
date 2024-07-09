%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.1.14"
date: 2022-07-08 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
---
@y
---
layout: single
title: "Announcing Poetry 1.1.14"
date: 2022-07-08 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.1.14**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.1.14**.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
This release is a bugfix release necessary due to a breaking change on PyPI JSON API.
@y
This release is a bugfix release necessary due to a breaking change on PyPI JSON API.
@z

@x
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry **1.1.14** is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry **1.1.14** is as easy as:
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
Afterwards you have to clear the Poetry cache manually to get everything working again:
@y
Afterwards you have to clear the Poetry cache manually to get everything working again:
@z

@x
```bash
$ poetry cache clear --all pypi
```
@y
```bash
$ poetry cache clear --all pypi
```
@z

@x
## Fixed
@y
## Fixed
@z

@x
- Fixed an issue where dependencies hashes could not be retrieved when locking due to a breaking change on PyPI JSON API ([#5973](https://github.com/python-poetry/poetry/pull/5973))
@y
- Fixed an issue where dependencies hashes could not be retrieved when locking due to a breaking change on PyPI JSON API ([#5973](https://github.com/python-poetry/poetry/pull/5973))
@z
