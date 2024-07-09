%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.12.0 is out"
date: 2018-10-17 10:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.12.0 is out"
date: 2018-10-17 10:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-12-0-is-out.html
---
@y
aliases:
  - poetry-0-12-0-is-out.html
---
@z

@x
This new version brings a brand new official installer,
dependency resolver improvements, virtualenv management and detection improvements
and many more small improvements and bug fixes.
@y
This new version brings a brand new official installer,
dependency resolver improvements, virtualenv management and detection improvements
and many more small improvements and bug fixes.
@z

@x
<aside class="note">
<p>There are some breaking changes in this release,
especially in the way Poetry resolves dependencies, so before upgrading you should read the following release notes</p>
</aside>
@y
<aside class="note">
<p>There are some breaking changes in this release,
especially in the way Poetry resolves dependencies, so before upgrading you should read the following release notes</p>
</aside>
@z

@x
## New features
@y
## New features
@z

@x
### Brand new installer
@y
### Brand new installer
@z

@x
A lot of issues on the official [issue tracker](https://github.com/python-poetry/poetry/issues) were related to
the installation of Poetry: bugs, permission errors and overall confusion about the way Poetry should be installed.
@y
A lot of issues on the official [issue tracker](https://github.com/python-poetry/poetry/issues) were related to
the installation of Poetry: bugs, permission errors and overall confusion about the way Poetry should be installed.
@z

@x
As of this release, the installer will install Poetry in an isolated way in the home directory of the current user.
@y
As of this release, the installer will install Poetry in an isolated way in the home directory of the current user.
@z

@x
<aside class="note">
<p>You only need to install Poetry once. It will automatically pick up the current
Python version and use it to <a href="/docs/basic-usage/#poetry-and-virtualenvs" title="Poetry and virtualenvs">create virtualenvs</a> accordingly.</p>
<p>This works particularly well with a tool like <a href="https://github.com/pyenv/pyenv">pyenv</a> which allows to
easily switch between Python versions.</p>
</aside>
@y
<aside class="note">
<p>You only need to install Poetry once. It will automatically pick up the current
Python version and use it to <a href="/docs/basic-usage/#poetry-and-virtualenvs" title="Poetry and virtualenvs">create virtualenvs</a> accordingly.</p>
<p>This works particularly well with a tool like <a href="https://github.com/pyenv/pyenv">pyenv</a> which allows to
easily switch between Python versions.</p>
</aside>
@z

@x
The installer installs the `poetry` tool to Poetry's `bin` directory.
On Unix it is located at `$HOME/.poetry/bin` and on Windows at `%USERPROFILE%\.poetry\bin`.
@y
The installer installs the `poetry` tool to Poetry's `bin` directory.
On Unix it is located at `$HOME/.poetry/bin` and on Windows at `%USERPROFILE%\.poetry\bin`.
@z

@x
This directory will be in your `$PATH` environment variable,
which means you can run them from the shell without further configuration.
Open a new shell and type the following:
@y
This directory will be in your `$PATH` environment variable,
which means you can run them from the shell without further configuration.
Open a new shell and type the following:
@z

@x
```bash
poetry --version
```
@y
```bash
poetry --version
```
@z

@x
If you see something like `Poetry 0.12.0` then you are ready to use Poetry.
If you decide Poetry isn't your thing, you can completely remove it from your system
by running the installer again with the `--uninstall` option.
@y
If you see something like `Poetry 0.12.0` then you are ready to use Poetry.
If you decide Poetry isn't your thing, you can completely remove it from your system
by running the installer again with the `--uninstall` option.
@z

@x
You can still install Poetry by alternative ways if you want, see the [documentation](/docs/#installation) for more information.
@y
You can still install Poetry by alternative ways if you want, see the [documentation](/docs/#installation) for more information.
@z

@x
<aside class="note">
<p>It is not possible to use the <code>self:update</code> command to upgrade Poetry from <code>0.11.5</code> to <code>0.12</code>.
Use the installer to upgrade.</p>
</aside>
@y
<aside class="note">
<p>It is not possible to use the <code>self:update</code> command to upgrade Poetry from <code>0.11.5</code> to <code>0.12</code>.
Use the installer to upgrade.</p>
</aside>
@z

@x
### Dependency resolution improvements
@y
### Dependency resolution improvements
@z

@x
The dependency resolver has been improved and fixed. However, these necessary changes came
at the cost of backward compatibility.
@y
The dependency resolver has been improved and fixed. However, these necessary changes came
at the cost of backward compatibility.
@z

@x
Basically, a package would be accepted even if its Python requirement was not compatible
with the root package requirement.
@y
Basically, a package would be accepted even if its Python requirement was not compatible
with the root package requirement.
@z

@x
Let's take an example: `ipython`. From version `6.0` and onwards it's only compatible
with Python >=3.3, so if your project depends on Python `~2.7 || ^3.6`, `ipython>=6.0` should
not be selected for locking but due to a bug in the previous versions it would, causing errors
later on in the installation process.
@y
Let's take an example: `ipython`. From version `6.0` and onwards it's only compatible
with Python >=3.3, so if your project depends on Python `~2.7 || ^3.6`, `ipython>=6.0` should
not be selected for locking but due to a bug in the previous versions it would, causing errors
later on in the installation process.
@z

@x
Now, the proper `ipython (5.8.0)` version will be selected.
@y
Now, the proper `ipython (5.8.0)` version will be selected.
@z

@x
But this required a change in the behavior of the resolver which can cause issues temporarily
until you update your `pyproject.toml` file to take into account these changes.
@y
But this required a change in the behavior of the resolver which can cause issues temporarily
until you update your `pyproject.toml` file to take into account these changes.
@z

@x
The biggest of these changes is that a wildcard dependency on `python` will now be interpreted as `~2.7 || ^3.4` which
match the currently maintained Python versions. If that is not what you want, change the `python` dependency constraint
to what matches what you actually want.
@y
The biggest of these changes is that a wildcard dependency on `python` will now be interpreted as `~2.7 || ^3.4` which
match the currently maintained Python versions. If that is not what you want, change the `python` dependency constraint
to what matches what you actually want.
@z

@x
<aside class="note">
<p>Note that this is only to help the resolver and avoid conflict detection errors.
This does not affect the packaging process where a wildcard Python dependency
will still be respected.</p>
</aside>
@y
<aside class="note">
<p>Note that this is only to help the resolver and avoid conflict detection errors.
This does not affect the packaging process where a wildcard Python dependency
will still be respected.</p>
</aside>
@z

@x
Another important change is the conflict detection on conditional dependencies. Let's take an example:
@y
Another important change is the conflict detection on conditional dependencies. Let's take an example:
@z

@x
- The root project is compatible with `Python ^3.5`.
- The root project depends on `ccxt`.
- The latest versions of `ccxt` depends on `aiohttp >=3.0.1` for `Python >=3.5.2`.
- However, every version of `aiohttp >=3.0.1` requires `Python >=3.5.3`.
- This is a conflict because this would leave an uncertainty for `Python 3.5.2` if we were to choose any version of `aiohttp >=3.0.1`
@y
- The root project is compatible with `Python ^3.5`.
- The root project depends on `ccxt`.
- The latest versions of `ccxt` depends on `aiohttp >=3.0.1` for `Python >=3.5.2`.
- However, every version of `aiohttp >=3.0.1` requires `Python >=3.5.3`.
- This is a conflict because this would leave an uncertainty for `Python 3.5.2` if we were to choose any version of `aiohttp >=3.0.1`
@z

@x
In previous versions, this would fail but now the resolver sees something is wrong and will try to find
a version that satisfies everything (after a lot of conflict resolution and a long time, here is [why](/docs/faq/#why-is-the-dependency-resolution-process-slow)).
@y
In previous versions, this would fail but now the resolver sees something is wrong and will try to find
a version that satisfies everything (after a lot of conflict resolution and a long time, here is [why](/docs/faq/#why-is-the-dependency-resolution-process-slow)).
@z

@x
To avoid this conflict resolution, it's best in this case to set the root project Python constraint to `^3.5.3`,
this will help the resolver find a valid solution faster.
@y
To avoid this conflict resolution, it's best in this case to set the root project Python constraint to `^3.5.3`,
this will help the resolver find a valid solution faster.
@z

@x
However, this is an issue upstream (in `ccxt`) and should be fixed there.
@y
However, this is an issue upstream (in `ccxt`) and should be fixed there.
@z

@x
### Multiple constraints dependencies
@y
### Multiple constraints dependencies
@z

@x
Sometimes, one of your dependency may have different version ranges depending
on the target Python versions.
@y
Sometimes, one of your dependency may have different version ranges depending
on the target Python versions.
@z

@x
Let's say you have a dependency on the package `foo` which is only compatible
with Python <3.0 up to version 1.9 and compatible with Python 3.4+ from version 2.0:
you can now declare it like so:
@y
Let's say you have a dependency on the package `foo` which is only compatible
with Python <3.0 up to version 1.9 and compatible with Python 3.4+ from version 2.0:
you can now declare it like so:
@z

@x
```toml
[tool.poetry.dependencies]
foo = [
    {version = "<=1.9", python = "^2.7"},
    {version = "^2.0", python = "^3.4"}
]
```
@y
```toml
[tool.poetry.dependencies]
foo = [
    {version = "<=1.9", python = "^2.7"},
    {version = "^2.0", python = "^3.4"}
]
```
@z

@x
<aside class="note">
<p>The constraints <strong>must</strong> have different requirements (like <code>python</code>)
otherwise it will cause an error when resolving dependencies.</p>
</aside>
@y
<aside class="note">
<p>The constraints <strong>must</strong> have different requirements (like <code>python</code>)
otherwise it will cause an error when resolving dependencies.</p>
</aside>
@z

@x
### PEP-517 compliant build backend
@y
### PEP-517 compliant build backend
@z

@x
[PEP-517](https://www.python.org/dev/peps/pep-0517/) introduces a standard way
to define alternative build systems to build a Python project.
@y
[PEP-517](https://www.python.org/dev/peps/pep-0517/) introduces a standard way
to define alternative build systems to build a Python project.
@z

@x
Poetry is now compliant with PEP-517 so if you use Poetry to manage your Python
project you should reference it in the `build-system` section of the `pyproject.toml`
file like so:
@y
Poetry is now compliant with PEP-517 so if you use Poetry to manage your Python
project you should reference it in the `build-system` section of the `pyproject.toml`
file like so:
@z

@x
```toml
[build-system]
requires = ["poetry>=0.12"]
build-backend = "poetry.masonry.api"
```
@y
```toml
[build-system]
requires = ["poetry>=0.12"]
build-backend = "poetry.masonry.api"
```
@z

@x
<aside class="note">
<p>When using the <code>new</code> or <code>init</code> command this section will be automatically added.</p>
</aside>
@y
<aside class="note">
<p>When using the <code>new</code> or <code>init</code> command this section will be automatically added.</p>
</aside>
@z

@x
### Lock file renamed from `pyproject.lock` to `poetry.lock`
@y
### Lock file renamed from `pyproject.lock` to `poetry.lock`
@z

@x
This decision has been made to be much more explicit about where the lock file
is coming from and to not use a name that is not specific to Poetry.
@y
This decision has been made to be much more explicit about where the lock file
is coming from and to not use a name that is not specific to Poetry.
@z

@x
Note that the migration will be done automatically and does not require human intervention.
@y
Note that the migration will be done automatically and does not require human intervention.
@z

@x
All new projects will automatically use the new `poetry.lock`.
@y
All new projects will automatically use the new `poetry.lock`.
@z

@x
### Other new features
@y
### Other new features
@z

@x
- New cache version system to automatically refresh the cache on major changes, so that the end user does not need to do it manually.
- Added a `--lock` option to `update` to only update the lock file without executing operations.
- Support for the `Project-URL` metadata when publishing.
- Support for optional scripts.
- Added a `--no-dev` option to `show`.
@y
- New cache version system to automatically refresh the cache on major changes, so that the end user does not need to do it manually.
- Added a `--lock` option to `update` to only update the lock file without executing operations.
- Support for the `Project-URL` metadata when publishing.
- Support for optional scripts.
- Added a `--no-dev` option to `show`.
@z

@x
## Changes
@y
## Changes
@z

@x
### `install` command improvements and `develop` deprecation.
@y
### `install` command improvements and `develop` deprecation.
@z

@x
The `develop` command is now deprecated. You should now use the `install` command which, as of this release,
will install the current project in editable mode.
@y
The `develop` command is now deprecated. You should now use the `install` command which, as of this release,
will install the current project in editable mode.
@z

@x
### Other changes
@y
### Other changes
@z

@x
- Improved virtualenv detection and management.
- Wildcard `python` dependencies are now equivalent to `~2.7 || ^3.4`.
- Changed behavior of the resolver for conditional dependencies.
- Improved the `check` command.
- Empty passwords are now supported when publishing.
@y
- Improved virtualenv detection and management.
- Wildcard `python` dependencies are now equivalent to `~2.7 || ^3.4`.
- Changed behavior of the resolver for conditional dependencies.
- Improved the `check` command.
- Empty passwords are now supported when publishing.
@z

@x
## Fixes
@y
## Fixes
@z

@x
- Fixed a memory leak in the resolver.
- Fixed a recursion error on duplicate dependencies with only different extras.
- Fixed handling of extras.
- Fixed duplicate entries in both sdist and wheel.
- Fixed excluded files appearing in the `package_data` of the generated `setup.py`.
- Fixed transitive directory dependencies installation.
- Fixed file permissions for configuration and authentication files.
- Fixed an error in `cache:clear` for Python 2.7.
- Fixed publishing for the first time with a prerelease.
@y
- Fixed a memory leak in the resolver.
- Fixed a recursion error on duplicate dependencies with only different extras.
- Fixed handling of extras.
- Fixed duplicate entries in both sdist and wheel.
- Fixed excluded files appearing in the `package_data` of the generated `setup.py`.
- Fixed transitive directory dependencies installation.
- Fixed file permissions for configuration and authentication files.
- Fixed an error in `cache:clear` for Python 2.7.
- Fixed publishing for the first time with a prerelease.
@z
