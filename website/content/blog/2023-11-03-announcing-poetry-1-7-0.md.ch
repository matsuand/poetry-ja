%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.7.0"
date: 2023-11-03
categories: [releases]
tags: ["1.x", "1.7"]
---
@y
---
layout: single
title: "Announcing Poetry 1.7.0"
date: 2023-11-03
categories: [releases]
tags: ["1.x", "1.7"]
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.7.0**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.7.0**.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
If you have a previous version of Poetry installed via `pipx`,
getting Poetry **1.7.0** is as easy as:
@y
If you have a previous version of Poetry installed via `pipx`,
getting Poetry **1.7.0** is as easy as:
@z

@x
```bash
$ pipx upgrade poetry
```
@y
```bash
$ pipx upgrade poetry
```
@z

@x
If you used the [official installer](/docs/#installation), you can run:
@y
If you used the [official installer](/docs/#installation), you can run:
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
## Highlights
@y
## Highlights
@z

@x
### Official support for Python 3.12
@y
### Official support for Python 3.12
@z

@x
Even though Poetry 1.6 probably works well with Python 3.12,
we did some fine-tuning to make the user experience more consistent:
@y
Even though Poetry 1.6 probably works well with Python 3.12,
we did some fine-tuning to make the user experience more consistent:
@z

@x
Python 3.12 is the first Python version that does not implicitly includes `setuptools`
in newly created virtual environments. In order to align Poetry with other tools,
we now also do not implicitly include `setuptools` in newly created Python 3.12
environments. In this context, we have also changed that `wheel` is not implicitly
included anymore (for all Python versions). Further, `setuptools` and `wheel`
will now be removed when running `poetry install --sync` if they are not required
by the project. If you rely on `setuptools` or `wheel`,
please make it an explicit dependency in your `pyproject.toml`.
@y
Python 3.12 is the first Python version that does not implicitly includes `setuptools`
in newly created virtual environments. In order to align Poetry with other tools,
we now also do not implicitly include `setuptools` in newly created Python 3.12
environments. In this context, we have also changed that `wheel` is not implicitly
included anymore (for all Python versions). Further, `setuptools` and `wheel`
will now be removed when running `poetry install --sync` if they are not required
by the project. If you rely on `setuptools` or `wheel`,
please make it an explicit dependency in your `pyproject.toml`.
@z

@x
Further, some deprecation warnings were addressed and
the `Programming Language :: Python :: 3.12` classifier will be set automatically now
if Python 3.12 is in your project's supported Python versions.
@y
Further, some deprecation warnings were addressed and
the `Programming Language :: Python :: 3.12` classifier will be set automatically now
if Python 3.12 is in your project's supported Python versions.
@z

@x
### Improved handling of dependencies with extras during dependency resolution
@y
### Improved handling of dependencies with extras during dependency resolution
@z

@x
The `extra` marker is quite special. Whereas other markers can only have one value for
a specific environment, `extra` can have multiple values at the same time.
@y
The `extra` marker is quite special. Whereas other markers can only have one value for
a specific environment, `extra` can have multiple values at the same time.
@z

@x
For example, a marker like `sys_platform == "win32" and sys_platform == "linux"`
can never be satisfied because `sys_platform` can only be either `"win32"` or `"linux"`
(not both). By contrast, a marker like `extra == "a" and extra == "b"`
can be satisfied if both extras are requested.
@y
For example, a marker like `sys_platform == "win32" and sys_platform == "linux"`
can never be satisfied because `sys_platform` can only be either `"win32"` or `"linux"`
(not both). By contrast, a marker like `extra == "a" and extra == "b"`
can be satisfied if both extras are requested.
@z

@x
Poetry can now handle this peculiarity and ignore dependencies that are only
relevant for inactive extras.
@y
Poetry can now handle this peculiarity and ignore dependencies that are only
relevant for inactive extras.
@z

@x
### Fix longstanding race condition in `poetry install`
@y
### Fix longstanding race condition in `poetry install`
@z

@x
Intermittent failures of `poetry install` with error messages like
`Backend 'setuptools.build_meta:__legacy__' is not available.` should now be resolved
by fixing a race condition when installing multiple source distributions with
overlapping build requirements in parallel.
@y
Intermittent failures of `poetry install` with error messages like
`Backend 'setuptools.build_meta:__legacy__' is not available.` should now be resolved
by fixing a race condition when installing multiple source distributions with
overlapping build requirements in parallel.
@z

@x
## Upcoming Changes
@y
## Upcoming Changes
@z

@x
### Removing `poetry-plugin-export` from the default installation
@y
### Removing `poetry-plugin-export` from the default installation
@z

@x
Prior Poetry 1.2, `export` had been a built-in command. With Poetry 1.2, the `export`
command was outsourced into `poetry-plugin-export`. To avoid a breaking change,
we decided to install `poetry-plugin-export` per default. However, this resulted
in a cyclic dependency between `poetry` and `poetry-plugin-export`, which causes
issues for some third-party tools and results in an increased maintenance effort
for the Poetry team.
@y
Prior Poetry 1.2, `export` had been a built-in command. With Poetry 1.2, the `export`
command was outsourced into `poetry-plugin-export`. To avoid a breaking change,
we decided to install `poetry-plugin-export` per default. However, this resulted
in a cyclic dependency between `poetry` and `poetry-plugin-export`, which causes
issues for some third-party tools and results in an increased maintenance effort
for the Poetry team.
@z

@x
Therefore, **we are planning to not install `poetry-plugin-export`
per default in a future version of Poetry.**
To ensure that as many users as possible are informed about this upcoming change,
a warning, which can be deactivated, will be shown when running `poetry export`.
In order to make your automation forward-compatible, just install `poetry-plugin-export`
explicitly (even though it is already installed per default for now).
@y
Therefore, **we are planning to not install `poetry-plugin-export`
per default in a future version of Poetry.**
To ensure that as many users as possible are informed about this upcoming change,
a warning, which can be deactivated, will be shown when running `poetry export`.
In order to make your automation forward-compatible, just install `poetry-plugin-export`
explicitly (even though it is already installed per default for now).
@z

@x
## Changelog
@y
## Changelog
@z

@x
### Added
@y
### Added
@z

@x
- **Add official support for Python 3.12** ([#7803](https://github.com/python-poetry/poetry/pull/7803), [#8544](https://github.com/python-poetry/poetry/pull/8544)).
- **Print a future warning that `poetry-plugin-export` will not be installed by default anymore** ([#8562](https://github.com/python-poetry/poetry/pull/8562)).
- Add `poetry-install` pre-commit hook ([#8327](https://github.com/python-poetry/poetry/pull/8327)).
- Add `--next-phase` option to `poetry version` ([#8089](https://github.com/python-poetry/poetry/pull/8089)).
- Print a warning when overwriting files from another package at installation ([#8386](https://github.com/python-poetry/poetry/pull/8386)).
- Print a warning if the current project cannot be installed ([#8369](https://github.com/python-poetry/poetry/pull/8369)).
- Report more details on build backend exceptions ([#8464](https://github.com/python-poetry/poetry/pull/8464)).
@y
- **Add official support for Python 3.12** ([#7803](https://github.com/python-poetry/poetry/pull/7803), [#8544](https://github.com/python-poetry/poetry/pull/8544)).
- **Print a future warning that `poetry-plugin-export` will not be installed by default anymore** ([#8562](https://github.com/python-poetry/poetry/pull/8562)).
- Add `poetry-install` pre-commit hook ([#8327](https://github.com/python-poetry/poetry/pull/8327)).
- Add `--next-phase` option to `poetry version` ([#8089](https://github.com/python-poetry/poetry/pull/8089)).
- Print a warning when overwriting files from another package at installation ([#8386](https://github.com/python-poetry/poetry/pull/8386)).
- Print a warning if the current project cannot be installed ([#8369](https://github.com/python-poetry/poetry/pull/8369)).
- Report more details on build backend exceptions ([#8464](https://github.com/python-poetry/poetry/pull/8464)).
@z

@x
### Changed
@y
### Changed
@z

@x
- Set Poetry as `user-agent` for all HTTP requests ([#8394](https://github.com/python-poetry/poetry/pull/8394)).
- Do not install `setuptools` per default in Python 3.12 ([#7803](https://github.com/python-poetry/poetry/pull/7803)).
- Do not install `wheel` per default ([#7803](https://github.com/python-poetry/poetry/pull/7803)).
- Remove `setuptools` and `wheel` when running `poetry install --sync` if they are not required by the project ([#8600](https://github.com/python-poetry/poetry/pull/#8600)).
- Improve error message about PEP-517 support ([#8463](https://github.com/python-poetry/poetry/pull/8463)).
- Improve `keyring` handling ([#8227](https://github.com/python-poetry/poetry/pull/8227)).
- Read the `description` field when extracting metadata from `setup.py` files ([#8545](https://github.com/python-poetry/poetry/pull/8545)).
@y
- Set Poetry as `user-agent` for all HTTP requests ([#8394](https://github.com/python-poetry/poetry/pull/8394)).
- Do not install `setuptools` per default in Python 3.12 ([#7803](https://github.com/python-poetry/poetry/pull/7803)).
- Do not install `wheel` per default ([#7803](https://github.com/python-poetry/poetry/pull/7803)).
- Remove `setuptools` and `wheel` when running `poetry install --sync` if they are not required by the project ([#8600](https://github.com/python-poetry/poetry/pull/#8600)).
- Improve error message about PEP-517 support ([#8463](https://github.com/python-poetry/poetry/pull/8463)).
- Improve `keyring` handling ([#8227](https://github.com/python-poetry/poetry/pull/8227)).
- Read the `description` field when extracting metadata from `setup.py` files ([#8545](https://github.com/python-poetry/poetry/pull/8545)).
@z

@x
### Fixed
@y
### Fixed
@z

@x
- **Fix an issue where dependencies of inactive extras were locked and installed** ([#8399](https://github.com/python-poetry/poetry/pull/8399)).
- **Fix an issue where build requirements were not installed due to a race condition in the artifact cache** ([#8517](https://github.com/python-poetry/poetry/pull/8517)).
- Fix an issue where packages included in the system site packages were installed even though `virtualenvs.options.system-site-packages` was set ([#8359](https://github.com/python-poetry/poetry/pull/8359)).
- Fix an issue where git dependencies' submodules with relative URLs were handled incorrectly ([#8020](https://github.com/python-poetry/poetry/pull/8020)).
- Fix an issue where a failed installation of build dependencies was not noticed directly ([#8479](https://github.com/python-poetry/poetry/pull/8479)).
- Fix an issue where `poetry shell` did not work completely with `nushell` ([#8478](https://github.com/python-poetry/poetry/pull/8478)).
- Fix an issue where a confusing error messages was displayed when running `poetry config pypi-token.pypi` without a value ([#8502](https://github.com/python-poetry/poetry/pull/8502)).
- Fix an issue where a cryptic error message is printed if there is no metadata entry in the lockfile ([#8523](https://github.com/python-poetry/poetry/pull/8523)).
- Fix an issue with the encoding with special characters in the virtualenv's path ([#8565](https://github.com/python-poetry/poetry/pull/8565)).
- Fix an issue where the connection pool size was not adjusted to the number of workers ([#8559](https://github.com/python-poetry/poetry/pull/8559)).
@y
- **Fix an issue where dependencies of inactive extras were locked and installed** ([#8399](https://github.com/python-poetry/poetry/pull/8399)).
- **Fix an issue where build requirements were not installed due to a race condition in the artifact cache** ([#8517](https://github.com/python-poetry/poetry/pull/8517)).
- Fix an issue where packages included in the system site packages were installed even though `virtualenvs.options.system-site-packages` was set ([#8359](https://github.com/python-poetry/poetry/pull/8359)).
- Fix an issue where git dependencies' submodules with relative URLs were handled incorrectly ([#8020](https://github.com/python-poetry/poetry/pull/8020)).
- Fix an issue where a failed installation of build dependencies was not noticed directly ([#8479](https://github.com/python-poetry/poetry/pull/8479)).
- Fix an issue where `poetry shell` did not work completely with `nushell` ([#8478](https://github.com/python-poetry/poetry/pull/8478)).
- Fix an issue where a confusing error messages was displayed when running `poetry config pypi-token.pypi` without a value ([#8502](https://github.com/python-poetry/poetry/pull/8502)).
- Fix an issue where a cryptic error message is printed if there is no metadata entry in the lockfile ([#8523](https://github.com/python-poetry/poetry/pull/8523)).
- Fix an issue with the encoding with special characters in the virtualenv's path ([#8565](https://github.com/python-poetry/poetry/pull/8565)).
- Fix an issue where the connection pool size was not adjusted to the number of workers ([#8559](https://github.com/python-poetry/poetry/pull/8559)).
@z

@x
### Docs
@y
### Docs
@z

@x
- Improve the wording regarding a project's supported Python range ([#8423](https://github.com/python-poetry/poetry/pull/8423)).
- Make `pipx` the preferred (first mentioned) installation method ([#8090](https://github.com/python-poetry/poetry/pull/8090)).
- Add a warning about `poetry self` on Windows ([#8090](https://github.com/python-poetry/poetry/pull/8090)).
- Fix example for `poetry add` with a git dependency ([#8438](https://github.com/python-poetry/poetry/pull/8438)).
- Add information about auto-included files in wheels and sdist ([#8555](https://github.com/python-poetry/poetry/pull/8555)).
- Fix documentation of the `POETRY_REPOSITORIES_` variables docs ([#8492](https://github.com/python-poetry/poetry/pull/8492)).
- Add `CITATION.cff` file ([#8510](https://github.com/python-poetry/poetry/pull/8510)).
@y
- Improve the wording regarding a project's supported Python range ([#8423](https://github.com/python-poetry/poetry/pull/8423)).
- Make `pipx` the preferred (first mentioned) installation method ([#8090](https://github.com/python-poetry/poetry/pull/8090)).
- Add a warning about `poetry self` on Windows ([#8090](https://github.com/python-poetry/poetry/pull/8090)).
- Fix example for `poetry add` with a git dependency ([#8438](https://github.com/python-poetry/poetry/pull/8438)).
- Add information about auto-included files in wheels and sdist ([#8555](https://github.com/python-poetry/poetry/pull/8555)).
- Fix documentation of the `POETRY_REPOSITORIES_` variables docs ([#8492](https://github.com/python-poetry/poetry/pull/8492)).
- Add `CITATION.cff` file ([#8510](https://github.com/python-poetry/poetry/pull/8510)).
@z

@x
### poetry-core ([`1.8.1`](https://github.com/python-poetry/poetry-core/releases/tag/1.8.1))
@y
### poetry-core ([`1.8.1`](https://github.com/python-poetry/poetry-core/releases/tag/1.8.1))
@z

@x
- Add support for creating packages dynamically in the build script ([#629](https://github.com/python-poetry/poetry-core/pull/629)).
- Improve marker logic for `extra` markers ([#636](https://github.com/python-poetry/poetry-core/pull/636)).
- Update list of supported licenses ([#635](https://github.com/python-poetry/poetry-core/pull/635), [#646](https://github.com/python-poetry/poetry-core/pull/646)).
- Fix an issue where projects with extension modules were not installed in editable mode ([#633](https://github.com/python-poetry/poetry-core/pull/633)).
- Fix an issue where the wrong or no `lib` folder was added to the wheel ([#634](https://github.com/python-poetry/poetry-core/pull/634)).
@y
- Add support for creating packages dynamically in the build script ([#629](https://github.com/python-poetry/poetry-core/pull/629)).
- Improve marker logic for `extra` markers ([#636](https://github.com/python-poetry/poetry-core/pull/636)).
- Update list of supported licenses ([#635](https://github.com/python-poetry/poetry-core/pull/635), [#646](https://github.com/python-poetry/poetry-core/pull/646)).
- Fix an issue where projects with extension modules were not installed in editable mode ([#633](https://github.com/python-poetry/poetry-core/pull/633)).
- Fix an issue where the wrong or no `lib` folder was added to the wheel ([#634](https://github.com/python-poetry/poetry-core/pull/634)).
@z

@x
### poetry-plugin-export ([`^1.6.0`](https://github.com/python-poetry/poetry-plugin-export/releases/tag/1.6.0))
@y
### poetry-plugin-export ([`^1.6.0`](https://github.com/python-poetry/poetry-plugin-export/releases/tag/1.6.0))
@z

@x
- Add an `--all-extras` option ([#241](https://github.com/python-poetry/poetry-plugin-export/pull/241)).
- Fix an issue where git dependencies are exported with the branch name instead of the resolved commit hash ([#213](https://github.com/python-poetry/poetry-plugin-export/pull/213)).
@y
- Add an `--all-extras` option ([#241](https://github.com/python-poetry/poetry-plugin-export/pull/241)).
- Fix an issue where git dependencies are exported with the branch name instead of the resolved commit hash ([#213](https://github.com/python-poetry/poetry-plugin-export/pull/213)).
@z
