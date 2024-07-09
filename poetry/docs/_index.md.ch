%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
title: "Introduction"
draft: false
type: docs
layout: "single"
@y
---
title: "はじめに"
draft: false
type: docs
layout: "single"
@z

@x
# Introduction
@y
# はじめに {#introduction}
@z

@x
Poetry is a tool for **dependency management** and **packaging** in Python.
It allows you to declare the libraries your project depends on and it will manage (install/update) them for you.
Poetry offers a lockfile to ensure repeatable installs, and can build your project for distribution.
@y
Poetry is a tool for **dependency management** and **packaging** in Python.
It allows you to declare the libraries your project depends on and it will manage (install/update) them for you.
Poetry offers a lockfile to ensure repeatable installs, and can build your project for distribution.
@z

@x
## System requirements
@y
## システム要件 {#system-requirements}
@z

@x
Poetry requires **Python 3.8+**. It is multi-platform and the goal is to make it work equally well
on Linux, macOS and Windows.
@y
Poetry requires **Python 3.8+**. It is multi-platform and the goal is to make it work equally well
on Linux, macOS and Windows.
@z

@x
## Installation
@y
## インストール {#installation}
@z

@x
{{% warning %}}
Poetry should always be installed in a dedicated virtual environment to isolate it from the rest of your system.
It should in no case be installed in the environment of the project that is to be managed by Poetry.
This ensures that Poetry's own dependencies will not be accidentally upgraded or uninstalled.
(Each of the following installation methods ensures that Poetry is installed into an isolated environment.)
In addition, the isolated virtual environment in which poetry is installed should not be activated for running poetry commands.
{{% /warning %}}
@y
{{% warning %}}
Poetry should always be installed in a dedicated virtual environment to isolate it from the rest of your system.
It should in no case be installed in the environment of the project that is to be managed by Poetry.
This ensures that Poetry's own dependencies will not be accidentally upgraded or uninstalled.
(Each of the following installation methods ensures that Poetry is installed into an isolated environment.)
In addition, the isolated virtual environment in which poetry is installed should not be activated for running poetry commands.
{{% /warning %}}
@z

@x
{{% note %}}
If you are viewing documentation for the development branch, you may wish to install a preview or development version of Poetry.
See the **advanced** installation instructions to use a preview or alternate version of Poetry.
{{% /note %}}
@y
{{% note %}}
If you are viewing documentation for the development branch, you may wish to install a preview or development version of Poetry.
See the **advanced** installation instructions to use a preview or alternate version of Poetry.
{{% /note %}}
@z

@x
{{< tabs tabTotal="4" tabID1="installing-with-pipx" tabID2="installing-with-the-official-installer" tabID3="installing-manually" tabID4="ci-recommendations" tabName1="With pipx" tabName2="With the official installer" tabName3="Manually (advanced)" tabName4="CI recommendations">}}
@y
{{< tabs tabTotal="4" tabID1="installing-with-pipx" tabID2="installing-with-the-official-installer" tabID3="installing-manually" tabID4="ci-recommendations" tabName1="With pipx" tabName2="With the official installer" tabName3="Manually (advanced)" tabName4="CI recommendations">}}
@z

@x
{{< tab tabID="installing-with-pipx" >}}
@y
{{< tab tabID="installing-with-pipx" >}}
@z

@x
[`pipx`](https://github.com/pypa/pipx) is used to install Python CLI applications globally while still isolating them in virtual environments.
`pipx` will manage upgrades and uninstalls when used to install Poetry.
@y
[`pipx`](https://github.com/pypa/pipx) is used to install Python CLI applications globally while still isolating them in virtual environments.
`pipx` will manage upgrades and uninstalls when used to install Poetry.
@z

@x
{{< steps >}}
{{< step >}}
@y
{{< steps >}}
{{< step >}}
@z

@x
**Install pipx**
@y
**Install pipx**
@z

@x
If `pipx` is not already installed, you can follow any of the options in the
[official pipx installation instructions](https://pipx.pypa.io/stable/installation/).
Any non-ancient version of `pipx` will do.
@y
If `pipx` is not already installed, you can follow any of the options in the
[official pipx installation instructions](https://pipx.pypa.io/stable/installation/).
Any non-ancient version of `pipx` will do.
@z

@x
{{< /step >}}
{{< step >}}
@y
{{< /step >}}
{{< step >}}
@z

@x
**Install Poetry**
@y
**Install Poetry**
@z

@x
```bash
pipx install poetry
```
@y
```bash
pipx install poetry
```
@z

@x
{{< /step >}}
{{< step >}}
@y
{{< /step >}}
{{< step >}}
@z

@x
**Install Poetry (advanced)**
@y
**Install Poetry (advanced)**
@z

@x
{{% note %}}
You can skip this step, if you simply want the latest version and already installed Poetry as described in the
previous step. This step details advanced usages of this installation method. For example, installing Poetry from
source, having multiple versions installed at the same time etc.
{{% /note %}}
@y
{{% note %}}
You can skip this step, if you simply want the latest version and already installed Poetry as described in the
previous step. This step details advanced usages of this installation method. For example, installing Poetry from
source, having multiple versions installed at the same time etc.
{{% /note %}}
@z

@x
`pipx` can install different versions of Poetry, using the same syntax as pip:
@y
`pipx` can install different versions of Poetry, using the same syntax as pip:
@z

@x
```bash
pipx install poetry==1.2.0
```
@y
```bash
pipx install poetry==1.2.0
```
@z

@x
`pipx` can also install versions of Poetry in parallel, which allows for easy testing of alternate or prerelease
versions. Each version is given a unique, user-specified suffix, which will be used to create a unique binary name:
@y
`pipx` can also install versions of Poetry in parallel, which allows for easy testing of alternate or prerelease
versions. Each version is given a unique, user-specified suffix, which will be used to create a unique binary name:
@z

@x
```bash
pipx install --suffix=@1.2.0 poetry==1.2.0
poetry@1.2.0 --version
```
@y
```bash
pipx install --suffix=@1.2.0 poetry==1.2.0
poetry@1.2.0 --version
```
@z

@x
```bash
pipx install --suffix=@preview --pip-args=--pre poetry
poetry@preview --version
```
@y
```bash
pipx install --suffix=@preview --pip-args=--pre poetry
poetry@preview --version
```
@z

@x
Finally, `pipx` can install any valid [pip requirement spec](https://pip.pypa.io/en/stable/cli/pip_install/), which
allows for installations of the development version from `git`, or even for local testing of pull requests:
@y
Finally, `pipx` can install any valid [pip requirement spec](https://pip.pypa.io/en/stable/cli/pip_install/), which
allows for installations of the development version from `git`, or even for local testing of pull requests:
@z

@x
```bash
pipx install --suffix @main git+https://github.com/python-poetry/poetry.git@main
pipx install --suffix @pr1234 git+https://github.com/python-poetry/poetry.git@refs/pull/1234/head
```
@y
```bash
pipx install --suffix @main git+https://github.com/python-poetry/poetry.git@main
pipx install --suffix @pr1234 git+https://github.com/python-poetry/poetry.git@refs/pull/1234/head
```
@z

@x
{{< /step >}}
{{< step >}}
@y
{{< /step >}}
{{< step >}}
@z

@x
**Update Poetry**
@y
**Update Poetry**
@z

@x
```bash
pipx upgrade poetry
```
{{< /step >}}
{{< step >}}
**Uninstall Poetry**
@y
```bash
pipx upgrade poetry
```
{{< /step >}}
{{< step >}}
**Uninstall Poetry**
@z

@x
```bash
pipx uninstall poetry
```
{{< /step >}}
{{< /steps >}}
@y
```bash
pipx uninstall poetry
```
{{< /step >}}
{{< /steps >}}
@z

@x
{{< /tab >}}
{{< tab tabID="installing-with-the-official-installer" >}}
@y
{{< /tab >}}
{{< tab tabID="installing-with-the-official-installer" >}}
@z

@x
We provide a custom installer that will install Poetry in a new virtual environment
and allows Poetry to manage its own environment.
@y
We provide a custom installer that will install Poetry in a new virtual environment
and allows Poetry to manage its own environment.
@z

@x
{{< steps >}}
{{< step >}}
**Install Poetry**
@y
{{< steps >}}
{{< step >}}
**Install Poetry**
@z

@x
The installer script is available directly at [install.python-poetry.org](https://install.python-poetry.org),
and is developed in [its own repository](https://github.com/python-poetry/install.python-poetry.org).
The script can be executed directly (i.e. 'curl python') or downloaded and then executed from disk
(e.g. in a CI environment).
@y
The installer script is available directly at [install.python-poetry.org](https://install.python-poetry.org),
and is developed in [its own repository](https://github.com/python-poetry/install.python-poetry.org).
The script can be executed directly (i.e. 'curl python') or downloaded and then executed from disk
(e.g. in a CI environment).
@z

@x
{{% warning %}}
The `install-poetry.py` installer has been deprecated and removed from the Poetry repository.
Please migrate from the in-tree version to the standalone version described above.
{{% /warning %}}
@y
{{% warning %}}
The `install-poetry.py` installer has been deprecated and removed from the Poetry repository.
Please migrate from the in-tree version to the standalone version described above.
{{% /warning %}}
@z

@x
**Linux, macOS, Windows (WSL)**
@y
**Linux, macOS, Windows (WSL)**
@z

@x
```bash
curl -sSL https://install.python-poetry.org | python3 -
```
@y
```bash
curl -sSL https://install.python-poetry.org | python3 -
```
@z

@x
{{% note %}}
Note: On some systems, `python` may still refer to Python 2 instead of Python 3. We always suggest the
`python3` binary to avoid ambiguity.
{{% /note %}}
@y
{{% note %}}
Note: On some systems, `python` may still refer to Python 2 instead of Python 3. We always suggest the
`python3` binary to avoid ambiguity.
{{% /note %}}
@z

@x
**Windows (Powershell)**
```powershell
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -
```
@y
**Windows (Powershell)**
```powershell
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -
```
@z

@x
{{% note %}}
If you have installed Python through the Microsoft Store, replace `py` with `python` in the command
above.
{{% /note %}}
@y
{{% note %}}
If you have installed Python through the Microsoft Store, replace `py` with `python` in the command
above.
{{% /note %}}
@z

@x
{{< /step >}}
{{< step >}}
**Install Poetry (advanced)**
@y
{{< /step >}}
{{< step >}}
**Install Poetry (advanced)**
@z

@x
{{% note %}}
You can skip this step, if you simply want the latest version and already installed Poetry as described in the
previous step. This step details advanced usages of this installation method. For example, installing Poetry from
source, using a pre-release build, configuring a different installation location etc.
{{% /note %}}
@y
{{% note %}}
You can skip this step, if you simply want the latest version and already installed Poetry as described in the
previous step. This step details advanced usages of this installation method. For example, installing Poetry from
source, using a pre-release build, configuring a different installation location etc.
{{% /note %}}
@z

@x
By default, Poetry is installed into a platform and user-specific directory:
@y
By default, Poetry is installed into a platform and user-specific directory:
@z

@x
- `~/Library/Application Support/pypoetry` on macOS.
- `~/.local/share/pypoetry` on Linux/Unix.
- `%APPDATA%\pypoetry` on Windows.
@y
- `~/Library/Application Support/pypoetry` on macOS.
- `~/.local/share/pypoetry` on Linux/Unix.
- `%APPDATA%\pypoetry` on Windows.
@z

@x
If you wish to change this, you may define the `$POETRY_HOME` environment variable:
@y
If you wish to change this, you may define the `$POETRY_HOME` environment variable:
@z

@x
```bash
curl -sSL https://install.python-poetry.org | POETRY_HOME=/etc/poetry python3 -
```
@y
```bash
curl -sSL https://install.python-poetry.org | POETRY_HOME=/etc/poetry python3 -
```
@z

@x
If you want to install prerelease versions, you can do so by passing the `--preview` option to the installation script
or by using the `$POETRY_PREVIEW` environment variable:
@y
If you want to install prerelease versions, you can do so by passing the `--preview` option to the installation script
or by using the `$POETRY_PREVIEW` environment variable:
@z

@x
```bash
curl -sSL https://install.python-poetry.org | python3 - --preview
curl -sSL https://install.python-poetry.org | POETRY_PREVIEW=1 python3 -
```
@y
```bash
curl -sSL https://install.python-poetry.org | python3 - --preview
curl -sSL https://install.python-poetry.org | POETRY_PREVIEW=1 python3 -
```
@z

@x
Similarly, if you want to install a specific version, you can use `--version` option or the `$POETRY_VERSION`
environment variable:
@y
Similarly, if you want to install a specific version, you can use `--version` option or the `$POETRY_VERSION`
environment variable:
@z

@x
```bash
curl -sSL https://install.python-poetry.org | python3 - --version 1.2.0
curl -sSL https://install.python-poetry.org | POETRY_VERSION=1.2.0 python3 -
```
@y
```bash
curl -sSL https://install.python-poetry.org | python3 - --version 1.2.0
curl -sSL https://install.python-poetry.org | POETRY_VERSION=1.2.0 python3 -
```
@z

@x
You can also install Poetry from a `git` repository by using the `--git` option:
@y
You can also install Poetry from a `git` repository by using the `--git` option:
@z

@x
```bash
curl -sSL https://install.python-poetry.org | python3 - --git https://github.com/python-poetry/poetry.git@main
````
If you want to install different versions of Poetry in parallel, a good approach is the installation with pipx and suffix.
@y
```bash
curl -sSL https://install.python-poetry.org | python3 - --git https://github.com/python-poetry/poetry.git@main
````
If you want to install different versions of Poetry in parallel, a good approach is the installation with pipx and suffix.
@z

@x
{{< /step >}}
{{< step >}}
**Add Poetry to your PATH**
@y
{{< /step >}}
{{< step >}}
**Add Poetry to your PATH**
@z

@x
The installer creates a `poetry` wrapper in a well-known, platform-specific directory:
@y
The installer creates a `poetry` wrapper in a well-known, platform-specific directory:
@z

@x
- `$HOME/.local/bin` on Unix.
- `%APPDATA%\Python\Scripts` on Windows.
- `$POETRY_HOME/bin` if `$POETRY_HOME` is set.
@y
- `$HOME/.local/bin` on Unix.
- `%APPDATA%\Python\Scripts` on Windows.
- `$POETRY_HOME/bin` if `$POETRY_HOME` is set.
@z

@x
If this directory is not present in your `$PATH`, you can add it in order to invoke Poetry
as `poetry`.
@y
If this directory is not present in your `$PATH`, you can add it in order to invoke Poetry
as `poetry`.
@z

@x
Alternatively, the full path to the `poetry` binary can always be used:
@y
Alternatively, the full path to the `poetry` binary can always be used:
@z

@x
- `~/Library/Application Support/pypoetry/venv/bin/poetry` on macOS.
- `~/.local/share/pypoetry/venv/bin/poetry` on Linux/Unix.
- `%APPDATA%\pypoetry\venv\Scripts\poetry` on Windows.
- `$POETRY_HOME/venv/bin/poetry` if `$POETRY_HOME` is set.
@y
- `~/Library/Application Support/pypoetry/venv/bin/poetry` on macOS.
- `~/.local/share/pypoetry/venv/bin/poetry` on Linux/Unix.
- `%APPDATA%\pypoetry\venv\Scripts\poetry` on Windows.
- `$POETRY_HOME/venv/bin/poetry` if `$POETRY_HOME` is set.
@z

@x
{{< /step >}}
{{< step >}}
**Use Poetry**
@y
{{< /step >}}
{{< step >}}
**Use Poetry**
@z

@x
Once Poetry is installed and in your `$PATH`, you can execute the following:
@y
Once Poetry is installed and in your `$PATH`, you can execute the following:
@z

@x
```bash
poetry --version
```
@y
```bash
poetry --version
```
@z

@x
If you see something like `Poetry (version 1.2.0)`, your installation is ready to use!
{{< /step >}}
{{< step >}}
**Update Poetry**
@y
If you see something like `Poetry (version 1.2.0)`, your installation is ready to use!
{{< /step >}}
{{< step >}}
**Update Poetry**
@z

@x
Poetry is able to update itself when installed using the official installer.
@y
Poetry is able to update itself when installed using the official installer.
@z

@x
{{% warning %}}
Especially on Windows, `self update` may be problematic
so that a re-install with the installer should be preferred.
{{% /warning %}}
@y
{{% warning %}}
Especially on Windows, `self update` may be problematic
so that a re-install with the installer should be preferred.
{{% /warning %}}
@z

@x
```bash
poetry self update
```
@y
```bash
poetry self update
```
@z

@x
If you want to install pre-release versions, you can use the `--preview` option.
@y
If you want to install pre-release versions, you can use the `--preview` option.
@z

@x
```bash
poetry self update --preview
```
@y
```bash
poetry self update --preview
```
@z

@x
And finally, if you want to install a specific version, you can pass it as an argument
to `self update`.
@y
And finally, if you want to install a specific version, you can pass it as an argument
to `self update`.
@z

@x
```bash
poetry self update 1.2.0
```
@y
```bash
poetry self update 1.2.0
```
@z

@x
{{% warning %}}
Poetry `1.1` series releases are not able to update in-place to `1.2` or newer series releases.
To migrate to newer releases, uninstall using your original install method, and then reinstall
using the [methods above]({{< ref "#installation" >}} "Installation").
{{% /warning %}}
{{< /step >}}
{{< step >}}
**Uninstall Poetry**
@y
{{% warning %}}
Poetry `1.1` series releases are not able to update in-place to `1.2` or newer series releases.
To migrate to newer releases, uninstall using your original install method, and then reinstall
using the [methods above]({{< ref "#installation" >}} "Installation").
{{% /warning %}}
{{< /step >}}
{{< step >}}
**Uninstall Poetry**
@z

@x
If you decide Poetry isn't your thing, you can completely remove it from your system
by running the installer again with the `--uninstall` option or by setting
the `POETRY_UNINSTALL` environment variable before executing the installer.
@y
If you decide Poetry isn't your thing, you can completely remove it from your system
by running the installer again with the `--uninstall` option or by setting
the `POETRY_UNINSTALL` environment variable before executing the installer.
@z

@x
```bash
curl -sSL https://install.python-poetry.org | python3 - --uninstall
curl -sSL https://install.python-poetry.org | POETRY_UNINSTALL=1 python3 -
```
@y
```bash
curl -sSL https://install.python-poetry.org | python3 - --uninstall
curl -sSL https://install.python-poetry.org | POETRY_UNINSTALL=1 python3 -
```
@z

@x
{{% warning %}}
If you installed using the deprecated `get-poetry.py` script, you should remove the path it uses manually, e.g.
@y
{{% warning %}}
If you installed using the deprecated `get-poetry.py` script, you should remove the path it uses manually, e.g.
@z

@x
```bash
rm -rf "${POETRY_HOME:-~/.poetry}"
```
@y
```bash
rm -rf "${POETRY_HOME:-~/.poetry}"
```
@z

@x
Also remove ~/.poetry/bin from your `$PATH` in your shell configuration, if it is present.
{{% /warning %}}
@y
Also remove ~/.poetry/bin from your `$PATH` in your shell configuration, if it is present.
{{% /warning %}}
@z

@x
{{< /step >}}
{{< /steps >}}
@y
{{< /step >}}
{{< /steps >}}
@z

@x
{{< /tab >}}
{{< tab tabID="installing-manually" >}}
@y
{{< /tab >}}
{{< tab tabID="installing-manually" >}}
@z

@x
Poetry can be installed manually using `pip` and the `venv` module. By doing so you will essentially perform the steps carried
out by the official installer. As this is an advanced installation method, these instructions are Unix-only and omit specific
examples such as installing from `git`.
@y
Poetry can be installed manually using `pip` and the `venv` module. By doing so you will essentially perform the steps carried
out by the official installer. As this is an advanced installation method, these instructions are Unix-only and omit specific
examples such as installing from `git`.
@z

@x
The variable `$VENV_PATH` will be used to indicate the path at which the virtual environment was created.
@y
The variable `$VENV_PATH` will be used to indicate the path at which the virtual environment was created.
@z

@x
```bash
python3 -m venv $VENV_PATH
$VENV_PATH/bin/pip install -U pip setuptools
$VENV_PATH/bin/pip install poetry
```
@y
```bash
python3 -m venv $VENV_PATH
$VENV_PATH/bin/pip install -U pip setuptools
$VENV_PATH/bin/pip install poetry
```
@z

@x
Poetry will be available at `$VENV_PATH/bin/poetry` and can be invoked directly or symlinked elsewhere.
@y
Poetry will be available at `$VENV_PATH/bin/poetry` and can be invoked directly or symlinked elsewhere.
@z

@x
To uninstall Poetry, simply delete the entire `$VENV_PATH` directory.
@y
To uninstall Poetry, simply delete the entire `$VENV_PATH` directory.
@z

@x
{{< /tab >}}
{{< tab tabID="ci-recommendations" >}}
Unlike development environments, where making use of the latest tools is desirable, in a CI environment reproducibility
should be made the priority. Here are some suggestions for installing Poetry in such an environment.
@y
{{< /tab >}}
{{< tab tabID="ci-recommendations" >}}
Unlike development environments, where making use of the latest tools is desirable, in a CI environment reproducibility
should be made the priority. Here are some suggestions for installing Poetry in such an environment.
@z

@x
**Version pinning**
@y
**Version pinning**
@z

@x
Whatever method you use, it is highly recommended to explicitly control the version of Poetry used, so that you are able
to upgrade after performing your own validation. Each install method has a different syntax for setting the version that
is used in the following examples.
@y
Whatever method you use, it is highly recommended to explicitly control the version of Poetry used, so that you are able
to upgrade after performing your own validation. Each install method has a different syntax for setting the version that
is used in the following examples.
@z

@x
**Using pipx**
@y
**Using pipx**
@z

@x
Just as `pipx` is a powerful tool for development use, it is equally useful in a CI environment
and should be one of your top choices for use of Poetry in CI.
@y
Just as `pipx` is a powerful tool for development use, it is equally useful in a CI environment
and should be one of your top choices for use of Poetry in CI.
@z

@x
```bash
pipx install poetry==1.2.0
```
@y
```bash
pipx install poetry==1.2.0
```
@z

@x
**Using install.python-poetry.org**
@y
**Using install.python-poetry.org**
@z

@x
{{% note %}}
The official installer script ([install.python-poetry.org](https://install.python-poetry.org)) offers a streamlined and
simplified installation of Poetry, sufficient for developer use or for simple pipelines. However, in a CI environment
the other two supported installation methods (pipx and manual) should be seriously considered.
{{% /note %}}
@y
{{% note %}}
The official installer script ([install.python-poetry.org](https://install.python-poetry.org)) offers a streamlined and
simplified installation of Poetry, sufficient for developer use or for simple pipelines. However, in a CI environment
the other two supported installation methods (pipx and manual) should be seriously considered.
{{% /note %}}
@z

@x
Downloading a copy of the installer script to a place accessible by your CI pipelines (or maintaining a copy of the
[repository](https://github.com/python-poetry/install.python-poetry.org)) is strongly suggested, to ensure your
pipeline's stability and to maintain control over what code is executed.
@y
Downloading a copy of the installer script to a place accessible by your CI pipelines (or maintaining a copy of the
[repository](https://github.com/python-poetry/install.python-poetry.org)) is strongly suggested, to ensure your
pipeline's stability and to maintain control over what code is executed.
@z

@x
By default, the installer will install to a user-specific directory. In more complex pipelines that may make accessing
Poetry difficult (especially in cases like multi-stage container builds). It is highly suggested to make use of
`$POETRY_HOME` when using the official installer in CI, as that way the exact paths can be controlled.
@y
By default, the installer will install to a user-specific directory. In more complex pipelines that may make accessing
Poetry difficult (especially in cases like multi-stage container builds). It is highly suggested to make use of
`$POETRY_HOME` when using the official installer in CI, as that way the exact paths can be controlled.
@z

@x
```bash
export POETRY_HOME=/opt/poetry
python3 install-poetry.py --version 1.2.0
$POETRY_HOME/bin/poetry --version
```
@y
```bash
export POETRY_HOME=/opt/poetry
python3 install-poetry.py --version 1.2.0
$POETRY_HOME/bin/poetry --version
```
@z

@x
**Using pip (aka manually)**
@y
**Using pip (aka manually)**
@z

@x
For maximum control in your CI environment, installation with `pip` is fully supported and something you should
consider. While this requires more explicit commands and knowledge of Python packaging from you, it in return offers the
best debugging experience, and leaves you subject to the fewest external tools.
@y
For maximum control in your CI environment, installation with `pip` is fully supported and something you should
consider. While this requires more explicit commands and knowledge of Python packaging from you, it in return offers the
best debugging experience, and leaves you subject to the fewest external tools.
@z

@x
```bash
export POETRY_HOME=/opt/poetry
python3 -m venv $POETRY_HOME
$POETRY_HOME/bin/pip install poetry==1.2.0
$POETRY_HOME/bin/poetry --version
```
@y
```bash
export POETRY_HOME=/opt/poetry
python3 -m venv $POETRY_HOME
$POETRY_HOME/bin/pip install poetry==1.2.0
$POETRY_HOME/bin/poetry --version
```
@z

@x
{{% note %}}
If you install Poetry via `pip`, ensure you have Poetry installed into an isolated environment that is **not the same**
as the target environment managed by Poetry. If Poetry and your project are installed into the same environment, Poetry
is likely to upgrade or uninstall its own dependencies (causing hard-to-debug and understand errors).
{{% /note %}}
@y
{{% note %}}
If you install Poetry via `pip`, ensure you have Poetry installed into an isolated environment that is **not the same**
as the target environment managed by Poetry. If Poetry and your project are installed into the same environment, Poetry
is likely to upgrade or uninstall its own dependencies (causing hard-to-debug and understand errors).
{{% /note %}}
@z

@x
{{< /tab >}}
{{< /tabs >}}
@y
{{< /tab >}}
{{< /tabs >}}
@z

@x
## Enable tab completion for Bash, Fish, or Zsh
@y
## Enable tab completion for Bash, Fish, or Zsh
@z

@x
`poetry` supports generating completion scripts for Bash, Fish, and Zsh.
See `poetry help completions` for full details, but the gist is as simple as using one of the following:
@y
`poetry` supports generating completion scripts for Bash, Fish, and Zsh.
See `poetry help completions` for full details, but the gist is as simple as using one of the following:
@z

@x
### Bash
@y
### Bash
@z

@x
#### Auto-loaded (recommended)
@y
#### Auto-loaded (recommended)
@z

@x
```bash
poetry completions bash >> ~/.bash_completion
```
@y
```bash
poetry completions bash >> ~/.bash_completion
```
@z

@x
#### Lazy-loaded
@y
#### Lazy-loaded
@z

@x
```bash
poetry completions bash > ${XDG_DATA_HOME:-~/.local/share}/bash-completion/completions/poetry
```
@y
```bash
poetry completions bash > ${XDG_DATA_HOME:-~/.local/share}/bash-completion/completions/poetry
```
@z

@x
### Fish
@y
### Fish
@z

@x
```fish
poetry completions fish > ~/.config/fish/completions/poetry.fish
```
@y
```fish
poetry completions fish > ~/.config/fish/completions/poetry.fish
```
@z

@x
### Zsh
@y
### Zsh
@z

@x
```zsh
poetry completions zsh > ~/.zfunc/_poetry
```
@y
```zsh
poetry completions zsh > ~/.zfunc/_poetry
```
@z

@x
You must then add the following lines in your `~/.zshrc`, if they do not already exist:
@y
You must then add the following lines in your `~/.zshrc`, if they do not already exist:
@z

@x
```bash
fpath+=~/.zfunc
autoload -Uz compinit && compinit
```
@y
```bash
fpath+=~/.zfunc
autoload -Uz compinit && compinit
```
@z

@x
#### Oh My Zsh
@y
#### Oh My Zsh
@z

@x
```zsh
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
```
You must then add `poetry` to your plugins array in `~/.zshrc`:
@y
```zsh
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
```
You must then add `poetry` to your plugins array in `~/.zshrc`:
@z

@x
```text
plugins(
	poetry
	...
	)
```
@y
```text
plugins(
	poetry
	...
	)
```
@z

@x
#### prezto
@y
#### prezto
@z

@x
```zsh
poetry completions zsh > ~/.zprezto/modules/completion/external/src/_poetry
```
@y
```zsh
poetry completions zsh > ~/.zprezto/modules/completion/external/src/_poetry
```
@z

@x
{{% note %}}
You may need to restart your shell in order for these changes to take effect.
{{% /note %}}
@y
{{% note %}}
You may need to restart your shell in order for these changes to take effect.
{{% /note %}}
@z
