%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
title: "Configuration"
draft: false
type: docs
layout: single
@y
---
title: "Configuration"
draft: false
type: docs
layout: single
@z

@x
menu:
  docs:
    weight: 40
---
@y
menu:
  docs:
    weight: 40
---
@z

@x
# Configuration
@y
# Configuration
@z

@x
Poetry can be configured via the `config` command ([see more about its usage here]({{< relref "cli#config" >}} "config command documentation"))
or directly in the `config.toml` file that will be automatically created when you first run that command.
This file can typically be found in one of the following directories:
@y
Poetry can be configured via the `config` command ([see more about its usage here]({{< relref "cli#config" >}} "config command documentation"))
or directly in the `config.toml` file that will be automatically created when you first run that command.
This file can typically be found in one of the following directories:
@z

@x
- macOS:   `~/Library/Application Support/pypoetry`
- Windows: `%APPDATA%\pypoetry`
@y
- macOS:   `~/Library/Application Support/pypoetry`
- Windows: `%APPDATA%\pypoetry`
@z

@x
For Unix, we follow the XDG spec and support `$XDG_CONFIG_HOME`.
That means, by default `~/.config/pypoetry`.
@y
For Unix, we follow the XDG spec and support `$XDG_CONFIG_HOME`.
That means, by default `~/.config/pypoetry`.
@z

@x
## Local configuration
@y
## Local configuration
@z

@x
Poetry also provides the ability to have settings that are specific to a project
by passing the `--local` option to the `config` command.
@y
Poetry also provides the ability to have settings that are specific to a project
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
{{% note %}}
Your local configuration of Poetry application is stored in the `poetry.toml` file,
which is separate from `pyproject.toml`.
{{% /note %}}
@y
{{% note %}}
Your local configuration of Poetry application is stored in the `poetry.toml` file,
which is separate from `pyproject.toml`.
{{% /note %}}
@z

@x
{{% warning %}}
Be mindful about checking in this file into your repository since it may contain user-specific or sensitive information.
{{% /note %}}
@y
{{% warning %}}
Be mindful about checking in this file into your repository since it may contain user-specific or sensitive information.
{{% /note %}}
@z

@x
## Listing the current configuration
@y
## Listing the current configuration
@z

@x
To list the current configuration you can use the `--list` option
of the `config` command:
@y
To list the current configuration you can use the `--list` option
of the `config` command:
@z

@x
```bash
poetry config --list
```
@y
```bash
poetry config --list
```
@z

@x
which will give you something similar to this:
@y
which will give you something similar to this:
@z

@x
```toml
cache-dir = "/path/to/cache/directory"
virtualenvs.create = true
virtualenvs.in-project = null
virtualenvs.options.always-copy = true
virtualenvs.options.no-pip = false
virtualenvs.options.no-setuptools = false
virtualenvs.options.system-site-packages = false
virtualenvs.path = "{cache-dir}/virtualenvs"  # /path/to/cache/directory/virtualenvs
virtualenvs.prefer-active-python = false
virtualenvs.prompt = "{project_name}-py{python_version}"
```
@y
```toml
cache-dir = "/path/to/cache/directory"
virtualenvs.create = true
virtualenvs.in-project = null
virtualenvs.options.always-copy = true
virtualenvs.options.no-pip = false
virtualenvs.options.no-setuptools = false
virtualenvs.options.system-site-packages = false
virtualenvs.path = "{cache-dir}/virtualenvs"  # /path/to/cache/directory/virtualenvs
virtualenvs.prefer-active-python = false
virtualenvs.prompt = "{project_name}-py{python_version}"
```
@z

@x
## Displaying a single configuration setting
@y
## Displaying a single configuration setting
@z

@x
If you want to see the value of a specific setting, you can
give its name to the `config` command
@y
If you want to see the value of a specific setting, you can
give its name to the `config` command
@z

@x
```bash
poetry config virtualenvs.path
```
@y
```bash
poetry config virtualenvs.path
```
@z

@x
For a full list of the supported settings see [Available settings](#available-settings).
@y
For a full list of the supported settings see [Available settings](#available-settings).
@z

@x
## Adding or updating a configuration setting
@y
## Adding or updating a configuration setting
@z

@x
To change or otherwise add a new configuration setting, you can pass
a value after the setting's name:
@y
To change or otherwise add a new configuration setting, you can pass
a value after the setting's name:
@z

@x
```bash
poetry config virtualenvs.path /path/to/cache/directory/virtualenvs
```
@y
```bash
poetry config virtualenvs.path /path/to/cache/directory/virtualenvs
```
@z

@x
For a full list of the supported settings see [Available settings](#available-settings).
@y
For a full list of the supported settings see [Available settings](#available-settings).
@z

@x
## Removing a specific setting
@y
## Removing a specific setting
@z

@x
If you want to remove a previously set setting, you can use the `--unset` option:
@y
If you want to remove a previously set setting, you can use the `--unset` option:
@z

@x
```bash
poetry config virtualenvs.path --unset
```
@y
```bash
poetry config virtualenvs.path --unset
```
@z

@x
The setting will then retrieve its default value.
@y
The setting will then retrieve its default value.
@z

@x
## Using environment variables
@y
## Using environment variables
@z

@x
Sometimes, in particular when using Poetry with CI tools, it's easier
to use environment variables and not have to execute configuration commands.
@y
Sometimes, in particular when using Poetry with CI tools, it's easier
to use environment variables and not have to execute configuration commands.
@z

@x
Poetry supports this and any setting can be set by using environment variables.
@y
Poetry supports this and any setting can be set by using environment variables.
@z

@x
The environment variables must be prefixed by `POETRY_` and are comprised of the uppercase
name of the setting and with dots and dashes replaced by underscore, here is an example:
@y
The environment variables must be prefixed by `POETRY_` and are comprised of the uppercase
name of the setting and with dots and dashes replaced by underscore, here is an example:
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
## Default Directories
@y
## Default Directories
@z

@x
Poetry uses the following default directories:
@y
Poetry uses the following default directories:
@z

@x
### Config Directory
@y
### Config Directory
@z

@x
- Linux: `$XDG_CONFIG_HOME/pypoetry` or `~/.config/pypoetry`
- Windows: `%APPDATA%\pypoetry`
- macOS: `~/Library/Application Support/pypoetry`
@y
- Linux: `$XDG_CONFIG_HOME/pypoetry` or `~/.config/pypoetry`
- Windows: `%APPDATA%\pypoetry`
- macOS: `~/Library/Application Support/pypoetry`
@z

@x
You can override the Config directory by setting the `POETRY_CONFIG_DIR` environment variable.
@y
You can override the Config directory by setting the `POETRY_CONFIG_DIR` environment variable.
@z

@x
### Data Directory
@y
### Data Directory
@z

@x
- Linux: `$XDG_DATA_HOME/pypoetry` or `~/.local/share/pypoetry`
- Windows: `%APPDATA%\pypoetry`
- macOS: `~/Library/Application Support/pypoetry`
@y
- Linux: `$XDG_DATA_HOME/pypoetry` or `~/.local/share/pypoetry`
- Windows: `%APPDATA%\pypoetry`
- macOS: `~/Library/Application Support/pypoetry`
@z

@x
You can override the Data directory by setting the `POETRY_DATA_DIR` or `POETRY_HOME` environment variables. If `POETRY_HOME` is set, it will be given higher priority.
@y
You can override the Data directory by setting the `POETRY_DATA_DIR` or `POETRY_HOME` environment variables. If `POETRY_HOME` is set, it will be given higher priority.
@z

@x
### Cache Directory
@y
### Cache Directory
@z

@x
- Linux: `$XDG_CACHE_HOME/pypoetry` or `~/.cache/pypoetry`
- Windows: `%LOCALAPPDATA%\pypoetry`
- macOS: `~/Library/Caches/pypoetry`
@y
- Linux: `$XDG_CACHE_HOME/pypoetry` or `~/.cache/pypoetry`
- Windows: `%LOCALAPPDATA%\pypoetry`
- macOS: `~/Library/Caches/pypoetry`
@z

@x
You can override the Cache directory by setting the `POETRY_CACHE_DIR` environment variable.
@y
You can override the Cache directory by setting the `POETRY_CACHE_DIR` environment variable.
@z

@x
## Available settings
@y
## Available settings
@z

@x
### `cache-dir`
@y
### `cache-dir`
@z

@x
**Type**: `string`
@y
**Type**: `string`
@z

@x
**Environment Variable**: `POETRY_CACHE_DIR`
@y
**Environment Variable**: `POETRY_CACHE_DIR`
@z

@x
The path to the cache directory used by Poetry.
@y
The path to the cache directory used by Poetry.
@z

@x
Defaults to one of the following directories:
@y
Defaults to one of the following directories:
@z

@x
- macOS:   `~/Library/Caches/pypoetry`
- Windows: `C:\Users\<username>\AppData\Local\pypoetry\Cache`
- Unix:    `~/.cache/pypoetry`
@y
- macOS:   `~/Library/Caches/pypoetry`
- Windows: `C:\Users\<username>\AppData\Local\pypoetry\Cache`
- Unix:    `~/.cache/pypoetry`
@z

@x
### `experimental.system-git-client`
@y
### `experimental.system-git-client`
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `false`
@y
**Default**: `false`
@z

@x
**Environment Variable**: `POETRY_EXPERIMENTAL_SYSTEM_GIT_CLIENT`
@y
**Environment Variable**: `POETRY_EXPERIMENTAL_SYSTEM_GIT_CLIENT`
@z

@x
*Introduced in 1.2.0*
@y
*Introduced in 1.2.0*
@z

@x
Use system git client backend for git related tasks.
@y
Use system git client backend for git related tasks.
@z

@x
Poetry uses `dulwich` by default for git related tasks to not rely on the availability of a git client.
@y
Poetry uses `dulwich` by default for git related tasks to not rely on the availability of a git client.
@z

@x
If you encounter any problems with it, set to `true` to use the system git backend.
@y
If you encounter any problems with it, set to `true` to use the system git backend.
@z

@x
### `installer.max-workers`
@y
### `installer.max-workers`
@z

@x
**Type**: `int`
@y
**Type**: `int`
@z

@x
**Default**: `number_of_cores + 4`
@y
**Default**: `number_of_cores + 4`
@z

@x
**Environment Variable**: `POETRY_INSTALLER_MAX_WORKERS`
@y
**Environment Variable**: `POETRY_INSTALLER_MAX_WORKERS`
@z

@x
*Introduced in 1.2.0*
@y
*Introduced in 1.2.0*
@z

@x
Set the maximum number of workers while using the parallel installer.
The `number_of_cores` is determined by `os.cpu_count()`.
If this raises a `NotImplementedError` exception, `number_of_cores` is assumed to be 1.
@y
Set the maximum number of workers while using the parallel installer.
The `number_of_cores` is determined by `os.cpu_count()`.
If this raises a `NotImplementedError` exception, `number_of_cores` is assumed to be 1.
@z

@x
If this configuration parameter is set to a value greater than `number_of_cores + 4`,
the number of maximum workers is still limited at `number_of_cores + 4`.
@y
If this configuration parameter is set to a value greater than `number_of_cores + 4`,
the number of maximum workers is still limited at `number_of_cores + 4`.
@z

@x
{{% note %}}
This configuration is ignored when `installer.parallel` is set to `false`.
{{% /note %}}
@y
{{% note %}}
This configuration is ignored when `installer.parallel` is set to `false`.
{{% /note %}}
@z

@x
### `installer.modern-installation`
@y
### `installer.modern-installation`
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `true`
@y
**Default**: `true`
@z

@x
**Environment Variable**: `POETRY_INSTALLER_MODERN_INSTALLATION`
@y
**Environment Variable**: `POETRY_INSTALLER_MODERN_INSTALLATION`
@z

@x
*Introduced in 1.4.0*
@y
*Introduced in 1.4.0*
@z

@x
Use a more modern and faster method for package installation.
@y
Use a more modern and faster method for package installation.
@z

@x
If this causes issues, you can disable it by setting it to `false` and report the problems
you encounter on the [issue tracker](https://github.com/python-poetry/poetry/issues).
@y
If this causes issues, you can disable it by setting it to `false` and report the problems
you encounter on the [issue tracker](https://github.com/python-poetry/poetry/issues).
@z

@x
### `installer.no-binary`
@y
### `installer.no-binary`
@z

@x
**Type**: `string | boolean`
@y
**Type**: `string | boolean`
@z

@x
**Default**: `false`
@y
**Default**: `false`
@z

@x
**Environment Variable**: `POETRY_INSTALLER_NO_BINARY`
@y
**Environment Variable**: `POETRY_INSTALLER_NO_BINARY`
@z

@x
*Introduced in 1.2.0*
@y
*Introduced in 1.2.0*
@z

@x
When set, this configuration allows users to disallow the use of binary distribution format for all, none or specific packages.
@y
When set, this configuration allows users to disallow the use of binary distribution format for all, none or specific packages.
@z

@x
| Configuration          | Description                                                |
|------------------------|------------------------------------------------------------|
| `:all:` or `true`      | Disallow binary distributions for all packages.            |
| `:none:` or `false`    | Allow binary distributions for all packages.               |
| `package[,package,..]` | Disallow binary distributions for specified packages only. |
@y
| Configuration          | Description                                                |
|------------------------|------------------------------------------------------------|
| `:all:` or `true`      | Disallow binary distributions for all packages.            |
| `:none:` or `false`    | Allow binary distributions for all packages.               |
| `package[,package,..]` | Disallow binary distributions for specified packages only. |
@z

@x
{{% note %}}
As with all configurations described here, this is a user specific configuration. This means that this
is not taken into consideration when a lockfile is generated or dependencies are resolved. This is
applied only when selecting which distribution for dependency should be installed into a Poetry managed
environment.
{{% /note %}}
@y
{{% note %}}
As with all configurations described here, this is a user specific configuration. This means that this
is not taken into consideration when a lockfile is generated or dependencies are resolved. This is
applied only when selecting which distribution for dependency should be installed into a Poetry managed
environment.
{{% /note %}}
@z

@x
{{% note %}}
For project specific usage, it is recommended that this be configured with the `--local`.
@y
{{% note %}}
For project specific usage, it is recommended that this be configured with the `--local`.
@z

@x
```bash
poetry config --local installer.no-binary :all:
```
{{% /note %}}
@y
```bash
poetry config --local installer.no-binary :all:
```
{{% /note %}}
@z

@x
{{% note %}}
For CI or container environments using [environment variable](#using-environment-variables)
to configure this might be useful.
@y
{{% note %}}
For CI or container environments using [environment variable](#using-environment-variables)
to configure this might be useful.
@z

@x
```bash
export POETRY_INSTALLER_NO_BINARY=:all:
```
{{% /note %}}
@y
```bash
export POETRY_INSTALLER_NO_BINARY=:all:
```
{{% /note %}}
@z

@x
{{% warning %}}
Unless this is required system-wide, if configured globally, you could encounter slower install times
across all your projects if incorrectly set.
{{% /warning %}}
@y
{{% warning %}}
Unless this is required system-wide, if configured globally, you could encounter slower install times
across all your projects if incorrectly set.
{{% /warning %}}
@z

@x
### `installer.only-binary`
@y
### `installer.only-binary`
@z

@x
**Type**: `string | boolean`
@y
**Type**: `string | boolean`
@z

@x
**Default**: `false`
@y
**Default**: `false`
@z

@x
**Environment Variable**: `POETRY_INSTALLER_ONLY_BINARY`
@y
**Environment Variable**: `POETRY_INSTALLER_ONLY_BINARY`
@z

@x
*Introduced in 1.9.0*
@y
*Introduced in 1.9.0*
@z

@x
When set, this configuration allows users to enforce the use of binary distribution format for all, none or
specific packages.
@y
When set, this configuration allows users to enforce the use of binary distribution format for all, none or
specific packages.
@z

@x
{{% note %}}
Please refer to [`installer.no-binary`]({{< relref "configuration#installerno-binary" >}}) for information on allowed
values, usage instructions and warnings.
{{% /note %}}
@y
{{% note %}}
Please refer to [`installer.no-binary`]({{< relref "configuration#installerno-binary" >}}) for information on allowed
values, usage instructions and warnings.
{{% /note %}}
@z

@x
### `installer.parallel`
@y
### `installer.parallel`
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `true`
@y
**Default**: `true`
@z

@x
**Environment Variable**: `POETRY_INSTALLER_PARALLEL`
@y
**Environment Variable**: `POETRY_INSTALLER_PARALLEL`
@z

@x
*Introduced in 1.1.4*
@y
*Introduced in 1.1.4*
@z

@x
Use parallel execution when using the new (`>=1.1.0`) installer.
@y
Use parallel execution when using the new (`>=1.1.0`) installer.
@z

@x
### `solver.lazy-wheel`
@y
### `solver.lazy-wheel`
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `true`
@y
**Default**: `true`
@z

@x
**Environment Variable**: `POETRY_SOLVER_LAZY_WHEEL`
@y
**Environment Variable**: `POETRY_SOLVER_LAZY_WHEEL`
@z

@x
*Introduced in 1.8.0*
@y
*Introduced in 1.8.0*
@z

@x
Do not download entire wheels to extract metadata but use
[HTTP range requests](https://developer.mozilla.org/en-US/docs/Web/HTTP/Range_requests)
to only download the METADATA files of wheels.
Especially with slow network connections this setting can speed up dependency resolution significantly.
If the cache has already been filled or the server does not support HTTP range requests,
this setting makes no difference.
@y
Do not download entire wheels to extract metadata but use
[HTTP range requests](https://developer.mozilla.org/en-US/docs/Web/HTTP/Range_requests)
to only download the METADATA files of wheels.
Especially with slow network connections this setting can speed up dependency resolution significantly.
If the cache has already been filled or the server does not support HTTP range requests,
this setting makes no difference.
@z

@x
### `virtualenvs.create`
@y
### `virtualenvs.create`
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `true`
@y
**Default**: `true`
@z

@x
**Environment Variable**: `POETRY_VIRTUALENVS_CREATE`
@y
**Environment Variable**: `POETRY_VIRTUALENVS_CREATE`
@z

@x
Create a new virtual environment if one doesn't already exist.
@y
Create a new virtual environment if one doesn't already exist.
@z

@x
If set to `false`, Poetry will not create a new virtual environment. If it detects an already enabled virtual
environment or an existing one in `{cache-dir}/virtualenvs` or `{project-dir}/.venv` it will
install dependencies into them, otherwise it will install dependencies into the systems python environment.
@y
If set to `false`, Poetry will not create a new virtual environment. If it detects an already enabled virtual
environment or an existing one in `{cache-dir}/virtualenvs` or `{project-dir}/.venv` it will
install dependencies into them, otherwise it will install dependencies into the systems python environment.
@z

@x
{{% note %}}
If Poetry detects it's running within an activated virtual environment, it will never create a new virtual environment,
regardless of the value set for `virtualenvs.create`.
{{% /note %}}
@y
{{% note %}}
If Poetry detects it's running within an activated virtual environment, it will never create a new virtual environment,
regardless of the value set for `virtualenvs.create`.
{{% /note %}}
@z

@x
{{% note %}}
Be aware that installing dependencies into the system environment likely upgrade or uninstall existing packages and thus
break other applications. Installing additional Python packages after installing the project might break the Poetry
project in return.
@y
{{% note %}}
Be aware that installing dependencies into the system environment likely upgrade or uninstall existing packages and thus
break other applications. Installing additional Python packages after installing the project might break the Poetry
project in return.
@z

@x
This is why it is recommended to always create a virtual environment. This is also true in Docker containers, as they
might contain additional Python packages as well.
{{% /note %}}
@y
This is why it is recommended to always create a virtual environment. This is also true in Docker containers, as they
might contain additional Python packages as well.
{{% /note %}}
@z

@x
### `virtualenvs.in-project`
@y
### `virtualenvs.in-project`
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `None`
@y
**Default**: `None`
@z

@x
**Environment Variable**: `POETRY_VIRTUALENVS_IN_PROJECT`
@y
**Environment Variable**: `POETRY_VIRTUALENVS_IN_PROJECT`
@z

@x
Create the virtualenv inside the project's root directory.
@y
Create the virtualenv inside the project's root directory.
@z

@x
If not set explicitly, `poetry` by default will create a virtual environment under
`{cache-dir}/virtualenvs` or use the `{project-dir}/.venv` directory if one already exists.
@y
If not set explicitly, `poetry` by default will create a virtual environment under
`{cache-dir}/virtualenvs` or use the `{project-dir}/.venv` directory if one already exists.
@z

@x
If set to `true`, the virtualenv will be created and expected in a folder named
`.venv` within the root directory of the project.
@y
If set to `true`, the virtualenv will be created and expected in a folder named
`.venv` within the root directory of the project.
@z

@x
{{% note %}}
If a virtual environment has already been created for the project under `{cache-dir}/virtualenvs`, setting this variable to `true` will not cause `poetry` to create or use a local virtual environment.
@y
{{% note %}}
If a virtual environment has already been created for the project under `{cache-dir}/virtualenvs`, setting this variable to `true` will not cause `poetry` to create or use a local virtual environment.
@z

@x
In order for this setting to take effect for a project already in that state, you must delete the virtual environment folder located in `{cache-dir}/virtualenvs`.
@y
In order for this setting to take effect for a project already in that state, you must delete the virtual environment folder located in `{cache-dir}/virtualenvs`.
@z

@x
You can find out where the current project's virtual environment (if there is one) is stored
with the command `poetry env info --path`.
{{% /note %}}
@y
You can find out where the current project's virtual environment (if there is one) is stored
with the command `poetry env info --path`.
{{% /note %}}
@z

@x
If set to `false`, `poetry` will ignore any existing `.venv` directory.
@y
If set to `false`, `poetry` will ignore any existing `.venv` directory.
@z

@x
### `virtualenvs.options.always-copy`
@y
### `virtualenvs.options.always-copy`
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `false`
@y
**Default**: `false`
@z

@x
**Environment Variable**: `POETRY_VIRTUALENVS_OPTIONS_ALWAYS_COPY`
@y
**Environment Variable**: `POETRY_VIRTUALENVS_OPTIONS_ALWAYS_COPY`
@z

@x
*Introduced in 1.2.0*
@y
*Introduced in 1.2.0*
@z

@x
If set to `true` the `--always-copy` parameter is passed to `virtualenv` on creation of the virtual environment, so that
all needed files are copied into it instead of symlinked.
@y
If set to `true` the `--always-copy` parameter is passed to `virtualenv` on creation of the virtual environment, so that
all needed files are copied into it instead of symlinked.
@z

@x
### `virtualenvs.options.no-pip`
@y
### `virtualenvs.options.no-pip`
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `false`
@y
**Default**: `false`
@z

@x
**Environment Variable**: `POETRY_VIRTUALENVS_OPTIONS_NO_PIP`
@y
**Environment Variable**: `POETRY_VIRTUALENVS_OPTIONS_NO_PIP`
@z

@x
*Introduced in 1.2.0*
@y
*Introduced in 1.2.0*
@z

@x
If set to `true` the `--no-pip` parameter is passed to `virtualenv` on creation of the virtual environment. This means
when a new virtual environment is created, `pip` will not be installed in the environment.
@y
If set to `true` the `--no-pip` parameter is passed to `virtualenv` on creation of the virtual environment. This means
when a new virtual environment is created, `pip` will not be installed in the environment.
@z

@x
{{% note %}}
Poetry, for its internal operations, uses the `pip` wheel embedded in the `virtualenv` package installed as a dependency
in Poetry's runtime environment. If a user runs `poetry run pip` when this option is set to `true`, the `pip` the
embedded instance of `pip` is used.
@y
{{% note %}}
Poetry, for its internal operations, uses the `pip` wheel embedded in the `virtualenv` package installed as a dependency
in Poetry's runtime environment. If a user runs `poetry run pip` when this option is set to `true`, the `pip` the
embedded instance of `pip` is used.
@z

@x
You can safely set this, along with `no-setuptools`, to `true`, if you desire a virtual environment with no additional
packages. This is desirable for production environments.
{{% /note %}}
@y
You can safely set this, along with `no-setuptools`, to `true`, if you desire a virtual environment with no additional
packages. This is desirable for production environments.
{{% /note %}}
@z

@x
### `virtualenvs.options.no-setuptools`
@y
### `virtualenvs.options.no-setuptools`
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `false`
@y
**Default**: `false`
@z

@x
**Environment Variable**: `POETRY_VIRTUALENVS_OPTIONS_NO_SETUPTOOLS`
@y
**Environment Variable**: `POETRY_VIRTUALENVS_OPTIONS_NO_SETUPTOOLS`
@z

@x
*Introduced in 1.2.0*
@y
*Introduced in 1.2.0*
@z

@x
If set to `true` the `--no-setuptools` parameter is passed to `virtualenv` on creation of the virtual environment. This
means when a new virtual environment is created, `setuptools` will not be installed in the environment. Poetry, for its
internal operations, does not require `setuptools` and this can safely be set to `true`.
@y
If set to `true` the `--no-setuptools` parameter is passed to `virtualenv` on creation of the virtual environment. This
means when a new virtual environment is created, `setuptools` will not be installed in the environment. Poetry, for its
internal operations, does not require `setuptools` and this can safely be set to `true`.
@z

@x
For environments using python 3.12 or later, `virtualenv` defaults to not
installing `setuptools` when creating a virtual environment.
In such environments this poetry configuration option therefore has no effect:
`setuptools` is not installed either way.
If your project relies on `setuptools`, you should declare it as a dependency.
@y
For environments using python 3.12 or later, `virtualenv` defaults to not
installing `setuptools` when creating a virtual environment.
In such environments this poetry configuration option therefore has no effect:
`setuptools` is not installed either way.
If your project relies on `setuptools`, you should declare it as a dependency.
@z

@x
{{% warning %}}
Some development tools like IDEs, make an assumption that `setuptools` (and other) packages are always present and
available within a virtual environment. This can cause some features in these tools to not work as expected.
{{% /warning %}}
@y
{{% warning %}}
Some development tools like IDEs, make an assumption that `setuptools` (and other) packages are always present and
available within a virtual environment. This can cause some features in these tools to not work as expected.
{{% /warning %}}
@z

@x
### `virtualenvs.options.system-site-packages`
@y
### `virtualenvs.options.system-site-packages`
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `false`
@y
**Default**: `false`
@z

@x
**Environment Variable**: `POETRY_VIRTUALENVS_OPTIONS_SYSTEM_SITE_PACKAGES`
@y
**Environment Variable**: `POETRY_VIRTUALENVS_OPTIONS_SYSTEM_SITE_PACKAGES`
@z

@x
Give the virtual environment access to the system site-packages directory.
Applies on virtualenv creation.
@y
Give the virtual environment access to the system site-packages directory.
Applies on virtualenv creation.
@z

@x
### `virtualenvs.path`
@y
### `virtualenvs.path`
@z

@x
**Type**: `string`
@y
**Type**: `string`
@z

@x
**Default**: `{cache-dir}/virtualenvs`
@y
**Default**: `{cache-dir}/virtualenvs`
@z

@x
**Environment Variable**: `POETRY_VIRTUALENVS_PATH`
@y
**Environment Variable**: `POETRY_VIRTUALENVS_PATH`
@z

@x
Directory where virtual environments will be created.
@y
Directory where virtual environments will be created.
@z

@x
{{% note %}}
This setting controls the global virtual environment storage path. It most likely will not be useful at the local level. To store virtual environments in the project root, see `virtualenvs.in-project`.
{{% /note %}}
@y
{{% note %}}
This setting controls the global virtual environment storage path. It most likely will not be useful at the local level. To store virtual environments in the project root, see `virtualenvs.in-project`.
{{% /note %}}
@z

@x
### `virtualenvs.prefer-active-python` (experimental)
@y
### `virtualenvs.prefer-active-python` (experimental)
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `false`
@y
**Default**: `false`
@z

@x
**Environment Variable**: `POETRY_VIRTUALENVS_PREFER_ACTIVE_PYTHON`
@y
**Environment Variable**: `POETRY_VIRTUALENVS_PREFER_ACTIVE_PYTHON`
@z

@x
*Introduced in 1.2.0*
@y
*Introduced in 1.2.0*
@z

@x
Use currently activated Python version to create a new virtual environment.
If set to `false`, Python version used during Poetry installation is used.
@y
Use currently activated Python version to create a new virtual environment.
If set to `false`, Python version used during Poetry installation is used.
@z

@x
### `virtualenvs.prompt`
@y
### `virtualenvs.prompt`
@z

@x
**Type**: `string`
@y
**Type**: `string`
@z

@x
**Default**: `{project_name}-py{python_version}`
@y
**Default**: `{project_name}-py{python_version}`
@z

@x
**Environment Variable**: `POETRY_VIRTUALENVS_PROMPT`
@y
**Environment Variable**: `POETRY_VIRTUALENVS_PROMPT`
@z

@x
*Introduced in 1.2.0*
@y
*Introduced in 1.2.0*
@z

@x
Format string defining the prompt to be displayed when the virtual environment is activated.
The variables `project_name` and `python_version` are available for formatting.
@y
Format string defining the prompt to be displayed when the virtual environment is activated.
The variables `project_name` and `python_version` are available for formatting.
@z

@x
### `repositories.<name>.url`
@y
### `repositories.<name>.url`
@z

@x
**Type**: `string`
@y
**Type**: `string`
@z

@x
**Environment Variable**: `POETRY_REPOSITORIES_<NAME>_URL`
@y
**Environment Variable**: `POETRY_REPOSITORIES_<NAME>_URL`
@z

@x
Set the repository URL for `<name>`.
@y
Set the repository URL for `<name>`.
@z

@x
See [Publishable Repositories]({{< relref "repositories#publishable-repositories" >}}) for more information.
@y
See [Publishable Repositories]({{< relref "repositories#publishable-repositories" >}}) for more information.
@z

@x
### `http-basic.<name>.[username|password]`:
@y
### `http-basic.<name>.[username|password]`:
@z

@x
**Type**: `string`
@y
**Type**: `string`
@z

@x
**Environment Variables**: `POETRY_HTTP_BASIC_<NAME>_USERNAME`, `POETRY_HTTP_BASIC_<NAME>_PASSWORD`
@y
**Environment Variables**: `POETRY_HTTP_BASIC_<NAME>_USERNAME`, `POETRY_HTTP_BASIC_<NAME>_PASSWORD`
@z

@x
Set repository credentials (`username` and `password`) for `<name>`.
See [Repositories - Configuring credentials]({{< relref "repositories#configuring-credentials" >}})
for more information.
@y
Set repository credentials (`username` and `password`) for `<name>`.
See [Repositories - Configuring credentials]({{< relref "repositories#configuring-credentials" >}})
for more information.
@z

@x
### `pypi-token.<name>`:
@y
### `pypi-token.<name>`:
@z

@x
**Type**: `string`
@y
**Type**: `string`
@z

@x
**Environment Variable**: `POETRY_PYPI_TOKEN_<NAME>`
@y
**Environment Variable**: `POETRY_PYPI_TOKEN_<NAME>`
@z

@x
Set repository credentials (using an API token) for `<name>`.
See [Repositories - Configuring credentials]({{< relref "repositories#configuring-credentials" >}})
for more information.
@y
Set repository credentials (using an API token) for `<name>`.
See [Repositories - Configuring credentials]({{< relref "repositories#configuring-credentials" >}})
for more information.
@z

@x
### `certificates.<name>.cert`:
@y
### `certificates.<name>.cert`:
@z

@x
**Type**: `string | boolean`
@y
**Type**: `string | boolean`
@z

@x
**Environment Variable**: `POETRY_CERTIFICATES_<NAME>_CERT`
@y
**Environment Variable**: `POETRY_CERTIFICATES_<NAME>_CERT`
@z

@x
Set custom certificate authority for repository `<name>`.
See [Repositories - Configuring credentials - Custom certificate authority]({{< relref "repositories#custom-certificate-authority-and-mutual-tls-authentication" >}})
for more information.
@y
Set custom certificate authority for repository `<name>`.
See [Repositories - Configuring credentials - Custom certificate authority]({{< relref "repositories#custom-certificate-authority-and-mutual-tls-authentication" >}})
for more information.
@z

@x
This configuration can be set to `false`, if TLS certificate verification should be skipped for this
repository.
@y
This configuration can be set to `false`, if TLS certificate verification should be skipped for this
repository.
@z

@x
### `certificates.<name>.client-cert`:
@y
### `certificates.<name>.client-cert`:
@z

@x
**Type**: `string`
@y
**Type**: `string`
@z

@x
**Environment Variable**: `POETRY_CERTIFICATES_<NAME>_CLIENT_CERT`
@y
**Environment Variable**: `POETRY_CERTIFICATES_<NAME>_CLIENT_CERT`
@z

@x
Set client certificate for repository `<name>`.
See [Repositories - Configuring credentials - Custom certificate authority]({{< relref "repositories#custom-certificate-authority-and-mutual-tls-authentication" >}})
for more information.
@y
Set client certificate for repository `<name>`.
See [Repositories - Configuring credentials - Custom certificate authority]({{< relref "repositories#custom-certificate-authority-and-mutual-tls-authentication" >}})
for more information.
@z

@x
### `keyring.enabled`:
@y
### `keyring.enabled`:
@z

@x
**Type**: `boolean`
@y
**Type**: `boolean`
@z

@x
**Default**: `true`
@y
**Default**: `true`
@z

@x
**Environment Variable**: `POETRY_KEYRING_ENABLED`
@y
**Environment Variable**: `POETRY_KEYRING_ENABLED`
@z

@x
Enable the system keyring for storing credentials.
See [Repositories - Configuring credentials]({{< relref "repositories#configuring-credentials" >}})
for more information.
@y
Enable the system keyring for storing credentials.
See [Repositories - Configuring credentials]({{< relref "repositories#configuring-credentials" >}})
for more information.
@z
