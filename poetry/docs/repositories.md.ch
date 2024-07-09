%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
title: "Repositories"
draft: false
type: docs
layout: "docs"
@y
---
title: "Repositories"
draft: false
type: docs
layout: "docs"
@z

@x
menu:
  docs:
    weight: 50
---
@y
menu:
  docs:
    weight: 50
---
@z

@x
# Repositories
@y
# Repositories
@z

@x
Poetry supports the use of [PyPI](https://pypi.org) and private repositories for discovery of
packages as well as for publishing your projects.
@y
Poetry supports the use of [PyPI](https://pypi.org) and private repositories for discovery of
packages as well as for publishing your projects.
@z

@x
By default, Poetry is configured to use the [PyPI](https://pypi.org) repository,
for package installation and publishing.
@y
By default, Poetry is configured to use the [PyPI](https://pypi.org) repository,
for package installation and publishing.
@z

@x
So, when you add dependencies to your project, Poetry will assume they are available
on PyPI.
@y
So, when you add dependencies to your project, Poetry will assume they are available
on PyPI.
@z

@x
This represents most cases and will likely be enough for most users.
@y
This represents most cases and will likely be enough for most users.
@z

@x
### Private Repository Example
@y
### Private Repository Example
@z

@x
#### Installing from private package sources
By default, Poetry discovers and installs packages from [PyPI](https://pypi.org). But, you want to
install a dependency to your project for a [simple API repository](#simple-api-repository)? Let's
do it.
@y
#### Installing from private package sources
By default, Poetry discovers and installs packages from [PyPI](https://pypi.org). But, you want to
install a dependency to your project for a [simple API repository](#simple-api-repository)? Let's
do it.
@z

@x
First, [configure](#project-configuration) the [package source](#package-sources) as a [supplemental](#supplemental-package-sources) (or [explicit](#explicit-package-sources)) package source to your
project.
@y
First, [configure](#project-configuration) the [package source](#package-sources) as a [supplemental](#supplemental-package-sources) (or [explicit](#explicit-package-sources)) package source to your
project.
@z

@x
```bash
poetry source add --priority=supplemental foo https://pypi.example.org/simple/
```
@y
```bash
poetry source add --priority=supplemental foo https://pypi.example.org/simple/
```
@z

@x
Then, assuming the repository requires authentication, configure credentials for it.
@y
Then, assuming the repository requires authentication, configure credentials for it.
@z

@x
```bash
poetry config http-basic.foo <username> <password>
```
@y
```bash
poetry config http-basic.foo <username> <password>
```
@z

@x
{{% warning %}}
Depending on your system configuration, credentials might be saved in your command line history.
Many shells do not save commands to history when they are prefixed by a space character. For more information, please refer to your shell's documentation.
{{% /warning %}}
@y
{{% warning %}}
Depending on your system configuration, credentials might be saved in your command line history.
Many shells do not save commands to history when they are prefixed by a space character. For more information, please refer to your shell's documentation.
{{% /warning %}}
@z

@x
{{% note %}}
If you would like to provide the password interactively, you can simply omit `<password>` in your command. And
Poetry will prompt you to enter the credential manually.
@y
{{% note %}}
If you would like to provide the password interactively, you can simply omit `<password>` in your command. And
Poetry will prompt you to enter the credential manually.
@z

@x
```bash
poetry config http-basic.foo <username>
```
{{% /note %}}
@y
```bash
poetry config http-basic.foo <username>
```
{{% /note %}}
@z

@x
Once this is done, you can add dependencies to your project from this source.
@y
Once this is done, you can add dependencies to your project from this source.
@z

@x
```bash
poetry add --source foo private-package
```
@y
```bash
poetry add --source foo private-package
```
@z

@x
#### Publishing to a private repository
@y
#### Publishing to a private repository
@z

@x
Great, now all that is left is to publish your package. Assuming you'd want to share it privately
with your team, you can configure the
[Upload API](https://warehouse.pypa.io/api-reference/legacy.html#upload-api) endpoint for your
[publishable repository](#publishable-repositories).
@y
Great, now all that is left is to publish your package. Assuming you'd want to share it privately
with your team, you can configure the
[Upload API](https://warehouse.pypa.io/api-reference/legacy.html#upload-api) endpoint for your
[publishable repository](#publishable-repositories).
@z

@x
```bash
poetry config repositories.foo https://pypi.example.org/legacy/
```
@y
```bash
poetry config repositories.foo https://pypi.example.org/legacy/
```
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
If you need to use a different credential for your [package source](#package-sources), then it is
recommended to use a different name for your publishing repository.
@y
If you need to use a different credential for your [package source](#package-sources), then it is
recommended to use a different name for your publishing repository.
@z

@x
```bash
poetry config repositories.foo-pub https://pypi.example.org/legacy/
poetry config http-basic.foo-pub <username> <password>
```
@y
```bash
poetry config repositories.foo-pub https://pypi.example.org/legacy/
poetry config http-basic.foo-pub <username> <password>
```
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
{{% note %}}
When configuring a repository using environment variables, note that correct suffixes need to be used.
@y
{{% note %}}
When configuring a repository using environment variables, note that correct suffixes need to be used.
@z

@x
```bash
export POETRY_REPOSITORIES_FOO_URL=https://pypi.example.org/legacy/
export POETRY_HTTP_BASIC_FOO_USERNAME=<username>
export POETRY_HTTP_BASIC_FOO_PASSWORD=<password>
```
{{% /note %}}
@y
```bash
export POETRY_REPOSITORIES_FOO_URL=https://pypi.example.org/legacy/
export POETRY_HTTP_BASIC_FOO_USERNAME=<username>
export POETRY_HTTP_BASIC_FOO_PASSWORD=<password>
```
{{% /note %}}
@z

@x
Now, all that is left is to build and publish your project using the
[`publish`]({{< relref "cli#publish" >}}).
@y
Now, all that is left is to build and publish your project using the
[`publish`]({{< relref "cli#publish" >}}).
@z

@x
```bash
poetry publish --build --repository foo-pub
```
@y
```bash
poetry publish --build --repository foo-pub
```
@z

@x
## Package Sources
@y
## Package Sources
@z

@x
By default, Poetry is configured to use the Python ecosystem's canonical package index
[PyPI](https://pypi.org).
@y
By default, Poetry is configured to use the Python ecosystem's canonical package index
[PyPI](https://pypi.org).
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
With the exception of the implicitly configured source for [PyPI](https://pypi.org) named `pypi`,
package sources are local to a project and must be configured within the project's
[`pyproject.toml`]({{< relref "pyproject" >}}) file. This is **not** the same configuration used
when publishing a package.
@y
With the exception of the implicitly configured source for [PyPI](https://pypi.org) named `pypi`,
package sources are local to a project and must be configured within the project's
[`pyproject.toml`]({{< relref "pyproject" >}}) file. This is **not** the same configuration used
when publishing a package.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
### Project Configuration
@y
### Project Configuration
@z

@x
These package sources may be managed using the [`source`]({{< relref "cli#source" >}}) command for
your project.
@y
These package sources may be managed using the [`source`]({{< relref "cli#source" >}}) command for
your project.
@z

@x
```bash
poetry source add foo https://foo.bar/simple/
```
@y
```bash
poetry source add foo https://foo.bar/simple/
```
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
If your package source requires [credentials](#configuring-credentials) or
[certificates](#certificates), please refer to the relevant sections below.
@y
If your package source requires [credentials](#configuring-credentials) or
[certificates](#certificates), please refer to the relevant sections below.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
This will generate the following configuration snippet in your
[`pyproject.toml`]({{< relref "pyproject" >}}) file.
@y
This will generate the following configuration snippet in your
[`pyproject.toml`]({{< relref "pyproject" >}}) file.
@z

@x
```toml
[[tool.poetry.source]]
name = "foo"
url = "https://foo.bar/simple/"
priority = "primary"
```
@y
```toml
[[tool.poetry.source]]
name = "foo"
url = "https://foo.bar/simple/"
priority = "primary"
```
@z

@x
If `priority` is undefined, the source is considered a primary source that takes precedence over PyPI, secondary, supplemental and explicit sources.
@y
If `priority` is undefined, the source is considered a primary source that takes precedence over PyPI, secondary, supplemental and explicit sources.
@z

@x
Package sources are considered in the following order:
1. [default source](#default-package-source-deprecated) (DEPRECATED),
2. [primary sources](#primary-package-sources),
3. implicit PyPI (unless disabled by another [primary source](#primary-package-sources), [default source](#default-package-source-deprecated) or configured explicitly),
4. [secondary sources](#secondary-package-sources-deprecated) (DEPRECATED),
5. [supplemental sources](#supplemental-package-sources).
@y
Package sources are considered in the following order:
1. [default source](#default-package-source-deprecated) (DEPRECATED),
2. [primary sources](#primary-package-sources),
3. implicit PyPI (unless disabled by another [primary source](#primary-package-sources), [default source](#default-package-source-deprecated) or configured explicitly),
4. [secondary sources](#secondary-package-sources-deprecated) (DEPRECATED),
5. [supplemental sources](#supplemental-package-sources).
@z

@x
[Explicit sources](#explicit-package-sources) are considered only for packages that explicitly [indicate their source](#package-source-constraint).
@y
[Explicit sources](#explicit-package-sources) are considered only for packages that explicitly [indicate their source](#package-source-constraint).
@z

@x
Within each priority class, package sources are considered in order of appearance in `pyproject.toml`.
@y
Within each priority class, package sources are considered in order of appearance in `pyproject.toml`.
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
If you want to change the priority of [PyPI](https://pypi.org), you can set it explicitly, e.g.
@y
If you want to change the priority of [PyPI](https://pypi.org), you can set it explicitly, e.g.
@z

@x
```bash
poetry source add --priority=primary PyPI
```
@y
```bash
poetry source add --priority=primary PyPI
```
@z

@x
If you prefer to disable PyPI completely,
just add a [primary source](#primary-package-sources)
or configure PyPI as [explicit source](#explicit-package-sources).
@y
If you prefer to disable PyPI completely,
just add a [primary source](#primary-package-sources)
or configure PyPI as [explicit source](#explicit-package-sources).
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
#### Default Package Source (DEPRECATED)
@y
#### Default Package Source (DEPRECATED)
@z

@x
*Deprecated in 1.8.0*
@y
*Deprecated in 1.8.0*
@z

@x
{{% warning %}}
@y
{{% warning %}}
@z

@x
Configuring a default package source is deprecated because it is the same
as the topmost [primary source](#primary-package-sources).
Just configure a primary package source and put it first in the list of package sources.
@y
Configuring a default package source is deprecated because it is the same
as the topmost [primary source](#primary-package-sources).
Just configure a primary package source and put it first in the list of package sources.
@z

@x
{{% /warning %}}
@y
{{% /warning %}}
@z

@x
By default, if you have not configured any primary source,
Poetry will configure [PyPI](https://pypi.org) as the package source for your project.
You can alter this behaviour and exclusively look up packages only from the configured
package sources by adding at least one primary source (recommended)
or a **single** source with `priority = "default"` (deprecated).
@y
By default, if you have not configured any primary source,
Poetry will configure [PyPI](https://pypi.org) as the package source for your project.
You can alter this behaviour and exclusively look up packages only from the configured
package sources by adding at least one primary source (recommended)
or a **single** source with `priority = "default"` (deprecated).
@z

@x
```bash
poetry source add --priority=default foo https://foo.bar/simple/
```
@y
```bash
poetry source add --priority=default foo https://foo.bar/simple/
```
@z

@x
#### Primary Package Sources
@y
#### Primary Package Sources
@z

@x
All primary package sources are searched for each dependency without a [source constraint](#package-source-constraint).
If you configure at least one primary source, the implicit PyPI source is disabled.
@y
All primary package sources are searched for each dependency without a [source constraint](#package-source-constraint).
If you configure at least one primary source, the implicit PyPI source is disabled.
@z

@x
```bash
poetry source add --priority=primary foo https://foo.bar/simple/
```
@y
```bash
poetry source add --priority=primary foo https://foo.bar/simple/
```
@z

@x
Sources without a priority are considered primary sources, too.
@y
Sources without a priority are considered primary sources, too.
@z

@x
```bash
poetry source add foo https://foo.bar/simple/
```
@y
```bash
poetry source add foo https://foo.bar/simple/
```
@z

@x
{{% warning %}}
@y
{{% warning %}}
@z

@x
The implicit PyPI source is disabled automatically if at least one primary source is configured.
If you want to use PyPI in addition to a primary source, configure it explicitly
with a certain priority, e.g.
@y
The implicit PyPI source is disabled automatically if at least one primary source is configured.
If you want to use PyPI in addition to a primary source, configure it explicitly
with a certain priority, e.g.
@z

@x
```bash
poetry source add --priority=primary PyPI
```
@y
```bash
poetry source add --priority=primary PyPI
```
@z

@x
This way, the priority of PyPI can be set in a fine-granular way.
@y
This way, the priority of PyPI can be set in a fine-granular way.
@z

@x
The equivalent specification in `pyproject.toml` is:
@y
The equivalent specification in `pyproject.toml` is:
@z

@x
```toml
[[tool.poetry.source]]
name = "pypi"
priority = "primary"
```
@y
```toml
[[tool.poetry.source]]
name = "pypi"
priority = "primary"
```
@z

@x
**Omit the `url` when specifying PyPI explicitly.** Because PyPI is internally configured
with Poetry, the PyPI repository cannot be configured with a given URL. Remember, you can always use
`poetry check` to ensure the validity of the `pyproject.toml` file.
@y
**Omit the `url` when specifying PyPI explicitly.** Because PyPI is internally configured
with Poetry, the PyPI repository cannot be configured with a given URL. Remember, you can always use
`poetry check` to ensure the validity of the `pyproject.toml` file.
@z

@x
{{% /warning %}}
@y
{{% /warning %}}
@z

@x
#### Secondary Package Sources (DEPRECATED)
@y
#### Secondary Package Sources (DEPRECATED)
@z

@x
*Deprecated in 1.5.0*
@y
*Deprecated in 1.5.0*
@z

@x
If package sources are configured as secondary, all it means is that these will be given a lower
priority when selecting compatible package distribution that also exists in your default and primary package sources. If the package source should instead be searched only if higher-priority repositories did not return results, please consider a [supplemental source](#supplemental-package-sources) instead.
@y
If package sources are configured as secondary, all it means is that these will be given a lower
priority when selecting compatible package distribution that also exists in your default and primary package sources. If the package source should instead be searched only if higher-priority repositories did not return results, please consider a [supplemental source](#supplemental-package-sources) instead.
@z

@x
You can configure a package source as a secondary source with `priority = "secondary"` in your package
source configuration.
@y
You can configure a package source as a secondary source with `priority = "secondary"` in your package
source configuration.
@z

@x
```bash
poetry source add --priority=secondary foo https://foo.bar/simple/
```
@y
```bash
poetry source add --priority=secondary foo https://foo.bar/simple/
```
@z

@x
There can be more than one secondary package source.
@y
There can be more than one secondary package source.
@z

@x
{{% warning %}}
@y
{{% warning %}}
@z

@x
Secondary package sources are deprecated in favor of supplemental package sources.
@y
Secondary package sources are deprecated in favor of supplemental package sources.
@z

@x
{{% /warning %}}
@y
{{% /warning %}}
@z

@x
#### Supplemental Package Sources
@y
#### Supplemental Package Sources
@z

@x
*Introduced in 1.5.0*
@y
*Introduced in 1.5.0*
@z

@x
Package sources configured as supplemental are only searched if no other (higher-priority) source yields a compatible package distribution. This is particularly convenient if the response time of the source is high and relatively few package distributions are to be fetched from this source.
@y
Package sources configured as supplemental are only searched if no other (higher-priority) source yields a compatible package distribution. This is particularly convenient if the response time of the source is high and relatively few package distributions are to be fetched from this source.
@z

@x
You can configure a package source as a supplemental source with `priority = "supplemental"` in your package
source configuration.
@y
You can configure a package source as a supplemental source with `priority = "supplemental"` in your package
source configuration.
@z

@x
```bash
poetry source add --priority=supplemental foo https://foo.bar/simple/
```
@y
```bash
poetry source add --priority=supplemental foo https://foo.bar/simple/
```
@z

@x
There can be more than one supplemental package source.
@y
There can be more than one supplemental package source.
@z

@x
{{% warning %}}
@y
{{% warning %}}
@z

@x
Take into account that someone could publish a new package to a primary source
which matches a package in your supplemental source. They could coincidentally
or intentionally replace your dependency with something you did not expect.
@y
Take into account that someone could publish a new package to a primary source
which matches a package in your supplemental source. They could coincidentally
or intentionally replace your dependency with something you did not expect.
@z

@x
{{% /warning %}}
@y
{{% /warning %}}
@z

@x
#### Explicit Package Sources
@y
#### Explicit Package Sources
@z

@x
*Introduced in 1.5.0*
@y
*Introduced in 1.5.0*
@z

@x
If package sources are configured as explicit, these sources are only searched when a package configuration [explicitly indicates](#package-source-constraint) that it should be found on this package source.
@y
If package sources are configured as explicit, these sources are only searched when a package configuration [explicitly indicates](#package-source-constraint) that it should be found on this package source.
@z

@x
You can configure a package source as an explicit source with `priority = "explicit"` in your package source configuration.
@y
You can configure a package source as an explicit source with `priority = "explicit"` in your package source configuration.
@z

@x
```bash
poetry source add --priority=explicit foo https://foo.bar/simple/
```
@y
```bash
poetry source add --priority=explicit foo https://foo.bar/simple/
```
@z

@x
There can be more than one explicit package source.
@y
There can be more than one explicit package source.
@z

@x
{{% note %}}
A real-world example where an explicit package source is useful, is for PyTorch GPU packages.
@y
{{% note %}}
A real-world example where an explicit package source is useful, is for PyTorch GPU packages.
@z

@x
```bash
poetry source add --priority=explicit pytorch-gpu-src https://download.pytorch.org/whl/cu118
poetry add --source pytorch-gpu-src torch torchvision torchaudio
```
{{% /note %}}
@y
```bash
poetry source add --priority=explicit pytorch-gpu-src https://download.pytorch.org/whl/cu118
poetry add --source pytorch-gpu-src torch torchvision torchaudio
```
{{% /note %}}
@z

@x
#### Package Source Constraint
@y
#### Package Source Constraint
@z

@x
All package sources (including secondary and possibly supplemental sources) will be searched during the package lookup
process. These network requests will occur for all sources, regardless of if the package is
found at one or more sources.
@y
All package sources (including secondary and possibly supplemental sources) will be searched during the package lookup
process. These network requests will occur for all sources, regardless of if the package is
found at one or more sources.
@z

@x
In order to limit the search for a specific package to a particular package repository, you can specify the source explicitly.
@y
In order to limit the search for a specific package to a particular package repository, you can specify the source explicitly.
@z

@x
```bash
poetry add --source internal-pypi httpx
```
@y
```bash
poetry add --source internal-pypi httpx
```
@z

@x
This results in the following configuration in `pyproject.toml`:
@y
This results in the following configuration in `pyproject.toml`:
@z

@x
```toml
[tool.poetry.dependencies]
...
httpx = { version = "^0.22", source = "internal-pypi" }
@y
```toml
[tool.poetry.dependencies]
...
httpx = { version = "^0.22", source = "internal-pypi" }
@z

@x
[[tool.poetry.source]]
name = "internal-pypi"
url = ...
priority = ...
```
@y
[[tool.poetry.source]]
name = "internal-pypi"
url = ...
priority = ...
```
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
A repository that is configured to be the only source for retrieving a certain package can itself have any priority.
In particular, it does not need to have priority `"explicit"`.
If a repository is configured to be the source of a package, it will be the only source that is considered for that package
and the repository priority will have no effect on the resolution.
@y
A repository that is configured to be the only source for retrieving a certain package can itself have any priority.
In particular, it does not need to have priority `"explicit"`.
If a repository is configured to be the source of a package, it will be the only source that is considered for that package
and the repository priority will have no effect on the resolution.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
Package `source` keys are not inherited by their dependencies.
In particular, if `package-A` is configured to be found in `source = internal-pypi`,
and `package-A` depends on `package-B` that is also to be found on `internal-pypi`,
then `package-B` needs to be configured as such in `pyproject.toml`.
The easiest way to achieve this is to add `package-B` with a wildcard constraint:
@y
Package `source` keys are not inherited by their dependencies.
In particular, if `package-A` is configured to be found in `source = internal-pypi`,
and `package-A` depends on `package-B` that is also to be found on `internal-pypi`,
then `package-B` needs to be configured as such in `pyproject.toml`.
The easiest way to achieve this is to add `package-B` with a wildcard constraint:
@z

@x
```bash
poetry add --source internal-pypi package-B@*
```
@y
```bash
poetry add --source internal-pypi package-B@*
```
@z

@x
This will ensure that `package-B` is searched only in the `internal-pypi` package source.
The version constraints on `package-B` are derived from `package-A` (and other client packages), as usual.
@y
This will ensure that `package-B` is searched only in the `internal-pypi` package source.
The version constraints on `package-B` are derived from `package-A` (and other client packages), as usual.
@z

@x
If you want to avoid additional main dependencies,
you can add `package-B` to a dedicated [dependency group]({{< relref "managing-dependencies#dependency-groups" >}}):
@y
If you want to avoid additional main dependencies,
you can add `package-B` to a dedicated [dependency group]({{< relref "managing-dependencies#dependency-groups" >}}):
@z

@x
```bash
poetry add --group explicit --source internal-pypi package-B@*
```
@y
```bash
poetry add --group explicit --source internal-pypi package-B@*
```
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
Package source constraints are strongly suggested for all packages that are expected
to be provided only by one specific source to avoid dependency confusion attacks.
@y
Package source constraints are strongly suggested for all packages that are expected
to be provided only by one specific source to avoid dependency confusion attacks.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
### Supported Package Sources
@y
### Supported Package Sources
@z

@x
#### Python Package Index (PyPI)
@y
#### Python Package Index (PyPI)
@z

@x
Poetry interacts with [PyPI](https://pypi.org) via its
[JSON API](https://warehouse.pypa.io/api-reference/json.html). This is used to retrieve a requested
package's versions, metadata, files, etc.
@y
Poetry interacts with [PyPI](https://pypi.org) via its
[JSON API](https://warehouse.pypa.io/api-reference/json.html). This is used to retrieve a requested
package's versions, metadata, files, etc.
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
If the package's published metadata is invalid, Poetry will download the available bdist/sdist to
inspect it locally to identify the relevant metadata.
@y
If the package's published metadata is invalid, Poetry will download the available bdist/sdist to
inspect it locally to identify the relevant metadata.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
If you want to explicitly select a package from [PyPI](https://pypi.org) you can use the `--source`
option with the [`add`]({{< relref "cli#add" >}}) command, like shown below.
@y
If you want to explicitly select a package from [PyPI](https://pypi.org) you can use the `--source`
option with the [`add`]({{< relref "cli#add" >}}) command, like shown below.
@z

@x
```bash
poetry add --source pypi httpx@^0.22.0
```
@y
```bash
poetry add --source pypi httpx@^0.22.0
```
@z

@x
This will generate the following configuration snippet in your `pyproject.toml` file.
@y
This will generate the following configuration snippet in your `pyproject.toml` file.
@z

@x
```toml
httpx = {version = "^0.22.0", source = "pypi"}
```
@y
```toml
httpx = {version = "^0.22.0", source = "pypi"}
```
@z

@x
{{% warning %}}
@y
{{% warning %}}
@z

@x
If any source within a project is configured with `priority = "default"`, The implicit `pypi` source will
be disabled and not used for any packages.
@y
If any source within a project is configured with `priority = "default"`, The implicit `pypi` source will
be disabled and not used for any packages.
@z

@x
{{% /warning %}}
@y
{{% /warning %}}
@z

@x
#### Simple API Repository
@y
#### Simple API Repository
@z

@x
Poetry can fetch and install package dependencies from public or private custom repositories that
implement the simple repository API as described in [PEP 503](https://peps.python.org/pep-0503/).
@y
Poetry can fetch and install package dependencies from public or private custom repositories that
implement the simple repository API as described in [PEP 503](https://peps.python.org/pep-0503/).
@z

@x
{{% warning %}}
@y
{{% warning %}}
@z

@x
When using sources that distributes large wheels without providing file checksum in file URLs,
Poetry will download each candidate wheel at least once in order to generate the checksum. This can
manifest as long dependency resolution times when adding packages from this source.
@y
When using sources that distributes large wheels without providing file checksum in file URLs,
Poetry will download each candidate wheel at least once in order to generate the checksum. This can
manifest as long dependency resolution times when adding packages from this source.
@z

@x
{{% /warning %}}
@y
{{% /warning %}}
@z

@x
These package sources may be configured via the following command in your project.
@y
These package sources may be configured via the following command in your project.
@z

@x
```bash
poetry source add testpypi https://test.pypi.org/simple/
```
@y
```bash
poetry source add testpypi https://test.pypi.org/simple/
```
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
Note the trailing `/simple/`. This is important when configuring
[PEP 503](https://peps.python.org/pep-0503/) compliant package sources.
@y
Note the trailing `/simple/`. This is important when configuring
[PEP 503](https://peps.python.org/pep-0503/) compliant package sources.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
In addition to [PEP 503](https://peps.python.org/pep-0503/), Poetry can also handle simple API
repositories that implement [PEP 658](https://peps.python.org/pep-0658/) (*Introduced in 1.2.0*).
This is helpful in reducing dependency resolution time for packages from these sources as Poetry can
avoid having to download each candidate distribution, in order to determine associated metadata.
@y
In addition to [PEP 503](https://peps.python.org/pep-0503/), Poetry can also handle simple API
repositories that implement [PEP 658](https://peps.python.org/pep-0658/) (*Introduced in 1.2.0*).
This is helpful in reducing dependency resolution time for packages from these sources as Poetry can
avoid having to download each candidate distribution, in order to determine associated metadata.
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
*Why does Poetry insist on downloading all candidate distributions for all platforms when metadata
is not available?*
@y
*Why does Poetry insist on downloading all candidate distributions for all platforms when metadata
is not available?*
@z

@x
The need for this stems from the fact that Poetry's lock file is platform-agnostic. This means, in
order to resolve dependencies for a project, Poetry needs metadata for all platform specific
distributions. And when this metadata is not readily available, downloading the distribution and
inspecting it locally is the only remaining option.
@y
The need for this stems from the fact that Poetry's lock file is platform-agnostic. This means, in
order to resolve dependencies for a project, Poetry needs metadata for all platform specific
distributions. And when this metadata is not readily available, downloading the distribution and
inspecting it locally is the only remaining option.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
#### Single Page Link Source
@y
#### Single Page Link Source
@z

@x
*Introduced in 1.2.0*
@y
*Introduced in 1.2.0*
@z

@x
Some projects choose to release their binary distributions via a single page link source that
partially follows the structure of a package page in [PEP 503](https://peps.python.org/pep-0503/).
@y
Some projects choose to release their binary distributions via a single page link source that
partially follows the structure of a package page in [PEP 503](https://peps.python.org/pep-0503/).
@z

@x
These package sources may be configured via the following command in your project.
@y
These package sources may be configured via the following command in your project.
@z

@x
```bash
poetry source add jax https://storage.googleapis.com/jax-releases/jax_releases.html
```
@y
```bash
poetry source add jax https://storage.googleapis.com/jax-releases/jax_releases.html
```
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
All caveats regarding slower resolution times described for simple API repositories do apply here as
well.
@y
All caveats regarding slower resolution times described for simple API repositories do apply here as
well.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
## Publishable Repositories
@y
## Publishable Repositories
@z

@x
Poetry treats repositories to which you publish packages as user specific and not project specific
configuration unlike [package sources](#package-sources). Poetry, today, only supports the
[Legacy Upload API](https://warehouse.pypa.io/api-reference/legacy.html#upload-api) when publishing
your project.
@y
Poetry treats repositories to which you publish packages as user specific and not project specific
configuration unlike [package sources](#package-sources). Poetry, today, only supports the
[Legacy Upload API](https://warehouse.pypa.io/api-reference/legacy.html#upload-api) when publishing
your project.
@z

@x
These are configured using the [`config`]({{< relref "cli#config" >}}) command, under the
`repositories` key.
@y
These are configured using the [`config`]({{< relref "cli#config" >}}) command, under the
`repositories` key.
@z

@x
```bash
poetry config repositories.testpypi https://test.pypi.org/legacy/
```
@y
```bash
poetry config repositories.testpypi https://test.pypi.org/legacy/
```
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
[Legacy Upload API](https://warehouse.pypa.io/api-reference/legacy.html#upload-api) URLs are
typically different to the same one provided by the repository for the simple API. You'll note that
in the example of [Test PyPI](https://test.pypi.org/), both the host (`test.pypi.org`) as
well as the path (`/legacy`) are different to its simple API (`https://test.pypi.org/simple`).
@y
[Legacy Upload API](https://warehouse.pypa.io/api-reference/legacy.html#upload-api) URLs are
typically different to the same one provided by the repository for the simple API. You'll note that
in the example of [Test PyPI](https://test.pypi.org/), both the host (`test.pypi.org`) as
well as the path (`/legacy`) are different to its simple API (`https://test.pypi.org/simple`).
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
## Configuring Credentials
@y
## Configuring Credentials
@z

@x
If you want to store your credentials for a specific repository, you can do so easily:
@y
If you want to store your credentials for a specific repository, you can do so easily:
@z

@x
```bash
poetry config http-basic.foo <username> <password>
```
@y
```bash
poetry config http-basic.foo <username> <password>
```
@z

@x
If you do not specify the password you will be prompted to write it.
@y
If you do not specify the password you will be prompted to write it.
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
To publish to PyPI, you can set your credentials for the repository named `pypi`.
@y
To publish to PyPI, you can set your credentials for the repository named `pypi`.
@z

@x
Note that it is recommended to use [API tokens](https://pypi.org/help/#apitoken)
when uploading packages to PyPI.
Once you have created a new token, you can tell Poetry to use it:
@y
Note that it is recommended to use [API tokens](https://pypi.org/help/#apitoken)
when uploading packages to PyPI.
Once you have created a new token, you can tell Poetry to use it:
@z

@x
```bash
poetry config pypi-token.pypi <my-token>
```
If you have configured **testpypi** as a [Publishable Repository](#publishable-repositories), the token can be set using
```bash
poetry config pypi-token.testpypi <your-token>
```
@y
```bash
poetry config pypi-token.pypi <my-token>
```
If you have configured **testpypi** as a [Publishable Repository](#publishable-repositories), the token can be set using
```bash
poetry config pypi-token.testpypi <your-token>
```
@z

@x
If you still want to use your username and password, you can do so with the following
call to `config`.
@y
If you still want to use your username and password, you can do so with the following
call to `config`.
@z

@x
```bash
poetry config http-basic.pypi <username> <password>
```
@y
```bash
poetry config http-basic.pypi <username> <password>
```
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
You can also specify the username and password when using the `publish` command
with the `--username` and `--password` options.
@y
You can also specify the username and password when using the `publish` command
with the `--username` and `--password` options.
@z

@x
If a system keyring is available and supported, the password is stored to and retrieved from the keyring. In the above example, the credential will be stored using the name `poetry-repository-pypi`. If access to keyring fails or is unsupported, this will fall back to writing the password to the `auth.toml` file along with the username.
@y
If a system keyring is available and supported, the password is stored to and retrieved from the keyring. In the above example, the credential will be stored using the name `poetry-repository-pypi`. If access to keyring fails or is unsupported, this will fall back to writing the password to the `auth.toml` file along with the username.
@z

@x
Keyring support is enabled using the [keyring library](https://pypi.org/project/keyring/). For more information on supported backends refer to the [library documentation](https://keyring.readthedocs.io/en/latest/?badge=latest).
@y
Keyring support is enabled using the [keyring library](https://pypi.org/project/keyring/). For more information on supported backends refer to the [library documentation](https://keyring.readthedocs.io/en/latest/?badge=latest).
@z

@x
If you do not want to use the keyring, you can tell Poetry to disable it and store the credentials in plaintext config files:
@y
If you do not want to use the keyring, you can tell Poetry to disable it and store the credentials in plaintext config files:
@z

@x
```bash
poetry config keyring.enabled false
```
@y
```bash
poetry config keyring.enabled false
```
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
Poetry will fall back to Pip style use of keyring so that backends like
Microsoft's [artifacts-keyring](https://pypi.org/project/artifacts-keyring/) get a chance to retrieve
valid credentials. It will need to be properly installed into Poetry's virtualenv,
preferably by installing a plugin.
@y
Poetry will fall back to Pip style use of keyring so that backends like
Microsoft's [artifacts-keyring](https://pypi.org/project/artifacts-keyring/) get a chance to retrieve
valid credentials. It will need to be properly installed into Poetry's virtualenv,
preferably by installing a plugin.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
Alternatively, you can use environment variables to provide the credentials:
@y
Alternatively, you can use environment variables to provide the credentials:
@z

@x
```bash
export POETRY_PYPI_TOKEN_FOO=my-token
export POETRY_HTTP_BASIC_FOO_USERNAME=<username>
export POETRY_HTTP_BASIC_FOO_PASSWORD=<password>
```
@y
```bash
export POETRY_PYPI_TOKEN_FOO=my-token
export POETRY_HTTP_BASIC_FOO_USERNAME=<username>
export POETRY_HTTP_BASIC_FOO_PASSWORD=<password>
```
@z

@x
where `FOO` is the name of the repository in uppercase (e.g. `PYPI`).
See [Using environment variables]({{< relref "configuration#using-environment-variables" >}}) for more information
on how to configure Poetry with environment variables.
@y
where `FOO` is the name of the repository in uppercase (e.g. `PYPI`).
See [Using environment variables]({{< relref "configuration#using-environment-variables" >}}) for more information
on how to configure Poetry with environment variables.
@z

@x
If your password starts with a dash (e.g. randomly generated tokens in a CI environment), it will be parsed as a
command line option instead of a password.
You can prevent this by adding double dashes to prevent any following argument from being parsed as an option.
@y
If your password starts with a dash (e.g. randomly generated tokens in a CI environment), it will be parsed as a
command line option instead of a password.
You can prevent this by adding double dashes to prevent any following argument from being parsed as an option.
@z

@x
```bash
poetry config -- http-basic.pypi myUsername -myPasswordStartingWithDash
```
@y
```bash
poetry config -- http-basic.pypi myUsername -myPasswordStartingWithDash
```
@z

@x
## Certificates
@y
## Certificates
@z

@x
### Custom certificate authority and mutual TLS authentication
@y
### Custom certificate authority and mutual TLS authentication
@z

@x
Poetry supports repositories that are secured by a custom certificate authority as well as those that require
certificate-based client authentication.  The following will configure the "foo" repository to validate the repository's
certificate using a custom certificate authority and use a client certificate (note that these config variables do not
both need to be set):
@y
Poetry supports repositories that are secured by a custom certificate authority as well as those that require
certificate-based client authentication.  The following will configure the "foo" repository to validate the repository's
certificate using a custom certificate authority and use a client certificate (note that these config variables do not
both need to be set):
@z

@x
```bash
poetry config certificates.foo.cert /path/to/ca.pem
poetry config certificates.foo.client-cert /path/to/client.pem
```
@y
```bash
poetry config certificates.foo.cert /path/to/ca.pem
poetry config certificates.foo.client-cert /path/to/client.pem
```
@z

@x
{{% note %}}
The value of `certificates.<repository>.cert` can be set to `false` if certificate verification is
required to be skipped. This is useful for cases where a package source with self-signed certificates
are used.
@y
{{% note %}}
The value of `certificates.<repository>.cert` can be set to `false` if certificate verification is
required to be skipped. This is useful for cases where a package source with self-signed certificates
are used.
@z

@x
```bash
poetry config certificates.foo.cert false
```
@y
```bash
poetry config certificates.foo.cert false
```
@z

@x
{{% warning %}}
Disabling certificate verification is not recommended as it does not conform to security
best practices.
{{% /warning %}}
{{% /note %}}
@y
{{% warning %}}
Disabling certificate verification is not recommended as it does not conform to security
best practices.
{{% /warning %}}
{{% /note %}}
@z

@x
## Caches
@y
## Caches
@z

@x
Poetry employs multiple caches for package sources in order to improve user experience and avoid duplicate network
requests.
@y
Poetry employs multiple caches for package sources in order to improve user experience and avoid duplicate network
requests.
@z

@x
The first level cache is a [Cache-Control](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control)
header based cache for almost all HTTP requests.
@y
The first level cache is a [Cache-Control](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control)
header based cache for almost all HTTP requests.
@z

@x
Further, every HTTP backed package source caches metadata associated with a package once it is fetched or generated.
Additionally, downloaded files (package distributions) are also cached.
@y
Further, every HTTP backed package source caches metadata associated with a package once it is fetched or generated.
Additionally, downloaded files (package distributions) are also cached.
@z

@x
## Debugging Issues
If you encounter issues with package sources, one of the simplest steps you might take to debug an issue is rerunning
your command with the `--no-cache` flag.
@y
## Debugging Issues
If you encounter issues with package sources, one of the simplest steps you might take to debug an issue is rerunning
your command with the `--no-cache` flag.
@z

@x
```bash
poetry --no-cache add pycowsay
```
@y
```bash
poetry --no-cache add pycowsay
```
@z

@x
If this solves your issue, you can consider clearing your cache using the [`cache`]({{< relref "cli#cache-clear" >}})
command.
@y
If this solves your issue, you can consider clearing your cache using the [`cache`]({{< relref "cli#cache-clear" >}})
command.
@z

@x
Alternatively, you could also consider enabling very verbose logging `-vvv` along with the `--no-cache` to see network
requests being made in the logs.
@y
Alternatively, you could also consider enabling very verbose logging `-vvv` along with the `--no-cache` to see network
requests being made in the logs.
@z
