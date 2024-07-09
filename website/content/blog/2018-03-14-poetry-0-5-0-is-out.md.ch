%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.5.0 is out"
date: 2018-03-14 09:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.5.0 is out"
date: 2018-03-14 09:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-5-0-is-out.html
---
@y
aliases:
  - poetry-0-5-0-is-out.html
---
@z

@x
This version brings some improvements and a bunch of bugfixes.
@y
This version brings some improvements and a bunch of bugfixes.
@z

@x
## Changes
@y
## Changes
@z

@x
### Hashes check when installing
@y
### Hashes check when installing
@z

@x
Whenever you install packages with poetry, they will be verified against the hashes
present in the `pyproject.lock` file to increase security.
@y
Whenever you install packages with poetry, they will be verified against the hashes
present in the `pyproject.lock` file to increase security.
@z

@x
## Fixes
@y
## Fixes
@z

@x
- Fixed handling of post releases.
- Fixed python restricted dependencies not being checked against virtualenv version.
- Fixed python/platform constraint not being picked up for subdependencies.
- Fixed skipped packages appearing as installing.
- Fixed platform specification not being used when resolving dependencies.
@y
- Fixed handling of post releases.
- Fixed python restricted dependencies not being checked against virtualenv version.
- Fixed python/platform constraint not being picked up for subdependencies.
- Fixed skipped packages appearing as installing.
- Fixed platform specification not being used when resolving dependencies.
@z
