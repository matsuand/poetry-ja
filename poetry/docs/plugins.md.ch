%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
title: "Plugins"
draft: false
type: docs
layout: single
@y
---
title: "Plugins"
draft: false
type: docs
layout: single
@z

@x
menu:
  docs:
    weight: 80
---
@y
menu:
  docs:
    weight: 80
---
@z

@x
# Plugins
@y
# Plugins
@z

@x
Poetry supports using and building plugins if you wish to
alter or expand Poetry's functionality with your own.
@y
Poetry supports using and building plugins if you wish to
alter or expand Poetry's functionality with your own.
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
## Creating a plugin
@y
## Creating a plugin
@z

@x
A plugin is a regular Python package which ships its code as part of the package
and may also depend on further packages.
@y
A plugin is a regular Python package which ships its code as part of the package
and may also depend on further packages.
@z

@x
### Plugin package
@y
### Plugin package
@z

@x
The plugin package must depend on Poetry
and declare a proper [plugin]({{< relref "pyproject#plugins" >}}) in the `pyproject.toml` file.
@y
The plugin package must depend on Poetry
and declare a proper [plugin]({{< relref "pyproject#plugins" >}}) in the `pyproject.toml` file.
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
python = "^3.7"
poetry = "^1.2"
@y
# ...
[tool.poetry.dependencies]
python = "^3.7"
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
### Generic plugins
@y
### Generic plugins
@z

@x
Every plugin has to supply a class which implements the `poetry.plugins.Plugin` interface.
@y
Every plugin has to supply a class which implements the `poetry.plugins.Plugin` interface.
@z

@x
The `activate()` method of the plugin is called after the plugin is loaded
and receives an instance of `Poetry` as well as an instance of `cleo.io.io.IO`.
@y
The `activate()` method of the plugin is called after the plugin is loaded
and receives an instance of `Poetry` as well as an instance of `cleo.io.io.IO`.
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
        io.write_line("Setting readme")
        poetry.package.readme = "README.md"
        ...
```
@y
    def activate(self, poetry: Poetry, io: IO):
        io.write_line("Setting readme")
        poetry.package.readme = "README.md"
        ...
```
@z

@x
### Application plugins
@y
### Application plugins
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
and receives an instance of `poetry.console.Application`.
@y
The `activate()` method of the application plugin is called after the plugin is loaded
and receives an instance of `poetry.console.Application`.
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
as a `poetry.application.plugin` plugin:
@y
The plugin also must be declared in the `pyproject.toml` file of the plugin package
as a `poetry.application.plugin` plugin:
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
### Event handler
@y
### Event handler
@z

@x
Plugins can also listen to specific events and act on them if necessary.
@y
Plugins can also listen to specific events and act on them if necessary.
@z

@x
These events are fired by [Cleo](https://github.com/python-poetry/cleo)
and are accessible from the `cleo.events.console_events` module.
@y
These events are fired by [Cleo](https://github.com/python-poetry/cleo)
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
        application.event_dispatcher.add_listener(
            COMMAND, self.load_dotenv
        )
@y
class MyApplicationPlugin(ApplicationPlugin):
    def activate(self, application: Application):
        application.event_dispatcher.add_listener(
            COMMAND, self.load_dotenv
        )
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
            io.write_line(
                "<debug>Loading environment variables.</debug>"
            )
@y
        if io.is_debug():
            io.write_line(
                "<debug>Loading environment variables.</debug>"
            )
@z

@x
        load_dotenv()
```
@y
        load_dotenv()
```
@z

@x
## Using plugins
@y
## Using plugins
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
### With `pipx inject`
@y
### With `pipx inject`
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
pipx uninject poetry poetry-plugin          # For pipx versions >= 1.2.0
@y
```shell
pipx uninject poetry poetry-plugin          # For pipx versions >= 1.2.0
@z

@x
pipx runpip poetry uninstall poetry-plugin  # For pipx versions  < 1.2.0
```
@y
pipx runpip poetry uninstall poetry-plugin  # For pipx versions  < 1.2.0
```
@z

@x
### With `pip`
@y
### With `pip`
@z

@x
The `pip` binary in Poetry's virtual environment can also be used to install and remove plugins.
The environment variable `$POETRY_HOME` here is used to represent the path to the virtual environment.
The [installation instructions](/docs/) can be referenced if you are not
sure where Poetry has been installed.
@y
The `pip` binary in Poetry's virtual environment can also be used to install and remove plugins.
The environment variable `$POETRY_HOME` here is used to represent the path to the virtual environment.
The [installation instructions](/docs/) can be referenced if you are not
sure where Poetry has been installed.
@z

@x
To add a plugin, you can use `pip install`:
@y
To add a plugin, you can use `pip install`:
@z

@x
```shell
$POETRY_HOME/bin/pip install --user poetry-plugin
```
@y
```shell
$POETRY_HOME/bin/pip install --user poetry-plugin
```
@z

@x
If you want to uninstall a plugin, you can run:
@y
If you want to uninstall a plugin, you can run:
@z

@x
```shell
$POETRY_HOME/bin/pip uninstall poetry-plugin
```
@y
```shell
$POETRY_HOME/bin/pip uninstall poetry-plugin
```
@z

@x
### The `self add` command
@y
### The `self add` command
@z

@x
{{% warning %}}
Especially on Windows, `self add` and `self remove` may be problematic
so that other methods should be preferred.
{{% /warning %}}
@y
{{% warning %}}
Especially on Windows, `self add` and `self remove` may be problematic
so that other methods should be preferred.
{{% /warning %}}
@z

@x
```bash
poetry self add poetry-plugin
```
@y
```bash
poetry self add poetry-plugin
```
@z

@x
The `self add` command will ensure that the plugin is compatible with the current version of Poetry
and install the needed packages for the plugin to work.
@y
The `self add` command will ensure that the plugin is compatible with the current version of Poetry
and install the needed packages for the plugin to work.
@z

@x
The package specification formats supported by the `self add` command are the same as the ones supported
by the [`add` command]({{< relref "cli#add" >}}).
@y
The package specification formats supported by the `self add` command are the same as the ones supported
by the [`add` command]({{< relref "cli#add" >}}).
@z

@x
If you no longer need a plugin and want to uninstall it, you can use the `self remove` command.
@y
If you no longer need a plugin and want to uninstall it, you can use the `self remove` command.
@z

@x
```shell
poetry self remove poetry-plugin
```
@y
```shell
poetry self remove poetry-plugin
```
@z

@x
You can also list all currently installed plugins by running:
@y
You can also list all currently installed plugins by running:
@z

@x
```shell
poetry self show plugins
```
@y
```shell
poetry self show plugins
```
@z

@x
## Maintaining a plugin
@y
## Maintaining a plugin
@z

@x
When writing a plugin, you will probably access internals of Poetry, since there is no
stable public API. Although we try our best to deprecate methods first, before
removing them, sometimes the signature of an internal method has to be changed.
@y
When writing a plugin, you will probably access internals of Poetry, since there is no
stable public API. Although we try our best to deprecate methods first, before
removing them, sometimes the signature of an internal method has to be changed.
@z

@x
As the author of a plugin, you are probably testing your plugin
against the latest release of Poetry.
Additionally, you should consider testing against the latest release branch and the
main branch of Poetry and schedule a CI job that runs regularly even if you did not
make any changes to your plugin.
This way, you will notice internal changes that break your plugin immediately
and can prepare for the next Poetry release.
@y
As the author of a plugin, you are probably testing your plugin
against the latest release of Poetry.
Additionally, you should consider testing against the latest release branch and the
main branch of Poetry and schedule a CI job that runs regularly even if you did not
make any changes to your plugin.
This way, you will notice internal changes that break your plugin immediately
and can prepare for the next Poetry release.
@z
