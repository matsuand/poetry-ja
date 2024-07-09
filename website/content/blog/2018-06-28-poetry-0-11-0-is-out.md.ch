%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
---
layout: single
title: "Poetry 0.11.0 is out"
date: 2018-06-28 09:12:35
categories: [releases]
tags: ["0.x"]
@y
---
layout: single
title: "Poetry 0.11.0 is out"
date: 2018-06-28 09:12:35
categories: [releases]
tags: ["0.x"]
@z

@x
aliases:
  - poetry-0-11-0-is-out.html
---
@y
aliases:
  - poetry-0-11-0-is-out.html
---
@z

@x
This version brings a new `shell` command, dependency resolver improvements and improves stability.
@y
This version brings a new `shell` command, dependency resolver improvements and improves stability.
@z

@x
## New Features
@y
## New Features
@z

@x
### New `shell` command
@y
### New `shell` command
@z

@x
The newly introduced `shell` command helps you in your development workflow
by placing you in the proper project environment. This way you can omit the `poetry run` command.
@y
The newly introduced `shell` command helps you in your development workflow
by placing you in the proper project environment. This way you can omit the `poetry run` command.
@z

@x
Note that this command is a usability improvement and, as such, is completely optional and
any current workflow using the `poetry run` command will still work and is still the recommended
way of interacting with a Poetry project.
@y
Note that this command is a usability improvement and, as such, is completely optional and
any current workflow using the `poetry run` command will still work and is still the recommended
way of interacting with a Poetry project.
@z

@x
<aside class="note">
<p>The <code>shell</code> command tries its best to detect your current shell but sometimes will stil fail.
In this case, you can use <code>poetry run &lt;your-shell&gt;</code> to get the same behavior.</p>
</aside>
@y
<aside class="note">
<p>The <code>shell</code> command tries its best to detect your current shell but sometimes will stil fail.
In this case, you can use <code>poetry run &lt;your-shell&gt;</code> to get the same behavior.</p>
</aside>
@z

@x
### `packages` property
@y
### `packages` property
@z

@x
When you project does not follow the standard project structure supported by Poetry and
your packages lie somewhere else, you can use the `packages` property under the `tool.poetry` section.
@y
When you project does not follow the standard project structure supported by Poetry and
your packages lie somewhere else, you can use the `packages` property under the `tool.poetry` section.
@z

@x
```toml
[tool.poetry]
# ...
packages = [
    { include = "mypackage" },
    { include = "extra_package/**/*.py" },
]
```
@y
```toml
[tool.poetry]
# ...
packages = [
    { include = "mypackage" },
    { include = "extra_package/**/*.py" },
]
```
@z

@x
If your package is stored inside a "source" directory, you must specify it:
@y
If your package is stored inside a "source" directory, you must specify it:
@z

@x
```toml
[tool.poetry]
# ...
packages = [
    { include = "mypackage", from = "lib" },
]
```
@y
```toml
[tool.poetry]
# ...
packages = [
    { include = "mypackage", from = "lib" },
]
```
@z

@x
<aside class="note">
<p>Using <code>packages</code> disables the package auto-detection feature meaning you have to <strong>explicitly</strong> specify the "default" package.</p>
</aside>
@y
<aside class="note">
<p>Using <code>packages</code> disables the package auto-detection feature meaning you have to <strong>explicitly</strong> specify the "default" package.</p>
</aside>
@z

@x
<aside class="note">
<p>Poetry is clever enough to detect Python subpackages.</p>
<p>So, you only have to specify the directory where you root package resides.</p>
</aside>
@y
<aside class="note">
<p>Poetry is clever enough to detect Python subpackages.</p>
<p>So, you only have to specify the directory where you root package resides.</p>
</aside>
@z

@x
### `include` and `exclude` properties
@y
### `include` and `exclude` properties
@z

@x
You can explicitly specify to Poetry that a set of globs should be ignored or included for the purposes of packaging. The globs specified in the `exclude` field identify a set of files that are not included when a package is built.
@y
You can explicitly specify to Poetry that a set of globs should be ignored or included for the purposes of packaging. The globs specified in the `exclude` field identify a set of files that are not included when a package is built.
@z

@x
```toml
[tool.poetry]
# ...
include = [ "CHANGELOG.md" ]
exclude = [ "my_package/excluded.py" ]
```
@y
```toml
[tool.poetry]
# ...
include = [ "CHANGELOG.md" ]
exclude = [ "my_package/excluded.py" ]
```
@z

@x
## Changes
@y
## Changes
@z

@x
### Dependency resolver improvements
@y
### Dependency resolver improvements
@z

@x
#### Support for different version constraints for a same dependency
@y
#### Support for different version constraints for a same dependency
@z

@x
If a package the main project depends on has different version constraints for a same
package due to different system requirements (like the Python version), Poetry will
now properly resolve all branches caused by this.
@y
If a package the main project depends on has different version constraints for a same
package due to different system requirements (like the Python version), Poetry will
now properly resolve all branches caused by this.
@z

@x
Let's take an example: `docker`. `docker` depends on two versions of `pypiwin32`:
@y
Let's take an example: `docker`. `docker` depends on two versions of `pypiwin32`:
@z

@x
```text
pypiwin32 (==219); sys_platform == "win32" and python_version < "3.6"
pypiwin32 (==220); sys_platform == "win32" and python_version >= "3.6"
```
@y
```text
pypiwin32 (==219); sys_platform == "win32" and python_version < "3.6"
pypiwin32 (==220); sys_platform == "win32" and python_version >= "3.6"
```
@z

@x
So, if the main project supports Python < 3.6 and >= 3.6, poetry needs to lock both.
@y
So, if the main project supports Python < 3.6 and >= 3.6, poetry needs to lock both.
@z

@x
The resolver is now clever enough to resolve for both branches created by the `docker` package,
which in turn makes it no longer raise an error about a conflict which does not exist.
@y
The resolver is now clever enough to resolve for both branches created by the `docker` package,
which in turn makes it no longer raise an error about a conflict which does not exist.
@z

@x
#### Dependency installation order
@y
#### Dependency installation order
@z

@x
When installing resolved dependencies, Poetry will now install the deepest dependencies
first. This solves issues when a package needs one of its dependency at installation time.
@y
When installing resolved dependencies, Poetry will now install the deepest dependencies
first. This solves issues when a package needs one of its dependency at installation time.
@z

@x
#### Better error messages
@y
#### Better error messages
@z

@x
Error messages from the resolver are now better at explaining what happened.
@y
Error messages from the resolver are now better at explaining what happened.
@z

@x
For instance, if a conflict has been caused by incompatible Python versions the
error message will display the current Python version to provide more context:
@y
For instance, if a conflict has been caused by incompatible Python versions the
error message will display the current Python version to provide more context:
@z

@x
```text
[SolverProblemError]
The current supported Python versions are ~2.7
Because my-package depends on django (2.0.6) which requires Python >=3.4, version solving f
ailed.
```
@y
```text
[SolverProblemError]
The current supported Python versions are ~2.7
Because my-package depends on django (2.0.6) which requires Python >=3.4, version solving f
ailed.
```
@z

@x
### Other changes
@y
### Other changes
@z

@x
- `poetry` now always reads/writes the `pyproject.toml` file with the `utf-8` encoding.
- `config --list` now lists all available settings.
- `init` no longer adds `pytest` to development dependencies.
@y
- `poetry` now always reads/writes the `pyproject.toml` file with the `utf-8` encoding.
- `config --list` now lists all available settings.
- `init` no longer adds `pytest` to development dependencies.
@z

@x
## Fixes
@y
## Fixes
@z

@x
- Fixed handling of duplicate dependencies with different constraints.
- Fixed system requirements in lock file for sub dependencies.
- Fixed detection of new prereleases.
- Fixed unsafe packages being locked.
- Fixed versions detection in custom repositories.
- Fixed package finding with multiple custom repositories.
- Fixed handling of root incompatibilities.
- Fixed an error where packages from custom repositories would not be found.
- Fixed wildcard Python requirement being wrongly set in distributions metadata.
- Fixed installation of packages from a custom repository.
- Fixed `remove` command's case sensitivity. (Thanks to [@cauebs](https://github.com/cauebs))
- Fixed detection of `.egg-info` directory for non-poetry projects. (Thanks to [@gtors](https://github.com/gtors))
- Fixed only-wheel builds. (Thanks to [@gtors](https://github.com/gtors))
- Fixed key and array order in lock file to avoid having differences when relocking.
- Fixed errors when `git` could not be found.
@y
- Fixed handling of duplicate dependencies with different constraints.
- Fixed system requirements in lock file for sub dependencies.
- Fixed detection of new prereleases.
- Fixed unsafe packages being locked.
- Fixed versions detection in custom repositories.
- Fixed package finding with multiple custom repositories.
- Fixed handling of root incompatibilities.
- Fixed an error where packages from custom repositories would not be found.
- Fixed wildcard Python requirement being wrongly set in distributions metadata.
- Fixed installation of packages from a custom repository.
- Fixed `remove` command's case sensitivity. (Thanks to [@cauebs](https://github.com/cauebs))
- Fixed detection of `.egg-info` directory for non-poetry projects. (Thanks to [@gtors](https://github.com/gtors))
- Fixed only-wheel builds. (Thanks to [@gtors](https://github.com/gtors))
- Fixed key and array order in lock file to avoid having differences when relocking.
- Fixed errors when `git` could not be found.
@z
