%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.10.0 is out"
date: 2018-05-28 09:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.10.0 is out"
date: 2018-05-28 09:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-10-0-is-out.html
---
@y
aliases:
  - poetry-0-10-0-is-out.html
---
@z

@x
This version brings a brand new dependency resolver which is more consistent, reliable and faster.
@y
This version brings a brand new dependency resolver which is more consistent, reliable and faster.
@z

@x
## New Features
@y
## New Features
@z

@x
### Brand new dependency resolver
@y
### Brand new dependency resolver
@z

@x
The dependency resolver has been rewritten from scratch to make it more resilient and reliable.
@y
The dependency resolver has been rewritten from scratch to make it more resilient and reliable.
@z

@x
It solves conflicts in a faster and smarter way to be as exhaustive as possible.
@y
It solves conflicts in a faster and smarter way to be as exhaustive as possible.
@z

@x
It also comes with much clearer error messages when no valid solution can be found. Here are some examples:
@y
It also comes with much clearer error messages when no valid solution can be found. Here are some examples:
@z

@x
```text
[SolverProblemError]
Because demo depends on django (2.0.1) which requires Python >=3.4,
version solving failed.
```
@y
```text
[SolverProblemError]
Because demo depends on django (2.0.1) which requires Python >=3.4,
version solving failed.
```
@z

@x
```text
[SolverProblemError]
Because masonite (1.6.7) depends on both cryptography (2.1.4) and cryptography (2.2.2),
 masonite is forbidden.
So, because demo depends on masonite (1.6.7), version solving failed.
```
@y
```text
[SolverProblemError]
Because masonite (1.6.7) depends on both cryptography (2.1.4) and cryptography (2.2.2),
 masonite is forbidden.
So, because demo depends on masonite (1.6.7), version solving failed.
```
@z

@x
### New `init` command
@y
### New `init` command
@z

@x
The `init` command has been added.
@y
The `init` command has been added.
@z

@x
It helps you create a `pyproject.toml` file interactively by prompting you to provide basic information about your package.
@y
It helps you create a `pyproject.toml` file interactively by prompting you to provide basic information about your package.
@z

@x
```bash
poetry init
```
@y
```bash
poetry init
```
@z

@x
### New `develop` command
@y
### New `develop` command
@z

@x
The `develop` command installs the current project in development/editable mode.
@y
The `develop` command installs the current project in development/editable mode.
@z

@x
This is similar to `pip install -e .` when using pip.
@y
This is similar to `pip install -e .` when using pip.
@z

@x
### New `settings.virtualenvs.in-project` setting
@y
### New `settings.virtualenvs.in-project` setting
@z

@x
The new `settings.virtualenvs.in-project` setting tells `poetry` to
create new project virtualenvs in the project's directory (`.venv` directory).
@y
The new `settings.virtualenvs.in-project` setting tells `poetry` to
create new project virtualenvs in the project's directory (`.venv` directory).
@z

@x
You can set it with the `config` command:
@y
You can set it with the `config` command:
@z

@x
```bash
poetry config settings.virtualenvs.in-project true
```
@y
```bash
poetry config settings.virtualenvs.in-project true
```
@z

@x
If you no longer want this behavior, you can unset it:
@y
If you no longer want this behavior, you can unset it:
@z

@x
```bash
poetry config settings.virtualenvs.in-project --unset
```
@y
```bash
poetry config settings.virtualenvs.in-project --unset
```
@z

@x
### Other new features
@y
### Other new features
@z

@x
- Added the `--extras` and `--python` options to `debug:resolve` to help debug dependency resolution.
- Added a `--src` option to the `new` command to create an `src` layout.
- Added support for specifying the `platform` for dependencies.
- Added the `--python` option to the `add` command.
- Added the `--platform` option to the `add` command.
@y
- Added the `--extras` and `--python` options to `debug:resolve` to help debug dependency resolution.
- Added a `--src` option to the `new` command to create an `src` layout.
- Added support for specifying the `platform` for dependencies.
- Added the `--python` option to the `add` command.
- Added the `--platform` option to the `add` command.
@z

@x
## Changes
@y
## Changes
@z

@x
### `publish` command
@y
### `publish` command
@z

@x
The `publish` command no longer builds the project by default.
@y
The `publish` command no longer builds the project by default.
@z

@x
The proper workflow now is to always use `build` before `publish`.
@y
The proper workflow now is to always use `build` before `publish`.
@z

@x
You can, however, use the `--build` option to retrieve the previous behavior.
@y
You can, however, use the `--build` option to retrieve the previous behavior.
@z

@x
### `show` command
@y
### `show` command
@z

@x
The `show` command has been improved to make it easier to check if
packages are properly installed.
@y
The `show` command has been improved to make it easier to check if
packages are properly installed.
@z

@x
### `script` and `run` command
@y
### `script` and `run` command
@z

@x
The `script` command is now deprecated. You can now use `run` instead.
@y
The `script` command is now deprecated. You can now use `run` instead.
@z

@x
### Other changes
@y
### Other changes
@z

@x
- Improved support for private repositories.
- Expanded version constraints now keep the original version's precision.
- The lock file hash no longer uses the project's name and version.
- The `LICENSE` file, or similar, is now automatically added to the built packages.
@y
- Improved support for private repositories.
- Expanded version constraints now keep the original version's precision.
- The lock file hash no longer uses the project's name and version.
- The `LICENSE` file, or similar, is now automatically added to the built packages.
@z

@x
## Fixes
@y
## Fixes
@z

@x
- Fixed the dependency resolver selecting incompatible packages.
- Fixed override of dependency with dependency with extras in `dev-dependencies`.
@y
- Fixed the dependency resolver selecting incompatible packages.
- Fixed override of dependency with dependency with extras in `dev-dependencies`.
@z
