%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.12.7 is out"
date: 2018-11-08 10:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.12.7 is out"
date: 2018-11-08 10:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-12-7-is-out.html
---
@y
aliases:
  - poetry-0-12-7-is-out.html
---
@z

@x
Bugfix release.
@y
Bugfix release.
@z

@x
## Fixes
@y
## Fixes
@z

@x
- Fixed reading of some `setup.py` files.
- Fixed a `KeyError` when getting information for packages which require reading setup files.
- Fixed the building of wheels with C extensions and an `src` layout.
- Fixed extras being selected when resolving dependencies even when not required.
- Fixed performance issues when packaging projects if a lot of files were excluded.
- Fixed installation of files.
- Fixed extras not being retrieved for legacy repositories.
- Fixed invalid transitive constraints raising an error for legacy repositories.
@y
- Fixed reading of some `setup.py` files.
- Fixed a `KeyError` when getting information for packages which require reading setup files.
- Fixed the building of wheels with C extensions and an `src` layout.
- Fixed extras being selected when resolving dependencies even when not required.
- Fixed performance issues when packaging projects if a lot of files were excluded.
- Fixed installation of files.
- Fixed extras not being retrieved for legacy repositories.
- Fixed invalid transitive constraints raising an error for legacy repositories.
@z
