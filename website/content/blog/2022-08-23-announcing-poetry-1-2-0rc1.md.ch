%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.2.0rc1"
date: 2022-08-23 00:00:00
categories: ["releases"]
tags: ["1.x", "1.2"]
---
@y
---
layout: single
title: "Announcing Poetry 1.2.0rc1"
date: 2022-08-23 00:00:00
categories: ["releases"]
tags: ["1.x", "1.2"]
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0rc1**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0rc1**.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
If you have a previous version of Poetry installed via the [official installer]({{< relref "docs/#installation" >}}),
getting Poetry **1.2.0rc1** is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer]({{< relref "docs/#installation" >}}),
getting Poetry **1.2.0rc1** is as easy as:
@z

@x
```bash
$ poetry self update --preview
```
@y
```bash
$ poetry self update --preview
```
@z

@x
With this release, Poetry 1.2 now enters a stabilization phase, where no new feature will be merged.
@y
With this release, Poetry 1.2 now enters a stabilization phase, where no new feature will be merged.
@z

@x
Since 1.2.0rc1 is a near-exact representation of 1.2.0, we invite users to test this release and
report issues using the [issue tracker](https://github.com/python-poetry/poetry/issues "Poetry's issue tracker").
@y
Since 1.2.0rc1 is a near-exact representation of 1.2.0, we invite users to test this release and
report issues using the [issue tracker](https://github.com/python-poetry/poetry/issues "Poetry's issue tracker").
@z

@x
Documentation for Poetry 1.2 is available [here](https://python-poetry.org/docs/1.2/). We also invite users to report
any issue found in the documentation, whether it's typos, unclear definitions or missing things.
@y
Documentation for Poetry 1.2 is available [here](https://python-poetry.org/docs/1.2/). We also invite users to report
any issue found in the documentation, whether it's typos, unclear definitions or missing things.
@z

@x
For a complete list of changes, you can refer to the [change log](/history).
@y
For a complete list of changes, you can refer to the [change log](/history).
@z

@x
## Removal of some deprecated 1.2-only CLI options
@y
## Removal of some deprecated 1.2-only CLI options
@z

@x
During the development of Poetry 1.2, some new commands and arguments for supporting plugins and dependencies groups
were added, then deprecated and replaced. If you were using them on Poetry 1.2 pre-releases, the following
commands/arguments have been removed/replaced:
@y
During the development of Poetry 1.2, some new commands and arguments for supporting plugins and dependencies groups
were added, then deprecated and replaced. If you were using them on Poetry 1.2 pre-releases, the following
commands/arguments have been removed/replaced:
@z

@x
- `poetry plugin [add|remove|show]` -> use `poetry self [add|remove|show]` instead
- `poetry [export|install|show|update] --default` -> use `poetry [export|install|show|update] --with main` instead
@y
- `poetry plugin [add|remove|show]` -> use `poetry self [add|remove|show]` instead
- `poetry [export|install|show|update] --default` -> use `poetry [export|install|show|update] --with main` instead
@z

@x
## Support for yanked releases (PEP 592)
@y
## Support for yanked releases (PEP 592)
@z

@x
Poetry now supports yanked releases, as defined by [PEP 592](https://peps.python.org/pep-0592/), for both PyPI
and [PEP 503](https://peps.python.org/pep-0503/)-compatible repositories.
@y
Poetry now supports yanked releases, as defined by [PEP 592](https://peps.python.org/pep-0592/), for both PyPI
and [PEP 503](https://peps.python.org/pep-0503/)-compatible repositories.
@z

@x
Adding a dependency version that is yanked, or installing a project that depends on yanked releases, will now raise a
warning:
@y
Adding a dependency version that is yanked, or installing a project that depends on yanked releases, will now raise a
warning:
@z

@x
```shell
$ poetry add cryptography==37.0.3
@y
```shell
$ poetry add cryptography==37.0.3
@z

@x
[...]
Warning: The locked version 37.0.3 for cryptography is a yanked version. Reason for being yanked: Regression in OpenSSL.
```
@y
[...]
Warning: The locked version 37.0.3 for cryptography is a yanked version. Reason for being yanked: Regression in OpenSSL.
```
@z

@x
```shell
$ poetry install
@y
```shell
$ poetry install
@z

@x
[...]
Warning: The file chosen for install of cryptography 37.0.3 (cryptography-37.0.3-cp36-abi3-manylinux_2_24_x86_64.whl) is yanked. Reason for being yanked: Regression in OpenSSL.
```
@y
[...]
Warning: The file chosen for install of cryptography 37.0.3 (cryptography-37.0.3-cp36-abi3-manylinux_2_24_x86_64.whl) is yanked. Reason for being yanked: Regression in OpenSSL.
```
@z

@x
## Support for subdirectories in git dependencies
@y
## Support for subdirectories in git dependencies
@z

@x
It is now possible to define a subdirectory for Poetry to look for when adding a git dependency, which is useful when a
git dependency stores its build definition in a subdirectory in the repository.
@y
It is now possible to define a subdirectory for Poetry to look for when adding a git dependency, which is useful when a
git dependency stores its build definition in a subdirectory in the repository.
@z

@x
To specify a subdirectory to look for, you can use `subdirectory`
(see [documentation](https://python-poetry.org/docs/1.2/dependency-specification/#git-dependencies) for usage
in `pyproject.toml`):
@y
To specify a subdirectory to look for, you can use `subdirectory`
(see [documentation](https://python-poetry.org/docs/1.2/dependency-specification/#git-dependencies) for usage
in `pyproject.toml`):
@z

@x
```shell
$ poetry add git+https://github.com/myorg/mypackage_with_subdirs.git#subdirectory=subdir
```
@y
```shell
$ poetry add git+https://github.com/myorg/mypackage_with_subdirs.git#subdirectory=subdir
```
@z
