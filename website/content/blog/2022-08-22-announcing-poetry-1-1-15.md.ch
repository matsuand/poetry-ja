%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.1.15"
date: 2022-08-22 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
---
@y
---
layout: single
title: "Announcing Poetry 1.1.15"
date: 2022-08-22 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.1.15**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.1.15**.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
This release contains changes to improve the user experience, when working in an environment where Poetry 1.1 and the
upcoming 1.2 release are used.
@y
This release contains changes to improve the user experience, when working in an environment where Poetry 1.1 and the
upcoming 1.2 release are used.
@z

@x
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry **1.1.15** is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry **1.1.15** is as easy as:
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
## Compatibility between Poetry 1.1 and 1.2
@y
## Compatibility between Poetry 1.1 and 1.2
@z

@x
Once Poetry 1.2.0 is out in the wild, projects will start depending on 1.2-only features like dependency groups.
@y
Once Poetry 1.2.0 is out in the wild, projects will start depending on 1.2-only features like dependency groups.
@z

@x
Poetry 1.1 will now gracefully handle dependencies that require newer versions of Poetry by treating them as a foreign build system.
@y
Poetry 1.1 will now gracefully handle dependencies that require newer versions of Poetry by treating them as a foreign build system.
@z

@x
See [python-poetry/poetry#5834](https://github.com/python-poetry/poetry/pull/5834) for details.
@y
See [python-poetry/poetry#5834](https://github.com/python-poetry/poetry/pull/5834) for details.
@z

@x
## Changed
@y
## Changed
@z

@x
- Poetry now fallback to gather metadata for dependencies via pep517 if parsing pyproject.toml fail ([#6206](https://github.com/python-poetry/poetry/pull/6206))
- Extras and extras dependencies are now sorted in lock file ([#6207](https://github.com/python-poetry/poetry/pull/6207))
@y
- Poetry now fallback to gather metadata for dependencies via pep517 if parsing pyproject.toml fail ([#6206](https://github.com/python-poetry/poetry/pull/6206))
- Extras and extras dependencies are now sorted in lock file ([#6207](https://github.com/python-poetry/poetry/pull/6207))
@z
