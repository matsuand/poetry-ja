%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.2.0"
date: 2022-08-31
categories: [releases]
tags: ["1.x", "1.2"]
---
@y
---
layout: single
title: "Announcing Poetry 1.2.0"
date: 2022-08-31
categories: [releases]
tags: ["1.x", "1.2"]
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0**.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
Poetry 1.2 boasts a massive list of changes, new features and fixes developed over the course of 2 years, with
contributions from dozens of committers.
@y
Poetry 1.2 boasts a massive list of changes, new features and fixes developed over the course of 2 years, with
contributions from dozens of committers.
@z

@x
If you have a previous version of Poetry installed via the [new installer][installation docs], `pipx` or manually,
getting Poetry 1.2.0 is as easy as:
@y
If you have a previous version of Poetry installed via the [new installer][installation docs], `pipx` or manually,
getting Poetry 1.2.0 is as easy as:
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
[installation docs]: {{< relref "docs#installation" >}}
@y
[installation docs]: {{< relref "docs#installation" >}}
@z

@x
{{% warning %}}
If you installed Poetry using the deprecated `get-poetry.py`, you will need to migrate to the new installer.
First, uninstall with `get-poetry.py`:
@y
{{% warning %}}
If you installed Poetry using the deprecated `get-poetry.py`, you will need to migrate to the new installer.
First, uninstall with `get-poetry.py`:
@z

@x
```bash
$ curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 - --uninstall
```
@y
```bash
$ curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 - --uninstall
```
@z

@x
Then follow the instructions below to install Poetry 1.2.
{{% /warning %}}
@y
Then follow the instructions below to install Poetry 1.2.
{{% /warning %}}
@z

@x
Since there are many changes in Poetry 1.2.0, this post details the changes over the following sections:
@y
Since there are many changes in Poetry 1.2.0, this post details the changes over the following sections:
@z

@x
- [Breaking changes and major features](#breaking-changes-and-major-features)
- [Other noteworthy changes and features](#other-noteworthy-changes-and-features)
- [Minor changes](#minor-changes)
- [New commands](#new-commands)
- [Changes to existing commands](#changes-to-existing-commands)
- [New configuration options](#new-configuration-options)
- [FAQ](#faq)
@y
- [Breaking changes and major features](#breaking-changes-and-major-features)
- [Other noteworthy changes and features](#other-noteworthy-changes-and-features)
- [Minor changes](#minor-changes)
- [New commands](#new-commands)
- [Changes to existing commands](#changes-to-existing-commands)
- [New configuration options](#new-configuration-options)
- [FAQ](#faq)
@z

@x
For a complete list of changes, you can refer to the project [history]. Full documentation for Poetry 1.2 is available
[here][docs]. Any bugs or regressions should be reported to the [issue tracker] after checking for duplicates.
@y
For a complete list of changes, you can refer to the project [history]. Full documentation for Poetry 1.2 is available
[here][docs]. Any bugs or regressions should be reported to the [issue tracker] after checking for duplicates.
@z

@x
[docs]: {{< relref "docs" >}}
[history]: /history
[issue tracker]: https://github.com/python-poetry/poetry/issues
@y
[docs]: {{< relref "docs" >}}
[history]: /history
[issue tracker]: https://github.com/python-poetry/poetry/issues
@z

@x
## Breaking changes and major features
@y
## Breaking changes and major features
@z

@x
### New standalone installer
@y
### New standalone installer
@z

@x
The legacy `get-poetry.py` installation script has been replaced by [install.python-poetry.org]. The installer is now a
[standalone project][installer repo], with its own issue tracker.
@y
The legacy `get-poetry.py` installation script has been replaced by [install.python-poetry.org]. The installer is now a
[standalone project][installer repo], with its own issue tracker.
@z

@x
[install.python-poetry.org]: https://install.python-poetry.org
[installer repo]: https://github.com/python-poetry/install.python-poetry.org
@y
[install.python-poetry.org]: https://install.python-poetry.org
[installer repo]: https://github.com/python-poetry/install.python-poetry.org
@z

@x
{{% warning %}}
The `get-poetry.py` script is frozen, but will be available in Poetry's repository for at least one more minor release.
However, the new installer can install Poetry `>= 1.1.7`, so all users should migrate away as soon as possible.
{{% /warning %}}
@y
{{% warning %}}
The `get-poetry.py` script is frozen, but will be available in Poetry's repository for at least one more minor release.
However, the new installer can install Poetry `>= 1.1.7`, so all users should migrate away as soon as possible.
{{% /warning %}}
@z

@x
Most users will be satisfied by the defaults of the installer, which can be piped directly to a Python interpreter:
@y
Most users will be satisfied by the defaults of the installer, which can be piped directly to a Python interpreter:
@z

@x
```bash
# Linux, macOS, Windows (WSL)
$ curl -sSL https://install.python-poetry.org | python3 -
@y
```bash
# Linux, macOS, Windows (WSL)
$ curl -sSL https://install.python-poetry.org | python3 -
@z

@x
# Windows (Powershell)
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -
```
@y
# Windows (Powershell)
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -
```
@z

@x
The new installer brings the following improvements:
@y
The new installer brings the following improvements:
@z

@x
- Releases are installed from standard wheels instead of special platform-specific archives. This allows for support of
  `pipx` and manual installs, and prevents a release being necessary to make use of newer dependency versions.
- Standard install locations are used for both Poetry itself, and the `poetry` CLI wrapper.
- Installations can be performed from a local path, or from a Git repository (including refs like branches or commits).
- Guidance on modifying `$PATH` is provided, but the user's configuration is not altered by automated tools.
- Poetry will be installed using the Python interpreter the installer is invoked with.
@y
- Releases are installed from standard wheels instead of special platform-specific archives. This allows for support of
  `pipx` and manual installs, and prevents a release being necessary to make use of newer dependency versions.
- Standard install locations are used for both Poetry itself, and the `poetry` CLI wrapper.
- Installations can be performed from a local path, or from a Git repository (including refs like branches or commits).
- Guidance on modifying `$PATH` is provided, but the user's configuration is not altered by automated tools.
- Poetry will be installed using the Python interpreter the installer is invoked with.
@z

@x
The new installer (or a compatible install method such as `pipx` or manual installation) is additionally necessary for
the new plugin system, [detailed below](#plugin-support).
@y
The new installer (or a compatible install method such as `pipx` or manual installation) is additionally necessary for
the new plugin system, [detailed below](#plugin-support).
@z

@x
If you wish to install using another method, or have advanced requirements like installing Poetry from git, refer to the
[full documentation][installation docs].
@y
If you wish to install using another method, or have advanced requirements like installing Poetry from git, refer to the
[full documentation][installation docs].
@z

@x
### Dropping support for managing Python 2.7 projects
@y
### Dropping support for managing Python 2.7 projects
@z

@x
Python 2.7 has reached end of life over 18 months ago, on January 1, 2020.
@y
Python 2.7 has reached end of life over 18 months ago, on January 1, 2020.
@z

@x
Poetry 1.2 drops support for managing Python 2.7 projects, as:
@y
Poetry 1.2 drops support for managing Python 2.7 projects, as:
@z

@x
- It led to increasing technical debt and slowed the development of Poetry.
- Projects have long had the time to migrate to Python 3.
@y
- It led to increasing technical debt and slowed the development of Poetry.
- Projects have long had the time to migrate to Python 3.
@z

@x
{{% note %}}
If you rely on Poetry for a Python 2.7 project, the Poetry 1.1 branch is still available, though it will no longer be
maintained.
{{% /note %}}
@y
{{% note %}}
If you rely on Poetry for a Python 2.7 project, the Poetry 1.1 branch is still available, though it will no longer be
maintained.
{{% /note %}}
@z

@x
### Dropping support for Python 2.7, 3.5 and 3.6 as runtimes
@y
### Dropping support for Python 2.7, 3.5 and 3.6 as runtimes
@z

@x
Poetry 1.2 drops runtime support for Python 2.7, 3.5 and 3.6. Running Poetry on these versions is now untested and
unsupported.
@y
Poetry 1.2 drops runtime support for Python 2.7, 3.5 and 3.6. Running Poetry on these versions is now untested and
unsupported.
@z

@x
{{% note %}}
This change is about installing and running Poetry itself. Managing projects requiring Python 3.5 and 3.6, as well as
older Python 3 versions is still supported.
{{% /note %}}
@y
{{% note %}}
This change is about installing and running Poetry itself. Managing projects requiring Python 3.5 and 3.6, as well as
older Python 3 versions is still supported.
{{% /note %}}
@z

@x
### Dependency groups
@y
### Dependency groups
@z

@x
Poetry provides a way to **organize** your dependencies by **groups**. For instance, you might have dependencies that
are only needed to test your project or to build the documentation.
@y
Poetry provides a way to **organize** your dependencies by **groups**. For instance, you might have dependencies that
are only needed to test your project or to build the documentation.
@z

@x
To declare a new dependency group, use a `tool.poetry.group.<group>` section where `<group>` is the name of your
dependency group (for instance, `test`):
@y
To declare a new dependency group, use a `tool.poetry.group.<group>` section where `<group>` is the name of your
dependency group (for instance, `test`):
@z

@x
```toml
[tool.poetry.group.test]  # This section can be omitted
@y
```toml
[tool.poetry.group.test]  # This section can be omitted
@z

@x
[tool.poetry.group.test.dependencies]
pytest = "^7.1.0"
pytest-mock = "*"
```
@y
[tool.poetry.group.test.dependencies]
pytest = "^7.1.0"
pytest-mock = "*"
```
@z

@x
{{% note %}}
All dependencies **must be compatible across all groups** as they will be resolved regardless of whether they are
selected for installation or not (see [Installing group dependencies](#installing-group-dependencies)).
@y
{{% note %}}
All dependencies **must be compatible across all groups** as they will be resolved regardless of whether they are
selected for installation or not (see [Installing group dependencies](#installing-group-dependencies)).
@z

@x
Think of dependency groups as **labels** associated with your dependencies: as all groups will be installed **by
default**, they are simply a way to organize the dependencies logically.
{{% /note %}}
@y
Think of dependency groups as **labels** associated with your dependencies: as all groups will be installed **by
default**, they are simply a way to organize the dependencies logically.
{{% /note %}}
@z

@x
The dependencies declared in `tool.poetry.dependencies` are part of an implicit `main` group.
@y
The dependencies declared in `tool.poetry.dependencies` are part of an implicit `main` group.
@z

@x
```toml
[tool.poetry.dependencies]  # The implicit `main` dependency group
httpx = "*"
pendulum = "*"
@y
```toml
[tool.poetry.dependencies]  # The implicit `main` dependency group
httpx = "*"
pendulum = "*"
@z

@x
[tool.poetry.group.test.dependencies]
pytest = "^7.1.0"
pytest-mock = "*"
```
@y
[tool.poetry.group.test.dependencies]
pytest = "^7.1.0"
pytest-mock = "*"
```
@z

@x
Dependency groups, other than the implicit `main` group, should generally contain additional dependencies that are part
of your development process, as installing them is only possible using Poetry and `poetry install`.
@y
Dependency groups, other than the implicit `main` group, should generally contain additional dependencies that are part
of your development process, as installing them is only possible using Poetry and `poetry install`.
@z

@x
If your project has additional dependencies meant to add additional functionality at runtime, they should be declared
using the ecosystem-standard [extras][extras docs] instead. Extras are supported by
package build and install tools such as `pip`.
@y
If your project has additional dependencies meant to add additional functionality at runtime, they should be declared
using the ecosystem-standard [extras][extras docs] instead. Extras are supported by
package build and install tools such as `pip`.
@z

@x
[extras docs]: {{< relref "docs/pyproject#extras" >}}
@y
[extras docs]: {{< relref "docs/pyproject#extras" >}}
@z

@x
{{% note %}}
**A note about the `dev-dependencies` section**
@y
{{% note %}}
**A note about the `dev-dependencies` section**
@z

@x
Any dependency declared in the legacy `dev-dependencies` section will automatically be added to a `dev` group.
Thus, the following examples are equivalent:
@y
Any dependency declared in the legacy `dev-dependencies` section will automatically be added to a `dev` group.
Thus, the following examples are equivalent:
@z

@x
```toml
[tool.poetry.dev-dependencies]
pytest = "^7.1.0"
pytest-mock = "*"
```
@y
```toml
[tool.poetry.dev-dependencies]
pytest = "^7.1.0"
pytest-mock = "*"
```
@z

@x
```toml
[tool.poetry.group.dev.dependencies]
pytest = "^7.1.0"
pytest-mock = "*"
```
@y
```toml
[tool.poetry.group.dev.dependencies]
pytest = "^7.1.0"
pytest-mock = "*"
```
@z

@x
As the `dev-dependencies` is now deprecated, projects should migrate to the new `group` syntax as soon as possible. Keep
in mind that the `group` syntax is a new feature of Poetry 1.2, and your project will not be buildable with Poetry 1.1
after migrating.
{{% /note %}}
@y
As the `dev-dependencies` is now deprecated, projects should migrate to the new `group` syntax as soon as possible. Keep
in mind that the `group` syntax is a new feature of Poetry 1.2, and your project will not be buildable with Poetry 1.1
after migrating.
{{% /note %}}
@z

@x
#### Optional groups
@y
#### Optional groups
@z

@x
A dependency group can be declared as optional. This makes sense when you have a group of dependencies that are only
required in a specific environment or for a specialized purpose.
@y
A dependency group can be declared as optional. This makes sense when you have a group of dependencies that are only
required in a specific environment or for a specialized purpose.
@z

@x
```toml
[tool.poetry.group.docs]
optional = true
@y
```toml
[tool.poetry.group.docs]
optional = true
@z

@x
[tool.poetry.group.docs.dependencies]
mkdocs = "*"
```
@y
[tool.poetry.group.docs.dependencies]
mkdocs = "*"
```
@z

@x
Optional groups can be installed in addition to the **default** dependencies by using the `--with` flag of
the [`install`][install docs] command:
@y
Optional groups can be installed in addition to the **default** dependencies by using the `--with` flag of
the [`install`][install docs] command:
@z

@x
```bash
$ poetry install --with docs
```
@y
```bash
$ poetry install --with docs
```
@z

@x
{{% warning %}}
Optional groups will **still** be resolved alongside other dependencies, so special care should be taken to ensure they
are compatible with each other.
{{% /warning %}}
@y
{{% warning %}}
Optional groups will **still** be resolved alongside other dependencies, so special care should be taken to ensure they
are compatible with each other.
{{% /warning %}}
@z

@x
#### Adding a dependency to a group
@y
#### Adding a dependency to a group
@z

@x
The `--group (-G)` flag of the [`add`][add docs] command is the preferred way to add
dependencies to a group:
@y
The `--group (-G)` flag of the [`add`][add docs] command is the preferred way to add
dependencies to a group:
@z

@x
```bash
$ poetry add pytest --group test
```
@y
```bash
$ poetry add pytest --group test
```
@z

@x
If the group does not already exist, it will be created automatically.
@y
If the group does not already exist, it will be created automatically.
@z

@x
#### Installing group dependencies
@y
#### Installing group dependencies
@z

@x
**By default**, dependencies across **all non-optional groups** will be installed when executing `poetry install`.
@y
**By default**, dependencies across **all non-optional groups** will be installed when executing `poetry install`.
@z

@x
You can **exclude** one or more groups with the `--without` option:
@y
You can **exclude** one or more groups with the `--without` option:
@z

@x
```bash
$ poetry install --without docs,test
```
@y
```bash
$ poetry install --without docs,test
```
@z

@x
You can also opt in to [optional groups](#optional-groups) by using the `--with` option:
@y
You can also opt in to [optional groups](#optional-groups) by using the `--with` option:
@z

@x
```bash
$ poetry install --with docs
```
@y
```bash
$ poetry install --with docs
```
@z

@x
If you only want to install the [**default**, non-grouped dependencies](#dependency-groups) (aka the `main` group), you can do so with the
`--only` option:
@y
If you only want to install the [**default**, non-grouped dependencies](#dependency-groups) (aka the `main` group), you can do so with the
`--only` option:
@z

@x
```bash
$ poetry install --only main
```
@y
```bash
$ poetry install --only main
```
@z

@x
Finally, if you wish to install **only specific groups** of dependencies without installing the `main` group, the
`--only` option can be used to do so:
@y
Finally, if you wish to install **only specific groups** of dependencies without installing the `main` group, the
`--only` option can be used to do so:
@z

@x
```bash
$ poetry install --only docs,test
```
@y
```bash
$ poetry install --only docs,test
```
@z

@x
#### Removing dependencies from a group
@y
#### Removing dependencies from a group
@z

@x
The [`remove`][remove docs] command supports a `--group (-G)` flag to remove packages from a
specific group:
@y
The [`remove`][remove docs] command supports a `--group (-G)` flag to remove packages from a
specific group:
@z

@x
```bash
$ poetry remove mkdocs --group docs
```
@y
```bash
$ poetry remove mkdocs --group docs
```
@z

@x
[add docs]: {{< relref "docs/cli#add" >}}
[remove docs]: {{< relref "docs/cli#remove" >}}
[install docs]: {{< relref "docs/cli#install" >}}
@y
[add docs]: {{< relref "docs/cli#add" >}}
[remove docs]: {{< relref "docs/cli#remove" >}}
[install docs]: {{< relref "docs/cli#install" >}}
@z

@x
### Plugin support
@y
### Plugin support
@z

@x
Poetry now supports a experimental plugin system to alter or expand functionality.
@y
Poetry now supports a experimental plugin system to alter or expand functionality.
@z

@x
Example use cases include functionality not desirable to the majority of Poetry users, features out of scope to the main
Poetry project, or specialized functionality specific to a project.
@y
Example use cases include functionality not desirable to the majority of Poetry users, features out of scope to the main
Poetry project, or specialized functionality specific to a project.
@z

@x
The plugin system is designed to allow use of Poetry in these situations without requiring a custom fork.
@y
The plugin system is designed to allow use of Poetry in these situations without requiring a custom fork.
@z

@x
#### Using plugins
@y
#### Using plugins
@z

@x
Poetry automatically loads all plugins installed into its environment.
@y
Poetry automatically loads all plugins installed into its environment.
@z

@x
While there are many methods to add plugins to a Python environment (or virtual environment), Poetry comes with a suite
of [`self`][self docs] commands that should work regardless of install method:
@y
While there are many methods to add plugins to a Python environment (or virtual environment), Poetry comes with a suite
of [`self`][self docs] commands that should work regardless of install method:
@z

@x
```bash
$ poetry self add poetry-plugin-<NAME>
```
@y
```bash
$ poetry self add poetry-plugin-<NAME>
```
@z

@x
The [`self add`][self add docs] command will ensure that the plugin is compatible with the current version of Poetry
and install any necessary dependencies.
@y
The [`self add`][self add docs] command will ensure that the plugin is compatible with the current version of Poetry
and install any necessary dependencies.
@z

@x
Any package specification understood by the standard [`add`][add docs] command is compatible with `self add`.
@y
Any package specification understood by the standard [`add`][add docs] command is compatible with `self add`.
@z

@x
If you no longer need a plugin and want to uninstall it, you can use the [`self remove`][self remove docs] command:
@y
If you no longer need a plugin and want to uninstall it, you can use the [`self remove`][self remove docs] command:
@z

@x
```bash
$ poetry self remove poetry-plugin-<NAME>
```
@y
```bash
$ poetry self remove poetry-plugin-<NAME>
```
@z

@x
You can also list all currently installed and discovered plugins by using [`self show plugins`][self show plugins docs]:
@y
You can also list all currently installed and discovered plugins by using [`self show plugins`][self show plugins docs]:
@z

@x
```bash
$ poetry self show plugins
```
@y
```bash
$ poetry self show plugins
```
@z

@x
Full documentation for installing and using plugins (including with other install methods) is available
[here][using plugins docs].
@y
Full documentation for installing and using plugins (including with other install methods) is available
[here][using plugins docs].
@z

@x
#### Creating a plugin
@y
#### Creating a plugin
@z

@x
Early documentation for creating a plugin is available [here][creating plugins docs].
@y
Early documentation for creating a plugin is available [here][creating plugins docs].
@z

@x
[using plugins docs]: {{< relref "docs/plugins#using-plugins" >}}
[creating plugins docs]:{{< relref "docs/plugins#creating-a-plugin" >}}
@y
[using plugins docs]: {{< relref "docs/plugins#using-plugins" >}}
[creating plugins docs]:{{< relref "docs/plugins#creating-a-plugin" >}}
@z

@x
### Migration of the `poetry export` command
@y
### Migration of the `poetry export` command
@z

@x
The [`export`][export docs] command provides a way to export a list of locked dependencies to foreign formats, such as
`requirements.txt`. This command was a feature added to make migration to Poetry easier, or to enable hybrid workflows,
but it was never considered part of the core functionality of Poetry.
@y
The [`export`][export docs] command provides a way to export a list of locked dependencies to foreign formats, such as
`requirements.txt`. This command was a feature added to make migration to Poetry easier, or to enable hybrid workflows,
but it was never considered part of the core functionality of Poetry.
@z

@x
To reflect this, and to accelerate development of the main Poetry project, it has been migrated into a
[separate repo][export repo] and is distributed separately as [poetry-plugin-export][export package]. Note that it is
now considered a separate project with its own issue tracker and release cycle.
@y
To reflect this, and to accelerate development of the main Poetry project, it has been migrated into a
[separate repo][export repo] and is distributed separately as [poetry-plugin-export][export package]. Note that it is
now considered a separate project with its own issue tracker and release cycle.
@z

@x
To ease the transition, **the plugin is installed by default for the 1.2 release**. Future releases of Poetry will
**deprecate this automatic install**, and require the user to explicitly install the plugin.
@y
To ease the transition, **the plugin is installed by default for the 1.2 release**. Future releases of Poetry will
**deprecate this automatic install**, and require the user to explicitly install the plugin.
@z

@x
[export docs]: {{< relref "docs/cli#export" >}}
[export repo]: https://github.com/python-poetry/poetry-plugin-export
[export package]: https://pypi.org/project/poetry-plugin-export/
@y
[export docs]: {{< relref "docs/cli#export" >}}
[export repo]: https://github.com/python-poetry/poetry-plugin-export
[export package]: https://pypi.org/project/poetry-plugin-export/
@z

@x
## Other noteworthy changes and features
@y
## Other noteworthy changes and features
@z

@x
### Support for yanked releases (PEP 592)
@y
### Support for yanked releases (PEP 592)
@z

@x
Poetry now supports yanked releases as defined by [PEP 592], for both PyPI and any [PEP 503]-compatible repository.
@y
Poetry now supports yanked releases as defined by [PEP 592], for both PyPI and any [PEP 503]-compatible repository.
@z

@x
Adding a dependency version that is yanked, or installing a project that depends on yanked releases will now raise a
warning:
@y
Adding a dependency version that is yanked, or installing a project that depends on yanked releases will now raise a
warning:
@z

@x
```bash
$ poetry add cryptography==37.0.3
@y
```bash
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
```bash
$ poetry install
@y
```bash
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
[pep 592]: https://peps.python.org/pep-0592/
[pep 503]: https://peps.python.org/pep-0503/
@y
[pep 592]: https://peps.python.org/pep-0592/
[pep 503]: https://peps.python.org/pep-0503/
@z

@x
### Support for Direct Origin URL records (PEP 610)
@y
### Support for Direct Origin URL records (PEP 610)
@z

@x
Poetry now supports reading and writing [PEP 610] records, which resolves edge cases and performance issues relating to
determining the origin of installed dependencies.
@y
Poetry now supports reading and writing [PEP 610] records, which resolves edge cases and performance issues relating to
determining the origin of installed dependencies.
@z

@x
{{% note %}}
You might see same-version 'updates' when running the `install` or `update` commands due to Poetry rewriting (or
creating) PEP 610 records.
{{% /note %}}
@y
{{% note %}}
You might see same-version 'updates' when running the `install` or `update` commands due to Poetry rewriting (or
creating) PEP 610 records.
{{% /note %}}
@z

@x
[pep 610]: https://peps.python.org/pep-0610/
@y
[pep 610]: https://peps.python.org/pep-0610/
@z

@x
### Subdirectory support for Git dependencies
@y
### Subdirectory support for Git dependencies
@z

@x
It is now possible to specify a subdirectory from which Poetry should build and install a Git-based dependency.
@y
It is now possible to specify a subdirectory from which Poetry should build and install a Git-based dependency.
@z

@x
The syntax used by the [`add`][add docs] command is the same as `pip install`/[PEP 508] -- a `#subdirectory=` fragment
appended to the URL:
@y
The syntax used by the [`add`][add docs] command is the same as `pip install`/[PEP 508] -- a `#subdirectory=` fragment
appended to the URL:
@z

@x
```bash
$ poetry add git+https://github.com/myorg/mypackage_with_subdirs.git#subdirectory=subdir
```
@y
```bash
$ poetry add git+https://github.com/myorg/mypackage_with_subdirs.git#subdirectory=subdir
```
@z

@x
Manual editing of the `pyproject.toml` is supported as well. Full documentation, including examples is available
[here][git dep docs].
@y
Manual editing of the `pyproject.toml` is supported as well. Full documentation, including examples is available
[here][git dep docs].
@z

@x
[pep 508]: https://peps.python.org/pep-0508/
@y
[pep 508]: https://peps.python.org/pep-0508/
@z

@x
[git dep docs]: {{< relref "docs/dependency-specification#git-dependencies" >}}
@y
[git dep docs]: {{< relref "docs/dependency-specification#git-dependencies" >}}
@z

@x
### Single page repository support
@y
### Single page repository support
@z

@x
Poetry now supports discovering and installing dependencies from the 'single page' style of repository. Some
widely-consumed package are not hosted in a [PEP 503]-compliant repository, but are instead listed on a single HTML
page.
@y
Poetry now supports discovering and installing dependencies from the 'single page' style of repository. Some
widely-consumed package are not hosted in a [PEP 503]-compliant repository, but are instead listed on a single HTML
page.
@z

@x
To add a single page repository as a source add it like any other repository:
@y
To add a single page repository as a source add it like any other repository:
@z

@x
```bash
$ poetry source add <SOURCE_NAME> <PAGE_URL>
@y
```bash
$ poetry source add <SOURCE_NAME> <PAGE_URL>
@z

@x
# e.g.
$ poetry source add jax https://storage.googleapis.com/jax-releases/jax_releases.html
```
@y
# e.g.
$ poetry source add jax https://storage.googleapis.com/jax-releases/jax_releases.html
```
@z

@x
Full documentation is available [here][single page repo docs].
@y
Full documentation is available [here][single page repo docs].
@z

@x
[single page repo docs]: {{< relref "docs/repositories#single-page-link-source" >}}
@y
[single page repo docs]: {{< relref "docs/repositories#single-page-link-source" >}}
@z

@x
### Synchronizing the environment with the lock file
@y
### Synchronizing the environment with the lock file
@z

@x
To ensure that the environment exactly matches the lock file, the [`install`][install docs] command has gained a new
`--sync` flag:
@y
To ensure that the environment exactly matches the lock file, the [`install`][install docs] command has gained a new
`--sync` flag:
@z

@x
```bash
$ poetry install --sync
```
@y
```bash
$ poetry install --sync
```
@z

@x
The `--sync` option can be combined with any of the [dependency group](#dependency-groups)-related flags as expected:
@y
The `--sync` option can be combined with any of the [dependency group](#dependency-groups)-related flags as expected:
@z

@x
```bash
$ poetry install --without dev --sync
$ poetry install --with docs --sync
$ poetry install --only dev
```
@y
```bash
$ poetry install --without dev --sync
$ poetry install --with docs --sync
$ poetry install --only dev
```
@z

@x
Please note that use of this command in the system environment (a common practice in containerized environments)
may have unexpected results. `--sync` is intended only for use in a virtual environment where installed packages are
exclusively managed by Poetry.
@y
Please note that use of this command in the system environment (a common practice in containerized environments)
may have unexpected results. `--sync` is intended only for use in a virtual environment where installed packages are
exclusively managed by Poetry.
@z

@x
{{% note %}}
`--sync` replaces the similar `--remove-untracked` flag which is now **deprecated**.
{{% /note %}}
@y
{{% note %}}
`--sync` replaces the similar `--remove-untracked` flag which is now **deprecated**.
{{% /note %}}
@z

@x
### Opting out of binary distributions
@y
### Opting out of binary distributions
@z

@x
A new [`installer.no-binary`][installer.no-binary docs] setting has been introduced, to allow opting out of
[binary distributions][bdist docs] of selected dependencies. This is functionally similar to `pip install --no-binary`.
@y
A new [`installer.no-binary`][installer.no-binary docs] setting has been introduced, to allow opting out of
[binary distributions][bdist docs] of selected dependencies. This is functionally similar to `pip install --no-binary`.
@z

@x
This option can be configured globally to affect all usage of Poetry, but is best combined with `--local` to scope it to
a specific project:
@y
This option can be configured globally to affect all usage of Poetry, but is best combined with `--local` to scope it to
a specific project:
@z

@x
```bash
# Skip all binaries
$ poetry config --local installer.no-binary :all:
# Skip specific package binaries
$ poetry config --local installer.no-binary httpx,uvicorn
# Do not skip any binaries (default)
$ poetry config --local installer.no-binary :none:
```
@y
```bash
# Skip all binaries
$ poetry config --local installer.no-binary :all:
# Skip specific package binaries
$ poetry config --local installer.no-binary httpx,uvicorn
# Do not skip any binaries (default)
$ poetry config --local installer.no-binary :none:
```
@z

@x
Full documentation of this feature (including configuration using environment variables for CI or containers) is
available [here][installer.no-binary docs].
@y
Full documentation of this feature (including configuration using environment variables for CI or containers) is
available [here][installer.no-binary docs].
@z

@x
[bdist docs]: https://packaging.python.org/en/latest/specifications/binary-distribution-format/
@y
[bdist docs]: https://packaging.python.org/en/latest/specifications/binary-distribution-format/
@z

@x
### Native Python git client
@y
### Native Python git client
@z

@x
Poetry has robust (and improving) support for Git dependencies, which has always been enabled by the system `git`
command. However, not all environments in which you want to use Poetry have a Git client available.
@y
Poetry has robust (and improving) support for Git dependencies, which has always been enabled by the system `git`
command. However, not all environments in which you want to use Poetry have a Git client available.
@z

@x
Poetry 1.2 introduces Git support based on [Dulwich], a native Python implementation of the Git protocol, format, and
client. Dulwich supports all operations Poetry requires, and should mostly be a drop-in replacement for Poetry's
previous usage of the `git` CLI.
@y
Poetry 1.2 introduces Git support based on [Dulwich], a native Python implementation of the Git protocol, format, and
client. Dulwich supports all operations Poetry requires, and should mostly be a drop-in replacement for Poetry's
previous usage of the `git` CLI.
@z

@x
However, as this is a major change, there is an escape hatch in the form of the
[`experimental.system-git-client`][experimental.system-git-client docs] setting. When this is set to `true`, Poetry will
revert to using your system's `git` command.
@y
However, as this is a major change, there is an escape hatch in the form of the
[`experimental.system-git-client`][experimental.system-git-client docs] setting. When this is set to `true`, Poetry will
revert to using your system's `git` command.
@z

@x
This option may be necessary for users with lock files that contained an abbreviated Git commit sha, as the current
Dulwich usage is unable to expand abbreviated hashes that are not directly pointed to by a ref (tag or branch). You can
also simply update your lock file to use the unabbreviated form of the hash instead. For more information and
discussion, see [issue 6455].
@y
This option may be necessary for users with lock files that contained an abbreviated Git commit sha, as the current
Dulwich usage is unable to expand abbreviated hashes that are not directly pointed to by a ref (tag or branch). You can
also simply update your lock file to use the unabbreviated form of the hash instead. For more information and
discussion, see [issue 6455].
@z

@x
Note that this option is experimental, and will be removed in a future release of Poetry.
@y
Note that this option is experimental, and will be removed in a future release of Poetry.
@z

@x
[dulwich]: https://www.dulwich.io/
[issue 6455]: https://github.com/python-poetry/poetry/issues/6455
@y
[dulwich]: https://www.dulwich.io/
[issue 6455]: https://github.com/python-poetry/poetry/issues/6455
@z

@x
### Detection of the currently active Python (experimental)
@y
### Detection of the currently active Python (experimental)
@z

@x
Due to refactoring required to enable plugin support and alternative install methods, Poetry lost the ability to detect
the currently activated Python (aka the current `python3` command in the `$PATH`), as selected by tools like `pyenv` or
`update-alternatives`.
@y
Due to refactoring required to enable plugin support and alternative install methods, Poetry lost the ability to detect
the currently activated Python (aka the current `python3` command in the `$PATH`), as selected by tools like `pyenv` or
`update-alternatives`.
@z

@x
To ease the workflow of those using such tools, a new **experimental**
[`virtualenvs.prefer-active-python`][virtualenvs.prefer-active-python docs] setting has been introduced. If this is set
to `true`, Poetry will attempt to detect the currently active Python interpreter when creating a new environment. This
new method should function regardless of the install method used.
@y
To ease the workflow of those using such tools, a new **experimental**
[`virtualenvs.prefer-active-python`][virtualenvs.prefer-active-python docs] setting has been introduced. If this is set
to `true`, Poetry will attempt to detect the currently active Python interpreter when creating a new environment. This
new method should function regardless of the install method used.
@z

@x
```bash
$ poetry config virtualenvs.prefer-active-python true
$ pyenv local 3.9.3
# The resulting environment should be created using Python 3.9.3
$ poetry install
```
@y
```bash
$ poetry config virtualenvs.prefer-active-python true
$ pyenv local 3.9.3
# The resulting environment should be created using Python 3.9.3
$ poetry install
```
@z

@x
## Minor changes
@y
## Minor changes
@z

@x
### PEP 508 dependency specification parsing
@y
### PEP 508 dependency specification parsing
@z

@x
The [`add`][add docs] command now supports full [PEP 508]-style dependency specifications, enabling the addition of
complex dependency definitions using ecosystem-standard syntax:
@y
The [`add`][add docs] command now supports full [PEP 508]-style dependency specifications, enabling the addition of
complex dependency definitions using ecosystem-standard syntax:
@z

@x
```bash
$ poetry add 'pytest-xdist[psutil] (>=2.4.0,<2.5.0); python_version >= "3.7"'
```
@y
```bash
$ poetry add 'pytest-xdist[psutil] (>=2.4.0,<2.5.0); python_version >= "3.7"'
```
@z

@x
This command would result in the following addition to `pyproject.toml`:
@y
This command would result in the following addition to `pyproject.toml`:
@z

@x
```toml
[tool.poetry.dependencies]
pytest-xdist = {version = ">=2.4.0,<2.5.0", markers = "python_version >= \"3.7\"", extras = ["psutil"]}
```
@y
```toml
[tool.poetry.dependencies]
pytest-xdist = {version = ">=2.4.0,<2.5.0", markers = "python_version >= \"3.7\"", extras = ["psutil"]}
```
@z

@x
### Comprehensive HTTPS certificate support
@y
### Comprehensive HTTPS certificate support
@z

@x
Poetry has long supported the use of [custom certificates][repo cert docs] for repository access. However, not all code
paths made use of these configured credentials, preventing some commands like `poetry update` from functioning properly
against custom repos using certificate-based authentication.
@y
Poetry has long supported the use of [custom certificates][repo cert docs] for repository access. However, not all code
paths made use of these configured credentials, preventing some commands like `poetry update` from functioning properly
against custom repos using certificate-based authentication.
@z

@x
Poetry 1.2 has significantly refactored both the repository access and HTTP request components, ensuring that
certificates are uniformly applied to all relevant requests.
@y
Poetry 1.2 has significantly refactored both the repository access and HTTP request components, ensuring that
certificates are uniformly applied to all relevant requests.
@z

@x
[repo cert docs]: {{< relref "docs/repositories#certificates" >}}
@y
[repo cert docs]: {{< relref "docs/repositories#certificates" >}}
@z

@x
### Non-verbose error handling
@y
### Non-verbose error handling
@z

@x
Poetry 1.2 significantly reduces the verbosity of most common errors, by printing only the exception and not a partial
stack trace:
@y
Poetry 1.2 significantly reduces the verbosity of most common errors, by printing only the exception and not a partial
stack trace:
@z

@x
```bash
$ poetry add httpx==0.0.0
@y
```bash
$ poetry add httpx==0.0.0
@z

@x
Could not find a matching version of package httpx
```
@y
Could not find a matching version of package httpx
```
@z

@x
For debugging and development work, different levels of verbosity are now available:
@y
For debugging and development work, different levels of verbosity are now available:
@z

@x
- `--verbose (-v)` to display the last stack frame (similar to Poetry 1.1)
- `-vv` to display a reduced stack trace, highlighting the exact error and the calls that led to it
- `-vvv` for maximum verbosity, printing a full stack trace and enabling debug logging
@y
- `--verbose (-v)` to display the last stack frame (similar to Poetry 1.1)
- `-vv` to display a reduced stack trace, highlighting the exact error and the calls that led to it
- `-vvv` for maximum verbosity, printing a full stack trace and enabling debug logging
@z

@x
### Management of setuptools and pip
@y
### Management of setuptools and pip
@z

@x
Poetry 1.2 will properly lock and manipulate the versions of setuptools, pip, and wheel in the target environment. This
is to support projects which depend on pip, which up to this point could be managed by Poetry. However, this does lead
to a sharp edge for users who use both Poetry 1.2 and 1.1.
@y
Poetry 1.2 will properly lock and manipulate the versions of setuptools, pip, and wheel in the target environment. This
is to support projects which depend on pip, which up to this point could be managed by Poetry. However, this does lead
to a sharp edge for users who use both Poetry 1.2 and 1.1.
@z

@x
As Poetry 1.1 will remove optional dependencies that are not requested, and as it considers setuptools, pip, and wheel
to always be optional, they will be removed when a lock file that contains these packages is encountered. This is
generally a rare edge case (and if you need to lock pip or setuptools you likely have fully migrated to 1.2), but some
packages incorrectly declare a build-time dependency on pip or setuptools as a runtime dependency, and may trigger this
edge case.
@y
As Poetry 1.1 will remove optional dependencies that are not requested, and as it considers setuptools, pip, and wheel
to always be optional, they will be removed when a lock file that contains these packages is encountered. This is
generally a rare edge case (and if you need to lock pip or setuptools you likely have fully migrated to 1.2), but some
packages incorrectly declare a build-time dependency on pip or setuptools as a runtime dependency, and may trigger this
edge case.
@z

@x
If setuptools, pip, or wheel are present in your lock file, you should fully migrate to 1.2, or at least lock with 1.1
until you can perform a full migration. For more information and discussion, see [issue 4242].
@y
If setuptools, pip, or wheel are present in your lock file, you should fully migrate to 1.2, or at least lock with 1.1
until you can perform a full migration. For more information and discussion, see [issue 4242].
@z

@x
[issue 4242]: https://github.com/python-poetry/poetry/issues/4242
@y
[issue 4242]: https://github.com/python-poetry/poetry/issues/4242
@z

@x
### Keyring backend issues
@y
### Keyring backend issues
@z

@x
Poetry 1.2's support for keyring is nascent, and while extensive manual testing and CI have proven the base
functionality, the diversity of possible backends and system configurations has proven to require more robust error
handling and invocation in Poetry.
@y
Poetry 1.2's support for keyring is nascent, and while extensive manual testing and CI have proven the base
functionality, the diversity of possible backends and system configurations has proven to require more robust error
handling and invocation in Poetry.
@z

@x
If Keyring is unable to automatically determine that the backend is locked/unavailable and fall back to the null
backend, you can opt out yourself with the environment variable `PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring`.
@y
If Keyring is unable to automatically determine that the backend is locked/unavailable and fall back to the null
backend, you can opt out yourself with the environment variable `PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring`.
@z

@x
We don't expect this to become mandatory for environments in which the Keyring is not actively being used, but it serves
as both a useful troubleshooting step and a good bailout for environments in which Keyring is not working, and you do
not wish to troubleshoot Keyring so it can successfully communicate with your backend. For more information and
discussion, see [issue 1917].
@y
We don't expect this to become mandatory for environments in which the Keyring is not actively being used, but it serves
as both a useful troubleshooting step and a good bailout for environments in which Keyring is not working, and you do
not wish to troubleshoot Keyring so it can successfully communicate with your backend. For more information and
discussion, see [issue 1917].
@z

@x
[issue 1917]: https://github.com/python-poetry/poetry/issues/1917
@y
[issue 1917]: https://github.com/python-poetry/poetry/issues/1917
@z

@x
### Usefulness of `experimental.new-installer false`
@y
### Usefulness of `experimental.new-installer false`
@z

@x
Due to bugs in older versions of pip, the parallel installer may sometimes experience race conditions. Modern pip
versions should be highly reliable, but either due to edge cases in pip, Poetry, or simply having to use an older
version, these race conditions can rarely occur.
@y
Due to bugs in older versions of pip, the parallel installer may sometimes experience race conditions. Modern pip
versions should be highly reliable, but either due to edge cases in pip, Poetry, or simply having to use an older
version, these race conditions can rarely occur.
@z

@x
When troubleshooting or working around them, please use the configuration setting `installer.max-workers 1` where prior
documentation and issues may have suggested `experimental.new-installer false`. The old installer is deprecated and has
not received more than basic maintenance work, and may not interact perfectly with some new features in Poetry.
Likewise, fixing any bugs in the new installer is preferred to depending on the old installer code, which
is to be removed in the near future.
@y
When troubleshooting or working around them, please use the configuration setting `installer.max-workers 1` where prior
documentation and issues may have suggested `experimental.new-installer false`. The old installer is deprecated and has
not received more than basic maintenance work, and may not interact perfectly with some new features in Poetry.
Likewise, fixing any bugs in the new installer is preferred to depending on the old installer code, which
is to be removed in the near future.
@z

@x
For more information and discussion, see [issue 3336].
@y
For more information and discussion, see [issue 3336].
@z

@x
[issue 3336]: https://github.com/python-poetry/poetry/issues/3336
@y
[issue 3336]: https://github.com/python-poetry/poetry/issues/3336
@z

@x
## New commands
@y
## New commands
@z

@x
### `self`
@y
### `self`
@z

@x
The [`self`][self docs] namespace groups subcommands related to management of Poetry and its runtime environment.
@y
The [`self`][self docs] namespace groups subcommands related to management of Poetry and its runtime environment.
@z

@x
This namespace previously contained the [`self update`][self update docs] command, but has now been significantly
expanded:
@y
This namespace previously contained the [`self update`][self update docs] command, but has now been significantly
expanded:
@z

@x
#### `self add`
@y
#### `self add`
@z

@x
The [`self add`][self add docs] command adds a dependency to Poetry's runtime environment, similar to `poetry add`:
@y
The [`self add`][self add docs] command adds a dependency to Poetry's runtime environment, similar to `poetry add`:
@z

@x
```bash
$ poetry self add poetry-plugin-<NAME>
```
@y
```bash
$ poetry self add poetry-plugin-<NAME>
```
@z

@x
#### `self install`
@y
#### `self install`
@z

@x
The [`self install`][self install docs] command ensures all configured packages are installed into Poetry's runtime
environment, similar to `poetry install`:
@y
The [`self install`][self install docs] command ensures all configured packages are installed into Poetry's runtime
environment, similar to `poetry install`:
@z

@x
```bash
$ poetry self install
$ poetry self install --sync
```
@y
```bash
$ poetry self install
$ poetry self install --sync
```
@z

@x
This is useful when `~/.config/pypoetry/pyproject.toml` is managed as part of a dotfiles repo or is mounted into a
container. Note that the path of the runtime `pyproject.toml` may vary based on platform or if `$POETRY_HOME` is set.
@y
This is useful when `~/.config/pypoetry/pyproject.toml` is managed as part of a dotfiles repo or is mounted into a
container. Note that the path of the runtime `pyproject.toml` may vary based on platform or if `$POETRY_HOME` is set.
@z

@x
#### `self lock`
@y
#### `self lock`
@z

@x
The [`self lock`][self lock docs] command ensures all configured packages are recorded to a runtime environment
`poetry.lock` file, similar to `poetry lock`:
@y
The [`self lock`][self lock docs] command ensures all configured packages are recorded to a runtime environment
`poetry.lock` file, similar to `poetry lock`:
@z

@x
```bash
$ poetry self lock
```
@y
```bash
$ poetry self lock
```
@z

@x
#### `self remove`
@y
#### `self remove`
@z

@x
The [`self remove`][self remove docs] command removes a package from Poetry's runtime environment, similar to
`poetry remove`:
@y
The [`self remove`][self remove docs] command removes a package from Poetry's runtime environment, similar to
`poetry remove`:
@z

@x
```bash
$ poetry self remove poetry-plugin-<NAME>
```
@y
```bash
$ poetry self remove poetry-plugin-<NAME>
```
@z

@x
#### `self show`
@y
#### `self show`
@z

@x
The [`self show`][self show docs] command lists all configured runtime environment packages, similar to `poetry show`:
@y
The [`self show`][self show docs] command lists all configured runtime environment packages, similar to `poetry show`:
@z

@x
```bash
$ poetry self show
```
@y
```bash
$ poetry self show
```
@z

@x
#### `self show plugins`
@y
#### `self show plugins`
@z

@x
The [`self show plugins`][self show plugins docs] command lists all discovered plugins in Poetry's runtime environment:
@y
The [`self show plugins`][self show plugins docs] command lists all discovered plugins in Poetry's runtime environment:
@z

@x
```bash
$ poetry self show plugins
```
@y
```bash
$ poetry self show plugins
```
@z

@x
[self docs]: {{< relref "docs/cli#self" >}}
[self add docs]: {{< relref "docs/cli#self-add" >}}
[self remove docs]: {{< relref "docs/cli#self-remove" >}}
[self install docs]: {{< relref "docs/cli#self-install" >}}
[self lock docs]: {{< relref "docs/cli#self-lock" >}}
[self show docs]: {{< relref "docs/cli#self-show" >}}
[self show plugins docs]: {{< relref "docs/cli#self-show-plugins" >}}
@y
[self docs]: {{< relref "docs/cli#self" >}}
[self add docs]: {{< relref "docs/cli#self-add" >}}
[self remove docs]: {{< relref "docs/cli#self-remove" >}}
[self install docs]: {{< relref "docs/cli#self-install" >}}
[self lock docs]: {{< relref "docs/cli#self-lock" >}}
[self show docs]: {{< relref "docs/cli#self-show" >}}
[self show plugins docs]: {{< relref "docs/cli#self-show-plugins" >}}
@z

@x
### `source`
@y
### `source`
@z

@x
The [`source`][source docs] namespace groups subcommands related to management of package sources (repositories).
@y
The [`source`][source docs] namespace groups subcommands related to management of package sources (repositories).
@z

@x
Previously, configuring sources required manual edits to `pyproject.toml`.
@y
Previously, configuring sources required manual edits to `pyproject.toml`.
@z

@x
#### `source add`
@y
#### `source add`
@z

@x
The [`source add`][source add docs] command adds a new source configuration to `pyproject.toml`:
@y
The [`source add`][source add docs] command adds a new source configuration to `pyproject.toml`:
@z

@x
```bash
$ poetry source add pypi-test https://test.pypi.org/simple/
```
@y
```bash
$ poetry source add pypi-test https://test.pypi.org/simple/
```
@z

@x
#### `source show`
@y
#### `source show`
@z

@x
The [`source show`][source show docs] command displays information on all configured sources for the project:
@y
The [`source show`][source show docs] command displays information on all configured sources for the project:
@z

@x
```bash
$ poetry source show
```
@y
```bash
$ poetry source show
```
@z

@x
Optionally, you can limit output to one or more sources by specifying them by name:
@y
Optionally, you can limit output to one or more sources by specifying them by name:
@z

@x
```bash
$ poetry source show pypi-test
```
@y
```bash
$ poetry source show pypi-test
```
@z

@x
#### `source remove`
@y
#### `source remove`
@z

@x
The [`source remove`][source remove docs] command removes a configured source from `pyproject.toml`:
@y
The [`source remove`][source remove docs] command removes a configured source from `pyproject.toml`:
@z

@x
```bash
$ poetry source remove pypi-test
```
@y
```bash
$ poetry source remove pypi-test
```
@z

@x
[source docs]: {{< relref "docs/cli#source" >}}
[source add docs]: {{< relref "docs/cli#source-add" >}}
[source show docs]: {{< relref "docs/cli#source-show" >}}
[source remove docs]: {{< relref "docs/cli#source-remove" >}}
@y
[source docs]: {{< relref "docs/cli#source" >}}
[source add docs]: {{< relref "docs/cli#source-add" >}}
[source show docs]: {{< relref "docs/cli#source-show" >}}
[source remove docs]: {{< relref "docs/cli#source-remove" >}}
@z

@x
## Changes to existing commands
@y
## Changes to existing commands
@z

@x
Poetry 1.2 brings changes to several commands, primarily related to [dependency groups](#dependency-groups).
@y
Poetry 1.2 brings changes to several commands, primarily related to [dependency groups](#dependency-groups).
@z

@x
### Global options
@y
### Global options
@z

@x
- Added `--no-cache` to disable all uses of cached packages and source contents
@y
- Added `--no-cache` to disable all uses of cached packages and source contents
@z

@x
### `about`
@y
### `about`
@z

@x
- Now displays Poetry and poetry-core versions
@y
- Now displays Poetry and poetry-core versions
@z

@x
### `add`
@y
### `add`
@z

@x
- Added `--editable` to add a dependency in editable mode
- Added `--group` / `-G` to add a dependency to a specific dependency group
- Now understands [PEP 508]-style dependency specifications
@y
- Added `--editable` to add a dependency in editable mode
- Added `--group` / `-G` to add a dependency to a specific dependency group
- Now understands [PEP 508]-style dependency specifications
@z

@x
### `env remove`
@y
### `env remove`
@z

@x
- Added `--all` to delete all environments
- It is now possible to remove multiple environments in one invocation by specifying multiple names
@y
- Added `--all` to delete all environments
- It is now possible to remove multiple environments in one invocation by specifying multiple names
@z

@x
### `install`
@y
### `install`
@z

@x
- Added `--all-extras` to install all extras
- Added `--only` to strictly install one or more dependency groups (ignoring the implicit `main` group)
- Added `--only-root` to install the project without any dependencies
- Added `--with` to select one or more dependency groups to install in addition to the implicit `main` group
- Added `--without` to skip installing one or more dependency groups
- Added `--sync` to ensure installed dependencies exactly match the lock file (and specified groups)
- Deprecated `--no-dev` (use `--without dev` instead)
- Deprecated `--remove-untracked` (use `--sync` instead)
@y
- Added `--all-extras` to install all extras
- Added `--only` to strictly install one or more dependency groups (ignoring the implicit `main` group)
- Added `--only-root` to install the project without any dependencies
- Added `--with` to select one or more dependency groups to install in addition to the implicit `main` group
- Added `--without` to skip installing one or more dependency groups
- Added `--sync` to ensure installed dependencies exactly match the lock file (and specified groups)
- Deprecated `--no-dev` (use `--without dev` instead)
- Deprecated `--remove-untracked` (use `--sync` instead)
@z

@x
### `lock`
@y
### `lock`
@z

@x
- Added `--check` to verify `poetry.lock` agrees with `pyproject.toml`
@y
- Added `--check` to verify `poetry.lock` agrees with `pyproject.toml`
@z

@x
### `new`
@y
### `new`
@z

@x
- Added `--readme` to specify the README file format
@y
- Added `--readme` to specify the README file format
@z

@x
### `publish`
@y
### `publish`
@z

@x
- Added `--skip-existing` to ignore errors from files already existing in the repository
@y
- Added `--skip-existing` to ignore errors from files already existing in the repository
@z

@x
### `run`
@y
### `run`
@z

@x
`poetry run` now parses arguments correctly, using the same logic as other Poetry commands. This means that the argument
terminator `--` is now consumed by `poetry run` instead of being passed through.
@y
`poetry run` now parses arguments correctly, using the same logic as other Poetry commands. This means that the argument
terminator `--` is now consumed by `poetry run` instead of being passed through.
@z

@x
For example, `poetry run tox -- arg1 arg2` would previously have been interpreted as
`["tox", "--", "arg1", "arg2"]`. It will now result in `["tox", "arg1", "arg2"]` as the `--` was interpreted as an
argument to `poetry run`. If you need to express a `--` in your command line, you will have to express it twice -- once
for Poetry, and once for the command being run, e.g. `poetry run -- tox -- arg1 arg2`. For more information and
discussion, see [issue 6440].
@y
For example, `poetry run tox -- arg1 arg2` would previously have been interpreted as
`["tox", "--", "arg1", "arg2"]`. It will now result in `["tox", "arg1", "arg2"]` as the `--` was interpreted as an
argument to `poetry run`. If you need to express a `--` in your command line, you will have to express it twice -- once
for Poetry, and once for the command being run, e.g. `poetry run -- tox -- arg1 arg2`. For more information and
discussion, see [issue 6440].
@z

@x
[issue 6440]: https://github.com/python-poetry/poetry/issues/6440
@y
[issue 6440]: https://github.com/python-poetry/poetry/issues/6440
@z

@x
### `show`
@y
### `show`
@z

@x
- Added `--only` to strictly select one or more dependency groups to show (ignoring the implicit `main` group)
- Added `--why` to interrogate why a dependency is required (works standalone, or with `--tree` for a single package)
- Added `--with` to select one or multiple dependency groups to show in addition to the implicit `main` group
- Added `--without` to skip selecting one or more dependency groups
- Deprecated `--no-dev` (use `--without dev` instead)
- `show <PACKAGE>` will now list dependencies that require `PACKAGE`
@y
- Added `--only` to strictly select one or more dependency groups to show (ignoring the implicit `main` group)
- Added `--why` to interrogate why a dependency is required (works standalone, or with `--tree` for a single package)
- Added `--with` to select one or multiple dependency groups to show in addition to the implicit `main` group
- Added `--without` to skip selecting one or more dependency groups
- Deprecated `--no-dev` (use `--without dev` instead)
- `show <PACKAGE>` will now list dependencies that require `PACKAGE`
@z

@x
### `shell`
@y
### `shell`
@z

@x
- `nushell` is now supported
- Windows support has been improved (UX should be more similar to Unix platforms)
@y
- `nushell` is now supported
- Windows support has been improved (UX should be more similar to Unix platforms)
@z

@x
### `remove`
@y
### `remove`
@z

@x
- Added `--group` / `-G` to remove a dependency from a specific dependency group
@y
- Added `--group` / `-G` to remove a dependency from a specific dependency group
@z

@x
### `version`
@y
### `version`
@z

@x
- Added `--dry-run` to simulate a version bump without actually applying it
@y
- Added `--dry-run` to simulate a version bump without actually applying it
@z

@x
## New configuration options
@y
## New configuration options
@z

@x
### `experimental.system-git-client`
@y
### `experimental.system-git-client`
@z

@x
[`experimental.system-git-client`][experimental.system-git-client docs] causes Poetry to make use of the system `git`
binary instead of [Dulwich].
@y
[`experimental.system-git-client`][experimental.system-git-client docs] causes Poetry to make use of the system `git`
binary instead of [Dulwich].
@z

@x
### `installer.max-workers`
@y
### `installer.max-workers`
@z

@x
[`installer.max-workers`][installer.max-workers docs] limits the maximum number of parallel workers used by the
installer.
@y
[`installer.max-workers`][installer.max-workers docs] limits the maximum number of parallel workers used by the
installer.
@z

@x
### `installer.no-binary`
@y
### `installer.no-binary`
@z

@x
[`installer.no-binary`][installer.no-binary docs] causes the installer to ignore some or all binary distributions,
forcing installation from a source distribution.
@y
[`installer.no-binary`][installer.no-binary docs] causes the installer to ignore some or all binary distributions,
forcing installation from a source distribution.
@z

@x
### `virtualenvs.options.always-copy`
@y
### `virtualenvs.options.always-copy`
@z

@x
[`virtualenvs.options.always-copy`][virtualenvs.options.always-copy docs] causes the `--always-copy` flag to be passed
to `virtualenv` during environment creation, ensuring that all necessary files are copied instead of linked.
@y
[`virtualenvs.options.always-copy`][virtualenvs.options.always-copy docs] causes the `--always-copy` flag to be passed
to `virtualenv` during environment creation, ensuring that all necessary files are copied instead of linked.
@z

@x
### `virtualenvs.options.no-pip`
@y
### `virtualenvs.options.no-pip`
@z

@x
[`virtualenvs.options.no-pip`][virtualenvs.options.no-pip docs] causes the `--no-pip` flag to be passed to `virtualenv`
during environment creation, preventing the automatic installation of `pip` into the environment.
@y
[`virtualenvs.options.no-pip`][virtualenvs.options.no-pip docs] causes the `--no-pip` flag to be passed to `virtualenv`
during environment creation, preventing the automatic installation of `pip` into the environment.
@z

@x
### `virtualenvs.options.no-setuptools`
@y
### `virtualenvs.options.no-setuptools`
@z

@x
[`virtualenvs.options.no-setuptools`][virtualenvs.options.no-setuptools docs] causes the `--no-setuptools` flag to be
passed to `virtualenv` during environment creation, preventing the automatic installation of `setuptools` into the
environment.
@y
[`virtualenvs.options.no-setuptools`][virtualenvs.options.no-setuptools docs] causes the `--no-setuptools` flag to be
passed to `virtualenv` during environment creation, preventing the automatic installation of `setuptools` into the
environment.
@z

@x
### `virtualenvs.options.system-site-packages`
@y
### `virtualenvs.options.system-site-packages`
@z

@x
[`virtualenvs.options.system-site-packages`][virtualenvs.options.system-site-packages docs] causes the
`--system-site-packages` flag to be passed to `virtualenv` during environment creation, allowing for the system
`site-packages` directory (e.g. packages installed using the distro package manager) to be discoverable inside the
virtual environment.
@y
[`virtualenvs.options.system-site-packages`][virtualenvs.options.system-site-packages docs] causes the
`--system-site-packages` flag to be passed to `virtualenv` during environment creation, allowing for the system
`site-packages` directory (e.g. packages installed using the distro package manager) to be discoverable inside the
virtual environment.
@z

@x
### `virtualenvs.prefer-active-python`
@y
### `virtualenvs.prefer-active-python`
@z

@x
[`virtualenvs.prefer-active-python`][virtualenvs.prefer-active-python docs] causes Poetry to attempt to detect the
currently active `python3` binary, and use it as the interpreter for creation of virtual environments. If `false`
(the default), Poetry will instead use the same interpreter it was installed with.
@y
[`virtualenvs.prefer-active-python`][virtualenvs.prefer-active-python docs] causes Poetry to attempt to detect the
currently active `python3` binary, and use it as the interpreter for creation of virtual environments. If `false`
(the default), Poetry will instead use the same interpreter it was installed with.
@z

@x
### `virtualenvs.prompt`
@y
### `virtualenvs.prompt`
@z

@x
[`virtualenvs.prompt`][virtualenvs.prompt docs] allows for customization of the prompt used by Poetry-managed
environments. Two template variables, `{{project_name}}` and `{{python_version}}` are available.
@y
[`virtualenvs.prompt`][virtualenvs.prompt docs] allows for customization of the prompt used by Poetry-managed
environments. Two template variables, `{{project_name}}` and `{{python_version}}` are available.
@z

@x
[experimental.system-git-client docs]: {{<relref "docs/configuration#experimentalsystem-git-client">}}
[installer.max-workers docs]: {{<relref "docs/configuration#installermax-workers">}}
[installer.no-binary docs]: {{<relref "docs/configuration#installerno-binary">}}
[virtualenvs.options.always-copy docs]: {{<relref "docs/configuration#virtualenvsoptionsalways-copy">}}
[virtualenvs.options.no-pip docs]: {{< relref "docs/configuration#virtualenvsoptionsno-pip" >}}
[virtualenvs.options.no-setuptools docs]: {{< relref "docs/configuration#virtualenvsoptionsno-setuptools" >}}
[virtualenvs.options.system-site-packages docs]: {{< relref "docs/configuration#virtualenvsoptionssystem-site-packages" >}}
[virtualenvs.prefer-active-python docs]: {{<relref "docs/configuration#virtualenvsprefer-active-python-experimental">}}
[virtualenvs.prompt docs]: {{< relref "docs/configuration#virtualenvsprompt" >}}
@y
[experimental.system-git-client docs]: {{<relref "docs/configuration#experimentalsystem-git-client">}}
[installer.max-workers docs]: {{<relref "docs/configuration#installermax-workers">}}
[installer.no-binary docs]: {{<relref "docs/configuration#installerno-binary">}}
[virtualenvs.options.always-copy docs]: {{<relref "docs/configuration#virtualenvsoptionsalways-copy">}}
[virtualenvs.options.no-pip docs]: {{< relref "docs/configuration#virtualenvsoptionsno-pip" >}}
[virtualenvs.options.no-setuptools docs]: {{< relref "docs/configuration#virtualenvsoptionsno-setuptools" >}}
[virtualenvs.options.system-site-packages docs]: {{< relref "docs/configuration#virtualenvsoptionssystem-site-packages" >}}
[virtualenvs.prefer-active-python docs]: {{<relref "docs/configuration#virtualenvsprefer-active-python-experimental">}}
[virtualenvs.prompt docs]: {{< relref "docs/configuration#virtualenvsprompt" >}}
@z

@x
## FAQ
@y
## FAQ
@z

@x
### Are lock files compatible between 1.2 and 1.1?
@y
### Are lock files compatible between 1.2 and 1.1?
@z

@x
Yes, Poetry 1.2 will understand lock files generated by 1.1, and Poetry 1.1 will understand lock files generated by 1.2.
@y
Yes, Poetry 1.2 will understand lock files generated by 1.1, and Poetry 1.1 will understand lock files generated by 1.2.
@z

@x
There will be inconsistencies related to specific formatting (e.g. case, order, indentation), so it is suggested to only
commit lock files from one version.
@y
There will be inconsistencies related to specific formatting (e.g. case, order, indentation), so it is suggested to only
commit lock files from one version.
@z

@x
If you notice any hard incompatibilities, please report them to the [issue tracker].
@y
If you notice any hard incompatibilities, please report them to the [issue tracker].
@z

@x
{{% note %}}
If a project uses [dependency groups](#dependency-groups), it will not be possible to use 1.1, as they are a new feature
introduced by 1.2.
{{% /note %}}
@y
{{% note %}}
If a project uses [dependency groups](#dependency-groups), it will not be possible to use 1.1, as they are a new feature
introduced by 1.2.
{{% /note %}}
@z

@x
### Will 1.1 still be maintained? How long will 1.2 be maintained?
@y
### Will 1.1 still be maintained? How long will 1.2 be maintained?
@z

@x
Now that Poetry 1.2 is out, Poetry 1.1 is officially unmaintained.
@y
Now that Poetry 1.2 is out, Poetry 1.1 is officially unmaintained.
@z

@x
1.2 will be maintained with fixes for major bugs and regressions until the release of the next stable version (1.3).
@y
1.2 will be maintained with fixes for major bugs and regressions until the release of the next stable version (1.3).
@z

@x
The Poetry team intends to significantly increase release cadence to prevent similarly long and painful release cycles.
Users should expect to see new stable versions of Poetry released regularly.
@y
The Poetry team intends to significantly increase release cadence to prevent similarly long and painful release cycles.
Users should expect to see new stable versions of Poetry released regularly.
@z
