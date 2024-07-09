%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
title: "FAQ"
draft: false
type: docs
layout: single
@y
---
title: "FAQ"
draft: false
type: docs
layout: single
@z

@x
menu:
  docs:
    weight: 110
---
@y
menu:
  docs:
    weight: 110
---
@z

@x
# FAQ
@y
# FAQ
@z

@x
### Why is the dependency resolution process slow?
@y
### Why is the dependency resolution process slow?
@z

@x
While the dependency resolver at the heart of Poetry is highly optimized and
should be fast enough for most cases, with certain sets of dependencies
it can take time to find a valid solution.
@y
While the dependency resolver at the heart of Poetry is highly optimized and
should be fast enough for most cases, with certain sets of dependencies
it can take time to find a valid solution.
@z

@x
This is due to the fact that not all libraries on PyPI have properly declared their metadata
and, as such, they are not available via the PyPI JSON API. At this point, Poetry has no choice
but to download the packages and inspect them to get the necessary information. This is an expensive
operation, both in bandwidth and time, which is why it seems this is a long process.
@y
This is due to the fact that not all libraries on PyPI have properly declared their metadata
and, as such, they are not available via the PyPI JSON API. At this point, Poetry has no choice
but to download the packages and inspect them to get the necessary information. This is an expensive
operation, both in bandwidth and time, which is why it seems this is a long process.
@z

@x
At the moment there is no way around it. However, if you notice that Poetry
is downloading many versions of a single package, you can lessen the workload
by constraining that one package in your pyproject.toml more narrowly. That way
Poetry does not have to sift through so many versions of it, which may speed up
the locking process considerably in some cases.
@y
At the moment there is no way around it. However, if you notice that Poetry
is downloading many versions of a single package, you can lessen the workload
by constraining that one package in your pyproject.toml more narrowly. That way
Poetry does not have to sift through so many versions of it, which may speed up
the locking process considerably in some cases.
@z

@x
{{% note %}}
Once Poetry has cached the releases' information on your machine, the dependency resolution process
will be much faster.
{{% /note %}}
@y
{{% note %}}
Once Poetry has cached the releases' information on your machine, the dependency resolution process
will be much faster.
{{% /note %}}
@z

@x
### What kind of versioning scheme does Poetry use for itself?
@y
### What kind of versioning scheme does Poetry use for itself?
@z

@x
Poetry uses "major.minor.micro" version identifiers as mentioned in
[PEP 440](https://peps.python.org/pep-0440/#final-releases).
@y
Poetry uses "major.minor.micro" version identifiers as mentioned in
[PEP 440](https://peps.python.org/pep-0440/#final-releases).
@z

@x
Version bumps are done similar to Python's versioning:
* A major version bump (incrementing the first number) is only done for breaking changes
  if a deprecation cycle is not possible and many users have to perform some manual steps
  to migrate from one version to the next one.
* A minor version bump (incrementing the second number) may include new features as well
  as new deprecations and drop features deprecated in an earlier minor release.
* A micro version bump (incrementing the third number) usually only includes bug fixes.
  Deprecated features will not be dropped in a micro release.
@y
Version bumps are done similar to Python's versioning:
* A major version bump (incrementing the first number) is only done for breaking changes
  if a deprecation cycle is not possible and many users have to perform some manual steps
  to migrate from one version to the next one.
* A minor version bump (incrementing the second number) may include new features as well
  as new deprecations and drop features deprecated in an earlier minor release.
* A micro version bump (incrementing the third number) usually only includes bug fixes.
  Deprecated features will not be dropped in a micro release.
@z

@x
### Why does Poetry not adhere to semantic versioning?
@y
### Why does Poetry not adhere to semantic versioning?
@z

@x
Because of its large user base, even small changes not considered relevant by most users
can turn out to be a breaking change for some users in hindsight.
Sticking to strict [semantic versioning](https://semver.org) and (almost) always bumping
the major version instead of the minor version does not seem desirable
since the minor version will not carry any meaning anymore.
@y
Because of its large user base, even small changes not considered relevant by most users
can turn out to be a breaking change for some users in hindsight.
Sticking to strict [semantic versioning](https://semver.org) and (almost) always bumping
the major version instead of the minor version does not seem desirable
since the minor version will not carry any meaning anymore.
@z

@x
### Are unbound version constraints a bad idea?
@y
### Are unbound version constraints a bad idea?
@z

@x
A version constraint without an upper bound such as `*` or `>=3.4` will allow updates to any future version of the dependency.
This includes major versions breaking backward compatibility.
@y
A version constraint without an upper bound such as `*` or `>=3.4` will allow updates to any future version of the dependency.
This includes major versions breaking backward compatibility.
@z

@x
Once a release of your package is published, you cannot tweak its dependencies anymore in case a dependency breaks BC
– you have to do a new release but the previous one stays broken.
(Users can still work around the broken dependency by restricting it by themselves.)
@y
Once a release of your package is published, you cannot tweak its dependencies anymore in case a dependency breaks BC
– you have to do a new release but the previous one stays broken.
(Users can still work around the broken dependency by restricting it by themselves.)
@z

@x
To avoid such issues you can define an upper bound on your constraints,
which you can increase in a new release after testing that your package is compatible
with the new major version of your dependency.
@y
To avoid such issues you can define an upper bound on your constraints,
which you can increase in a new release after testing that your package is compatible
with the new major version of your dependency.
@z

@x
For example instead of using `>=3.4` you can use `^3.4` which allows all versions `<4.0`.
The `^` operator works very well with libraries following [semantic versioning](https://semver.org).
@y
For example instead of using `>=3.4` you can use `^3.4` which allows all versions `<4.0`.
The `^` operator works very well with libraries following [semantic versioning](https://semver.org).
@z

@x
However, when defining an upper bound, users of your package are not able to update
a dependency beyond the upper bound even if it does not break anything
and is fully compatible with your package.
You have to release a new version of your package with an increased upper bound first.
@y
However, when defining an upper bound, users of your package are not able to update
a dependency beyond the upper bound even if it does not break anything
and is fully compatible with your package.
You have to release a new version of your package with an increased upper bound first.
@z

@x
If your package will be used as a library in other packages, it might be better to avoid
upper bounds and thus unnecessary dependency conflicts (unless you already know for sure
that the next release of the dependency will break your package).
If your package will be used as an application, it might be worth to define an upper bound.
@y
If your package will be used as a library in other packages, it might be better to avoid
upper bounds and thus unnecessary dependency conflicts (unless you already know for sure
that the next release of the dependency will break your package).
If your package will be used as an application, it might be worth to define an upper bound.
@z

@x
### Is tox supported?
@y
### Is tox supported?
@z

@x
**Yes**. Provided that you are using `tox` >= 4, you can use it in combination with
the PEP 517 compliant build system provided by Poetry. (With tox 3, you have to set the
[isolated build](https://tox.wiki/en/3.27.1/config.html#conf-isolated_build) option.)
@y
**Yes**. Provided that you are using `tox` >= 4, you can use it in combination with
the PEP 517 compliant build system provided by Poetry. (With tox 3, you have to set the
[isolated build](https://tox.wiki/en/3.27.1/config.html#conf-isolated_build) option.)
@z

@x
So, in your `pyproject.toml` file, add this section if it does not already exist:
@y
So, in your `pyproject.toml` file, add this section if it does not already exist:
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
`tox` can be configured in multiple ways. It depends on what should be the code under test and which dependencies
should be installed.
@y
`tox` can be configured in multiple ways. It depends on what should be the code under test and which dependencies
should be installed.
@z

@x
#### Use case #1
```ini
[tox]
@y
#### Use case #1
```ini
[tox]
@z

@x
[testenv]
deps =
    pytest
commands =
    pytest tests/ --import-mode importlib
```
@y
[testenv]
deps =
    pytest
commands =
    pytest tests/ --import-mode importlib
```
@z

@x
`tox` will create an `sdist` package of the project and uses `pip` to install it in a fresh environment.
Thus, dependencies are resolved by `pip`.
@y
`tox` will create an `sdist` package of the project and uses `pip` to install it in a fresh environment.
Thus, dependencies are resolved by `pip`.
@z

@x
#### Use case #2
```ini
[tox]
@y
#### Use case #2
```ini
[tox]
@z

@x
[testenv]
allowlist_externals = poetry
commands_pre =
    poetry install --no-root --sync
commands =
    poetry run pytest tests/ --import-mode importlib
```
@y
[testenv]
allowlist_externals = poetry
commands_pre =
    poetry install --no-root --sync
commands =
    poetry run pytest tests/ --import-mode importlib
```
@z

@x
`tox` will create an `sdist` package of the project and uses `pip` to install it in a fresh environment.
Thus, dependencies are resolved by `pip` in the first place. But afterward we run Poetry,
 which will install the locked dependencies into the environment.
@y
`tox` will create an `sdist` package of the project and uses `pip` to install it in a fresh environment.
Thus, dependencies are resolved by `pip` in the first place. But afterward we run Poetry,
 which will install the locked dependencies into the environment.
@z

@x
#### Use case #3
```ini
[tox]
@y
#### Use case #3
```ini
[tox]
@z

@x
[testenv]
skip_install = true
allowlist_externals = poetry
commands_pre =
    poetry install
commands =
    poetry run pytest tests/ --import-mode importlib
```
@y
[testenv]
skip_install = true
allowlist_externals = poetry
commands_pre =
    poetry install
commands =
    poetry run pytest tests/ --import-mode importlib
```
@z

@x
`tox` will not do any install. Poetry installs all the dependencies and the current package in editable mode.
Thus, tests are running against the local files and not the built and installed package.
@y
`tox` will not do any install. Poetry installs all the dependencies and the current package in editable mode.
Thus, tests are running against the local files and not the built and installed package.
@z

@x
#### Note about credentials
@y
#### Note about credentials
@z

@x
Note that `tox` does not forward the environment variables of your current shell session by default.
This may cause Poetry to not be able to install dependencies in the `tox` environments if you have configured
credentials using the system keyring on Linux systems or using environment variables in general.
You can use the `passenv` [configuration option](https://tox.wiki/en/latest/config.html#passenv) to forward the
required variables explicitly or `passenv = "*"` to forward all of them.
Linux systems may require forwarding the `DBUS_SESSION_BUS_ADDRESS` variable to allow access to the system keyring,
though this may vary between desktop environments.
@y
Note that `tox` does not forward the environment variables of your current shell session by default.
This may cause Poetry to not be able to install dependencies in the `tox` environments if you have configured
credentials using the system keyring on Linux systems or using environment variables in general.
You can use the `passenv` [configuration option](https://tox.wiki/en/latest/config.html#passenv) to forward the
required variables explicitly or `passenv = "*"` to forward all of them.
Linux systems may require forwarding the `DBUS_SESSION_BUS_ADDRESS` variable to allow access to the system keyring,
though this may vary between desktop environments.
@z

@x
Alternatively, you can disable the keyring completely:
@y
Alternatively, you can disable the keyring completely:
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
Be aware that this will cause Poetry to write passwords to plaintext config files.
You will need to set the credentials again after changing this setting.
@y
Be aware that this will cause Poetry to write passwords to plaintext config files.
You will need to set the credentials again after changing this setting.
@z

@x
### Is Nox supported?
@y
### Is Nox supported?
@z

@x
Use the [`nox-poetry`](https://github.com/cjolowicz/nox-poetry) package to install locked versions of
dependencies specified in `poetry.lock` into [Nox](https://nox.thea.codes/en/stable/) sessions.
@y
Use the [`nox-poetry`](https://github.com/cjolowicz/nox-poetry) package to install locked versions of
dependencies specified in `poetry.lock` into [Nox](https://nox.thea.codes/en/stable/) sessions.
@z

@x
### I don't want Poetry to manage my virtual environments. Can I disable it?
@y
### I don't want Poetry to manage my virtual environments. Can I disable it?
@z

@x
While Poetry automatically creates virtual environments to always work isolated
from the global Python installation, there are rare scenarios where the use a Poetry managed
virtual environment is not possible or preferred.
@y
While Poetry automatically creates virtual environments to always work isolated
from the global Python installation, there are rare scenarios where the use a Poetry managed
virtual environment is not possible or preferred.
@z

@x
In this case, you can disable this feature by setting the `virtualenvs.create` setting to `false`:
@y
In this case, you can disable this feature by setting the `virtualenvs.create` setting to `false`:
@z

@x
```bash
poetry config virtualenvs.create false
```
@y
```bash
poetry config virtualenvs.create false
```
@z

@x
{{% warning %}}
The recommended best practice, including when installing an application within a container, is to make
use of a virtual environment. This can also be managed by another tool.
@y
{{% warning %}}
The recommended best practice, including when installing an application within a container, is to make
use of a virtual environment. This can also be managed by another tool.
@z

@x
The Poetry team strongly encourages the use of a virtual environment.
{{% /warning %}}
@y
The Poetry team strongly encourages the use of a virtual environment.
{{% /warning %}}
@z

@x
### Why is Poetry telling me that the current project's supported Python range is not compatible with one or more packages' Python requirements?
@y
### Why is Poetry telling me that the current project's supported Python range is not compatible with one or more packages' Python requirements?
@z

@x
Unlike `pip`, Poetry doesn't resolve for just the Python in the current environment. Instead it makes sure that a dependency
is resolvable within the given Python version range in `pyproject.toml`.
@y
Unlike `pip`, Poetry doesn't resolve for just the Python in the current environment. Instead it makes sure that a dependency
is resolvable within the given Python version range in `pyproject.toml`.
@z

@x
Assume you have the following `pyproject.toml`:
@y
Assume you have the following `pyproject.toml`:
@z

@x
```toml
[tool.poetry.dependencies]
python = "^3.7"
```
@y
```toml
[tool.poetry.dependencies]
python = "^3.7"
```
@z

@x
This means your project aims to be compatible with any Python version >=3.7,<4.0. Whenever you try to add a dependency
whose Python requirement doesn't match the whole range Poetry will tell you this, e.g.:
@y
This means your project aims to be compatible with any Python version >=3.7,<4.0. Whenever you try to add a dependency
whose Python requirement doesn't match the whole range Poetry will tell you this, e.g.:
@z

@x
```
The current project's supported Python range (>=3.7.0,<4.0.0) is not compatible with some of the required packages Python requirement:
    - scipy requires Python >=3.7,<3.11, so it will not be satisfied for Python >=3.11,<4.0.0
```
@y
```
The current project's supported Python range (>=3.7.0,<4.0.0) is not compatible with some of the required packages Python requirement:
    - scipy requires Python >=3.7,<3.11, so it will not be satisfied for Python >=3.11,<4.0.0
```
@z

@x
Usually you will want to match the supported Python range of your project with the upper bound of the failing dependency.
Alternatively you can tell Poetry to install this dependency [only for a specific range of Python versions]({{< relref "dependency-specification#multiple-constraints-dependencies" >}}),
if you know that it's not needed in all versions.
@y
Usually you will want to match the supported Python range of your project with the upper bound of the failing dependency.
Alternatively you can tell Poetry to install this dependency [only for a specific range of Python versions]({{< relref "dependency-specification#multiple-constraints-dependencies" >}}),
if you know that it's not needed in all versions.
@z

@x
### Why does Poetry enforce PEP 440 versions?
@y
### Why does Poetry enforce PEP 440 versions?
@z

@x
This is done to be compliant with the broader Python ecosystem.
@y
This is done to be compliant with the broader Python ecosystem.
@z

@x
For example, if Poetry builds a distribution for a project that uses a version that is not valid according to
[PEP 440](https://peps.python.org/pep-0440), third party tools will be unable to parse the version correctly.
@y
For example, if Poetry builds a distribution for a project that uses a version that is not valid according to
[PEP 440](https://peps.python.org/pep-0440), third party tools will be unable to parse the version correctly.
@z

@x
### Poetry busts my Docker cache because it requires me to COPY my source files in before installing 3rd party dependencies
@y
### Poetry busts my Docker cache because it requires me to COPY my source files in before installing 3rd party dependencies
@z

@x
By default, running `poetry install ...` requires you to have your source files present (both the "root" package and any directory path dependencies you might have).
This interacts poorly with Docker's caching mechanisms because any change to a source file will make any layers (subsequent commands in your Dockerfile) re-run.
For example, you might have a Dockerfile that looks something like this:
@y
By default, running `poetry install ...` requires you to have your source files present (both the "root" package and any directory path dependencies you might have).
This interacts poorly with Docker's caching mechanisms because any change to a source file will make any layers (subsequent commands in your Dockerfile) re-run.
For example, you might have a Dockerfile that looks something like this:
@z

@x
```text
FROM python
COPY pyproject.toml poetry.lock .
COPY src/ ./src
RUN pip install poetry && poetry install --only main
```
@y
```text
FROM python
COPY pyproject.toml poetry.lock .
COPY src/ ./src
RUN pip install poetry && poetry install --only main
```
@z

@x
As soon as *any* source file changes, the cache for the `RUN` layer will be invalidated, which forces all 3rd party dependencies (likely the slowest step out of these) to be installed again if you changed any files in `src/`.
@y
As soon as *any* source file changes, the cache for the `RUN` layer will be invalidated, which forces all 3rd party dependencies (likely the slowest step out of these) to be installed again if you changed any files in `src/`.
@z

@x
To avoid this cache busting you can split this into two steps:
@y
To avoid this cache busting you can split this into two steps:
@z

@x
1. Install 3rd party dependencies.
2. Copy over your source code and install just the source code.
@y
1. Install 3rd party dependencies.
2. Copy over your source code and install just the source code.
@z

@x
This might look something like this:
@y
This might look something like this:
@z

@x
```text
FROM python
COPY pyproject.toml poetry.lock .
RUN pip install poetry && poetry install --only main --no-root --no-directory
COPY src/ ./src
RUN poetry install --only main
```
@y
```text
FROM python
COPY pyproject.toml poetry.lock .
RUN pip install poetry && poetry install --only main --no-root --no-directory
COPY src/ ./src
RUN poetry install --only main
```
@z

@x
The two key options we are using here are `--no-root` (skips installing the project source) and `--no-directory` (skips installing any local directory path dependencies, you can omit this if you don't have any).
[More information on the options available for `poetry install`]({{< relref "cli#install" >}}).
@y
The two key options we are using here are `--no-root` (skips installing the project source) and `--no-directory` (skips installing any local directory path dependencies, you can omit this if you don't have any).
[More information on the options available for `poetry install`]({{< relref "cli#install" >}}).
@z

@x
### My requests are timing out!
@y
### My requests are timing out!
@z

@x
Poetry's default HTTP request timeout is 15 seconds, the same as `pip`.
Similar to `PIP_REQUESTS_TIMEOUT`, the **experimental** environment variable `POETRY_REQUESTS_TIMEOUT`
can be set to alter this value.
@y
Poetry's default HTTP request timeout is 15 seconds, the same as `pip`.
Similar to `PIP_REQUESTS_TIMEOUT`, the **experimental** environment variable `POETRY_REQUESTS_TIMEOUT`
can be set to alter this value.
@z
