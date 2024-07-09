%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.11.3 is out"
date: 2018-07-26 10:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.11.3 is out"
date: 2018-07-26 10:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-11-3-is-out.html
---
@y
aliases:
  - poetry-0-11-3-is-out.html
---
@z

@x
Bugfix release.
@y
Bugfix release.
@z

@x
## Changes
@y
## Changes
@z

@x
- Poetry now only uses [TOML Kit](https://github.com/sdispater/tomlkit) for TOML files manipulation.
- Improved dependency resolution debug information.
@y
- Poetry now only uses [TOML Kit](https://github.com/sdispater/tomlkit) for TOML files manipulation.
- Improved dependency resolution debug information.
@z

@x
## Fixes
@y
## Fixes
@z

@x
- Fixed missing dependency information for some packages.
- Fixed handling of single versions when packaging.
- Fixed dependency information retrieval from `.zip` and `.bz2` archives.
- Fixed searching for and installing packages from private repositories with authentication. (Thanks to [@MarcDufresne](https://github.com/MarcDufresne))
- Fixed a potential error when checking the `pyproject.toml` validity. (Thanks to [@ojii](https://github.com/ojii))
- Fixed the lock file not tracking the `extras` information from `pyproject.toml`. (Thanks to [@cauebs](https://github.com/cauebs))
- Fixed missing trailing slash in the Simple API urls for private repositories. (Thanks to [@bradsbrown](https://github.com/bradsbrown))
@y
- Fixed missing dependency information for some packages.
- Fixed handling of single versions when packaging.
- Fixed dependency information retrieval from `.zip` and `.bz2` archives.
- Fixed searching for and installing packages from private repositories with authentication. (Thanks to [@MarcDufresne](https://github.com/MarcDufresne))
- Fixed a potential error when checking the `pyproject.toml` validity. (Thanks to [@ojii](https://github.com/ojii))
- Fixed the lock file not tracking the `extras` information from `pyproject.toml`. (Thanks to [@cauebs](https://github.com/cauebs))
- Fixed missing trailing slash in the Simple API urls for private repositories. (Thanks to [@bradsbrown](https://github.com/bradsbrown))
@z
