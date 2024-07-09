%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.0.6"
date: 2020-06-05 10:12:35
categories: [releases]
tags: ["1.x"]
@y
---
layout: single
title: "Announcing Poetry 1.0.6"
date: 2020-06-05 10:12:35
categories: [releases]
tags: ["1.x"]
@z

@x
aliases:
  - announcing-poetry-1-0-6.html
---
@y
aliases:
  - announcing-poetry-1-0-6.html
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry 1.0.6.
@y
The Poetry team is pleased to announce the immediate availability of Poetry 1.0.6.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
This release is a bugfix release with some small changes to make the upgrade to future releases easier.
@y
This release is a bugfix release with some small changes to make the upgrade to future releases easier.
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
<p>It is heavily recommended to upgrade to this version before upgrading to any other version.</p>
{{% /note %}}
@y
<p>It is heavily recommended to upgrade to this version before upgrading to any other version.</p>
{{% /note %}}
@z

@x
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry 1.0.6 is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry 1.0.6 is as easy as:
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
- The `self update` command has been updated in order to handle future releases of Poetry ([#2429](https://github.com/python-poetry/poetry/pull/2429)).
@y
- The `self update` command has been updated in order to handle future releases of Poetry ([#2429](https://github.com/python-poetry/poetry/pull/2429)).
@z

@x
### Fixes
@y
### Fixes
@z

@x
- Fixed an error were a new line was not written when displaying the virtual environment's path with `env info` ([#2196](https://github.com/python-poetry/poetry/pull/2196)).
- Fixed a misleading error message when the `packages` property was empty ([#2265](https://github.com/python-poetry/poetry/pull/2265)).
- Fixed shell detection by using environment variables ([#2147](https://github.com/python-poetry/poetry/pull/2147)).
- Fixed the removal of VCS dependencies ([#2239](https://github.com/python-poetry/poetry/pull/2239)).
- Fixed generated wheel ABI tags for Python 3.8 ([#2121](https://github.com/python-poetry/poetry/pull/2121)).
- Fixed a regression when building stub-only packages ([#2000](https://github.com/python-poetry/poetry/pull/2000)).
- Fixed errors when parsing PEP-440 constraints with whitespace ([#2347](https://github.com/python-poetry/poetry/pull/2347)).
- Fixed PEP 508 representation of VCS dependencies ([#2349](https://github.com/python-poetry/poetry/pull/2349)).
- Fixed errors when source distributions were read-only ([#1140](https://github.com/python-poetry/poetry/pull/1140)).
- Fixed dependency resolution errors and inconsistencies with directory, file and VCS dependencies ([#2398](https://github.com/python-poetry/poetry/pull/2398)).
- Fixed custom repositories information not being properly locked ([#2484](https://github.com/python-poetry/poetry/pull/2484)).
@y
- Fixed an error were a new line was not written when displaying the virtual environment's path with `env info` ([#2196](https://github.com/python-poetry/poetry/pull/2196)).
- Fixed a misleading error message when the `packages` property was empty ([#2265](https://github.com/python-poetry/poetry/pull/2265)).
- Fixed shell detection by using environment variables ([#2147](https://github.com/python-poetry/poetry/pull/2147)).
- Fixed the removal of VCS dependencies ([#2239](https://github.com/python-poetry/poetry/pull/2239)).
- Fixed generated wheel ABI tags for Python 3.8 ([#2121](https://github.com/python-poetry/poetry/pull/2121)).
- Fixed a regression when building stub-only packages ([#2000](https://github.com/python-poetry/poetry/pull/2000)).
- Fixed errors when parsing PEP-440 constraints with whitespace ([#2347](https://github.com/python-poetry/poetry/pull/2347)).
- Fixed PEP 508 representation of VCS dependencies ([#2349](https://github.com/python-poetry/poetry/pull/2349)).
- Fixed errors when source distributions were read-only ([#1140](https://github.com/python-poetry/poetry/pull/1140)).
- Fixed dependency resolution errors and inconsistencies with directory, file and VCS dependencies ([#2398](https://github.com/python-poetry/poetry/pull/2398)).
- Fixed custom repositories information not being properly locked ([#2484](https://github.com/python-poetry/poetry/pull/2484)).
@z
