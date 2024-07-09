%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.9.0 is out"
date: 2018-05-07 09:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.9.0 is out"
date: 2018-05-07 09:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-9-0-is-out.html
---
@y
aliases:
  - poetry-0-9-0-is-out.html
---
@z

@x
This version brings huge improvements to the dependency resolution speed.
@y
This version brings huge improvements to the dependency resolution speed.
@z

@x
## New Features
@y
## New Features
@z

@x
### Huge speed improvements in the dependency resolution process
@y
### Huge speed improvements in the dependency resolution process
@z

@x
In previous releases, the dependency resolution process could be extremely slow, especially
for some packages like `boto3`, due to the way the resolver works.
@y
In previous releases, the dependency resolution process could be extremely slow, especially
for some packages like `boto3`, due to the way the resolver works.
@z

@x
So, one of the focus of this release was to improve it so that the dependency resolution time
could be deemed acceptable. And it seems it paid off.
@y
So, one of the focus of this release was to improve it so that the dependency resolution time
could be deemed acceptable. And it seems it paid off.
@z

@x
As an example, we will take `boto3` which was an extreme case: the dependency resolution time goes
from about **30 minutes** to about **11 seconds** on a cold cache!
@y
As an example, we will take `boto3` which was an extreme case: the dependency resolution time goes
from about **30 minutes** to about **11 seconds** on a cold cache!
@z

@x
This is a huge improvement and should help you manage your projects more efficiently.
@y
This is a huge improvement and should help you manage your projects more efficiently.
@z

@x
### `add` command improvements.
@y
### `add` command improvements.
@z

@x
The `add` command has been improved.
@y
The `add` command has been improved.
@z

@x
You can now use it to add `git` dependencies:
@y
You can now use it to add `git` dependencies:
@z

@x
```bash
poetry add pendulum --git https://github.com/sdispater/pendulum.git
```
@y
```bash
poetry add pendulum --git https://github.com/sdispater/pendulum.git
```
@z

@x
You can also add `path` (directories or files) dependencies:
@y
You can also add `path` (directories or files) dependencies:
@z

@x
```bash
poetry add my-package --path ../my-package/
poetry add my-package --path ../my-package/dist/my-package-0.1.0.tar.gz
poetry add my-package --path ../my-package/dist/my_package-0.1.0.whl
```
@y
```bash
poetry add my-package --path ../my-package/
poetry add my-package --path ../my-package/dist/my-package-0.1.0.tar.gz
poetry add my-package --path ../my-package/dist/my_package-0.1.0.whl
```
@z

@x
### Directory dependencies are now supported
@y
### Directory dependencies are now supported
@z

@x
You can now specify directory dependencies in your `pyproject.toml` file.
@y
You can now specify directory dependencies in your `pyproject.toml` file.
@z

@x
```toml
[tool.poetry.dependencies]
my-package = { path = "../my-package/" }
```
@y
```toml
[tool.poetry.dependencies]
my-package = { path = "../my-package/" }
```
@z

@x
### Support for `src/` layout in projects
@y
### Support for `src/` layout in projects
@z

@x
`poetry` now supports the `src/` layout in projects.
@y
`poetry` now supports the `src/` layout in projects.
@z

@x
Note that the name of the package or module inside the `src/` directory
is still derived from the name of the project defined in the `pyproject.toml` file.
@y
Note that the name of the package or module inside the `src/` directory
is still derived from the name of the project defined in the `pyproject.toml` file.
@z

@x
```text
my-package/
└── src/
    └── my_package/
        └── __init__.py
```
@y
```text
my-package/
└── src/
    └── my_package/
        └── __init__.py
```
@z

@x
### Automatic detection of `.venv` virtualenvs
@y
### Automatic detection of `.venv` virtualenvs
@z

@x
If you store you virtualenv inside your project in the form of a `.venv` directory,
`poetry` will now automatically detect it and use it.
@y
If you store you virtualenv inside your project in the form of a `.venv` directory,
`poetry` will now automatically detect it and use it.
@z

@x
### New `cache:clear` command
@y
### New `cache:clear` command
@z

@x
A new `cache:clear` command has been added, to help clear caches when something goes wrong.
@y
A new `cache:clear` command has been added, to help clear caches when something goes wrong.
@z

@x
This is useful in the rare cases where new distributions are added to a package after the cache
has been generated (see https://github.com/python-poetry/poetry/issues/51).
@y
This is useful in the rare cases where new distributions are added to a package after the cache
has been generated (see https://github.com/python-poetry/poetry/issues/51).
@z

@x
You can clear caches for a specific version:
@y
You can clear caches for a specific version:
@z

@x
```bash
poetry cache:clear pypy:pendulum:1.4.4
```
@y
```bash
poetry cache:clear pypy:pendulum:1.4.4
```
@z

@x
or you can clear all caches for a specific repository:
@y
or you can clear all caches for a specific repository:
@z

@x
```bash
poetry cache:clear pypy --all
```
@y
```bash
poetry cache:clear pypy --all
```
@z

@x
## Changes
@y
## Changes
@z

@x
- Dependency resolution caches now use sha256 hashes.
- Changed CLI error style.
- Improved debugging of dependency resolution.
- Poetry now attempts to find `pyproject.toml` not only in the directory it was
  invoked in, but in all its parents up to the root. This allows to run Poetry
  commands in project subdirectories.
- Made the email address for authors optional.
@y
- Dependency resolution caches now use sha256 hashes.
- Changed CLI error style.
- Improved debugging of dependency resolution.
- Poetry now attempts to find `pyproject.toml` not only in the directory it was
  invoked in, but in all its parents up to the root. This allows to run Poetry
  commands in project subdirectories.
- Made the email address for authors optional.
@z

@x
## Fixes
@y
## Fixes
@z

@x
- Fixed handling of extras when resolving dependencies.
- Fixed `self:update` command for some installation.
- Fixed handling of extras when building projects.
- Fixed handling of wildcard dependencies wen packaging/publishing.
- Fixed an error when adding a new packages with prereleases in lock file.
- Fixed packages name normalization.
@y
- Fixed handling of extras when resolving dependencies.
- Fixed `self:update` command for some installation.
- Fixed handling of extras when building projects.
- Fixed handling of wildcard dependencies wen packaging/publishing.
- Fixed an error when adding a new packages with prereleases in lock file.
- Fixed packages name normalization.
@z
