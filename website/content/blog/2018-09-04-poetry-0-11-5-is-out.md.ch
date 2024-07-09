%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.11.5 is out"
date: 2018-09-04 10:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.11.5 is out"
date: 2018-09-04 10:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-11-5-is-out.html
---
@y
aliases:
  - poetry-0-11-5-is-out.html
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
- Fixed a recursion error with circular dependencies.
- Fixed the `config` command setting incorrect values for paths.
- Fixed an `OSError` on Python >= 3.5 for `git` dependencies with recursive symlinks.
- Fixed the possible deletion of system paths by `cache:clear`.
- Fixed a performance issue when parsing the lock file by upgrading `tomlkit`.
@y
- Fixed a recursion error with circular dependencies.
- Fixed the `config` command setting incorrect values for paths.
- Fixed an `OSError` on Python >= 3.5 for `git` dependencies with recursive symlinks.
- Fixed the possible deletion of system paths by `cache:clear`.
- Fixed a performance issue when parsing the lock file by upgrading `tomlkit`.
@z
