%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
title: Managing dependencies
@y
title: 依存パッケージの管理
@z

@x
# Managing dependencies
@y
# 依存パッケージの管理 {#managing-dependencies}
@z

@x
## Dependency groups
@y
## 依存パッケージグループ {#dependency-groups}
@z

@x
Poetry provides a way to **organize** your dependencies by **groups**. For instance, you might have
dependencies that are only needed to test your project or to build the documentation.
@y
Poetry には依存パッケージを **構成** する方法として **グループ** という考え方を用いています。
たとえばプロジェクトテスト、あるいはドキュメント生成にのみ必要となる依存パッケージがあったとします。
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
{{% note %}}
The dependencies declared in `tool.poetry.dependencies` are part of an implicit `main` group.
@y
{{% note %}}
The dependencies declared in `tool.poetry.dependencies` are part of an implicit `main` group.
@z

@x
```toml
[tool.poetry.dependencies]  # main dependency group
httpx = "*"
pendulum = "*"
@y
```toml
[tool.poetry.dependencies]  # main dependency group
httpx = "*"
pendulum = "*"
@z

@x
[tool.poetry.group.test.dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
{{% /note %}}
@y
[tool.poetry.group.test.dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
{{% /note %}}
@z

@x
{{% note %}}
Dependency groups, other than the implicit `main` group, must only contain dependencies you need in your development
process. Installing them is only possible by using Poetry.
@y
{{% note %}}
Dependency groups, other than the implicit `main` group, must only contain dependencies you need in your development
process. Installing them is only possible by using Poetry.
@z

@x
To declare a set of dependencies, which add additional functionality to the project during runtime,
use [extras]({{< relref "pyproject#extras" >}}) instead. Extras can be installed by the end user using `pip`.
{{% /note %}}
@y
To declare a set of dependencies, which add additional functionality to the project during runtime,
use [extras]({{< relref "pyproject#extras" >}}) instead. Extras can be installed by the end user using `pip`.
{{% /note %}}
@z

@x
{{% note %}}
**A note about defining a `dev` dependencies group**
@y
{{% note %}}
**A note about defining a `dev` dependencies group**
@z

@x
The proper way to define a `dev` dependencies group since Poetry 1.2.0 is the following:
@y
The proper way to define a `dev` dependencies group since Poetry 1.2.0 is the following:
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
This group notation is preferred since Poetry 1.2.0 and not usable in earlier versions.
For backwards compatibility with older versions of Poetry,
any dependency declared in the `dev-dependencies` section will automatically be added to the `dev` group.
So the above and following notations are equivalent:
@y
This group notation is preferred since Poetry 1.2.0 and not usable in earlier versions.
For backwards compatibility with older versions of Poetry,
any dependency declared in the `dev-dependencies` section will automatically be added to the `dev` group.
So the above and following notations are equivalent:
@z

@x
```toml
# Poetry pre-1.2.x style, understood by Poetry 1.0–1.2
[tool.poetry.dev-dependencies]
pytest = "^6.0.0"
pytest-mock = "*"
```
@y
```toml
# Poetry pre-1.2.x style, understood by Poetry 1.0–1.2
[tool.poetry.dev-dependencies]
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
option of the [`install`]({{< relref "cli#install" >}}) command.
@y
Optional groups can be installed in addition to the **default** dependencies by using the `--with`
option of the [`install`]({{< relref "cli#install" >}}) command.
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
The [`add`]({{< relref "cli#add" >}}) command is the preferred way to add dependencies
to a group. This is done by using the `--group (-G)` option.
@y
The [`add`]({{< relref "cli#add" >}}) command is the preferred way to add dependencies
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
**By default**, dependencies across **all non-optional groups** will be installed when executing
`poetry install`.
@y
**By default**, dependencies across **all non-optional groups** will be installed when executing
`poetry install`.
@z

@x
{{% note %}}
The default set of dependencies for a project includes the implicit `main` group defined in
`tool.poetry.dependencies` as well as all groups that are not explicitly marked as an
[optional group]({{< relref "#optional-groups" >}}).
{{% /note %}}
@y
{{% note %}}
The default set of dependencies for a project includes the implicit `main` group defined in
`tool.poetry.dependencies` as well as all groups that are not explicitly marked as an
[optional group]({{< relref "#optional-groups" >}}).
{{% /note %}}
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
{{% warning %}}
When used together, `--without` takes precedence over `--with`. For example, the following command
will only install the dependencies specified in the optional `test` group.
@y
{{% warning %}}
When used together, `--without` takes precedence over `--with`. For example, the following command
will only install the dependencies specified in the optional `test` group.
@z

@x
```bash
poetry install --with test,docs --without docs
```
{{% /warning %}}
@y
```bash
poetry install --with test,docs --without docs
```
{{% /warning %}}
@z

@x
Finally, in some case you might want to install **only specific groups** of dependencies
without installing the default set of dependencies. For that purpose, you can use
the `--only` option.
@y
Finally, in some case you might want to install **only specific groups** of dependencies
without installing the default set of dependencies. For that purpose, you can use
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
{{% note %}}
If you only want to install the project's runtime dependencies, you can do so with the
`--only main` notation:
@y
{{% note %}}
If you only want to install the project's runtime dependencies, you can do so with the
`--only main` notation:
@z

@x
```bash
poetry install --only main
```
{{% /note %}}
@y
```bash
poetry install --only main
```
{{% /note %}}
@z

@x
{{% note %}}
If you want to install the project root, and no other dependencies, you can use
the `--only-root` option.
@y
{{% note %}}
If you want to install the project root, and no other dependencies, you can use
the `--only-root` option.
@z

@x
```bash
poetry install --only-root
```
{{% /note %}}
@y
```bash
poetry install --only-root
```
{{% /note %}}
@z

@x
### Removing dependencies from a group
@y
### Removing dependencies from a group
@z

@x
The [`remove`]({{< relref "cli#remove" >}}) command supports a `--group` option
to remove packages from a specific group:
@y
The [`remove`]({{< relref "cli#remove" >}}) command supports a `--group` option
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
## Synchronizing dependencies
@y
## Synchronizing dependencies
@z

@x
Poetry supports what's called dependency synchronization. Dependency synchronization ensures
that the locked dependencies in the `poetry.lock` file are the only ones present
in the environment, removing anything that's not necessary.
@y
Poetry supports what's called dependency synchronization. Dependency synchronization ensures
that the locked dependencies in the `poetry.lock` file are the only ones present
in the environment, removing anything that's not necessary.
@z

@x
This is done by using the `--sync` option of the `install` command:
@y
This is done by using the `--sync` option of the `install` command:
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
to synchronize the environment with specific groups. Note that extras are separate.  Any
extras not selected for install are always removed, regardless of `--sync`.
@y
The `--sync` option can be combined with any [dependency groups]({{< relref "#dependency-groups" >}}) related options
to synchronize the environment with specific groups. Note that extras are separate.  Any
extras not selected for install are always removed, regardless of `--sync`.
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
The `--sync` option replaces the `--remove-untracked` option which is now deprecated.
{{% /note %}}
@y
{{% note %}}
The `--sync` option replaces the `--remove-untracked` option which is now deprecated.
{{% /note %}}
@z

@x
## Layering optional groups
@y
## Layering optional groups
@z

@x
When you omit the `--sync` option, you can install any subset of optional groups without removing
those that are already installed.  This is very useful, for example, in multi-stage
Docker builds, where you run `poetry install` multiple times in different build stages.
@y
When you omit the `--sync` option, you can install any subset of optional groups without removing
those that are already installed.  This is very useful, for example, in multi-stage
Docker builds, where you run `poetry install` multiple times in different build stages.
@z
