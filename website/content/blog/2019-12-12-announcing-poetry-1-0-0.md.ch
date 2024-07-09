%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.0.0"
date: 2019-12-12 10:12:35
categories: [releases]
tags: ["1.x"]
@y
---
layout: single
title: "Announcing Poetry 1.0.0"
date: 2019-12-12 10:12:35
categories: [releases]
tags: ["1.x"]
@z

@x
aliases:
  - announcing-poetry-1-0-0.html
---
@y
aliases:
  - announcing-poetry-1-0-0.html
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry 1.0.0.
@y
The Poetry team is pleased to announce the immediate availability of Poetry 1.0.0.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
Thanks to the community and everyone involved in making this release possible,
and especially [@stephsamson](https://github.com/stephsamson), [@brycedrennan](https://github.com/brycedrennan)
and [@finswimmer](https://github.com/finswimmer) who helped tremendously getting to this significant milestone.
@y
Thanks to the community and everyone involved in making this release possible,
and especially [@stephsamson](https://github.com/stephsamson), [@brycedrennan](https://github.com/brycedrennan)
and [@finswimmer](https://github.com/finswimmer) who helped tremendously getting to this significant milestone.
@z

@x
I would also like to personally thank my employer, [PeopleDoc](https://www.people-doc.com/), for giving me
time to work on Poetry.
@y
I would also like to personally thank my employer, [PeopleDoc](https://www.people-doc.com/), for giving me
time to work on Poetry.
@z

@x
This release is a stepping stone for the project, bringing a lot of new features and changes
that will make managing Python projects even easier.
@y
This release is a stepping stone for the project, bringing a lot of new features and changes
that will make managing Python projects even easier.
@z

@x
{{% note %}}
This version is not backwards-compatible with the previous releases so special care must be taken when upgrading.
{{% /note %}}
@y
{{% note %}}
This version is not backwards-compatible with the previous releases so special care must be taken when upgrading.
{{% /note %}}
@z

@x
You can read the [change log](/history/) for the full list of changes.
@y
You can read the [change log](/history/) for the full list of changes.
@z

@x
## A new way to manage Python environments
@y
## A new way to manage Python environments
@z

@x
The default behavior has not changed and Poetry will try to use the currently used
Python version to create the virtual environment associated with the project.
@y
The default behavior has not changed and Poetry will try to use the currently used
Python version to create the virtual environment associated with the project.
@z

@x
However, if it's not compatible with the currently specified `python` requirement
of the `pyproject.toml` file, Poetry will try to find one that is.
@y
However, if it's not compatible with the currently specified `python` requirement
of the `pyproject.toml` file, Poetry will try to find one that is.
@z

@x
Moreover, you can now have more control and easily switch between Python versions
for a project by using the `env use` command.
@y
Moreover, you can now have more control and easily switch between Python versions
for a project by using the `env use` command.
@z

@x
```bash
poetry env use /full/path/to/python
```
@y
```bash
poetry env use /full/path/to/python
```
@z

@x
If you have the python executable in your `PATH` you can use it:
@y
If you have the python executable in your `PATH` you can use it:
@z

@x
```bash
poetry env use python3.7
```
@y
```bash
poetry env use python3.7
```
@z

@x
You can even just use the minor Python version in this case:
@y
You can even just use the minor Python version in this case:
@z

@x
```bash
poetry env use 3.7
```
@y
```bash
poetry env use 3.7
```
@z

@x
If you want to disable the explicitly activated virtualenv, you can use the
special `system` Python version to retrieve the default behavior:
@y
If you want to disable the explicitly activated virtualenv, you can use the
special `system` Python version to retrieve the default behavior:
@z

@x
```bash
poetry env use system
```
@y
```bash
poetry env use system
```
@z

@x
If you want to get basic information about the currently activated virtualenv,
you can use the `env info` command:
@y
If you want to get basic information about the currently activated virtualenv,
you can use the `env info` command:
@z

@x
```bash
poetry env info
```
@y
```bash
poetry env info
```
@z

@x
will output something similar to this:
@y
will output something similar to this:
@z

@x
```text
Virtualenv
Python:         3.7.1
Implementation: CPython
Path:           /path/to/poetry/cache/virtualenvs/test-O3eWbxRl-py3.7
Valid:          True
@y
```text
Virtualenv
Python:         3.7.1
Implementation: CPython
Path:           /path/to/poetry/cache/virtualenvs/test-O3eWbxRl-py3.7
Valid:          True
@z

@x
System
Platform: darwin
OS:       posix
Python:   /path/to/main/python
```
@y
System
Platform: darwin
OS:       posix
Python:   /path/to/main/python
```
@z

@x
If you only want to know the path to the virtualenv, you can pass the `--path` option
to `env info`:
@y
If you only want to know the path to the virtualenv, you can pass the `--path` option
to `env info`:
@z

@x
```bash
poetry env info --path
```
@y
```bash
poetry env info --path
```
@z

@x
You can also list all the virtualenvs associated with the current virtualenv
with the `env list` command:
@y
You can also list all the virtualenvs associated with the current virtualenv
with the `env list` command:
@z

@x
```bash
poetry env list
```
@y
```bash
poetry env list
```
@z

@x
will output something like the following:
@y
will output something like the following:
@z

@x
```text
test-O3eWbxRl-py2.7
test-O3eWbxRl-py3.6
test-O3eWbxRl-py3.7 (Activated)
```
@y
```text
test-O3eWbxRl-py2.7
test-O3eWbxRl-py3.6
test-O3eWbxRl-py3.7 (Activated)
```
@z

@x
Finally, you can delete existing virtualenvs by using `env remove`:
@y
Finally, you can delete existing virtualenvs by using `env remove`:
@z

@x
```bash
poetry env remove /full/path/to/python
poetry env remove python3.7
poetry env remove 3.7
poetry env remove test-O3eWbxRl-py3.7
```
@y
```bash
poetry env remove /full/path/to/python
poetry env remove python3.7
poetry env remove 3.7
poetry env remove test-O3eWbxRl-py3.7
```
@z

@x
If you remove the currently activated virtualenv, it will be automatically deactivated.
@y
If you remove the currently activated virtualenv, it will be automatically deactivated.
@z

@x
## Improved support for private indices
@y
## Improved support for private indices
@z

@x
While Poetry already supported private indices, it was not possible to control
them in a more fine-grained manner. To make using private indices even easier
and powerful, it's now possible to declare a specific source for a dependency.
@y
While Poetry already supported private indices, it was not possible to control
them in a more fine-grained manner. To make using private indices even easier
and powerful, it's now possible to declare a specific source for a dependency.
@z

@x
```toml
[tool.poetry.dependencies]
# ...
pendulum = {version = "^2.0.5", source = "my-index"}
@y
```toml
[tool.poetry.dependencies]
# ...
pendulum = {version = "^2.0.5", source = "my-index"}
@z

@x
[[tool.poetry.source]]
name = "my-index"
url = "https://example.com"
```
@y
[[tool.poetry.source]]
name = "my-index"
url = "https://example.com"
```
@z

@x
To accompany this new feature, you can now declare an index as secondary,
meaning it will only being used last and PyPI will always be preferred.
@y
To accompany this new feature, you can now declare an index as secondary,
meaning it will only being used last and PyPI will always be preferred.
@z

@x
```toml
[[tool.poetry.source]]
name = "my-index"
url = "https://example.com"
secondary = true
```
@y
```toml
[[tool.poetry.source]]
name = "my-index"
url = "https://example.com"
secondary = true
```
@z

@x
It's now also possible to disable PyPI completely by declaring a private
index as the default one:
@y
It's now also possible to disable PyPI completely by declaring a private
index as the default one:
@z

@x
```toml
[[tool.poetry.source]]
name = "my-index"
url = "https://example.com"
default = true
```
@y
```toml
[[tool.poetry.source]]
name = "my-index"
url = "https://example.com"
default = true
```
@z

@x
## Improved configuration management
@y
## Improved configuration management
@z

@x
### Using environment variables
@y
### Using environment variables
@z

@x
Sometimes, in particular when using Poetry with CI tools, it's easier to use environment variables and not have to execute configuration commands.
@y
Sometimes, in particular when using Poetry with CI tools, it's easier to use environment variables and not have to execute configuration commands.
@z

@x
Poetry now supports this and any setting can be set by using environment variables.
@y
Poetry now supports this and any setting can be set by using environment variables.
@z

@x
The environment variables must be prefixed by `POETRY_` and are comprised
of the uppercase name of the setting and with dots and dashes replaced by underscore,
here is an example:
@y
The environment variables must be prefixed by `POETRY_` and are comprised
of the uppercase name of the setting and with dots and dashes replaced by underscore,
here is an example:
@z

@x
```bash
export POETRY_VIRTUALENVS_PATH=/path/to/virtualenvs/directory
```
@y
```bash
export POETRY_VIRTUALENVS_PATH=/path/to/virtualenvs/directory
```
@z

@x
This also works for secret settings, like credentials:
@y
This also works for secret settings, like credentials:
@z

@x
```bash
export POETRY_HTTP_BASIC_MY_REPOSITORY_PASSWORD=secret
```
@y
```bash
export POETRY_HTTP_BASIC_MY_REPOSITORY_PASSWORD=secret
```
@z

@x
### Local configuration
@y
### Local configuration
@z

@x
Poetry now provides the ability to have settings that are specific to a project
by passing the `--local` option to the `config` command.
@y
Poetry now provides the ability to have settings that are specific to a project
by passing the `--local` option to the `config` command.
@z

@x
```bash
poetry config virtualenvs.create false --local
```
@y
```bash
poetry config virtualenvs.create false --local
```
@z

@x
This will create a `poetry.toml` file that holds the local configuration settings.
@y
This will create a `poetry.toml` file that holds the local configuration settings.
@z

@x
### The `settings.` prefix is no longer necessary
@y
### The `settings.` prefix is no longer necessary
@z

@x
The settings are now stored differently and no longer needs to be prefixed by `settings.`.
If you have already configured settings you will need to configure them again.
@y
The settings are now stored differently and no longer needs to be prefixed by `settings.`.
If you have already configured settings you will need to configure them again.
@z

@x
## Improved `add` command
@y
## Improved `add` command
@z

@x
It is now even easier to add dependencies with the `add` command.
@y
It is now even easier to add dependencies with the `add` command.
@z

@x
It now supports the following formats:
@y
It now supports the following formats:
@z

@x
- A single name: `pendulum`
- A name and a constraint: `requests@^2.23.0`
- A git url: `git+https://github.com/sdispater/poetry.git`
- A git url and a revision: `git+https://github.com/sdispater/poetry.git#develop`
- A file path: `../my-package/my-package.whl`
- A directory: `../my-package/`
- A url: `https://example.com/packages/my-package-0.1.0.tar.gz`
@y
- A single name: `pendulum`
- A name and a constraint: `requests@^2.23.0`
- A git url: `git+https://github.com/sdispater/poetry.git`
- A git url and a revision: `git+https://github.com/sdispater/poetry.git#develop`
- A file path: `../my-package/my-package.whl`
- A directory: `../my-package/`
- A url: `https://example.com/packages/my-package-0.1.0.tar.gz`
@z

@x
You can also specify extras in the constraint instead of using `--extras`:
@y
You can also specify extras in the constraint instead of using `--extras`:
@z

@x
```bash
poetry add "requests[security]"
```
@y
```bash
poetry add "requests[security]"
```
@z

@x
As a consequence, the `--git` and `--path` options were removed.
@y
As a consequence, the `--git` and `--path` options were removed.
@z

@x
If you need to upgrade an already present dependency to the latest version
you can use the special `latest` constraint to do so:
@y
If you need to upgrade an already present dependency to the latest version
you can use the special `latest` constraint to do so:
@z

@x
```
poetry add requests@latest
```
@y
```
poetry add requests@latest
```
@z

@x
It will also select the latest prerelease if the package only has prereleases.
@y
It will also select the latest prerelease if the package only has prereleases.
@z

@x
## Improved publishing
@y
## Improved publishing
@z

@x
### Support for PyPI API tokens
@y
### Support for PyPI API tokens
@z

@x
When publishing to PyPI, you can use the new [API tokens](https://pypi.org/help/#apitoken)
instead of the username/password combination.
@y
When publishing to PyPI, you can use the new [API tokens](https://pypi.org/help/#apitoken)
instead of the username/password combination.
@z

@x
To configure a token, you can use the `config` command:
@y
To configure a token, you can use the `config` command:
@z

@x
```bash
poetry config pypi-token.pypi my-token
```
@y
```bash
poetry config pypi-token.pypi my-token
```
@z

@x
### Support for custom certificates and mutual TLS authentication
@y
### Support for custom certificates and mutual TLS authentication
@z

@x
Poetry now supports repositories that are secured by a custom certificate authority
as well as those that require certificate-based client authentication.
@y
Poetry now supports repositories that are secured by a custom certificate authority
as well as those that require certificate-based client authentication.
@z

@x
The following will configure the "foo" repository to validate the repository's
certificate using a custom certificate authority and use a client certificate
(note that these config variables do not both need to be set):
@y
The following will configure the "foo" repository to validate the repository's
certificate using a custom certificate authority and use a client certificate
(note that these config variables do not both need to be set):
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
## Support for arbitrary markers for conditionnal dependencies
@y
## Support for arbitrary markers for conditionnal dependencies
@z

@x
If you need more complex install conditions for your dependencies than just the Python version,
Poetry now supports [environment markers](https://www.python.org/dev/peps/pep-0508/#environment-markers)
via the `markers` property:
@y
If you need more complex install conditions for your dependencies than just the Python version,
Poetry now supports [environment markers](https://www.python.org/dev/peps/pep-0508/#environment-markers)
via the `markers` property:
@z

@x
```toml
[tool.poetry.dependencies]
pathlib2 = { version = "^2.2", markers = "python_version ~= '2.7' or sys_platform == 'win32'" }
```
@y
```toml
[tool.poetry.dependencies]
pathlib2 = { version = "^2.2", markers = "python_version ~= '2.7' or sys_platform == 'win32'" }
```
@z

@x
## What's next?
@y
## What's next?
@z

@x
Even though we reached a significant milestone for the project,
there is still a lot of work to do to further improve the way Python projects
are managed by providing a unified workflow.
@y
Even though we reached a significant milestone for the project,
there is still a lot of work to do to further improve the way Python projects
are managed by providing a unified workflow.
@z

@x
The next steps will be to make Poetry extensible via a plugin system to help
create an ecosystem around it and add optional features (the [work](https://github.com/sdispater/poetry/pull/1237) is already in progress), to improve its packaging capabilities, and to further improve
the dependency resolution algorithm at its heart.
@y
The next steps will be to make Poetry extensible via a plugin system to help
create an ecosystem around it and add optional features (the [work](https://github.com/sdispater/poetry/pull/1237) is already in progress), to improve its packaging capabilities, and to further improve
the dependency resolution algorithm at its heart.
@z
