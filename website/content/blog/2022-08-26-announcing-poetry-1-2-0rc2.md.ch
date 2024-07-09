%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.2.0rc2"
date: 2022-08-26 00:00:00
categories: ["releases"]
tags: ["1.x", "1.2"]
---
@y
---
layout: single
title: "Announcing Poetry 1.2.0rc2"
date: 2022-08-26 00:00:00
categories: ["releases"]
tags: ["1.x", "1.2"]
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0rc2**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0rc2**.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
If you have a previous version of Poetry installed via the [official installer]({{< relref "docs/#installation" >}}),
getting Poetry **1.2.0rc2** is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer]({{< relref "docs/#installation" >}}),
getting Poetry **1.2.0rc2** is as easy as:
@z

@x
```bash
$ poetry self update --preview
```
@y
```bash
$ poetry self update --preview
```
@z

@x
This release fixes a few issues that were discovered by Poetry users on 1.2.0rc1.
@y
This release fixes a few issues that were discovered by Poetry users on 1.2.0rc1.
@z

@x
Since 1.2.0rc2 is a near-exact representation of 1.2.0, we invite users to test this release and
report issues using the [issue tracker](https://github.com/python-poetry/poetry/issues "Poetry's issue tracker").
@y
Since 1.2.0rc2 is a near-exact representation of 1.2.0, we invite users to test this release and
report issues using the [issue tracker](https://github.com/python-poetry/poetry/issues "Poetry's issue tracker").
@z

@x
Documentation for Poetry 1.2 is available [here](https://python-poetry.org/docs/1.2/). We also invite users to report
any issue found in the documentation, whether it's typos, unclear definitions or missing things.
@y
Documentation for Poetry 1.2 is available [here](https://python-poetry.org/docs/1.2/). We also invite users to report
any issue found in the documentation, whether it's typos, unclear definitions or missing things.
@z

@x
For a complete list of changes, you can refer to the [change log](/history).
@y
For a complete list of changes, you can refer to the [change log](/history).
@z

@x
## Lock file consistency between 1.1 and 1.2
@y
## Lock file consistency between 1.1 and 1.2
@z

@x
Because of a regression in Poetry 1.2 pre-releases, in some conditions, lock files generated with 1.2 were not usable on
1.1. This is now fixed with [#6243](https://github.com/python-poetry/poetry/pull/6243).
@y
Because of a regression in Poetry 1.2 pre-releases, in some conditions, lock files generated with 1.2 were not usable on
1.1. This is now fixed with [#6243](https://github.com/python-poetry/poetry/pull/6243).
@z

@x
## Avoid creating virtual environment on `poetry self`
@y
## Avoid creating virtual environment on `poetry self`
@z

@x
Running `poetry self` was creating a virtual environment, which was unnecessary and could lead to issues. This is not
the case anymore with [#6226](https://github.com/python-poetry/poetry/pull/6226).
@y
Running `poetry self` was creating a virtual environment, which was unnecessary and could lead to issues. This is not
the case anymore with [#6226](https://github.com/python-poetry/poetry/pull/6226).
@z

@x
## Better support for plugins
@y
## Better support for plugins
@z

@x
`ProjectPackage.set_version()` has been removed in poetry 1.2.0b2 due to hashing issues. That broke plugins setting the
project's version dynamically. In order to cover this use case again, hashing issues have been resolved and
`ProjectPackage.version` can be set now with [#447](https://github.com/python-poetry/poetry-core/pull/447).
@y
`ProjectPackage.set_version()` has been removed in poetry 1.2.0b2 due to hashing issues. That broke plugins setting the
project's version dynamically. In order to cover this use case again, hashing issues have been resolved and
`ProjectPackage.version` can be set now with [#447](https://github.com/python-poetry/poetry-core/pull/447).
@z

@x
`Pool.remove_repository()` had some inconsistencies that made it hard to create plugins. This is now fixed
with [#6231](https://github.com/python-poetry/poetry/pull/6231).
@y
`Pool.remove_repository()` had some inconsistencies that made it hard to create plugins. This is now fixed
with [#6231](https://github.com/python-poetry/poetry/pull/6231).
@z
