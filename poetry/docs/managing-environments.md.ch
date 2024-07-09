%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
title: "Managing environments"
draft: false
type: docs
layout: "docs"
@y
---
title: "Managing environments"
draft: false
type: docs
layout: "docs"
@z

@x
menu:
  docs:
    weight: 60
---
@y
menu:
  docs:
    weight: 60
---
@z

@x
# Managing environments
@y
# Managing environments
@z

@x
Poetry makes project environment isolation one of its core features.
@y
Poetry makes project environment isolation one of its core features.
@z

@x
What this means is that it will always work isolated from your global Python installation.
To achieve this, it will first check if it's currently running inside a virtual environment.
If it is, it will use it directly without creating a new one. But if it's not, it will use
one that it has already created or create a brand new one for you.
@y
What this means is that it will always work isolated from your global Python installation.
To achieve this, it will first check if it's currently running inside a virtual environment.
If it is, it will use it directly without creating a new one. But if it's not, it will use
one that it has already created or create a brand new one for you.
@z

@x
By default, Poetry will try to use the Python version used during Poetry's installation
to create the virtual environment for the current project.
@y
By default, Poetry will try to use the Python version used during Poetry's installation
to create the virtual environment for the current project.
@z

@x
However, for various reasons, this Python version might not be compatible
with the `python` range supported by the project. In this case, Poetry will try
to find one that is and use it. If it's unable to do so then you will be prompted
to activate one explicitly, see [Switching environments](#switching-between-environments).
@y
However, for various reasons, this Python version might not be compatible
with the `python` range supported by the project. In this case, Poetry will try
to find one that is and use it. If it's unable to do so then you will be prompted
to activate one explicitly, see [Switching environments](#switching-between-environments).
@z

@x
{{% note %}}
If you use a tool like [pyenv](https://github.com/pyenv/pyenv) to manage different Python versions,
you can set the experimental `virtualenvs.prefer-active-python` option to `true`. Poetry
will then try to find the current `python` of your shell.
@y
{{% note %}}
If you use a tool like [pyenv](https://github.com/pyenv/pyenv) to manage different Python versions,
you can set the experimental `virtualenvs.prefer-active-python` option to `true`. Poetry
will then try to find the current `python` of your shell.
@z

@x
For instance, if your project requires a newer Python than is available with
your system, a standard workflow would be:
@y
For instance, if your project requires a newer Python than is available with
your system, a standard workflow would be:
@z

@x
```bash
pyenv install 3.9.8
pyenv local 3.9.8  # Activate Python 3.9 for the current project
poetry install
```
@y
```bash
pyenv install 3.9.8
pyenv local 3.9.8  # Activate Python 3.9 for the current project
poetry install
```
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
{{% note %}}
Since version 1.2, Poetry no longer supports managing environments for Python 2.7.
{{% /note %}}
@y
{{% note %}}
Since version 1.2, Poetry no longer supports managing environments for Python 2.7.
{{% /note %}}
@z

@x
## Switching between environments
@y
## Switching between environments
@z

@x
Sometimes this might not be feasible for your system, especially Windows where `pyenv`
is not available, or you simply prefer to have a more explicit control over your environment.
For this specific purpose, you can use the `env use` command to tell Poetry
which Python version to use for the current project.
@y
Sometimes this might not be feasible for your system, especially Windows where `pyenv`
is not available, or you simply prefer to have a more explicit control over your environment.
For this specific purpose, you can use the `env use` command to tell Poetry
which Python version to use for the current project.
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
If you want to disable the explicitly activated virtual environment, you can use the
special `system` Python version to retrieve the default behavior:
@y
If you want to disable the explicitly activated virtual environment, you can use the
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
## Displaying the environment information
@y
## Displaying the environment information
@z

@x
If you want to get basic information about the currently activated virtual environment,
you can use the `env info` command:
@y
If you want to get basic information about the currently activated virtual environment,
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
Base
Platform: darwin
OS:       posix
Python:   /path/to/main/python
```
@y
Base
Platform: darwin
OS:       posix
Python:   /path/to/main/python
```
@z

@x
If you only want to know the path to the virtual environment, you can pass the `--path` option
to `env info`:
@y
If you only want to know the path to the virtual environment, you can pass the `--path` option
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
If you only want to know the path to the python executable (useful for running mypy from a global environment without installing it in the virtual environment), you can pass the `--executable` option
to `env info`:
@y
If you only want to know the path to the python executable (useful for running mypy from a global environment without installing it in the virtual environment), you can pass the `--executable` option
to `env info`:
@z

@x
```bash
poetry env info --executable
```
@y
```bash
poetry env info --executable
```
@z

@x
## Listing the environments associated with the project
@y
## Listing the environments associated with the project
@z

@x
You can also list all the virtual environments associated with the current project
with the `env list` command:
@y
You can also list all the virtual environments associated with the current project
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
test-O3eWbxRl-py3.6
test-O3eWbxRl-py3.7 (Activated)
```
@y
```text
test-O3eWbxRl-py3.6
test-O3eWbxRl-py3.7 (Activated)
```
@z

@x
You can pass the option `--full-path` to display the full path to the environments:
@y
You can pass the option `--full-path` to display the full path to the environments:
@z

@x
```bash
poetry env list --full-path
```
@y
```bash
poetry env list --full-path
```
@z

@x
## Deleting the environments
@y
## Deleting the environments
@z

@x
Finally, you can delete existing virtual environments by using `env remove`:
@y
Finally, you can delete existing virtual environments by using `env remove`:
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
You can delete more than one environment at a time.
@y
You can delete more than one environment at a time.
@z

@x
```bash
poetry env remove python3.6 python3.7 python3.8
```
@y
```bash
poetry env remove python3.6 python3.7 python3.8
```
@z

@x
Use the `--all` option to delete all virtual environments at once.
@y
Use the `--all` option to delete all virtual environments at once.
@z

@x
```bash
poetry env remove --all
```
@y
```bash
poetry env remove --all
```
@z

@x
If you remove the currently activated virtual environment, it will be automatically deactivated.
@y
If you remove the currently activated virtual environment, it will be automatically deactivated.
@z

@x
{{% note %}}
If you use the [`virtualenvs.in-project`]({{< relref "configuration#virtualenvsin-project" >}}) configuration, you
can simply use the command as shown below.
@y
{{% note %}}
If you use the [`virtualenvs.in-project`]({{< relref "configuration#virtualenvsin-project" >}}) configuration, you
can simply use the command as shown below.
@z

@x
```bash
poetry env remove
```
{{% /note %}}
@y
```bash
poetry env remove
```
{{% /note %}}
@z
