%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.2.0a2"
date: 2021-08-01 00:00:00
categories: ["releases"]
tags: ["1.x", "1.2"]
---
@y
---
layout: single
title: "Announcing Poetry 1.2.0a2"
date: 2021-08-01 00:00:00
categories: ["releases"]
tags: ["1.x", "1.2"]
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0a2**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0a2**.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
This release mainly adds support for **dependency groups**.
@y
This release mainly adds support for **dependency groups**.
@z

@x
If you have a previous version of Poetry installed via the [official installer]({{< relref "docs/#installation" >}}),
getting Poetry **1.2.0a2** is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer]({{< relref "docs/#installation" >}}),
getting Poetry **1.2.0a2** is as easy as:
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
{{% warning %}}
This is a **testing** release so special care should be taken when upgrading since stability is not guaranteed.
@y
{{% warning %}}
This is a **testing** release so special care should be taken when upgrading since stability is not guaranteed.
@z

@x
If you encounter any issue with the new features, please report it to the [issue tracker](https://github.com/python-poetry/poetry/issues "Poetry's issue tracker").
{{% /warning %}}
@y
If you encounter any issue with the new features, please report it to the [issue tracker](https://github.com/python-poetry/poetry/issues "Poetry's issue tracker").
{{% /warning %}}
@z

@x
For a complete list of changes, you can refer to the [change log](/history).
@y
For a complete list of changes, you can refer to the [change log](/history).
@z

@x
## Dependency groups
@y
## Dependency groups
@z

@x
Poetry provides a way to **organize** your dependencies by **groups**. For instance, you might have
dependencies that are only needed to test your project or to build the documentation.
@y
Poetry provides a way to **organize** your dependencies by **groups**. For instance, you might have
dependencies that are only needed to test your project or to build the documentation.
@z

@x
To declare a new dependency group, use a `tool.poetry.group.<group>` section
where `<group>` is the name of your dependency group (for instance, `test`):
@y
To declare a new dependency group, use a `tool.poetry.group.<group>` section
where `<group>` is the name of your dependency group (for instance, `test`):
@z

@x
```toml
[tool.poetry.group.test]  # This part can be left out
@y
```toml
[tool.poetry.group.test]  # This part can be left out
@z

@x
[tool.poetry.group.test.dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
@y
[tool.poetry.group.test.dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
@z

@x
{{% note %}}
All dependencies **must be compatible with each other** across groups since they will
be resolved regardless of whether they are required for installation or not (see [Installing group dependencies]({{< relref "#installing-group-dependencies" >}})).
@y
{{% note %}}
All dependencies **must be compatible with each other** across groups since they will
be resolved regardless of whether they are required for installation or not (see [Installing group dependencies]({{< relref "#installing-group-dependencies" >}})).
@z

@x
Think of dependency groups as **labels** associated with your dependencies: they don't have any bearings
on whether their dependencies will be resolved and installed **by default**, they are simply a way to organize
the dependencies logically.
{{% /note %}}
@y
Think of dependency groups as **labels** associated with your dependencies: they don't have any bearings
on whether their dependencies will be resolved and installed **by default**, they are simply a way to organize
the dependencies logically.
{{% /note %}}
@z

@x
The dependencies declared in `tool.poetry.dependencies` are part of an implicit `default` group.
@y
The dependencies declared in `tool.poetry.dependencies` are part of an implicit `default` group.
@z

@x
```toml
[tool.poetry.dependencies]  # Default dependency group
httpx = "*"
pendulum = "*"
@y
```toml
[tool.poetry.dependencies]  # Default dependency group
httpx = "*"
pendulum = "*"
@z

@x
[tool.poetry.group.test.dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
@y
[tool.poetry.group.test.dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
@z

@x
{{% note %}}
**A note about the `dev-dependencies` section**
@y
{{% note %}}
**A note about the `dev-dependencies` section**
@z

@x
Any dependency declared in the `dev-dependencies` section will automatically be added to a `dev` group.
So the two following notations are equivalent:
@y
Any dependency declared in the `dev-dependencies` section will automatically be added to a `dev` group.
So the two following notations are equivalent:
@z

@x
```toml
[tool.poetry.dev-dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
@y
```toml
[tool.poetry.dev-dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
@z

@x
```toml
[tool.poetry.group.dev.dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
@y
```toml
[tool.poetry.group.dev.dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
@z

@x
Poetry will slowly transition away from the `dev-dependencies` notation which will soon be deprecated,
so it's advised to migrate your existing development dependencies to the new `group` notation.
{{% /note %}}
@y
Poetry will slowly transition away from the `dev-dependencies` notation which will soon be deprecated,
so it's advised to migrate your existing development dependencies to the new `group` notation.
{{% /note %}}
@z

@x
### Optional groups
@y
### Optional groups
@z

@x
A dependency group can be declared as optional. This makes sense when you have
a group of dependencies that are only required in a particular environment or for
a specific purpose.
@y
A dependency group can be declared as optional. This makes sense when you have
a group of dependencies that are only required in a particular environment or for
a specific purpose.
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
Optional groups can be installed in addition to the **default** dependencies by using the `--with`
option of the [`install`]({{< relref "docs/cli#install" >}}) command.
@y
Optional groups can be installed in addition to the **default** dependencies by using the `--with`
option of the [`install`]({{< relref "docs/cli#install" >}}) command.
@z

@x
```bash
poetry install --with docs
```
@y
```bash
poetry install --with docs
```
@z

@x
{{% warning %}}
Optional group dependencies will **still** be resolved alongside other dependencies, so
special care should be taken to ensure they are compatible with each other.
{{% /warning %}}
@y
{{% warning %}}
Optional group dependencies will **still** be resolved alongside other dependencies, so
special care should be taken to ensure they are compatible with each other.
{{% /warning %}}
@z

@x
### Adding a dependency to a group
@y
### Adding a dependency to a group
@z

@x
The [`add`]({{< relref "docs/cli#add" >}}) command is the preferred way to add dependencies
to a group. This is done by using the `--group (-G)` option.
@y
The [`add`]({{< relref "docs/cli#add" >}}) command is the preferred way to add dependencies
to a group. This is done by using the `--group (-G)` option.
@z

@x
```bash
poetry add pytest --group test
```
@y
```bash
poetry add pytest --group test
```
@z

@x
If the group does not already exist, it will be created automatically.
@y
If the group does not already exist, it will be created automatically.
@z

@x
### Installing group dependencies
@y
### Installing group dependencies
@z

@x
**By default**, dependencies across **all groups** will be installed when executing `poetry install`.
@y
**By default**, dependencies across **all groups** will be installed when executing `poetry install`.
@z

@x
You can **exclude** one or more groups with the `--without` option:
@y
You can **exclude** one or more groups with the `--without` option:
@z

@x
```bash
poetry install --without test,docs
```
@y
```bash
poetry install --without test,docs
```
@z

@x
You can also opt in [optional groups]({{< relref "#optional-groups" >}}) by using the `--with` option:
@y
You can also opt in [optional groups]({{< relref "#optional-groups" >}}) by using the `--with` option:
@z

@x
```bash
poetry install --with docs
```
@y
```bash
poetry install --with docs
```
@z

@x
If you only want to install the **default**, non-grouped, dependencies, you can do so
with the `--default` option:
@y
If you only want to install the **default**, non-grouped, dependencies, you can do so
with the `--default` option:
@z

@x
```bash
poetry install --default
```
@y
```bash
poetry install --default
```
@z

@x
Finally, in some case you might want to install **only specific groups** of dependencies
without installing the default dependencies. For that purpose, you can use
the `--only` option.
@y
Finally, in some case you might want to install **only specific groups** of dependencies
without installing the default dependencies. For that purpose, you can use
the `--only` option.
@z

@x
```bash
poetry install --only docs
```
@y
```bash
poetry install --only docs
```
@z

@x
### Removing dependencies from a group
@y
### Removing dependencies from a group
@z

@x
The [`remove`]({{< relref "docs/cli#remove" >}}) command supports a `--group` option
to remove packages from a specific group:
@y
The [`remove`]({{< relref "docs/cli#remove" >}}) command supports a `--group` option
to remove packages from a specific group:
@z

@x
```bash
poetry remove mkdocs --group docs
```
@y
```bash
poetry remove mkdocs --group docs
```
@z

@x
## Package operations and synchronization improvements
@y
## Package operations and synchronization improvements
@z

@x
The user experience when working with dependency groups when installing packages
has been improved.
@y
The user experience when working with dependency groups when installing packages
has been improved.
@z

@x
Packages currently installed in the project's environment will no longer be removed
by default.
@y
Packages currently installed in the project's environment will no longer be removed
by default.
@z

@x
To ensure that the lock file and the environment are synchronized, you may now
use the new `--sync` option when executing the `install` command.
@y
To ensure that the lock file and the environment are synchronized, you may now
use the new `--sync` option when executing the `install` command.
@z

@x
```bash
poetry install --sync
```
@y
```bash
poetry install --sync
```
@z

@x
The `--sync` option can be combined with any [dependency groups]({{< relref "#dependency-groups" >}}) related options
to synchronize the environment with specific groups.
@y
The `--sync` option can be combined with any [dependency groups]({{< relref "#dependency-groups" >}}) related options
to synchronize the environment with specific groups.
@z

@x
```bash
poetry install --without dev --sync
poetry install --with docs --sync
poetry install --only dev
```
@y
```bash
poetry install --without dev --sync
poetry install --with docs --sync
poetry install --only dev
```
@z

@x
{{% note %}}
The `--sync` option replaces the `--remove-untracked` option which is now **deprecated**.
{{% /note %}}
@y
{{% note %}}
The `--sync` option replaces the `--remove-untracked` option which is now **deprecated**.
{{% /note %}}
@z
