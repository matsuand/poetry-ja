%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
title: "Libraries"
draft: false
type: docs
layout: "docs"
@y
---
title: "Libraries"
draft: false
type: docs
layout: "docs"
@z

@x
menu:
  docs:
    weight: 20
---
@y
menu:
  docs:
    weight: 20
---
@z

@x
# Libraries
@y
# Libraries
@z

@x
This chapter will tell you how to make your library installable through Poetry.
@y
This chapter will tell you how to make your library installable through Poetry.
@z

@x
## Versioning
@y
## Versioning
@z

@x
Poetry requires [PEP 440](https://peps.python.org/pep-0440)-compliant versions for all projects.
@y
Poetry requires [PEP 440](https://peps.python.org/pep-0440)-compliant versions for all projects.
@z

@x
While Poetry does not enforce any release convention, it used to encourage the use of
[semantic versioning](https://semver.org/) within the scope of
[PEP 440](https://peps.python.org/pep-0440/#semantic-versioning) and supports
[version constraints]({{< relref "dependency-specification/#caret-requirements" >}})
that are especially suitable for semver.
@y
While Poetry does not enforce any release convention, it used to encourage the use of
[semantic versioning](https://semver.org/) within the scope of
[PEP 440](https://peps.python.org/pep-0440/#semantic-versioning) and supports
[version constraints]({{< relref "dependency-specification/#caret-requirements" >}})
that are especially suitable for semver.
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
As an example, `1.0.0-hotfix.1` is not compatible with [PEP 440](https://peps.python.org/pep-0440). You can instead
choose to use `1.0.0-post1` or `1.0.0.post1`.
@y
As an example, `1.0.0-hotfix.1` is not compatible with [PEP 440](https://peps.python.org/pep-0440). You can instead
choose to use `1.0.0-post1` or `1.0.0.post1`.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
## Lock file
@y
## Lock file
@z

@x
For your library, you may commit the `poetry.lock` file if you want to.
This can help your team to always test against the same dependency versions.
However, this lock file will not have any effect on other projects that depend on it.
It only has an effect on the main project.
@y
For your library, you may commit the `poetry.lock` file if you want to.
This can help your team to always test against the same dependency versions.
However, this lock file will not have any effect on other projects that depend on it.
It only has an effect on the main project.
@z

@x
If you do not want to commit the lock file and you are using git, add it to the `.gitignore`.
@y
If you do not want to commit the lock file and you are using git, add it to the `.gitignore`.
@z

@x
## Packaging
@y
## Packaging
@z

@x
Before you can actually publish your library, you will need to package it.
@y
Before you can actually publish your library, you will need to package it.
@z

@x
```bash
poetry build
```
@y
```bash
poetry build
```
@z

@x
This command will package your library in two different formats: `sdist` which is
the source format, and `wheel` which is a `compiled` package.
@y
This command will package your library in two different formats: `sdist` which is
the source format, and `wheel` which is a `compiled` package.
@z

@x
Poetry will automatically include some metadata files when building a package. When building
a `wheel`, the following files are included in the `.dist-info` directory:
- `LICENSE`
- `LICENSE.*`
- `COPYING`
- `COPYING.*`
- `LICENSES/**`
@y
Poetry will automatically include some metadata files when building a package. When building
a `wheel`, the following files are included in the `.dist-info` directory:
- `LICENSE`
- `LICENSE.*`
- `COPYING`
- `COPYING.*`
- `LICENSES/**`
@z

@x
When building an `sdist`, the following files will be included in the root folder:
  - `LICENSE*`
@y
When building an `sdist`, the following files will be included in the root folder:
  - `LICENSE*`
@z

@x
Once building is done you are ready to publish your library.
@y
Once building is done you are ready to publish your library.
@z

@x
## Publishing to PyPI
@y
## Publishing to PyPI
@z

@x
Alright, so now you can publish packages.
@y
Alright, so now you can publish packages.
@z

@x
Poetry will publish to [PyPI](https://pypi.org) by default. Anything that is published to PyPI
is available automatically through Poetry. Since [pendulum](https://pypi.org/project/pendulum/)
is on PyPI we can depend on it without having to specify any additional repositories.
@y
Poetry will publish to [PyPI](https://pypi.org) by default. Anything that is published to PyPI
is available automatically through Poetry. Since [pendulum](https://pypi.org/project/pendulum/)
is on PyPI we can depend on it without having to specify any additional repositories.
@z

@x
If we wanted to share `poetry-demo` with the Python community, we would publish on PyPI as well.
Doing so is really easy.
@y
If we wanted to share `poetry-demo` with the Python community, we would publish on PyPI as well.
Doing so is really easy.
@z

@x
```bash
poetry publish
```
@y
```bash
poetry publish
```
@z

@x
This will package and publish the library to PyPI, at the condition that you are a registered user
and you have [configured your credentials]({{< relref "repositories#configuring-credentials" >}}) properly.
@y
This will package and publish the library to PyPI, at the condition that you are a registered user
and you have [configured your credentials]({{< relref "repositories#configuring-credentials" >}}) properly.
@z

@x
{{% note %}}
The `publish` command does not execute `build` by default.
@y
{{% note %}}
The `publish` command does not execute `build` by default.
@z

@x
If you want to build and publish your packages together,
just pass the `--build` option.
{{% /note %}}
@y
If you want to build and publish your packages together,
just pass the `--build` option.
{{% /note %}}
@z

@x
Once this is done, your library will be available to anyone.
@y
Once this is done, your library will be available to anyone.
@z

@x
## Publishing to a private repository
@y
## Publishing to a private repository
@z

@x
Sometimes, you may want to keep your library private but also being accessible to your team.
@y
Sometimes, you may want to keep your library private but also being accessible to your team.
@z

@x
In this case, you will need to use a private repository.
@y
In this case, you will need to use a private repository.
@z

@x
In order to publish to a private repository, you will need to add it to your
global list of repositories. See [Adding a repository]({{< relref "repositories#adding-a-repository" >}})
for more information.
@y
In order to publish to a private repository, you will need to add it to your
global list of repositories. See [Adding a repository]({{< relref "repositories#adding-a-repository" >}})
for more information.
@z

@x
Once this is done, you can actually publish to it like so:
@y
Once this is done, you can actually publish to it like so:
@z

@x
```bash
poetry publish -r my-repository
```
@y
```bash
poetry publish -r my-repository
```
@z
