%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.1.2"
date: 2020-10-06 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
@y
---
layout: single
title: "Announcing Poetry 1.1.2"
date: 2020-10-06 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
@z

@x
aliases:
  - announcing-poetry-1-1-2.html
---
@y
aliases:
  - announcing-poetry-1-1-2.html
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry 1.1.2.
@y
The Poetry team is pleased to announce the immediate availability of Poetry 1.1.2.
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
getting Poetry 1.1.2 is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry 1.1.2 is as easy as:
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
### Changes
@y
### Changes
@z

@x
- Dependency installation of editable packages and all uninstall operations are now performed serially within their corresponding priority groups. ([#3099](https://github.com/python-poetry/poetry/pull/3099))
- Improved package metadata inspection of nested poetry projects within project path dependencies. ([#3105](https://github.com/python-poetry/poetry/pull/3105))
@y
- Dependency installation of editable packages and all uninstall operations are now performed serially within their corresponding priority groups. ([#3099](https://github.com/python-poetry/poetry/pull/3099))
- Improved package metadata inspection of nested poetry projects within project path dependencies. ([#3105](https://github.com/python-poetry/poetry/pull/3105))
@z

@x
### Fixes
@y
### Fixes
@z

@x
- Fixed export of `requirements.txt` when project dependency contains git dependencies. ([#3100](https://github.com/python-poetry/poetry/pull/3100))
@y
- Fixed export of `requirements.txt` when project dependency contains git dependencies. ([#3100](https://github.com/python-poetry/poetry/pull/3100))
@z
