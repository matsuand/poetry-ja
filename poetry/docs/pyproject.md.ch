%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
title: "The pyproject.toml file"
draft: false
type: docs
layout: single
@y
---
title: "The pyproject.toml file"
draft: false
type: docs
layout: single
@z

@x
menu:
  docs:
    weight: 90
---
@y
menu:
  docs:
    weight: 90
---
@z

@x
# The `pyproject.toml` file
@y
# The `pyproject.toml` file
@z

@x
The `tool.poetry` section of the `pyproject.toml` file is composed of multiple sections.
@y
The `tool.poetry` section of the `pyproject.toml` file is composed of multiple sections.
@z

@x
## package-mode
@y
## package-mode
@z

@x
Whether Poetry operates in package mode (default) or not. **Optional**
@y
Whether Poetry operates in package mode (default) or not. **Optional**
@z

@x
See [basic usage]({{< relref "basic-usage#operating-modes" >}}) for more information.
@y
See [basic usage]({{< relref "basic-usage#operating-modes" >}}) for more information.
@z

@x
```toml
package-mode = false
```
@y
```toml
package-mode = false
```
@z

@x
## name
@y
## name
@z

@x
The name of the package. **Required in package mode**
@y
The name of the package. **Required in package mode**
@z

@x
This should be a valid name as defined by [PEP 508](https://peps.python.org/pep-0508/#names).
@y
This should be a valid name as defined by [PEP 508](https://peps.python.org/pep-0508/#names).
@z

@x
```toml
name = "my-package"
```
@y
```toml
name = "my-package"
```
@z

@x
## version
@y
## version
@z

@x
The version of the package. **Required in package mode**
@y
The version of the package. **Required in package mode**
@z

@x
This should be a valid [PEP 440](https://peps.python.org/pep-0440/) string.
@y
This should be a valid [PEP 440](https://peps.python.org/pep-0440/) string.
@z

@x
```toml
version = "0.1.0"
```
@y
```toml
version = "0.1.0"
```
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
If you would like to use semantic versioning for your project, please see
[here]({{< relref "libraries#versioning" >}}).
@y
If you would like to use semantic versioning for your project, please see
[here]({{< relref "libraries#versioning" >}}).
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
## description
@y
## description
@z

@x
A short description of the package. **Required in package mode**
@y
A short description of the package. **Required in package mode**
@z

@x
```toml
description = "A short description of the package."
```
@y
```toml
description = "A short description of the package."
```
@z

@x
## license
@y
## license
@z

@x
The license of the package.
@y
The license of the package.
@z

@x
The recommended notation for the most common licenses is (alphabetical):
@y
The recommended notation for the most common licenses is (alphabetical):
@z

@x
* Apache-2.0
* BSD-2-Clause
* BSD-3-Clause
* BSD-4-Clause
* GPL-2.0-only
* GPL-2.0-or-later
* GPL-3.0-only
* GPL-3.0-or-later
* LGPL-2.1-only
* LGPL-2.1-or-later
* LGPL-3.0-only
* LGPL-3.0-or-later
* MIT
@y
* Apache-2.0
* BSD-2-Clause
* BSD-3-Clause
* BSD-4-Clause
* GPL-2.0-only
* GPL-2.0-or-later
* GPL-3.0-only
* GPL-3.0-or-later
* LGPL-2.1-only
* LGPL-2.1-or-later
* LGPL-3.0-only
* LGPL-3.0-or-later
* MIT
@z

@x
Optional, but it is highly recommended to supply this.
More identifiers are listed at the [SPDX Open Source License Registry](https://spdx.org/licenses/).
@y
Optional, but it is highly recommended to supply this.
More identifiers are listed at the [SPDX Open Source License Registry](https://spdx.org/licenses/).
@z

@x
```toml
license = "MIT"
```
{{% note %}}
If your project is proprietary and does not use a specific licence, you can set this value as `Proprietary`.
{{% /note %}}
@y
```toml
license = "MIT"
```
{{% note %}}
If your project is proprietary and does not use a specific licence, you can set this value as `Proprietary`.
{{% /note %}}
@z

@x
## authors
@y
## authors
@z

@x
The authors of the package. **Required in package mode**
@y
The authors of the package. **Required in package mode**
@z

@x
This is a list of authors and should contain at least one author. Authors must be in the form `name <email>`.
@y
This is a list of authors and should contain at least one author. Authors must be in the form `name <email>`.
@z

@x
```toml
authors = [
    "Sébastien Eustace <sebastien@eustace.io>",
]
```
@y
```toml
authors = [
    "Sébastien Eustace <sebastien@eustace.io>",
]
```
@z

@x
## maintainers
@y
## maintainers
@z

@x
The maintainers of the package. **Optional**
@y
The maintainers of the package. **Optional**
@z

@x
This is a list of maintainers and should be distinct from authors. Maintainers may contain an email and be in the form `name <email>`.
@y
This is a list of maintainers and should be distinct from authors. Maintainers may contain an email and be in the form `name <email>`.
@z

@x
```toml
maintainers = [
    "John Smith <johnsmith@example.org>",
    "Jane Smith <janesmith@example.org>",
]
```
@y
```toml
maintainers = [
    "John Smith <johnsmith@example.org>",
    "Jane Smith <janesmith@example.org>",
]
```
@z

@x
## readme
@y
## readme
@z

@x
A path, or list of paths corresponding to the README file(s) of the package.
**Optional**
@y
A path, or list of paths corresponding to the README file(s) of the package.
**Optional**
@z

@x
The file(s) can be of any format, but if you intend to publish to PyPI keep the
[recommendations for a PyPI-friendly README](
https://packaging.python.org/en/latest/guides/making-a-pypi-friendly-readme/) in
mind. README paths are implicitly relative to `pyproject.toml`.
@y
The file(s) can be of any format, but if you intend to publish to PyPI keep the
[recommendations for a PyPI-friendly README](
https://packaging.python.org/en/latest/guides/making-a-pypi-friendly-readme/) in
mind. README paths are implicitly relative to `pyproject.toml`.
@z

@x
{{% note %}}
Whether paths are case-sensitive follows platform defaults, but it is recommended to keep cases.
@y
{{% note %}}
Whether paths are case-sensitive follows platform defaults, but it is recommended to keep cases.
@z

@x
To be specific, you can set `readme = "rEaDmE.mD"` for `README.md` on macOS and Windows, but Linux users can't `poetry install` after cloning your repo. This is because macOS and Windows are case-insensitive and case-preserving.
{{% /note %}}
@y
To be specific, you can set `readme = "rEaDmE.mD"` for `README.md` on macOS and Windows, but Linux users can't `poetry install` after cloning your repo. This is because macOS and Windows are case-insensitive and case-preserving.
{{% /note %}}
@z

@x
The contents of the README file(s) are used to populate the [Description
field](https://packaging.python.org/en/latest/specifications/core-metadata/#description-optional)
of your distribution's metadata (similar to `long_description` in setuptools).
When multiple files are specified they are concatenated with newlines.
@y
The contents of the README file(s) are used to populate the [Description
field](https://packaging.python.org/en/latest/specifications/core-metadata/#description-optional)
of your distribution's metadata (similar to `long_description` in setuptools).
When multiple files are specified they are concatenated with newlines.
@z

@x
```toml
[tool.poetry]
# ...
readme = "README.md"
```
@y
```toml
[tool.poetry]
# ...
readme = "README.md"
```
@z

@x
```toml
[tool.poetry]
# ...
readme = ["docs/README1.md", "docs/README2.md"]
```
@y
```toml
[tool.poetry]
# ...
readme = ["docs/README1.md", "docs/README2.md"]
```
@z

@x
## homepage
@y
## homepage
@z

@x
An URL to the website of the project. **Optional**
@y
An URL to the website of the project. **Optional**
@z

@x
```toml
homepage = "https://python-poetry.org/"
```
@y
```toml
homepage = "https://python-poetry.org/"
```
@z

@x
## repository
@y
## repository
@z

@x
An URL to the repository of the project. **Optional**
@y
An URL to the repository of the project. **Optional**
@z

@x
```toml
repository = "https://github.com/python-poetry/poetry"
```
@y
```toml
repository = "https://github.com/python-poetry/poetry"
```
@z

@x
## documentation
@y
## documentation
@z

@x
An URL to the documentation of the project. **Optional**
@y
An URL to the documentation of the project. **Optional**
@z

@x
```toml
documentation = "https://python-poetry.org/docs/"
```
@y
```toml
documentation = "https://python-poetry.org/docs/"
```
@z

@x
## keywords
@y
## keywords
@z

@x
A list of keywords that the package is related to. **Optional**
@y
A list of keywords that the package is related to. **Optional**
@z

@x
```toml
keywords = ["packaging", "poetry"]
```
@y
```toml
keywords = ["packaging", "poetry"]
```
@z

@x
## classifiers
@y
## classifiers
@z

@x
A list of PyPI [trove classifiers](https://pypi.org/classifiers/) that describe the project. **Optional**
@y
A list of PyPI [trove classifiers](https://pypi.org/classifiers/) that describe the project. **Optional**
@z

@x
```toml
[tool.poetry]
# ...
classifiers = [
    "Topic :: Software Development :: Build Tools",
    "Topic :: Software Development :: Libraries :: Python Modules"
]
```
@y
```toml
[tool.poetry]
# ...
classifiers = [
    "Topic :: Software Development :: Build Tools",
    "Topic :: Software Development :: Libraries :: Python Modules"
]
```
@z

@x
{{% note %}}
Note that Python classifiers are still automatically added for you and are determined by your `python` requirement.
@y
{{% note %}}
Note that Python classifiers are still automatically added for you and are determined by your `python` requirement.
@z

@x
The `license` property will also set the License classifier automatically.
{{% /note %}}
@y
The `license` property will also set the License classifier automatically.
{{% /note %}}
@z

@x
## packages
@y
## packages
@z

@x
A list of packages and modules to include in the final distribution.
@y
A list of packages and modules to include in the final distribution.
@z

@x
If your project structure differs from the standard one supported by `poetry`,
you can specify the packages you want to include in the final distribution.
@y
If your project structure differs from the standard one supported by `poetry`,
you can specify the packages you want to include in the final distribution.
@z

@x
```toml
[tool.poetry]
# ...
packages = [
    { include = "my_package" },
    { include = "extra_package/**/*.py" },
]
```
@y
```toml
[tool.poetry]
# ...
packages = [
    { include = "my_package" },
    { include = "extra_package/**/*.py" },
]
```
@z

@x
If your package is stored inside a "lib" directory, you must specify it:
@y
If your package is stored inside a "lib" directory, you must specify it:
@z

@x
```toml
[tool.poetry]
# ...
packages = [
    { include = "my_package", from = "lib" },
]
```
@y
```toml
[tool.poetry]
# ...
packages = [
    { include = "my_package", from = "lib" },
]
```
@z

@x
The `to` parameter is designed to specify the relative destination path
where the package will be located upon installation. This allows for
greater control over the organization of packages within your project's structure.
@y
The `to` parameter is designed to specify the relative destination path
where the package will be located upon installation. This allows for
greater control over the organization of packages within your project's structure.
@z

@x
```toml
[tool.poetry]
# ...
packages = [
    { include = "my_package", from = "lib", to = "target_package" },
]
```
@y
```toml
[tool.poetry]
# ...
packages = [
    { include = "my_package", from = "lib", to = "target_package" },
]
```
@z

@x
If you want to restrict a package to a specific build format you can specify
it by using `format`:
@y
If you want to restrict a package to a specific build format you can specify
it by using `format`:
@z

@x
```toml
[tool.poetry]
# ...
packages = [
    { include = "my_package" },
    { include = "my_other_package", format = "sdist" },
]
```
@y
```toml
[tool.poetry]
# ...
packages = [
    { include = "my_package" },
    { include = "my_other_package", format = "sdist" },
]
```
@z

@x
From now on, only the `sdist` build archive will include the `my_other_package` package.
@y
From now on, only the `sdist` build archive will include the `my_other_package` package.
@z

@x
{{% note %}}
Using `packages` disables the package auto-detection feature meaning you have to
**explicitly** specify the "default" package.
@y
{{% note %}}
Using `packages` disables the package auto-detection feature meaning you have to
**explicitly** specify the "default" package.
@z

@x
For instance, if you have a package named `my_package` and you want to also include
another package named `extra_package`, you will need to specify `my_package` explicitly:
@y
For instance, if you have a package named `my_package` and you want to also include
another package named `extra_package`, you will need to specify `my_package` explicitly:
@z

@x
```toml
packages = [
    { include = "my_package" },
    { include = "extra_package" },
]
```
{{% /note %}}
@y
```toml
packages = [
    { include = "my_package" },
    { include = "extra_package" },
]
```
{{% /note %}}
@z

@x
{{% note %}}
Poetry is clever enough to detect Python subpackages.
@y
{{% note %}}
Poetry is clever enough to detect Python subpackages.
@z

@x
Thus, you only have to specify the directory where your root package resides.
{{% /note %}}
@y
Thus, you only have to specify the directory where your root package resides.
{{% /note %}}
@z

@x
## include and exclude
@y
## include and exclude
@z

@x
A list of patterns that will be included in the final package.
@y
A list of patterns that will be included in the final package.
@z

@x
You can explicitly specify to Poetry that a set of globs should be ignored or included for the purposes of packaging.
The globs specified in the exclude field identify a set of files that are not included when a package is built.
@y
You can explicitly specify to Poetry that a set of globs should be ignored or included for the purposes of packaging.
The globs specified in the exclude field identify a set of files that are not included when a package is built.
@z

@x
If a VCS is being used for a package, the exclude field will be seeded with the VCS’ ignore settings (`.gitignore` for git for example).
@y
If a VCS is being used for a package, the exclude field will be seeded with the VCS’ ignore settings (`.gitignore` for git for example).
@z

@x
{{% note %}}
Explicitly declaring entries in `include` will negate VCS' ignore settings.
{{% /note %}}
@y
{{% note %}}
Explicitly declaring entries in `include` will negate VCS' ignore settings.
{{% /note %}}
@z

@x
```toml
[tool.poetry]
# ...
include = ["CHANGELOG.md"]
```
@y
```toml
[tool.poetry]
# ...
include = ["CHANGELOG.md"]
```
@z

@x
You can also specify the formats for which these patterns have to be included, as shown here:
@y
You can also specify the formats for which these patterns have to be included, as shown here:
@z

@x
```toml
[tool.poetry]
# ...
include = [
    { path = "tests", format = "sdist" },
    { path = "for_wheel.txt", format = ["sdist", "wheel"] }
]
```
@y
```toml
[tool.poetry]
# ...
include = [
    { path = "tests", format = "sdist" },
    { path = "for_wheel.txt", format = ["sdist", "wheel"] }
]
```
@z

@x
If no format is specified, `include` defaults to only `sdist`.
@y
If no format is specified, `include` defaults to only `sdist`.
@z

@x
In contrast, `exclude` defaults to both `sdist` and `wheel`.
@y
In contrast, `exclude` defaults to both `sdist` and `wheel`.
@z

@x
```toml
exclude = ["my_package/excluded.py"]
```
@y
```toml
exclude = ["my_package/excluded.py"]
```
@z

@x
## dependencies and dependency groups
@y
## dependencies and dependency groups
@z

@x
Poetry is configured to look for dependencies on [PyPI](https://pypi.org) by default.
Only the name and a version string are required in this case.
@y
Poetry is configured to look for dependencies on [PyPI](https://pypi.org) by default.
Only the name and a version string are required in this case.
@z

@x
```toml
[tool.poetry.dependencies]
requests = "^2.13.0"
```
@y
```toml
[tool.poetry.dependencies]
requests = "^2.13.0"
```
@z

@x
If you want to use a [private repository]({{< relref "repositories#using-a-private-repository" >}}),
you can add it to your `pyproject.toml` file, like so:
@y
If you want to use a [private repository]({{< relref "repositories#using-a-private-repository" >}}),
you can add it to your `pyproject.toml` file, like so:
@z

@x
```toml
[[tool.poetry.source]]
name = "private"
url = "http://example.com/simple"
```
@y
```toml
[[tool.poetry.source]]
name = "private"
url = "http://example.com/simple"
```
@z

@x
If you have multiple repositories configured, you can explicitly tell poetry where to look for a specific package:
@y
If you have multiple repositories configured, you can explicitly tell poetry where to look for a specific package:
@z

@x
```toml
[tool.poetry.dependencies]
requests = { version = "^2.13.0", source = "private" }
```
@y
```toml
[tool.poetry.dependencies]
requests = { version = "^2.13.0", source = "private" }
```
@z

@x
{{% note %}}
Be aware that declaring the python version for which your package
is compatible is mandatory:
@y
{{% note %}}
Be aware that declaring the python version for which your package
is compatible is mandatory:
@z

@x
```toml
[tool.poetry.dependencies]
python = "^3.7"
```
{{% /note %}}
@y
```toml
[tool.poetry.dependencies]
python = "^3.7"
```
{{% /note %}}
@z

@x
You can organize your dependencies in [groups]({{< relref "managing-dependencies#dependency-groups" >}})
to manage them in a more granular way.
@y
You can organize your dependencies in [groups]({{< relref "managing-dependencies#dependency-groups" >}})
to manage them in a more granular way.
@z

@x
```toml
[tool.poetry.group.test.dependencies]
pytest = "*"
@y
```toml
[tool.poetry.group.test.dependencies]
pytest = "*"
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
See [Dependency groups]({{< relref "managing-dependencies#dependency-groups" >}}) for a more in-depth look
at how to manage dependency groups and [Dependency specification]({{< relref "dependency-specification" >}})
for more information on other keys and specifying version ranges.
@y
See [Dependency groups]({{< relref "managing-dependencies#dependency-groups" >}}) for a more in-depth look
at how to manage dependency groups and [Dependency specification]({{< relref "dependency-specification" >}})
for more information on other keys and specifying version ranges.
@z

@x
## `scripts`
@y
## `scripts`
@z

@x
This section describes the scripts or executables that will be installed when installing the package
@y
This section describes the scripts or executables that will be installed when installing the package
@z

@x
```toml
[tool.poetry.scripts]
my_package_cli = 'my_package.console:run'
```
@y
```toml
[tool.poetry.scripts]
my_package_cli = 'my_package.console:run'
```
@z

@x
Here, we will have the `my_package_cli` script installed which will execute the `run` function in the `console` module in the `my_package` package.
@y
Here, we will have the `my_package_cli` script installed which will execute the `run` function in the `console` module in the `my_package` package.
@z

@x
{{% note %}}
When a script is added or updated, run `poetry install` to make them available in the project's virtualenv.
{{% /note %}}
@y
{{% note %}}
When a script is added or updated, run `poetry install` to make them available in the project's virtualenv.
{{% /note %}}
@z

@x
## `extras`
@y
## `extras`
@z

@x
Poetry supports extras to allow expression of:
@y
Poetry supports extras to allow expression of:
@z

@x
* optional dependencies, which enhance a package, but are not required; and
* clusters of optional dependencies.
@y
* optional dependencies, which enhance a package, but are not required; and
* clusters of optional dependencies.
@z

@x
```toml
[tool.poetry]
name = "awesome"
@y
```toml
[tool.poetry]
name = "awesome"
@z

@x
[tool.poetry.dependencies]
# These packages are mandatory and form the core of this package’s distribution.
mandatory = "^1.0"
@y
[tool.poetry.dependencies]
# These packages are mandatory and form the core of this package’s distribution.
mandatory = "^1.0"
@z

@x
# A list of all of the optional dependencies, some of which are included in the
# below `extras`. They can be opted into by apps.
psycopg2 = { version = "^2.9", optional = true }
mysqlclient = { version = "^1.3", optional = true }
@y
# A list of all of the optional dependencies, some of which are included in the
# below `extras`. They can be opted into by apps.
psycopg2 = { version = "^2.9", optional = true }
mysqlclient = { version = "^1.3", optional = true }
@z

@x
[tool.poetry.extras]
mysql = ["mysqlclient"]
pgsql = ["psycopg2"]
databases = ["mysqlclient", "psycopg2"]
```
@y
[tool.poetry.extras]
mysql = ["mysqlclient"]
pgsql = ["psycopg2"]
databases = ["mysqlclient", "psycopg2"]
```
@z

@x
When installing packages with Poetry, you can specify extras by using the `-E|--extras` option:
@y
When installing packages with Poetry, you can specify extras by using the `-E|--extras` option:
@z

@x
```bash
poetry install --extras "mysql pgsql"
poetry install -E mysql -E pgsql
```
@y
```bash
poetry install --extras "mysql pgsql"
poetry install -E mysql -E pgsql
```
@z

@x
Any extras you don't specify will be removed. Note this behavior is different from
[optional dependency groups]({{< relref "managing-dependencies#optional-groups" >}}) not
selected for install, e.g. those not specified via `install --with`.
@y
Any extras you don't specify will be removed. Note this behavior is different from
[optional dependency groups]({{< relref "managing-dependencies#optional-groups" >}}) not
selected for install, e.g. those not specified via `install --with`.
@z

@x
You can install all extras with the `--all-extras` option:
@y
You can install all extras with the `--all-extras` option:
@z

@x
```bash
poetry install --all-extras
```
@y
```bash
poetry install --all-extras
```
@z

@x
{{% note %}}
Note that `install --extras` and the variations mentioned above (`--all-extras`, `--extras foo`, etc.) only work on dependencies defined in the current project. If you want to install extras defined by dependencies, you'll have to express that in the dependency itself:
```toml
[tool.poetry.dependencies]
pandas = {version="^2.2.1", extras=["computation", "performance"]}
```
```toml
[tool.poetry.group.dev.dependencies]
fastapi = {version="^0.92.0", extras=["all"]}
```
{{% /note %}}
@y
{{% note %}}
Note that `install --extras` and the variations mentioned above (`--all-extras`, `--extras foo`, etc.) only work on dependencies defined in the current project. If you want to install extras defined by dependencies, you'll have to express that in the dependency itself:
```toml
[tool.poetry.dependencies]
pandas = {version="^2.2.1", extras=["computation", "performance"]}
```
```toml
[tool.poetry.group.dev.dependencies]
fastapi = {version="^0.92.0", extras=["all"]}
```
{{% /note %}}
@z

@x
When installing or specifying Poetry-built packages, the extras defined in this section can be activated
as described in [PEP 508](https://www.python.org/dev/peps/pep-0508/#extras).
@y
When installing or specifying Poetry-built packages, the extras defined in this section can be activated
as described in [PEP 508](https://www.python.org/dev/peps/pep-0508/#extras).
@z

@x
For example, when installing the package using `pip`, the dependencies required by
the `databases` extra can be installed as shown below.
@y
For example, when installing the package using `pip`, the dependencies required by
the `databases` extra can be installed as shown below.
@z

@x
```bash
pip install awesome[databases]
```
@y
```bash
pip install awesome[databases]
```
@z

@x
{{% note %}}
The dependencies specified for each `extra` must already be defined as project dependencies.
@y
{{% note %}}
The dependencies specified for each `extra` must already be defined as project dependencies.
@z

@x
Dependencies listed in [dependency groups]({{< relref "managing-dependencies#dependency-groups" >}}) cannot be specified as extras.
{{% /note %}}
@y
Dependencies listed in [dependency groups]({{< relref "managing-dependencies#dependency-groups" >}}) cannot be specified as extras.
{{% /note %}}
@z

@x
## `plugins`
@y
## `plugins`
@z

@x
Poetry supports arbitrary plugins, which are exposed as the ecosystem-standard [entry points](https://packaging.python.org/en/latest/specifications/entry-points/) and discoverable using `importlib.metadata`. This is similar to (and compatible with) the entry points feature of `setuptools`.
The syntax for registering a plugin is:
@y
Poetry supports arbitrary plugins, which are exposed as the ecosystem-standard [entry points](https://packaging.python.org/en/latest/specifications/entry-points/) and discoverable using `importlib.metadata`. This is similar to (and compatible with) the entry points feature of `setuptools`.
The syntax for registering a plugin is:
@z

@x
```toml
[tool.poetry.plugins] # Optional super table
@y
```toml
[tool.poetry.plugins] # Optional super table
@z

@x
[tool.poetry.plugins."A"]
B = "C:D"
```
Which are:
@y
[tool.poetry.plugins."A"]
B = "C:D"
```
Which are:
@z

@x
- `A` - type of the plugin, for example `poetry.plugin` or `flake8.extension`
- `B` - name of the plugin
- `C` - python module import path
- `D` - the entry point of the plugin (a function or class)
@y
- `A` - type of the plugin, for example `poetry.plugin` or `flake8.extension`
- `B` - name of the plugin
- `C` - python module import path
- `D` - the entry point of the plugin (a function or class)
@z

@x
Example (from [`poetry-plugin-export`](http://github.com/python-poetry/poetry-plugin-export)):
@y
Example (from [`poetry-plugin-export`](http://github.com/python-poetry/poetry-plugin-export)):
@z

@x
```toml
[tool.poetry.plugins."poetry.application.plugin"]
export = "poetry_plugin_export.plugins:ExportApplicationPlugin"
```
@y
```toml
[tool.poetry.plugins."poetry.application.plugin"]
export = "poetry_plugin_export.plugins:ExportApplicationPlugin"
```
@z

@x
## `urls`
@y
## `urls`
@z

@x
In addition to the basic urls (`homepage`, `repository` and `documentation`), you can specify
any custom url in the `urls` section.
@y
In addition to the basic urls (`homepage`, `repository` and `documentation`), you can specify
any custom url in the `urls` section.
@z

@x
```toml
[tool.poetry.urls]
"Bug Tracker" = "https://github.com/python-poetry/poetry/issues"
```
@y
```toml
[tool.poetry.urls]
"Bug Tracker" = "https://github.com/python-poetry/poetry/issues"
```
@z

@x
If you publish your package on PyPI, they will appear in the `Project Links` section.
@y
If you publish your package on PyPI, they will appear in the `Project Links` section.
@z

@x
## Poetry and PEP-517
@y
## Poetry and PEP-517
@z

@x
[PEP-517](https://www.python.org/dev/peps/pep-0517/) introduces a standard way
to define alternative build systems to build a Python project.
@y
[PEP-517](https://www.python.org/dev/peps/pep-0517/) introduces a standard way
to define alternative build systems to build a Python project.
@z

@x
Poetry is compliant with PEP-517, by providing a lightweight core library,
so if you use Poetry to manage your Python project you should reference
it in the `build-system` section of the `pyproject.toml` file like so:
@y
Poetry is compliant with PEP-517, by providing a lightweight core library,
so if you use Poetry to manage your Python project you should reference
it in the `build-system` section of the `pyproject.toml` file like so:
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
{{% note %}}
When using the `new` or `init` command this section will be automatically added.
{{% /note %}}
@y
{{% note %}}
When using the `new` or `init` command this section will be automatically added.
{{% /note %}}
@z

@x
{{% note %}}
If your `pyproject.toml` file still references `poetry` directly as a build backend,
you should update it to reference `poetry-core` instead.
{{% /note %}}
@y
{{% note %}}
If your `pyproject.toml` file still references `poetry` directly as a build backend,
you should update it to reference `poetry-core` instead.
{{% /note %}}
@z
