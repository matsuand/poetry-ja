%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
title: "pre-commit hooks"
draft: false
type: docs
layout: single
@y
---
title: "pre-commit hooks"
draft: false
type: docs
layout: single
@z

@x
menu:
  docs:
    weight: 120
---
@y
menu:
  docs:
    weight: 120
---
@z

@x
# pre-commit hooks
@y
# pre-commit hooks
@z

@x
pre-commit is a framework for building and running
[git hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks).
See the official documentation for more information: [pre-commit.com](https://pre-commit.com/)
@y
pre-commit is a framework for building and running
[git hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks).
See the official documentation for more information: [pre-commit.com](https://pre-commit.com/)
@z

@x
This document provides a list of available pre-commit hooks provided by Poetry.
@y
This document provides a list of available pre-commit hooks provided by Poetry.
@z

@x
{{% note %}}
If you specify the `args:` for a hook in your `.pre-commit-config.yaml`,
the defaults are overwritten. You must fully specify all arguments for
your hook if you make use of `args:`.
{{% /note %}}
@y
{{% note %}}
If you specify the `args:` for a hook in your `.pre-commit-config.yaml`,
the defaults are overwritten. You must fully specify all arguments for
your hook if you make use of `args:`.
{{% /note %}}
@z

@x
{{% note %}}
If the `pyproject.toml` file is not in the root directory, you can specify `args: ["-C", "./subdirectory"]`.
{{% /note %}}
@y
{{% note %}}
If the `pyproject.toml` file is not in the root directory, you can specify `args: ["-C", "./subdirectory"]`.
{{% /note %}}
@z

@x
## poetry-check
@y
## poetry-check
@z

@x
The `poetry-check` hook calls the `poetry check` command
to make sure the poetry configuration does not get committed in a broken state.
@y
The `poetry-check` hook calls the `poetry check` command
to make sure the poetry configuration does not get committed in a broken state.
@z

@x
### Arguments
@y
### Arguments
@z

@x
The hook takes the same arguments as the poetry command.
For more information see the [check command]({{< relref "cli#check" >}}).
@y
The hook takes the same arguments as the poetry command.
For more information see the [check command]({{< relref "cli#check" >}}).
@z

@x
## poetry-lock
@y
## poetry-lock
@z

@x
The `poetry-lock` hook calls the `poetry lock` command
to make sure the lock file is up-to-date when committing changes.
@y
The `poetry-lock` hook calls the `poetry lock` command
to make sure the lock file is up-to-date when committing changes.
@z

@x
### Arguments
@y
### Arguments
@z

@x
The hook takes the same arguments as the poetry command.
For more information see the [lock command]({{< relref "cli#lock" >}}).
@y
The hook takes the same arguments as the poetry command.
For more information see the [lock command]({{< relref "cli#lock" >}}).
@z

@x
## poetry-export
@y
## poetry-export
@z

@x
The `poetry-export` hook calls the `poetry export` command
to sync your `requirements.txt` file with your current dependencies.
@y
The `poetry-export` hook calls the `poetry export` command
to sync your `requirements.txt` file with your current dependencies.
@z

@x
{{% warning %}}
This hook is provided by the [Export Poetry Plugin](https://github.com/python-poetry/poetry-plugin-export).
{{% /warning %}}
@y
{{% warning %}}
This hook is provided by the [Export Poetry Plugin](https://github.com/python-poetry/poetry-plugin-export).
{{% /warning %}}
@z

@x
{{% note %}}
It is recommended to run the [`poetry-lock`](#poetry-lock) hook or [`poetry-check`](#poetry-check) with argument `--lock` prior to this one.
{{% /note %}}
@y
{{% note %}}
It is recommended to run the [`poetry-lock`](#poetry-lock) hook or [`poetry-check`](#poetry-check) with argument `--lock` prior to this one.
{{% /note %}}
@z

@x
### Arguments
@y
### Arguments
@z

@x
The hook takes the same arguments as the poetry command.
For more information see the [export command]({{< relref "cli#export" >}}).
@y
The hook takes the same arguments as the poetry command.
For more information see the [export command]({{< relref "cli#export" >}}).
@z

@x
The default arguments are `args: ["-f", "requirements.txt", "-o", "requirements.txt"]`,
which will create/update the `requirements.txt` file in the current working directory.
@y
The default arguments are `args: ["-f", "requirements.txt", "-o", "requirements.txt"]`,
which will create/update the `requirements.txt` file in the current working directory.
@z

@x
You may add `verbose: true` in your `.pre-commit-config.yaml` in order to output to the
console:
@y
You may add `verbose: true` in your `.pre-commit-config.yaml` in order to output to the
console:
@z

@x
```yaml
hooks:
-   id: poetry-export
    args: ["-f", "requirements.txt"]
    verbose: true
```
@y
```yaml
hooks:
-   id: poetry-export
    args: ["-f", "requirements.txt"]
    verbose: true
```
@z

@x
Also, `--dev` can be added to `args` to write dev-dependencies to `requirements.txt`:
@y
Also, `--dev` can be added to `args` to write dev-dependencies to `requirements.txt`:
@z

@x
```yaml
hooks:
-   id: poetry-export
    args: ["--dev", "-f", "requirements.txt", "-o", "requirements.txt"]
```
@y
```yaml
hooks:
-   id: poetry-export
    args: ["--dev", "-f", "requirements.txt", "-o", "requirements.txt"]
```
@z

@x
## poetry-install
@y
## poetry-install
@z

@x
The `poetry-install` hook calls the `poetry install` command to make sure all locked packages are installed.
In order to install this hook, you either need to specify `default_install_hook_types`, or you have
to install it via `pre-commit install --install-hooks -t post-checkout -t post-merge`.
@y
The `poetry-install` hook calls the `poetry install` command to make sure all locked packages are installed.
In order to install this hook, you either need to specify `default_install_hook_types`, or you have
to install it via `pre-commit install --install-hooks -t post-checkout -t post-merge`.
@z

@x
### Arguments
@y
### Arguments
@z

@x
The hook takes the same arguments as the poetry command.
For more information see the [install command]({{< relref "cli#install" >}}).
@y
The hook takes the same arguments as the poetry command.
For more information see the [install command]({{< relref "cli#install" >}}).
@z

@x
## Usage
@y
## Usage
@z

@x
For more information on how to use pre-commit please see the [official documentation](https://pre-commit.com/).
@y
For more information on how to use pre-commit please see the [official documentation](https://pre-commit.com/).
@z

@x
A minimalistic `.pre-commit-config.yaml` example:
@y
A minimalistic `.pre-commit-config.yaml` example:
@z

@x
```yaml
repos:
-   repo: https://github.com/python-poetry/poetry
    rev: ''  # add version here
    hooks:
    -   id: poetry-check
    -   id: poetry-lock
    -   id: poetry-export
    -   id: poetry-install
```
@y
```yaml
repos:
-   repo: https://github.com/python-poetry/poetry
    rev: ''  # add version here
    hooks:
    -   id: poetry-check
    -   id: poetry-lock
    -   id: poetry-export
    -   id: poetry-install
```
@z

@x
A `.pre-commit-config.yaml` example for a monorepo setup or if the `pyproject.toml` file is not in the root directory:
@y
A `.pre-commit-config.yaml` example for a monorepo setup or if the `pyproject.toml` file is not in the root directory:
@z

@x
```yaml
repos:
-   repo: https://github.com/python-poetry/poetry
    rev: ''  # add version here
    hooks:
    -   id: poetry-check
        args: ["-C", "./subdirectory"]
    -   id: poetry-lock
        args: ["-C", "./subdirectory"]
    -   id: poetry-export
        args: ["-C", "./subdirectory", "-f", "requirements.txt", "-o", "./subdirectory/requirements.txt"]
    -   id: poetry-install
        args: ["-C", "./subdirectory"]
```
@y
```yaml
repos:
-   repo: https://github.com/python-poetry/poetry
    rev: ''  # add version here
    hooks:
    -   id: poetry-check
        args: ["-C", "./subdirectory"]
    -   id: poetry-lock
        args: ["-C", "./subdirectory"]
    -   id: poetry-export
        args: ["-C", "./subdirectory", "-f", "requirements.txt", "-o", "./subdirectory/requirements.txt"]
    -   id: poetry-install
        args: ["-C", "./subdirectory"]
```
@z

@x
## FAQ
@y
## FAQ
@z

@x
### Why does `pre-commit autoupdate` not update to the latest version?
@y
### Why does `pre-commit autoupdate` not update to the latest version?
@z

@x
`pre-commit autoupdate` updates the `rev` for each repository defined in your `.pre-commit-config.yaml`
to the latest available tag in the default branch.
@y
`pre-commit autoupdate` updates the `rev` for each repository defined in your `.pre-commit-config.yaml`
to the latest available tag in the default branch.
@z

@x
Poetry follows a branching strategy where the default branch is the active development branch,
and fixes get backported to stable branches. New tags are assigned in these stable branches.
@y
Poetry follows a branching strategy where the default branch is the active development branch,
and fixes get backported to stable branches. New tags are assigned in these stable branches.
@z

@x
`pre-commit` does not support such a branching strategy and has decided to not implement
an option, either on the [user's side](https://github.com/pre-commit/pre-commit/issues/2512)
or the [hook author's side](https://github.com/pre-commit/pre-commit/issues/2508), to define a branch for looking
up the latest available tag.
@y
`pre-commit` does not support such a branching strategy and has decided to not implement
an option, either on the [user's side](https://github.com/pre-commit/pre-commit/issues/2512)
or the [hook author's side](https://github.com/pre-commit/pre-commit/issues/2508), to define a branch for looking
up the latest available tag.
@z

@x
Thus, `pre-commit autoupdate` is not usable for the hooks described here.
@y
Thus, `pre-commit autoupdate` is not usable for the hooks described here.
@z

@x
You can avoid changing the `rev` to an unexpected value by using the `--repo` parameter (may be specified multiple
times), to explicitly list repositories that should be updated. An option to explicitly exclude
repositories [will not be implemented](https://github.com/pre-commit/pre-commit/issues/1959) into `pre-commit`.
@y
You can avoid changing the `rev` to an unexpected value by using the `--repo` parameter (may be specified multiple
times), to explicitly list repositories that should be updated. An option to explicitly exclude
repositories [will not be implemented](https://github.com/pre-commit/pre-commit/issues/1959) into `pre-commit`.
@z
