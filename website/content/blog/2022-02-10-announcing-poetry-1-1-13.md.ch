%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.1.13"
date: 2022-02-10 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
---
@y
---
layout: single
title: "Announcing Poetry 1.1.13"
date: 2022-02-10 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.1.13**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.1.13**.
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
it's necessary to reinstall Poetry via the installer to get the latest version due to a bug in the `poetry self update` command.
@y
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
it's necessary to reinstall Poetry via the installer to get the latest version due to a bug in the `poetry self update` command.
@z

@x
### Fixed
@y
### Fixed
@z

@x
- Fixed an issue where envs in MSYS2 always reported as broken ([#4942](9https://github.com/python-poetry/poetry/pull/4942))
- Fixed an issue where conda envs in windows are always reported as broken([#5008](https://github.com/python-poetry/poetry/pull/5008))
- Fixed an issue where Poetry doesn't find its own venv on `poetry self update` ([#5048](https://github.com/python-poetry/poetry/pull/5048))
@y
- Fixed an issue where envs in MSYS2 always reported as broken ([#4942](9https://github.com/python-poetry/poetry/pull/4942))
- Fixed an issue where conda envs in windows are always reported as broken([#5008](https://github.com/python-poetry/poetry/pull/5008))
- Fixed an issue where Poetry doesn't find its own venv on `poetry self update` ([#5048](https://github.com/python-poetry/poetry/pull/5048))
@z
