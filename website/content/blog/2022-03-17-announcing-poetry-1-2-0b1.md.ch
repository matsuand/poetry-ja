%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.2.0b1"
date: 2022-03-17 00:00:00
categories: ["releases"]
tags: ["1.x", "1.2"]
---
@y
---
layout: single
title: "Announcing Poetry 1.2.0b1"
date: 2022-03-17 00:00:00
categories: ["releases"]
tags: ["1.x", "1.2"]
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0b1**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0b1**.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
If you have a previous version of Poetry installed via the [official installer]({{< relref "docs/#installation" >}}),
getting Poetry **1.2.0b1** is as easy as:
@y
If you have a previous version of Poetry installed via the [official installer]({{< relref "docs/#installation" >}}),
getting Poetry **1.2.0b1** is as easy as:
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
## Drop python 3.6 support
@y
## Drop python 3.6 support
@z

@x
Python 3.6 has reached its end of life. So we dropped support for running Poetry with Python 3.6.
@y
Python 3.6 has reached its end of life. So we dropped support for running Poetry with Python 3.6.
@z

@x
However, handling projects that require Python <=3.6 is still possible.
@y
However, handling projects that require Python <=3.6 is still possible.
@z

@x
## Detect current activated Python
@y
## Detect current activated Python
@z

@x
With the new installer script `install-poetry.py` it was no longer possible to select the Python version used for
creating virtual environments by switching the currently activated Python with tools like `pyenv`.
@y
With the new installer script `install-poetry.py` it was no longer possible to select the Python version used for
creating virtual environments by switching the currently activated Python with tools like `pyenv`.
@z

@x
Poetry now provides a new experimental option `virtualenvs.prefer-active-python`. Once set to `true`, Poetry tries
to detect the currently activated Python executable when creating a new environment. This should work regardless of the chosen
installation method of Poetry.
@y
Poetry now provides a new experimental option `virtualenvs.prefer-active-python`. Once set to `true`, Poetry tries
to detect the currently activated Python executable when creating a new environment. This should work regardless of the chosen
installation method of Poetry.
@z

@x
## Deleting multiple environments at once
@y
## Deleting multiple environments at once
@z

@x
If a project had multiple associated virtual environments, it was not possible to delete more than one at a time.
@y
If a project had multiple associated virtual environments, it was not possible to delete more than one at a time.
@z

@x
`poetry env remove` now accepts a list of python executables to remove multiple environments.
@y
`poetry env remove` now accepts a list of python executables to remove multiple environments.
@z

@x
Removing all known environments is now possible by applying the new `--all` parameter.
@y
Removing all known environments is now possible by applying the new `--all` parameter.
@z

@x
## Configure the number of parallel processes
@y
## Configure the number of parallel processes
@z

@x
`poetry install` executes operations in parallel. The default number of parallel processes is `number_of_cores + 4`.
It is now possible to limit the number of parallel processes by using the option `installer.max-workers`.
@y
`poetry install` executes operations in parallel. The default number of parallel processes is `number_of_cores + 4`.
It is now possible to limit the number of parallel processes by using the option `installer.max-workers`.
@z
