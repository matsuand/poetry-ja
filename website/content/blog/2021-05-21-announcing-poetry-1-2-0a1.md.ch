%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Announcing Poetry 1.2.0a1"
date: 2021-05-21 00:00:00
categories: ["releases"]
tags: ["1.x", "1.2"]
@y
---
layout: single
title: "Announcing Poetry 1.2.0a1"
date: 2021-05-21 00:00:00
categories: ["releases"]
tags: ["1.x", "1.2"]
@z

@x
aliases:
  - announcing-poetry-1-2-0a1.html
---
@y
aliases:
  - announcing-poetry-1-2-0a1.html
---
@z

@x
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0a1**.
@y
The Poetry team is pleased to announce the immediate availability of Poetry **1.2.0a1**.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
This release is the first **testing** release of the upcoming 1.2.0 version.
@y
This release is the first **testing** release of the upcoming 1.2.0 version.
@z

@x
It adds – among other things – support for plugins and for [PEP 610](https://www.python.org/dev/peps/pep-0610/).
@y
It adds – among other things – support for plugins and for [PEP 610](https://www.python.org/dev/peps/pep-0610/).
@z

@x
{{% note %}}
Note that, unlike before, it's not possible to update Poetry via the `self update` command. You need to use
the new installer script (or either `pipx` or `pip`) to freshly install Poetry. It is recommended to uninstall
any currently installed version of Poetry.
{{% /note %}}
@y
{{% note %}}
Note that, unlike before, it's not possible to update Poetry via the `self update` command. You need to use
the new installer script (or either `pipx` or `pip`) to freshly install Poetry. It is recommended to uninstall
any currently installed version of Poetry.
{{% /note %}}
@z

@x
{{% warning %}}
This release **drops** support for Python **2.7** and **3.5**.
{{% /warning %}}
@y
{{% warning %}}
This release **drops** support for Python **2.7** and **3.5**.
{{% /warning %}}
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
## Deprecation of the `get-poetry.py` script
@y
## Deprecation of the `get-poetry.py` script
@z

@x
The usage of the `get-poetry.py` script is now deprecated and is replaced by the `install-poetry.py` script:
@y
The usage of the `get-poetry.py` script is now deprecated and is replaced by the `install-poetry.py` script:
@z

@x
```bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -
```
@y
```bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -
```
@z

@x
The reasons for this change are the following:
@y
The reasons for this change are the following:
@z

@x
- It no longer relies on the prebuilt release packages of Poetry (see https://github.com/python-poetry/poetry/releases/tag/1.1.5 for an example) which had the issues of having frozen dependencies which made upgrading dependencies much harder without releasing a new bug fix release of Poetry. This will eventually make our release process easier.
- It relies on standards for the install locations of both Poetry and the `poetry` script.
- It supports installing from a git repository or a file/directory.
- It no longer tries to modify the `PATH` but instead will simply provide guidance on how to do it if necessary.
- It will use the correct Python interpreter, i.e. the one used to invoke the script, when calling the poetry script.
@y
- It no longer relies on the prebuilt release packages of Poetry (see https://github.com/python-poetry/poetry/releases/tag/1.1.5 for an example) which had the issues of having frozen dependencies which made upgrading dependencies much harder without releasing a new bug fix release of Poetry. This will eventually make our release process easier.
- It relies on standards for the install locations of both Poetry and the `poetry` script.
- It supports installing from a git repository or a file/directory.
- It no longer tries to modify the `PATH` but instead will simply provide guidance on how to do it if necessary.
- It will use the correct Python interpreter, i.e. the one used to invoke the script, when calling the poetry script.
@z

@x
It also ensures that the plugin system, detailed below, works properly.
@y
It also ensures that the plugin system, detailed below, works properly.
@z

@x
Poetry users are encouraged to use this new script since the newest releases (including this one) won't be available via the old installer.
@y
Poetry users are encouraged to use this new script since the newest releases (including this one) won't be available via the old installer.
@z

@x
## New plugin system
@y
## New plugin system
@z

@x
Poetry now supports a plugin system to alter or expand Poetry's functionality.
@y
Poetry now supports a plugin system to alter or expand Poetry's functionality.
@z

@x
For example if your environment poses special requirements
on the behaviour of Poetry which do not apply to the majority of its users
or if you wish to accomplish something with Poetry in a way that is not desired by most users.
@y
For example if your environment poses special requirements
on the behaviour of Poetry which do not apply to the majority of its users
or if you wish to accomplish something with Poetry in a way that is not desired by most users.
@z

@x
In these cases you could consider creating a plugin to handle your specific logic.
@y
In these cases you could consider creating a plugin to handle your specific logic.
@z

@x
### Creating a plugin
@y
### Creating a plugin
@z

@x
A plugin is a regular Python package which ships its code as part of the package
and may also depend on further packages.
@y
A plugin is a regular Python package which ships its code as part of the package
and may also depend on further packages.
@z

@x
#### Plugin package
@y
#### Plugin package
@z

@x
The plugin package must depend on Poetry
and declare a proper [plugin](/docs/pyproject/#plugins) in the `pyproject.toml` file.
@y
The plugin package must depend on Poetry
and declare a proper [plugin](/docs/pyproject/#plugins) in the `pyproject.toml` file.
@z

@x
```toml
[tool.poetry]
name = "my-poetry-plugin"
version = "1.0.0"
@y
```toml
[tool.poetry]
name = "my-poetry-plugin"
version = "1.0.0"
@z

@x
# ...
[tool.poetry.dependencies]
python = "~2.7 || ^3.7"
poetry = "^1.2"
@y
# ...
[tool.poetry.dependencies]
python = "~2.7 || ^3.7"
poetry = "^1.2"
@z

@x
[tool.poetry.plugins."poetry.plugin"]
demo = "poetry_demo_plugin.plugin:MyPlugin"
```
@y
[tool.poetry.plugins."poetry.plugin"]
demo = "poetry_demo_plugin.plugin:MyPlugin"
```
@z

@x
#### Generic plugins
@y
#### Generic plugins
@z

@x
Every plugin has to supply a class which implements the `poetry.plugins.Plugin` interface.
@y
Every plugin has to supply a class which implements the `poetry.plugins.Plugin` interface.
@z

@x
The `activate()` method of the plugin is called after the plugin is loaded
and receives an instance of `Poetry` as well as an instance of `cleo.io.IO`.
@y
The `activate()` method of the plugin is called after the plugin is loaded
and receives an instance of `Poetry` as well as an instance of `cleo.io.IO`.
@z

@x
Using these two objects all configuration can be read
and all public internal objects and state can be manipulated as desired.
@y
Using these two objects all configuration can be read
and all public internal objects and state can be manipulated as desired.
@z

@x
Example:
@y
Example:
@z

@x
```python
from cleo.io.io import IO
@y
```python
from cleo.io.io import IO
@z

@x
from poetry.plugins.plugin import Plugin
from poetry.poetry import Poetry
@y
from poetry.plugins.plugin import Plugin
from poetry.poetry import Poetry
@z

@x
class MyPlugin(Plugin):
@y
class MyPlugin(Plugin):
@z

@x
    def activate(self, poetry: Poetry, io: IO):
        version = self.get_custom_version()
        io.write_line(f"Setting package version to <b>{version}</b>")
        poetry.package.set_version(version)
@y
    def activate(self, poetry: Poetry, io: IO):
        version = self.get_custom_version()
        io.write_line(f"Setting package version to <b>{version}</b>")
        poetry.package.set_version(version)
@z

@x
    def get_custom_version(self) -> str:
        ...
```
@y
    def get_custom_version(self) -> str:
        ...
```
@z

@x
#### Application plugins
@y
#### Application plugins
@z

@x
If you want to add commands or options to the `poetry` script you need
to create an application plugin which implements the `poetry.plugins.ApplicationPlugin` interface.
@y
If you want to add commands or options to the `poetry` script you need
to create an application plugin which implements the `poetry.plugins.ApplicationPlugin` interface.
@z

@x
The `activate()` method of the application plugin is called after the plugin is loaded
and receives an instance of `console.Application`.
@y
The `activate()` method of the application plugin is called after the plugin is loaded
and receives an instance of `console.Application`.
@z

@x
```python
from cleo.commands.command import Command
from poetry.plugins.application_plugin import ApplicationPlugin
@y
```python
from cleo.commands.command import Command
from poetry.plugins.application_plugin import ApplicationPlugin
@z

@x
class CustomCommand(Command):
@y
class CustomCommand(Command):
@z

@x
    name = "my-command"
@y
    name = "my-command"
@z

@x
    def handle(self) -> int:
        self.line("My command")
@y
    def handle(self) -> int:
        self.line("My command")
@z

@x
        return 0
@y
        return 0
@z

@x
def factory():
    return CustomCommand()
@y
def factory():
    return CustomCommand()
@z

@x
class MyApplicationPlugin(ApplicationPlugin):
    def activate(self, application):
        application.command_loader.register_factory("my-command", factory)
```
@y
class MyApplicationPlugin(ApplicationPlugin):
    def activate(self, application):
        application.command_loader.register_factory("my-command", factory)
```
@z

@x
{{% note %}}
It's possible to do the following to register the command:
@y
{{% note %}}
It's possible to do the following to register the command:
@z

@x
```python
application.add(MyCommand())
```
@y
```python
application.add(MyCommand())
```
@z

@x
However, it is **strongly** recommended to register a new factory
in the command loader to defer the loading of the command when it's actually
called.
@y
However, it is **strongly** recommended to register a new factory
in the command loader to defer the loading of the command when it's actually
called.
@z

@x
This will help keep the performances of Poetry good.
{{% /note %}}
@y
This will help keep the performances of Poetry good.
{{% /note %}}
@z

@x
The plugin also must be declared in the `pyproject.toml` file of the plugin package
as an `application.plugin` plugin:
@y
The plugin also must be declared in the `pyproject.toml` file of the plugin package
as an `application.plugin` plugin:
@z

@x
```toml
[tool.poetry.plugins."poetry.application.plugin"]
foo-command = "poetry_demo_plugin.plugin:MyApplicationPlugin"
```
@y
```toml
[tool.poetry.plugins."poetry.application.plugin"]
foo-command = "poetry_demo_plugin.plugin:MyApplicationPlugin"
```
@z

@x
{{% warning %}}
A plugin **must not** remove or modify in any way the core commands of Poetry.
{{% /warning %}}
@y
{{% warning %}}
A plugin **must not** remove or modify in any way the core commands of Poetry.
{{% /warning %}}
@z

@x
#### Event handler
@y
#### Event handler
@z

@x
Plugins can also listen to specific events and act on them if necessary.
@y
Plugins can also listen to specific events and act on them if necessary.
@z

@x
These events are fired by [Cleo](https://github.com/sdispater/cleo)
and are accessible from the `cleo.events.console_events` module.
@y
These events are fired by [Cleo](https://github.com/sdispater/cleo)
and are accessible from the `cleo.events.console_events` module.
@z

@x
- `COMMAND`: this event allows attaching listeners before any command is executed.
- `SIGNAL`: this event allows some actions to be performed after the command execution is interrupted.
- `TERMINATE`: this event allows listeners to be attached after the command.
- `ERROR`: this event occurs when an uncaught exception is raised.
@y
- `COMMAND`: this event allows attaching listeners before any command is executed.
- `SIGNAL`: this event allows some actions to be performed after the command execution is interrupted.
- `TERMINATE`: this event allows listeners to be attached after the command.
- `ERROR`: this event occurs when an uncaught exception is raised.
@z

@x
Let's see how to implement an application event handler. For this example
we will see how to load environment variables from a `.env` file before executing
a command.
@y
Let's see how to implement an application event handler. For this example
we will see how to load environment variables from a `.env` file before executing
a command.
@z

@x
```python
from cleo.events.console_events import COMMAND
from cleo.events.console_command_event import ConsoleCommandEvent
from cleo.events.event_dispatcher import EventDispatcher
from dotenv import load_dotenv
from poetry.console.application import Application
from poetry.console.commands.env_command import EnvCommand
from poetry.plugins.application_plugin import ApplicationPlugin
@y
```python
from cleo.events.console_events import COMMAND
from cleo.events.console_command_event import ConsoleCommandEvent
from cleo.events.event_dispatcher import EventDispatcher
from dotenv import load_dotenv
from poetry.console.application import Application
from poetry.console.commands.env_command import EnvCommand
from poetry.plugins.application_plugin import ApplicationPlugin
@z

@x
class MyApplicationPlugin(ApplicationPlugin):
    def activate(self, application: Application):
        application.event_dispatcher.add_listener(COMMAND, self.load_dotenv)
@y
class MyApplicationPlugin(ApplicationPlugin):
    def activate(self, application: Application):
        application.event_dispatcher.add_listener(COMMAND, self.load_dotenv)
@z

@x
    def load_dotenv(
        self,
        event: ConsoleCommandEvent,
        event_name: str,
        dispatcher: EventDispatcher
    ) -> None:
        command = event.command
        if not isinstance(command, EnvCommand):
            return
@y
    def load_dotenv(
        self,
        event: ConsoleCommandEvent,
        event_name: str,
        dispatcher: EventDispatcher
    ) -> None:
        command = event.command
        if not isinstance(command, EnvCommand):
            return
@z

@x
        io = event.io
@y
        io = event.io
@z

@x
        if io.is_debug():
            io.write_line("<debug>Loading environment variables.</debug>")
@y
        if io.is_debug():
            io.write_line("<debug>Loading environment variables.</debug>")
@z

@x
        load_dotenv()
```
@y
        load_dotenv()
```
@z

@x
### Using plugins
@y
### Using plugins
@z

@x
Installed plugin packages are automatically loaded when Poetry starts up.
@y
Installed plugin packages are automatically loaded when Poetry starts up.
@z

@x
You have multiple ways to install plugins for Poetry
@y
You have multiple ways to install plugins for Poetry
@z

@x
#### The `plugin add` command
@y
#### The `plugin add` command
@z

@x
This is the easiest way and should account for all the ways Poetry can be installed.
@y
This is the easiest way and should account for all the ways Poetry can be installed.
@z

@x
```bash
poetry plugin add poetry-plugin
```
@y
```bash
poetry plugin add poetry-plugin
```
@z

@x
The `plugin add` command will ensure that the plugin is compatible with the current version of Poetry
and install the needed packages for the plugin to work.
@y
The `plugin add` command will ensure that the plugin is compatible with the current version of Poetry
and install the needed packages for the plugin to work.
@z

@x
The package specification formats supported by the `plugin add` command are the same as the ones supported
by the [add command](/docs/cli/#add).
@y
The package specification formats supported by the `plugin add` command are the same as the ones supported
by the [add command](/docs/cli/#add).
@z

@x
If you no longer need a plugin and want to uninstall it, you can use the `plugin remove` command.
@y
If you no longer need a plugin and want to uninstall it, you can use the `plugin remove` command.
@z

@x
```shell
poetry plugin remove poetry-plugin
```
@y
```shell
poetry plugin remove poetry-plugin
```
@z

@x
You can also list all currently installed plugins by running:
@y
You can also list all currently installed plugins by running:
@z

@x
```shell
poetry plugin show
```
@y
```shell
poetry plugin show
```
@z

@x
#### With `pipx inject`
@y
#### With `pipx inject`
@z

@x
If you used `pipx` to install Poetry you can add the plugin packages via the `pipx inject` command.
@y
If you used `pipx` to install Poetry you can add the plugin packages via the `pipx inject` command.
@z

@x
```shell
pipx inject poetry poetry-plugin
```
@y
```shell
pipx inject poetry poetry-plugin
```
@z

@x
If you want to uninstall a plugin, you can run:
@y
If you want to uninstall a plugin, you can run:
@z

@x
```shell
pipx runpip poetry uninstall poetry-plugin
```
@y
```shell
pipx runpip poetry uninstall poetry-plugin
```
@z

@x
#### With `pip`
@y
#### With `pip`
@z

@x
If you used `pip` to install Poetry you can add the plugin packages via the `pip install` command.
@y
If you used `pip` to install Poetry you can add the plugin packages via the `pip install` command.
@z

@x
```shell
pip install --user poetry-plugin
```
@y
```shell
pip install --user poetry-plugin
```
@z

@x
If you want to uninstall a plugin, you can run:
@y
If you want to uninstall a plugin, you can run:
@z

@x
```shell
pip uninstall poetry-plugin
```
@y
```shell
pip uninstall poetry-plugin
```
@z

@x
## PEP 610 support
@y
## PEP 610 support
@z

@x
Poetry now supports [PEP 610](https://www.python.org/dev/peps/pep-0610/) both in writing and in reading.
@y
Poetry now supports [PEP 610](https://www.python.org/dev/peps/pep-0610/) both in writing and in reading.
@z

@x
This should address issues and performances in determining the origin of the installed packages.
@y
This should address issues and performances in determining the origin of the installed packages.
@z

@x
{{% note %}}
You might see updates when running the `install` or `update` commands due to Poetry fixing the existing `direct_url.json` files.
{{% /note %}}
@y
{{% note %}}
You might see updates when running the `install` or `update` commands due to Poetry fixing the existing `direct_url.json` files.
{{% /note %}}
@z
