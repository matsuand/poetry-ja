%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.1.0"
date: 2020-10-01 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
@y
---
layout: single
title: "Announcing Poetry 1.1.0"
date: 2020-10-01 00:00:00
categories: [releases]
tags: ["1.x", "1.1"]
@z

@x
aliases:
  - announcing-poetry-1-1-0.html
---
@y
aliases:
  - announcing-poetry-1-1-0.html
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry 1.1.0.
@y
The Poetry team is pleased to announce the immediate availability of Poetry 1.1.0.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
Thanks to the maintainers, community and everyone involved in making this release possible.
@y
Thanks to the maintainers, community and everyone involved in making this release possible.
@z

@x
This release brings a lot of new features and improvements.
@y
This release brings a lot of new features and improvements.
@z

@x
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry 1.1.0 is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer](/docs/#installation),
getting Poetry 1.1.0 is as easy as:
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
{{% note %}}
This release brings significant changes, the most notable ones being a change in the lock file format and a brand new and faster installer. So, special care should be taken when upgrading.
{{% /note %}}
@y
{{% note %}}
This release brings significant changes, the most notable ones being a change in the lock file format and a brand new and faster installer. So, special care should be taken when upgrading.
{{% /note %}}
@z

@x
{{% warning %}}
The `1.1` branch of Poetry will be the last to support Python 2.7 and Python 3.5.
Future minor releases, starting with `1.2`, will be only compatible with Python 3.6+.
{{% /warning %}}
@y
{{% warning %}}
The `1.1` branch of Poetry will be the last to support Python 2.7 and Python 3.5.
Future minor releases, starting with `1.2`, will be only compatible with Python 3.6+.
{{% /warning %}}
@z

@x
This article will highlight the most important features and changes but the full list is available in the [change log](/history/).
@y
This article will highlight the most important features and changes but the full list is available in the [change log](/history/).
@z

@x
## Brand new installer
@y
## Brand new installer
@z

@x
This release brings a brand new, faster installer that supports parallel operations.
@y
This release brings a brand new, faster installer that supports parallel operations.
@z

@x
The user experience has also been improved by displaying each step of the installation process so users know the progress of the operation.
@y
The user experience has also been improved by displaying each step of the installation process so users know the progress of the operation.
@z

@x
Note that since it's a fundamental internal change, it's still considered experimental.
@y
Note that since it's a fundamental internal change, it's still considered experimental.
@z

@x
{{% note %}}
If you encounter issues with the new installer, you can report them on the [Bug tracker](https://github.com/python-poetry/poetry/issues "Poetry's issue tracker").
@y
{{% note %}}
If you encounter issues with the new installer, you can report them on the [Bug tracker](https://github.com/python-poetry/poetry/issues "Poetry's issue tracker").
@z

@x
If these issues are blocking your workflow you can disable the new installer by setting the `experimental.new-installer` to `false`
@y
If these issues are blocking your workflow you can disable the new installer by setting the `experimental.new-installer` to `false`
@z

@x
```bash
poetry config experimental.new-installer false
```
@y
```bash
poetry config experimental.new-installer false
```
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
## Standalone build backend
@y
## Standalone build backend
@z

@x
The [PEP-517](https://www.python.org/dev/peps/pep-0517/) build backend of Poetry has been extracted into its own, standalone, library.
@y
The [PEP-517](https://www.python.org/dev/peps/pep-0517/) build backend of Poetry has been extracted into its own, standalone, library.
@z

@x
This change allows for faster builds - via `pip` for instance - for Poetry-managed projects.
@y
This change allows for faster builds - via `pip` for instance - for Poetry-managed projects.
@z

@x
New projects created with Poetry will already use the proper `build-system` backend, but for existing
projects, the `build-system` section must be changed from:
@y
New projects created with Poetry will already use the proper `build-system` backend, but for existing
projects, the `build-system` section must be changed from:
@z

@x
```toml
[build-system]
requires = ["poetry>=1.1.0"]
build-backend = "poetry.masonry.api"
```
@y
```toml
[build-system]
requires = ["poetry>=1.1.0"]
build-backend = "poetry.masonry.api"
```
@z

@x
to
@y
to
@z

@x
```toml
[build-system]
requires = ["poetry-core>=1.0.0"]
build-backend = "poetry.core.masonry.api"
```
@y
```toml
[build-system]
requires = ["poetry-core>=1.0.0"]
build-backend = "poetry.core.masonry.api"
```
@z

@x
## UX improvements
@y
## UX improvements
@z

@x
Errors are now better displayed and more intuitive so that they are easier to understand and debug.
@y
Errors are now better displayed and more intuitive so that they are easier to understand and debug.
@z

@x
Some of them will also be provided with possible solutions and links to the documentation.
@y
Some of them will also be provided with possible solutions and links to the documentation.
@z

@x
![Better errors](/images/better-errors.png)
@y
![Better errors](/images/better-errors.png)
@z

@x
## Dependency resolution improvements
@y
## Dependency resolution improvements
@z

@x
The dependency resolution algorithm has been further improved in order to fix some long standing issues.
@y
The dependency resolution algorithm has been further improved in order to fix some long standing issues.
@z

@x
It's also now much more accurate for cases of multiple constraints dependencies.
@y
It's also now much more accurate for cases of multiple constraints dependencies.
@z

@x
{{% note %}}
This improved accuracy came at the cost of speed in some cases.
@y
{{% note %}}
This improved accuracy came at the cost of speed in some cases.
@z

@x
It means that you might see a longer dependency resolution process
depending of your set of dependencies.
{{% /note %}}
@y
It means that you might see a longer dependency resolution process
depending of your set of dependencies.
{{% /note %}}
@z

@x
## Lock file format changes
@y
## Lock file format changes
@z

@x
The format of the lock has changed slightly compared to previous versions
to make improvements to the dependency resolution process and installation.
@y
The format of the lock has changed slightly compared to previous versions
to make improvements to the dependency resolution process and installation.
@z

@x
{{% warning %}}
While this version can read previous lock files without issue, older versions of Poetry
might not be able to read this new lock file format.
@y
{{% warning %}}
While this version can read previous lock files without issue, older versions of Poetry
might not be able to read this new lock file format.
@z

@x
What this actually means is that Poetry 1.0 will not necessarily
be able to read lock files generated by Poetry 1.1 and trying to do so might lead to infinite recursions.
{{% /warning %}}
@y
What this actually means is that Poetry 1.0 will not necessarily
be able to read lock files generated by Poetry 1.1 and trying to do so might lead to infinite recursions.
{{% /warning %}}
@z

@x
Note that lock file formats are now versioned, so Poetry will now either display a warning
or return an error if there are incompatibilities or it can't read the lock file.
@y
Note that lock file formats are now versioned, so Poetry will now either display a warning
or return an error if there are incompatibilities or it can't read the lock file.
@z

@x
## Improved `install` command
@y
## Improved `install` command
@z

@x
The `install` command now supports a `--remove-untracked` option to keep your environment in sync
with the `poetry.lock` file. This option ensures that you only have the packages
that are strictly required by your project.
@y
The `install` command now supports a `--remove-untracked` option to keep your environment in sync
with the `poetry.lock` file. This option ensures that you only have the packages
that are strictly required by your project.
@z

@x
```shell
poetry install --remove-untracked
```
@y
```shell
poetry install --remove-untracked
```
@z

@x
## Improved `publish` command
@y
## Improved `publish` command
@z

@x
The `publish` command now supports a `--dry-run` option to check if everything is in order
before uploading to a remote repository.
@y
The `publish` command now supports a `--dry-run` option to check if everything is in order
before uploading to a remote repository.
@z

@x
Publishing error handling and reporting have been improved to help debug issues
when uploading packages.
@y
Publishing error handling and reporting have been improved to help debug issues
when uploading packages.
@z

@x
```shell
poetry publish --dry-run
```
@y
```shell
poetry publish --dry-run
```
@z

@x
## Directory dependencies are now non-editable by default
@y
## Directory dependencies are now non-editable by default
@z

@x
In previous versions, directory dependencies were installed in "editable" mode by default.
@y
In previous versions, directory dependencies were installed in "editable" mode by default.
@z

@x
However, this is no longer the case in Poetry 1.1 and they will now be installed fully
in the environment.
@y
However, this is no longer the case in Poetry 1.1 and they will now be installed fully
in the environment.
@z

@x
If you still want to install them in editable mode you need to set the `develop` property to `true`:
@y
If you still want to install them in editable mode you need to set the `develop` property to `true`:
@z

@x
```toml
[tool.poetry.dependencies]
my-package = {path = "../path/to/dependency", develop = true}
```
@y
```toml
[tool.poetry.dependencies]
my-package = {path = "../path/to/dependency", develop = true}
```
@z
