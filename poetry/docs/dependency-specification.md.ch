%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
title: "Dependency specification"
draft: false
type: docs
layout: single
@y
---
title: "Dependency specification"
draft: false
type: docs
layout: single
@z

@x
menu:
  docs:
    weight: 70
---
@y
menu:
  docs:
    weight: 70
---
@z

@x
# Dependency specification
@y
# Dependency specification
@z

@x
Dependencies for a project can be specified in various forms, which depend on the type
of the dependency and on the optional constraints that might be needed for it to be installed.
@y
Dependencies for a project can be specified in various forms, which depend on the type
of the dependency and on the optional constraints that might be needed for it to be installed.
@z

@x
## Version constraints
@y
## Version constraints
@z

@x
### Caret requirements
@y
### Caret requirements
@z

@x
**Caret requirements** allow [SemVer](https://semver.org/) compatible updates to a specified version. An update is allowed if the new version number does not modify the left-most non-zero digit in the major, minor, patch grouping. For instance, if we previously ran `poetry add requests@^2.13.0` and wanted to update the library and ran `poetry update requests`, poetry would update us to version `2.14.0` if it was available, but would not update us to `3.0.0`. If instead we had specified the version string as `^0.1.13`, poetry would update to `0.1.14` but not `0.2.0`. `0.0.x` is not considered compatible with any other version.
@y
**Caret requirements** allow [SemVer](https://semver.org/) compatible updates to a specified version. An update is allowed if the new version number does not modify the left-most non-zero digit in the major, minor, patch grouping. For instance, if we previously ran `poetry add requests@^2.13.0` and wanted to update the library and ran `poetry update requests`, poetry would update us to version `2.14.0` if it was available, but would not update us to `3.0.0`. If instead we had specified the version string as `^0.1.13`, poetry would update to `0.1.14` but not `0.2.0`. `0.0.x` is not considered compatible with any other version.
@z

@x
Here are some more examples of caret requirements and the versions that would be allowed with them:
@y
Here are some more examples of caret requirements and the versions that would be allowed with them:
@z

@x
| Requirement | Versions allowed |
| ----------- | ---------------- |
| ^1.2.3      | >=1.2.3 <2.0.0   |
| ^1.2        | >=1.2.0 <2.0.0   |
| ^1          | >=1.0.0 <2.0.0   |
| ^0.2.3      | >=0.2.3 <0.3.0   |
| ^0.0.3      | >=0.0.3 <0.0.4   |
| ^0.0        | >=0.0.0 <0.1.0   |
| ^0          | >=0.0.0 <1.0.0   |
@y
| Requirement | Versions allowed |
| ----------- | ---------------- |
| ^1.2.3      | >=1.2.3 <2.0.0   |
| ^1.2        | >=1.2.0 <2.0.0   |
| ^1          | >=1.0.0 <2.0.0   |
| ^0.2.3      | >=0.2.3 <0.3.0   |
| ^0.0.3      | >=0.0.3 <0.0.4   |
| ^0.0        | >=0.0.0 <0.1.0   |
| ^0          | >=0.0.0 <1.0.0   |
@z

@x
### Tilde requirements
@y
### Tilde requirements
@z

@x
**Tilde requirements** specify a minimal version with some ability to update.
If you specify a major, minor, and patch version or only a major and minor version, only patch-level changes are allowed.
If you only specify a major version, then minor- and patch-level changes are allowed.
@y
**Tilde requirements** specify a minimal version with some ability to update.
If you specify a major, minor, and patch version or only a major and minor version, only patch-level changes are allowed.
If you only specify a major version, then minor- and patch-level changes are allowed.
@z

@x
`~1.2.3` is an example of a tilde requirement.
@y
`~1.2.3` is an example of a tilde requirement.
@z

@x
| Requirement | Versions allowed |
| ----------- | ---------------- |
| ~1.2.3      | >=1.2.3 <1.3.0   |
| ~1.2        | >=1.2.0 <1.3.0   |
| ~1          | >=1.0.0 <2.0.0   |
@y
| Requirement | Versions allowed |
| ----------- | ---------------- |
| ~1.2.3      | >=1.2.3 <1.3.0   |
| ~1.2        | >=1.2.0 <1.3.0   |
| ~1          | >=1.0.0 <2.0.0   |
@z

@x
### Wildcard requirements
@y
### Wildcard requirements
@z

@x
**Wildcard requirements** allow for the latest (dependency dependent) version where the wildcard is positioned.
@y
**Wildcard requirements** allow for the latest (dependency dependent) version where the wildcard is positioned.
@z

@x
`*`, `1.*` and `1.2.*` are examples of wildcard requirements.
@y
`*`, `1.*` and `1.2.*` are examples of wildcard requirements.
@z

@x
| Requirement | Versions allowed |
| ----------- | ---------------- |
| *           | >=0.0.0          |
| 1.*         | >=1.0.0 <2.0.0   |
| 1.2.*       | >=1.2.0 <1.3.0   |
@y
| Requirement | Versions allowed |
| ----------- | ---------------- |
| *           | >=0.0.0          |
| 1.*         | >=1.0.0 <2.0.0   |
| 1.2.*       | >=1.2.0 <1.3.0   |
@z

@x
### Inequality requirements
@y
### Inequality requirements
@z

@x
**Inequality requirements** allow manually specifying a version range or an exact version to depend on.
@y
**Inequality requirements** allow manually specifying a version range or an exact version to depend on.
@z

@x
Here are some examples of inequality requirements:
@y
Here are some examples of inequality requirements:
@z

@x
```text
>= 1.2.0
> 1
< 2
!= 1.2.3
```
@y
```text
>= 1.2.0
> 1
< 2
!= 1.2.3
```
@z

@x
#### Multiple requirements
@y
#### Multiple requirements
@z

@x
Multiple version requirements can also be separated with a comma, e.g. `>= 1.2, < 1.5`.
@y
Multiple version requirements can also be separated with a comma, e.g. `>= 1.2, < 1.5`.
@z

@x
### Exact requirements
@y
### Exact requirements
@z

@x
You can specify the exact version of a package.
@y
You can specify the exact version of a package.
@z

@x
`1.2.3` is an example of an exact version specification.
@y
`1.2.3` is an example of an exact version specification.
@z

@x
This will tell Poetry to install this version and this version only.
If other dependencies require a different version, the solver will ultimately fail and abort any install or update procedures.
@y
This will tell Poetry to install this version and this version only.
If other dependencies require a different version, the solver will ultimately fail and abort any install or update procedures.
@z

@x
Exact versions can also be specified with `==` according to [PEP 440](https://peps.python.org/pep-0440/).
@y
Exact versions can also be specified with `==` according to [PEP 440](https://peps.python.org/pep-0440/).
@z

@x
`==1.2.3` is an example of this.
@y
`==1.2.3` is an example of this.
@z

@x
### Using the `@` operator
@y
### Using the `@` operator
@z

@x
When adding dependencies via `poetry add`, you can use the `@` operator.
This is understood similarly to the `==` syntax, but also allows prefixing any
specifiers that are valid in `pyproject.toml`. For example:
@y
When adding dependencies via `poetry add`, you can use the `@` operator.
This is understood similarly to the `==` syntax, but also allows prefixing any
specifiers that are valid in `pyproject.toml`. For example:
@z

@x
```shell
poetry add django@^4.0.0
```
@y
```shell
poetry add django@^4.0.0
```
@z

@x
The above would translate to the following entry in `pyproject.toml`:
```toml
Django = "^4.0.0"
```
@y
The above would translate to the following entry in `pyproject.toml`:
```toml
Django = "^4.0.0"
```
@z

@x
The special keyword `latest` is also understood by the `@` operator:
```shell
poetry add django@latest
```
@y
The special keyword `latest` is also understood by the `@` operator:
```shell
poetry add django@latest
```
@z

@x
The above would translate to the following entry in `pyproject.toml`, assuming the latest release of `django` is `4.0.5`:
```toml
Django = "^4.0.5"
```
@y
The above would translate to the following entry in `pyproject.toml`, assuming the latest release of `django` is `4.0.5`:
```toml
Django = "^4.0.5"
```
@z

@x
#### Extras
@y
#### Extras
@z

@x
Extras and `@` can be combined as one might expect (`package[extra]@version`):
@y
Extras and `@` can be combined as one might expect (`package[extra]@version`):
@z

@x
```shell
poetry add django[bcrypt]@^4.0.0
```
@y
```shell
poetry add django[bcrypt]@^4.0.0
```
@z

@x
## `git` dependencies
@y
## `git` dependencies
@z

@x
To depend on a library located in a `git` repository,
the minimum information you need to specify is the location of the repository with the git key:
@y
To depend on a library located in a `git` repository,
the minimum information you need to specify is the location of the repository with the git key:
@z

@x
```toml
[tool.poetry.dependencies]
requests = { git = "https://github.com/requests/requests.git" }
```
@y
```toml
[tool.poetry.dependencies]
requests = { git = "https://github.com/requests/requests.git" }
```
@z

@x
Since we haven’t specified any other information,
Poetry assumes that we intend to use the latest commit on the `main` branch
to build our project.
@y
Since we haven’t specified any other information,
Poetry assumes that we intend to use the latest commit on the `main` branch
to build our project.
@z

@x
You can combine the `git` key with the `branch` key to use another branch.
Alternatively, use `rev` or `tag` to pin a dependency to a specific commit hash
or tagged ref, respectively. For example:
@y
You can combine the `git` key with the `branch` key to use another branch.
Alternatively, use `rev` or `tag` to pin a dependency to a specific commit hash
or tagged ref, respectively. For example:
@z

@x
```toml
[tool.poetry.dependencies]
# Get the latest revision on the branch named "next"
requests = { git = "https://github.com/kennethreitz/requests.git", branch = "next" }
# Get a revision by its commit hash
flask = { git = "https://github.com/pallets/flask.git", rev = "38eb5d3b" }
# Get a revision by its tag
numpy = { git = "https://github.com/numpy/numpy.git", tag = "v0.13.2" }
```
@y
```toml
[tool.poetry.dependencies]
# Get the latest revision on the branch named "next"
requests = { git = "https://github.com/kennethreitz/requests.git", branch = "next" }
# Get a revision by its commit hash
flask = { git = "https://github.com/pallets/flask.git", rev = "38eb5d3b" }
# Get a revision by its tag
numpy = { git = "https://github.com/numpy/numpy.git", tag = "v0.13.2" }
```
@z

@x
In cases where the package you want to install is located in a subdirectory of the VCS repository, you can use the `subdirectory` option, similarly to what [pip](https://pip.pypa.io/en/stable/topics/vcs-support/#url-fragments) provides:
@y
In cases where the package you want to install is located in a subdirectory of the VCS repository, you can use the `subdirectory` option, similarly to what [pip](https://pip.pypa.io/en/stable/topics/vcs-support/#url-fragments) provides:
@z

@x
```toml
[tool.poetry.dependencies]
# Install a package named `subdir_package` from a folder called `subdir` within the repository
subdir_package = { git = "https://github.com/myorg/mypackage_with_subdirs.git", subdirectory = "subdir" }
```
@y
```toml
[tool.poetry.dependencies]
# Install a package named `subdir_package` from a folder called `subdir` within the repository
subdir_package = { git = "https://github.com/myorg/mypackage_with_subdirs.git", subdirectory = "subdir" }
```
@z

@x
with the corresponding `add` call:
@y
with the corresponding `add` call:
@z

@x
```bash
poetry add "git+https://github.com/myorg/mypackage_with_subdirs.git#subdirectory=subdir"
```
@y
```bash
poetry add "git+https://github.com/myorg/mypackage_with_subdirs.git#subdirectory=subdir"
```
@z

@x
To use an SSH connection, for example in the case of private repositories, use the following example syntax:
@y
To use an SSH connection, for example in the case of private repositories, use the following example syntax:
@z

@x
```toml
[tool.poetry.dependencies]
requests = { git = "git@github.com:requests/requests.git" }
```
@y
```toml
[tool.poetry.dependencies]
requests = { git = "git@github.com:requests/requests.git" }
```
@z

@x
To use HTTP basic authentication with your git repositories, you can configure credentials similar to
how [repository credentials]({{< relref "repositories#configuring-credentials" >}}) are configured.
@y
To use HTTP basic authentication with your git repositories, you can configure credentials similar to
how [repository credentials]({{< relref "repositories#configuring-credentials" >}}) are configured.
@z

@x
```bash
poetry config repositories.git-org-project https://github.com/org/project.git
poetry config http-basic.git-org-project username token
poetry add git+https://github.com/org/project.git
```
@y
```bash
poetry config repositories.git-org-project https://github.com/org/project.git
poetry config http-basic.git-org-project username token
poetry add git+https://github.com/org/project.git
```
@z

@x
{{% note %}}
With Poetry 1.2 releases, the default git client used is [Dulwich](https://www.dulwich.io/).
@y
{{% note %}}
With Poetry 1.2 releases, the default git client used is [Dulwich](https://www.dulwich.io/).
@z

@x
We fall back to legacy system git client implementation in cases where
[gitcredentials](https://git-scm.com/docs/gitcredentials) is used. This fallback will be removed in
a future release where `gitcredentials` helpers can be better supported natively.
@y
We fall back to legacy system git client implementation in cases where
[gitcredentials](https://git-scm.com/docs/gitcredentials) is used. This fallback will be removed in
a future release where `gitcredentials` helpers can be better supported natively.
@z

@x
In cases where you encounter issues with the default implementation that used to work prior to
Poetry 1.2, you may wish to explicitly configure the use of the system git client via a shell
subprocess call.
@y
In cases where you encounter issues with the default implementation that used to work prior to
Poetry 1.2, you may wish to explicitly configure the use of the system git client via a shell
subprocess call.
@z

@x
```bash
poetry config experimental.system-git-client true
```
@y
```bash
poetry config experimental.system-git-client true
```
@z

@x
Keep in mind however, that doing so will surface bugs that existed in versions prior to 1.2 which
were caused due to the use of the system git client.
{{% /note %}}
@y
Keep in mind however, that doing so will surface bugs that existed in versions prior to 1.2 which
were caused due to the use of the system git client.
{{% /note %}}
@z

@x
## `path` dependencies
@y
## `path` dependencies
@z

@x
To depend on a library located in a local directory or file,
you can use the `path` property:
@y
To depend on a library located in a local directory or file,
you can use the `path` property:
@z

@x
```toml
[tool.poetry.dependencies]
# directory
my-package = { path = "../my-package/", develop = false }
@y
```toml
[tool.poetry.dependencies]
# directory
my-package = { path = "../my-package/", develop = false }
@z

@x
# file
my-package = { path = "../my-package/dist/my-package-0.1.0.tar.gz" }
```
@y
# file
my-package = { path = "../my-package/dist/my-package-0.1.0.tar.gz" }
```
@z

@x
{{% note %}}
Before poetry 1.1 directory path dependencies were installed in editable mode by default. You should set the `develop` attribute explicitly,
to make sure the behavior is the same for all poetry versions.
{{% /note %}}
@y
{{% note %}}
Before poetry 1.1 directory path dependencies were installed in editable mode by default. You should set the `develop` attribute explicitly,
to make sure the behavior is the same for all poetry versions.
{{% /note %}}
@z

@x
## `url` dependencies
@y
## `url` dependencies
@z

@x
To depend on a library located on a remote archive,
you can use the `url` property:
@y
To depend on a library located on a remote archive,
you can use the `url` property:
@z

@x
```toml
[tool.poetry.dependencies]
# directory
my-package = { url = "https://example.com/my-package-0.1.0.tar.gz" }
```
@y
```toml
[tool.poetry.dependencies]
# directory
my-package = { url = "https://example.com/my-package-0.1.0.tar.gz" }
```
@z

@x
with the corresponding `add` call:
@y
with the corresponding `add` call:
@z

@x
```bash
poetry add https://example.com/my-package-0.1.0.tar.gz
```
@y
```bash
poetry add https://example.com/my-package-0.1.0.tar.gz
```
@z

@x
## Dependency `extras`
@y
## Dependency `extras`
@z

@x
You can specify [PEP-508 Extras](https://www.python.org/dev/peps/pep-0508/#extras)
for a dependency as shown here.
@y
You can specify [PEP-508 Extras](https://www.python.org/dev/peps/pep-0508/#extras)
for a dependency as shown here.
@z

@x
```toml
[tool.poetry.dependencies]
gunicorn = { version = "^20.1", extras = ["gevent"] }
```
@y
```toml
[tool.poetry.dependencies]
gunicorn = { version = "^20.1", extras = ["gevent"] }
```
@z

@x
{{% note %}}
These activate extra defined for the dependency, to configure an optional dependency
for extras in your project refer to [`extras`]({{< relref "pyproject#extras" >}}).
{{% /note %}}
@y
{{% note %}}
These activate extra defined for the dependency, to configure an optional dependency
for extras in your project refer to [`extras`]({{< relref "pyproject#extras" >}}).
{{% /note %}}
@z

@x
## `source` dependencies
@y
## `source` dependencies
@z

@x
To depend on a package from an [alternate repository]({{< relref "repositories#installing-from-private-package-sources" >}}),
you can use the `source` property:
@y
To depend on a package from an [alternate repository]({{< relref "repositories#installing-from-private-package-sources" >}}),
you can use the `source` property:
@z

@x
```toml
[[tool.poetry.source]]
name = "foo"
url = "https://foo.bar/simple/"
priority = "supplemental"
@y
```toml
[[tool.poetry.source]]
name = "foo"
url = "https://foo.bar/simple/"
priority = "supplemental"
@z

@x
[tool.poetry.dependencies]
my-cool-package = { version = "*", source = "foo" }
```
@y
[tool.poetry.dependencies]
my-cool-package = { version = "*", source = "foo" }
```
@z

@x
with the corresponding `add` call:
@y
with the corresponding `add` call:
@z

@x
```sh
poetry add my-cool-package --source foo
```
@y
```sh
poetry add my-cool-package --source foo
```
@z

@x
{{% note %}}
In this example, we expect `foo` to be configured correctly. See [using a private repository]({{< relref "repositories#installing-from-private-package-sources" >}})
for further information.
{{% /note %}}
@y
{{% note %}}
In this example, we expect `foo` to be configured correctly. See [using a private repository]({{< relref "repositories#installing-from-private-package-sources" >}})
for further information.
{{% /note %}}
@z

@x
## Python restricted dependencies
@y
## Python restricted dependencies
@z

@x
You can also specify that a dependency should be installed only for specific Python versions:
@y
You can also specify that a dependency should be installed only for specific Python versions:
@z

@x
```toml
[tool.poetry.dependencies]
tomli = { version = "^2.0.1", python = "<3.11" }
```
@y
```toml
[tool.poetry.dependencies]
tomli = { version = "^2.0.1", python = "<3.11" }
```
@z

@x
```toml
[tool.poetry.dependencies]
pathlib2 = { version = "^2.2", python = "^3.2" }
```
@y
```toml
[tool.poetry.dependencies]
pathlib2 = { version = "^2.2", python = "^3.2" }
```
@z

@x
## Using environment markers
@y
## Using environment markers
@z

@x
If you need more complex install conditions for your dependencies,
Poetry supports [environment markers](https://www.python.org/dev/peps/pep-0508/#environment-markers)
via the `markers` property:
@y
If you need more complex install conditions for your dependencies,
Poetry supports [environment markers](https://www.python.org/dev/peps/pep-0508/#environment-markers)
via the `markers` property:
@z

@x
```toml
[tool.poetry.dependencies]
pathlib2 = { version = "^2.2", markers = "python_version <= '3.4' or sys_platform == 'win32'" }
```
@y
```toml
[tool.poetry.dependencies]
pathlib2 = { version = "^2.2", markers = "python_version <= '3.4' or sys_platform == 'win32'" }
```
@z

@x
## Multiple constraints dependencies
@y
## Multiple constraints dependencies
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
with Python 3.6-3.7 up to version 1.9, and compatible with Python 3.8+ from version 2.0:
you would declare it like so:
@y
Let's say you have a dependency on the package `foo` which is only compatible
with Python 3.6-3.7 up to version 1.9, and compatible with Python 3.8+ from version 2.0:
you would declare it like so:
@z

@x
```toml
[tool.poetry.dependencies]
foo = [
    {version = "<=1.9", python = ">=3.6,<3.8"},
    {version = "^2.0", python = ">=3.8"}
]
```
@y
```toml
[tool.poetry.dependencies]
foo = [
    {version = "<=1.9", python = ">=3.6,<3.8"},
    {version = "^2.0", python = ">=3.8"}
]
```
@z

@x
{{% note %}}
The constraints **must** have different requirements (like `python`)
otherwise it will cause an error when resolving dependencies.
{{% /note %}}
@y
{{% note %}}
The constraints **must** have different requirements (like `python`)
otherwise it will cause an error when resolving dependencies.
{{% /note %}}
@z

@x
### Combining git / url / path dependencies with source repositories
@y
### Combining git / url / path dependencies with source repositories
@z

@x
Direct origin (`git`/ `url`/ `path`) dependencies can satisfy the requirement of a dependency that
doesn't explicitly specify a source, even when mutually exclusive markers are used. For instance
in the following example the url package will also be a valid solution for the second requirement:
```toml
foo = [
    { platform = "darwin", url = "https://example.com/example-1.0-py3-none-any.whl" },
    { platform = "linux", version = "^1.0" },
]
```
@y
Direct origin (`git`/ `url`/ `path`) dependencies can satisfy the requirement of a dependency that
doesn't explicitly specify a source, even when mutually exclusive markers are used. For instance
in the following example the url package will also be a valid solution for the second requirement:
```toml
foo = [
    { platform = "darwin", url = "https://example.com/example-1.0-py3-none-any.whl" },
    { platform = "linux", version = "^1.0" },
]
```
@z

@x
Sometimes you may instead want to use a direct origin dependency for specific conditions
(i.e. a compiled package that is not available on PyPI for a certain platform/architecture) while
falling back on source repositories in other cases. In this case you should explicitly ask for your
dependency to be satisfied by another `source`. For example:
```toml
foo = [
    { platform = "darwin", url = "https://example.com/foo-1.0.0-py3-none-macosx_11_0_arm64.whl" },
    { platform = "linux", version = "^1.0", source = "pypi" },
]
```
@y
Sometimes you may instead want to use a direct origin dependency for specific conditions
(i.e. a compiled package that is not available on PyPI for a certain platform/architecture) while
falling back on source repositories in other cases. In this case you should explicitly ask for your
dependency to be satisfied by another `source`. For example:
```toml
foo = [
    { platform = "darwin", url = "https://example.com/foo-1.0.0-py3-none-macosx_11_0_arm64.whl" },
    { platform = "linux", version = "^1.0", source = "pypi" },
]
```
@z

@x
## Expanded dependency specification syntax
@y
## Expanded dependency specification syntax
@z

@x
In the case of more complex dependency specifications, you may find that you
end up with lines which are very long and difficult to read. In these cases,
you can shift from using "inline table" syntax, to the "standard table" syntax.
@y
In the case of more complex dependency specifications, you may find that you
end up with lines which are very long and difficult to read. In these cases,
you can shift from using "inline table" syntax, to the "standard table" syntax.
@z

@x
An example where this might be useful is the following:
@y
An example where this might be useful is the following:
@z

@x
```toml
[tool.poetry.group.dev.dependencies]
black = {version = "19.10b0", allow-prereleases = true, python = "^3.7", markers = "platform_python_implementation == 'CPython'"}
```
@y
```toml
[tool.poetry.group.dev.dependencies]
black = {version = "19.10b0", allow-prereleases = true, python = "^3.7", markers = "platform_python_implementation == 'CPython'"}
```
@z

@x
As a single line, this is a lot to digest. To make this a bit easier to
work with, you can do the following:
@y
As a single line, this is a lot to digest. To make this a bit easier to
work with, you can do the following:
@z

@x
```toml
[tool.poetry.group.dev.dependencies.black]
version = "19.10b0"
allow-prereleases = true
python = "^3.7"
markers = "platform_python_implementation == 'CPython'"
```
@y
```toml
[tool.poetry.group.dev.dependencies.black]
version = "19.10b0"
allow-prereleases = true
python = "^3.7"
markers = "platform_python_implementation == 'CPython'"
```
@z

@x
The same information is still present, and ends up providing the exact
same specification. It's simply split into multiple, slightly more readable,
lines.
@y
The same information is still present, and ends up providing the exact
same specification. It's simply split into multiple, slightly more readable,
lines.
@z
