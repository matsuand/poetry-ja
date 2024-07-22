%This is the change file for the original Poetry Documentation file.
%This is part of Japanese translation version for Poetry Documantation.

@x
title: "Commands"
@y
title: "コマンド"
@z

@x
# Commands
@y
# コマンド {#commands}
@z

@x
You've already learned how to use the command-line interface to do some things.
This chapter documents all the available commands.
@y
You've already learned how to use the command-line interface to do some things.
This chapter documents all the available commands.
@z

@x
To get help from the command-line, simply call `poetry` to see the complete list of commands,
then `--help` combined with any of those can give you more information.
@y
To get help from the command-line, simply call `poetry` to see the complete list of commands,
then `--help` combined with any of those can give you more information.
@z

@x
## Global options
@y
## グローバルオプション {#global-options}
@z

@x
* `--verbose (-v|vv|vvv)`: Increase the verbosity of messages: "-v" for normal output, "-vv" for more verbose output and "-vvv" for debug.
* `--help (-h)` : Display help information.
* `--quiet (-q)` : Do not output any message.
* `--ansi`: Force ANSI output.
* `--no-ansi`: Disable ANSI output.
* `--version (-V)`: Display this application version.
* `--no-interaction (-n)`: Do not ask any interactive question.
* `--no-plugins`: Disables plugins.
* `--no-cache`: Disables Poetry source caches.
* `--directory=DIRECTORY (-C)`: The working directory for the Poetry command (defaults to the current working directory).
@y
* `--verbose (-v|vv|vvv)`: Increase the verbosity of messages: "-v" for normal output, "-vv" for more verbose output and "-vvv" for debug.
* `--help (-h)` : Display help information.
* `--quiet (-q)` : Do not output any message.
* `--ansi`: Force ANSI output.
* `--no-ansi`: Disable ANSI output.
* `--version (-V)`: Display this application version.
* `--no-interaction (-n)`: Do not ask any interactive question.
* `--no-plugins`: Disables plugins.
* `--no-cache`: Disables Poetry source caches.
* `--directory=DIRECTORY (-C)`: The working directory for the Poetry command (defaults to the current working directory).
@z

@x
## new
@y
## new
@z

@x
This command will help you kickstart your new Python project by creating
a directory structure suitable for most projects.
@y
This command will help you kickstart your new Python project by creating
a directory structure suitable for most projects.
@z

@x
```bash
poetry new my-package
```
@y
```bash
poetry new my-package
```
@z

@x
will create a folder as follows:
@y
will create a folder as follows:
@z

@x
```text
my-package
├── pyproject.toml
├── README.md
├── my_package
│   └── __init__.py
└── tests
    └── __init__.py
```
@y
```text
my-package
├── pyproject.toml
├── README.md
├── my_package
│   └── __init__.py
└── tests
    └── __init__.py
```
@z

@x
If you want to name your project differently than the folder, you can pass
the `--name` option:
@y
If you want to name your project differently than the folder, you can pass
the `--name` option:
@z

@x
```bash
poetry new my-folder --name my-package
```
@y
```bash
poetry new my-folder --name my-package
```
@z

@x
If you want to use a src folder, you can use the `--src` option:
@y
If you want to use a src folder, you can use the `--src` option:
@z

@x
```bash
poetry new --src my-package
```
@y
```bash
poetry new --src my-package
```
@z

@x
That will create a folder structure as follows:
@y
That will create a folder structure as follows:
@z

@x
```text
my-package
├── pyproject.toml
├── README.md
├── src
│   └── my_package
│       └── __init__.py
└── tests
    └── __init__.py
```
@y
```text
my-package
├── pyproject.toml
├── README.md
├── src
│   └── my_package
│       └── __init__.py
└── tests
    └── __init__.py
```
@z

@x
The `--name` option is smart enough to detect namespace packages and create
the required structure for you.
@y
The `--name` option is smart enough to detect namespace packages and create
the required structure for you.
@z

@x
```bash
poetry new --src --name my.package my-package
```
@y
```bash
poetry new --src --name my.package my-package
```
@z

@x
will create the following structure:
@y
will create the following structure:
@z

@x
```text
my-package
├── pyproject.toml
├── README.md
├── src
│   └── my
│       └── package
│           └── __init__.py
└── tests
    └── __init__.py
```
@y
```text
my-package
├── pyproject.toml
├── README.md
├── src
│   └── my
│       └── package
│           └── __init__.py
└── tests
    └── __init__.py
```
@z

@x
### Options
@y
### Options
@z

@x
* `--interactive (-i)`: Allow interactive specification of project configuration.
* `--name`: Set the resulting package name.
* `--src`: Use the src layout for the project.
* `--readme`: Specify the readme file extension. Default is `md`. If you intend to publish to PyPI
  keep the [recommendations for a PyPI-friendly README](https://packaging.python.org/en/latest/guides/making-a-pypi-friendly-readme/)
  in mind.
* `--description`: Description of the package.
* `--author`: Author of the package.
* `--python` Compatible Python versions.
* `--dependency`: Package to require with a version constraint. Should be in format `foo:1.0.0`.
* `--dev-dependency`: Development requirements, see `--dependency`.
@y
* `--interactive (-i)`: Allow interactive specification of project configuration.
* `--name`: Set the resulting package name.
* `--src`: Use the src layout for the project.
* `--readme`: Specify the readme file extension. Default is `md`. If you intend to publish to PyPI
  keep the [recommendations for a PyPI-friendly README](https://packaging.python.org/en/latest/guides/making-a-pypi-friendly-readme/)
  in mind.
* `--description`: Description of the package.
* `--author`: Author of the package.
* `--python` Compatible Python versions.
* `--dependency`: Package to require with a version constraint. Should be in format `foo:1.0.0`.
* `--dev-dependency`: Development requirements, see `--dependency`.
@z

@x
## init
@y
## init
@z

@x
This command will help you create a `pyproject.toml` file interactively
by prompting you to provide basic information about your package.
@y
This command will help you create a `pyproject.toml` file interactively
by prompting you to provide basic information about your package.
@z

@x
It will interactively ask you to fill in the fields, while using some smart defaults.
@y
It will interactively ask you to fill in the fields, while using some smart defaults.
@z

@x
```bash
poetry init
```
@y
```bash
poetry init
```
@z

@x
### Options
@y
### Options
@z

@x
* `--name`: Name of the package.
* `--description`: Description of the package.
* `--author`: Author of the package.
* `--python` Compatible Python versions.
* `--dependency`: Package to require with a version constraint. Should be in format `foo:1.0.0`.
* `--dev-dependency`: Development requirements, see `--dependency`.
@y
* `--name`: Name of the package.
* `--description`: Description of the package.
* `--author`: Author of the package.
* `--python` Compatible Python versions.
* `--dependency`: Package to require with a version constraint. Should be in format `foo:1.0.0`.
* `--dev-dependency`: Development requirements, see `--dependency`.
@z

@x
## install
@y
## install
@z

@x
The `install` command reads the `pyproject.toml` file from the current project,
resolves the dependencies, and installs them.
@y
The `install` command reads the `pyproject.toml` file from the current project,
resolves the dependencies, and installs them.
@z

@x
```bash
poetry install
```
@y
```bash
poetry install
```
@z

@x
If there is a `poetry.lock` file in the current directory,
it will use the exact versions from there instead of resolving them.
This ensures that everyone using the library will get the same versions of the dependencies.
@y
If there is a `poetry.lock` file in the current directory,
it will use the exact versions from there instead of resolving them.
This ensures that everyone using the library will get the same versions of the dependencies.
@z

@x
If there is no `poetry.lock` file, Poetry will create one after dependency resolution.
@y
If there is no `poetry.lock` file, Poetry will create one after dependency resolution.
@z

@x
If you want to exclude one or more dependency groups for the installation, you can use
the `--without` option.
@y
If you want to exclude one or more dependency groups for the installation, you can use
the `--without` option.
@z

@x
```bash
poetry install --without test,docs
```
@y
```bash
poetry install --without test,docs
```
@z

@x
{{% note %}}
The `--no-dev` option is now deprecated. You should use the `--only main` or `--without dev` notation instead.
{{% /note %}}
@y
{{% note %}}
The `--no-dev` option is now deprecated. You should use the `--only main` or `--without dev` notation instead.
{{% /note %}}
@z

@x
You can also select optional dependency groups with the `--with` option.
@y
You can also select optional dependency groups with the `--with` option.
@z

@x
```bash
poetry install --with test,docs
```
@y
```bash
poetry install --with test,docs
```
@z

@x
It's also possible to only install specific dependency groups by using the `only` option.
@y
It's also possible to only install specific dependency groups by using the `only` option.
@z

@x
```bash
poetry install --only test,docs
```
@y
```bash
poetry install --only test,docs
```
@z

@x
To only install the project itself with no dependencies, use the `--only-root` flag.
@y
To only install the project itself with no dependencies, use the `--only-root` flag.
@z

@x
```bash
poetry install --only-root
```
@y
```bash
poetry install --only-root
```
@z

@x
See [Dependency groups]({{< relref "managing-dependencies#dependency-groups" >}}) for more information
about dependency groups.
@y
See [Dependency groups]({{< relref "managing-dependencies#dependency-groups" >}}) for more information
about dependency groups.
@z

@x
If you want to synchronize your environment – and ensure it matches the lock file – use the
`--sync` option.
@y
If you want to synchronize your environment – and ensure it matches the lock file – use the
`--sync` option.
@z

@x
```bash
poetry install --sync
```
@y
```bash
poetry install --sync
```
@z

@x
The `--sync` can be combined with group-related options:
@y
The `--sync` can be combined with group-related options:
@z

@x
```bash
poetry install --without dev --sync
poetry install --with docs --sync
poetry install --only dev --sync
```
@y
```bash
poetry install --without dev --sync
poetry install --with docs --sync
poetry install --only dev --sync
```
@z

@x
You can also specify the extras you want installed
by passing the `-E|--extras` option (See [Extras]({{< relref "pyproject#extras" >}}) for more info).
Pass `--all-extras` to install all defined extras for a project.
@y
You can also specify the extras you want installed
by passing the `-E|--extras` option (See [Extras]({{< relref "pyproject#extras" >}}) for more info).
Pass `--all-extras` to install all defined extras for a project.
@z

@x
```bash
poetry install --extras "mysql pgsql"
poetry install -E mysql -E pgsql
poetry install --all-extras
```
@y
```bash
poetry install --extras "mysql pgsql"
poetry install -E mysql -E pgsql
poetry install --all-extras
```
@z

@x
Extras are not sensitive to `--sync`.  Any extras not specified will always be removed.
@y
Extras are not sensitive to `--sync`.  Any extras not specified will always be removed.
@z

@x
```bash
poetry install --extras "A B"  # C is removed
```
@y
```bash
poetry install --extras "A B"  # C is removed
```
@z

@x
By default `poetry` will install your project's package every time you run `install`:
@y
By default `poetry` will install your project's package every time you run `install`:
@z

@x
```bash
$ poetry install
Installing dependencies from lock file
@y
```bash
$ poetry install
Installing dependencies from lock file
@z

@x
No dependencies to install or update
@y
No dependencies to install or update
@z

@x
  - Installing <your-package-name> (x.x.x)
```
@y
  - Installing <your-package-name> (x.x.x)
```
@z

@x
If you want to skip this installation, use the `--no-root` option.
@y
If you want to skip this installation, use the `--no-root` option.
@z

@x
```bash
poetry install --no-root
```
@y
```bash
poetry install --no-root
```
@z

@x
Similar to `--no-root` you can use `--no-directory` to skip directory path dependencies:
@y
Similar to `--no-root` you can use `--no-directory` to skip directory path dependencies:
@z

@x
```bash
poetry install --no-directory
```
@y
```bash
poetry install --no-directory
```
@z

@x
This is mainly useful for caching in CI or when building Docker images. See the [FAQ entry]({{< relref "faq#poetry-busts-my-docker-cache-because-it-requires-me-to-copy-my-source-files-in-before-installing-3rd-party-dependencies" >}}) for more information on this option.
@y
This is mainly useful for caching in CI or when building Docker images. See the [FAQ entry]({{< relref "faq#poetry-busts-my-docker-cache-because-it-requires-me-to-copy-my-source-files-in-before-installing-3rd-party-dependencies" >}}) for more information on this option.
@z

@x
By default `poetry` does not compile Python source files to bytecode during installation.
This speeds up the installation process, but the first execution may take a little more
time because Python then compiles source files to bytecode automatically.
If you want to compile source files to bytecode during installation,
you can use the `--compile` option:
@y
By default `poetry` does not compile Python source files to bytecode during installation.
This speeds up the installation process, but the first execution may take a little more
time because Python then compiles source files to bytecode automatically.
If you want to compile source files to bytecode during installation,
you can use the `--compile` option:
@z

@x
```bash
poetry install --compile
```
@y
```bash
poetry install --compile
```
@z

@x
### Options
@y
### Options
@z

@x
* `--without`: The dependency groups to ignore.
* `--with`: The optional dependency groups to include.
* `--only`: The only dependency groups to include.
* `--only-root`: Install only the root project, exclude all dependencies.
* `--sync`: Synchronize the environment with the locked packages and the specified groups.
* `--no-root`: Do not install the root package (your project).
* `--no-directory`: Skip all directory path dependencies (including transitive ones).
* `--dry-run`: Output the operations but do not execute anything (implicitly enables --verbose).
* `--extras (-E)`: Features to install (multiple values allowed).
* `--all-extras`: Install all extra features (conflicts with --extras).
* `--compile`: Compile Python source files to bytecode.
* `--no-dev`: Do not install dev dependencies. (**Deprecated**, use `--only main` or `--without dev` instead)
* `--remove-untracked`: Remove dependencies not presented in the lock file. (**Deprecated**, use `--sync` instead)
@y
* `--without`: The dependency groups to ignore.
* `--with`: The optional dependency groups to include.
* `--only`: The only dependency groups to include.
* `--only-root`: Install only the root project, exclude all dependencies.
* `--sync`: Synchronize the environment with the locked packages and the specified groups.
* `--no-root`: Do not install the root package (your project).
* `--no-directory`: Skip all directory path dependencies (including transitive ones).
* `--dry-run`: Output the operations but do not execute anything (implicitly enables --verbose).
* `--extras (-E)`: Features to install (multiple values allowed).
* `--all-extras`: Install all extra features (conflicts with --extras).
* `--compile`: Compile Python source files to bytecode.
* `--no-dev`: Do not install dev dependencies. (**Deprecated**, use `--only main` or `--without dev` instead)
* `--remove-untracked`: Remove dependencies not presented in the lock file. (**Deprecated**, use `--sync` instead)
@z

@x
{{% note %}}
When `--only` is specified, `--with` and `--without` options are ignored.
{{% /note %}}
@y
{{% note %}}
When `--only` is specified, `--with` and `--without` options are ignored.
{{% /note %}}
@z

@x
## update
@y
## update
@z

@x
In order to get the latest versions of the dependencies and to update the `poetry.lock` file,
you should use the `update` command.
@y
In order to get the latest versions of the dependencies and to update the `poetry.lock` file,
you should use the `update` command.
@z

@x
```bash
poetry update
```
@y
```bash
poetry update
```
@z

@x
This will resolve all dependencies of the project and write the exact versions into `poetry.lock`.
@y
This will resolve all dependencies of the project and write the exact versions into `poetry.lock`.
@z

@x
If you just want to update a few packages and not all, you can list them as such:
@y
If you just want to update a few packages and not all, you can list them as such:
@z

@x
```bash
poetry update requests toml
```
@y
```bash
poetry update requests toml
```
@z

@x
Note that this will not update versions for dependencies outside their
[version constraints]({{< relref "dependency-specification#version-constraints" >}})
specified in the `pyproject.toml` file.
In other terms, `poetry update foo` will be a no-op if the version constraint
specified for `foo` is `~2.3` or `2.3` and `2.4` is available.
In order for `foo` to be updated, you must update the constraint, for example `^2.3`.
You can do this using the `add` command.
@y
Note that this will not update versions for dependencies outside their
[version constraints]({{< relref "dependency-specification#version-constraints" >}})
specified in the `pyproject.toml` file.
In other terms, `poetry update foo` will be a no-op if the version constraint
specified for `foo` is `~2.3` or `2.3` and `2.4` is available.
In order for `foo` to be updated, you must update the constraint, for example `^2.3`.
You can do this using the `add` command.
@z

@x
### Options
@y
### Options
@z

@x
* `--without`: The dependency groups to ignore.
* `--with`: The optional dependency groups to include.
* `--only`: The only dependency groups to include.
* `--dry-run` : Outputs the operations but will not execute anything (implicitly enables --verbose).
* `--no-dev` : Do not update the development dependencies. (**Deprecated**, use `--only main` or `--without dev` instead)
* `--lock` : Do not perform install (only update the lockfile).
* `--sync`: Synchronize the environment with the locked packages and the specified groups.
@y
* `--without`: The dependency groups to ignore.
* `--with`: The optional dependency groups to include.
* `--only`: The only dependency groups to include.
* `--dry-run` : Outputs the operations but will not execute anything (implicitly enables --verbose).
* `--no-dev` : Do not update the development dependencies. (**Deprecated**, use `--only main` or `--without dev` instead)
* `--lock` : Do not perform install (only update the lockfile).
* `--sync`: Synchronize the environment with the locked packages and the specified groups.
@z

@x
{{% note %}}
When `--only` is specified, `--with` and `--without` options are ignored.
{{% /note %}}
@y
{{% note %}}
When `--only` is specified, `--with` and `--without` options are ignored.
{{% /note %}}
@z

@x
## add
@y
## add
@z

@x
The `add` command adds required packages to your `pyproject.toml` and installs them.
@y
The `add` command adds required packages to your `pyproject.toml` and installs them.
@z

@x
If you do not specify a version constraint,
poetry will choose a suitable one based on the available package versions.
@y
If you do not specify a version constraint,
poetry will choose a suitable one based on the available package versions.
@z

@x
```bash
poetry add requests pendulum
```
@y
```bash
poetry add requests pendulum
```
@z

@x
{{% note %}}
A package is looked up, by default, only from the [Default Package Source]({{< relref "repositories/#default-package-source" >}}).
You can modify the default source (PyPI); or add and use [Supplemental Package Sources]({{< relref "repositories/#supplemental-package-sources" >}})
or [Explicit Package Sources]({{< relref "repositories/#explicit-package-sources" >}}).
@y
{{% note %}}
A package is looked up, by default, only from the [Default Package Source]({{< relref "repositories/#default-package-source" >}}).
You can modify the default source (PyPI); or add and use [Supplemental Package Sources]({{< relref "repositories/#supplemental-package-sources" >}})
or [Explicit Package Sources]({{< relref "repositories/#explicit-package-sources" >}}).
@z

@x
For more information, refer to the [Package Sources]({{< relref "repositories/#package-sources" >}}) documentation.
{{% /note %}}
@y
For more information, refer to the [Package Sources]({{< relref "repositories/#package-sources" >}}) documentation.
{{% /note %}}
@z

@x
You can also specify a constraint when adding a package:
@y
You can also specify a constraint when adding a package:
@z

@x
```bash
# Allow >=2.0.5, <3.0.0 versions
poetry add pendulum@^2.0.5
@y
```bash
# Allow >=2.0.5, <3.0.0 versions
poetry add pendulum@^2.0.5
@z

@x
# Allow >=2.0.5, <2.1.0 versions
poetry add pendulum@~2.0.5
@y
# Allow >=2.0.5, <2.1.0 versions
poetry add pendulum@~2.0.5
@z

@x
# Allow >=2.0.5 versions, without upper bound
poetry add "pendulum>=2.0.5"
@y
# Allow >=2.0.5 versions, without upper bound
poetry add "pendulum>=2.0.5"
@z

@x
# Allow only 2.0.5 version
poetry add pendulum==2.0.5
```
@y
# Allow only 2.0.5 version
poetry add pendulum==2.0.5
```
@z

@x
{{% note %}}
See the [Dependency specification]({{< relref "dependency-specification#using-the--operator" >}}) page for more information about the `@` operator.
{{% /note %}}
@y
{{% note %}}
See the [Dependency specification]({{< relref "dependency-specification#using-the--operator" >}}) page for more information about the `@` operator.
{{% /note %}}
@z

@x
If you try to add a package that is already present, you will get an error.
However, if you specify a constraint, like above, the dependency will be updated
by using the specified constraint.
@y
If you try to add a package that is already present, you will get an error.
However, if you specify a constraint, like above, the dependency will be updated
by using the specified constraint.
@z

@x
If you want to get the latest version of an already
present dependency, you can use the special `latest` constraint:
@y
If you want to get the latest version of an already
present dependency, you can use the special `latest` constraint:
@z

@x
```bash
poetry add pendulum@latest
```
@y
```bash
poetry add pendulum@latest
```
@z

@x
{{% note %}}
See the [Dependency specification]({{< relref "dependency-specification" >}}) for more information on setting the version constraints for a package.
{{% /note %}}
@y
{{% note %}}
See the [Dependency specification]({{< relref "dependency-specification" >}}) for more information on setting the version constraints for a package.
{{% /note %}}
@z

@x
You can also add `git` dependencies:
@y
You can also add `git` dependencies:
@z

@x
```bash
poetry add git+https://github.com/sdispater/pendulum.git
```
@y
```bash
poetry add git+https://github.com/sdispater/pendulum.git
```
@z

@x
or use ssh instead of https:
@y
or use ssh instead of https:
@z

@x
```bash
poetry add git+ssh://git@github.com/sdispater/pendulum.git
@y
```bash
poetry add git+ssh://git@github.com/sdispater/pendulum.git
@z

@x
# or alternatively:
poetry add git+ssh://git@github.com:sdispater/pendulum.git
```
@y
# or alternatively:
poetry add git+ssh://git@github.com:sdispater/pendulum.git
```
@z

@x
If you need to checkout a specific branch, tag or revision,
you can specify it when using `add`:
@y
If you need to checkout a specific branch, tag or revision,
you can specify it when using `add`:
@z

@x
```bash
poetry add git+https://github.com/sdispater/pendulum.git#develop
poetry add git+https://github.com/sdispater/pendulum.git#2.0.5
@y
```bash
poetry add git+https://github.com/sdispater/pendulum.git#develop
poetry add git+https://github.com/sdispater/pendulum.git#2.0.5
@z

@x
# or using SSH instead:
poetry add git+ssh://git@github.com:sdispater/pendulum.git#develop
poetry add git+ssh://git@github.com:sdispater/pendulum.git#2.0.5
```
@y
# or using SSH instead:
poetry add git+ssh://git@github.com:sdispater/pendulum.git#develop
poetry add git+ssh://git@github.com:sdispater/pendulum.git#2.0.5
```
@z

@x
or reference a subdirectory:
@y
or reference a subdirectory:
@z

@x
```bash
poetry add git+https://github.com/myorg/mypackage_with_subdirs.git@main#subdirectory=subdir
```
@y
```bash
poetry add git+https://github.com/myorg/mypackage_with_subdirs.git@main#subdirectory=subdir
```
@z

@x
You can also add a local directory or file:
@y
You can also add a local directory or file:
@z

@x
```bash
poetry add ./my-package/
poetry add ../my-package/dist/my-package-0.1.0.tar.gz
poetry add ../my-package/dist/my_package-0.1.0.whl
```
@y
```bash
poetry add ./my-package/
poetry add ../my-package/dist/my-package-0.1.0.tar.gz
poetry add ../my-package/dist/my_package-0.1.0.whl
```
@z

@x
If you want the dependency to be installed in editable mode you can use the `--editable` option.
@y
If you want the dependency to be installed in editable mode you can use the `--editable` option.
@z

@x
```bash
poetry add --editable ./my-package/
poetry add --editable git+ssh://github.com/sdispater/pendulum.git#develop
```
@y
```bash
poetry add --editable ./my-package/
poetry add --editable git+ssh://github.com/sdispater/pendulum.git#develop
```
@z

@x
Alternatively, you can specify it in the `pyproject.toml` file. It means that changes in the local directory will be reflected directly in environment.
@y
Alternatively, you can specify it in the `pyproject.toml` file. It means that changes in the local directory will be reflected directly in environment.
@z

@x
```toml
[tool.poetry.dependencies]
my-package = {path = "../my/path", develop = true}
```
@y
```toml
[tool.poetry.dependencies]
my-package = {path = "../my/path", develop = true}
```
@z

@x
{{% note %}}
Before poetry 1.1 path dependencies were installed in editable mode by default. You should always set the `develop` attribute explicitly,
to make sure the behavior is the same for all poetry versions.
{{% /note %}}
@y
{{% note %}}
Before poetry 1.1 path dependencies were installed in editable mode by default. You should always set the `develop` attribute explicitly,
to make sure the behavior is the same for all poetry versions.
{{% /note %}}
@z

@x
{{% note %}}
The `develop` attribute is a Poetry-specific feature, so it is not included in the package distribution metadata.
In other words, it is only considered when using Poetry to install the project.
{{% /note %}}
@y
{{% note %}}
The `develop` attribute is a Poetry-specific feature, so it is not included in the package distribution metadata.
In other words, it is only considered when using Poetry to install the project.
{{% /note %}}
@z

@x
If the package(s) you want to install provide extras, you can specify them
when adding the package:
@y
If the package(s) you want to install provide extras, you can specify them
when adding the package:
@z

@x
```bash
poetry add "requests[security,socks]"
poetry add "requests[security,socks]~=2.22.0"
poetry add "git+https://github.com/pallets/flask.git@1.1.1[dotenv,dev]"
```
@y
```bash
poetry add "requests[security,socks]"
poetry add "requests[security,socks]~=2.22.0"
poetry add "git+https://github.com/pallets/flask.git@1.1.1[dotenv,dev]"
```
@z

@x
{{% warning %}}
Some shells may treat square braces (`[` and `]`) as special characters. It is suggested to always quote arguments containing these characters to prevent unexpected shell expansion.
{{% /warning %}}
@y
{{% warning %}}
Some shells may treat square braces (`[` and `]`) as special characters. It is suggested to always quote arguments containing these characters to prevent unexpected shell expansion.
{{% /warning %}}
@z

@x
If you want to add a package to a specific group of dependencies, you can use the `--group (-G)` option:
@y
If you want to add a package to a specific group of dependencies, you can use the `--group (-G)` option:
@z

@x
```bash
poetry add mkdocs --group docs
```
@y
```bash
poetry add mkdocs --group docs
```
@z

@x
See [Dependency groups]({{< relref "managing-dependencies#dependency-groups" >}}) for more information
about dependency groups.
@y
See [Dependency groups]({{< relref "managing-dependencies#dependency-groups" >}}) for more information
about dependency groups.
@z

@x
### Options
@y
### Options
@z

@x
* `--group (-G)`: The group to add the dependency to.
* `--dev (-D)`: Add package as development dependency. (**Deprecated**, use `-G dev` instead)
* `--editable (-e)`: Add vcs/path dependencies as editable.
* `--extras (-E)`: Extras to activate for the dependency. (multiple values allowed)
* `--optional`: Add as an optional dependency.
* `--python`: Python version for which the dependency must be installed.
* `--platform`: Platforms for which the dependency must be installed.
* `--source`: Name of the source to use to install the package.
* `--allow-prereleases`: Accept prereleases.
* `--dry-run`: Output the operations but do not execute anything (implicitly enables --verbose).
* `--lock`: Do not perform install (only update the lockfile).
@y
* `--group (-G)`: The group to add the dependency to.
* `--dev (-D)`: Add package as development dependency. (**Deprecated**, use `-G dev` instead)
* `--editable (-e)`: Add vcs/path dependencies as editable.
* `--extras (-E)`: Extras to activate for the dependency. (multiple values allowed)
* `--optional`: Add as an optional dependency.
* `--python`: Python version for which the dependency must be installed.
* `--platform`: Platforms for which the dependency must be installed.
* `--source`: Name of the source to use to install the package.
* `--allow-prereleases`: Accept prereleases.
* `--dry-run`: Output the operations but do not execute anything (implicitly enables --verbose).
* `--lock`: Do not perform install (only update the lockfile).
@z

@x
## remove
@y
## remove
@z

@x
The `remove` command removes a package from the current
list of installed packages.
@y
The `remove` command removes a package from the current
list of installed packages.
@z

@x
```bash
poetry remove pendulum
```
@y
```bash
poetry remove pendulum
```
@z

@x
If you want to remove a package from a specific group of dependencies, you can use the `--group (-G)` option:
@y
If you want to remove a package from a specific group of dependencies, you can use the `--group (-G)` option:
@z

@x
```bash
poetry remove mkdocs --group docs
```
@y
```bash
poetry remove mkdocs --group docs
```
@z

@x
See [Dependency groups]({{< relref "managing-dependencies#dependency-groups" >}}) for more information
about dependency groups.
@y
See [Dependency groups]({{< relref "managing-dependencies#dependency-groups" >}}) for more information
about dependency groups.
@z

@x
### Options
@y
### Options
@z

@x
* `--group (-G)`: The group to remove the dependency from.
* `--dev (-D)`: Removes a package from the development dependencies. (**Deprecated**, use `-G dev` instead)
* `--dry-run` : Outputs the operations but will not execute anything (implicitly enables --verbose).
* `--lock`: Do not perform operations (only update the lockfile).
@y
* `--group (-G)`: The group to remove the dependency from.
* `--dev (-D)`: Removes a package from the development dependencies. (**Deprecated**, use `-G dev` instead)
* `--dry-run` : Outputs the operations but will not execute anything (implicitly enables --verbose).
* `--lock`: Do not perform operations (only update the lockfile).
@z

@x
## show
@y
## show
@z

@x
To list all the available packages, you can use the `show` command.
@y
To list all the available packages, you can use the `show` command.
@z

@x
```bash
poetry show
```
@y
```bash
poetry show
```
@z

@x
If you want to see the details of a certain package, you can pass the package name.
@y
If you want to see the details of a certain package, you can pass the package name.
@z

@x
```bash
poetry show pendulum
@y
```bash
poetry show pendulum
@z

@x
name        : pendulum
version     : 1.4.2
description : Python datetimes made easy
@y
name        : pendulum
version     : 1.4.2
description : Python datetimes made easy
@z

@x
dependencies
 - python-dateutil >=2.6.1
 - tzlocal >=1.4
 - pytzdata >=2017.2.2
@y
dependencies
 - python-dateutil >=2.6.1
 - tzlocal >=1.4
 - pytzdata >=2017.2.2
@z

@x
required by
 - calendar >=1.4.0
```
@y
required by
 - calendar >=1.4.0
```
@z

@x
### Options
@y
### Options
@z

@x
* `--without`: The dependency groups to ignore.
* `--why`: When showing the full list, or a `--tree` for a single package, display whether they are a direct dependency or required by other packages.
* `--with`: The optional dependency groups to include.
* `--only`: The only dependency groups to include.
* `--no-dev`: Do not list the dev dependencies. (**Deprecated**, use `--only main` or `--without dev` instead)
* `--tree`: List the dependencies as a tree.
* `--latest (-l)`: Show the latest version.
* `--outdated (-o)`: Show the latest version but only for packages that are outdated.
* `--all (-a)`: Show all packages (even those not compatible with current system).
* `--top-level (-T)`: Only show explicitly defined packages.
@y
* `--without`: The dependency groups to ignore.
* `--why`: When showing the full list, or a `--tree` for a single package, display whether they are a direct dependency or required by other packages.
* `--with`: The optional dependency groups to include.
* `--only`: The only dependency groups to include.
* `--no-dev`: Do not list the dev dependencies. (**Deprecated**, use `--only main` or `--without dev` instead)
* `--tree`: List the dependencies as a tree.
* `--latest (-l)`: Show the latest version.
* `--outdated (-o)`: Show the latest version but only for packages that are outdated.
* `--all (-a)`: Show all packages (even those not compatible with current system).
* `--top-level (-T)`: Only show explicitly defined packages.
@z

@x
{{% note %}}
When `--only` is specified, `--with` and `--without` options are ignored.
{{% /note %}}
@y
{{% note %}}
When `--only` is specified, `--with` and `--without` options are ignored.
{{% /note %}}
@z

@x
## build
@y
## build
@z

@x
The `build` command builds the source and wheels archives.
@y
The `build` command builds the source and wheels archives.
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
Note that, at the moment, only pure python wheels are supported.
@y
Note that, at the moment, only pure python wheels are supported.
@z

@x
### Options
@y
### Options
@z

@x
* `--format (-f)`: Limit the format to either `wheel` or `sdist`.
* `--clean`: Clean output directory before building.
* `--local-version (-l)`: Add or replace a local version label to the build.
* `--output (-o)`: Set output directory for build artifacts. Default is `dist`.
@y
* `--format (-f)`: Limit the format to either `wheel` or `sdist`.
* `--clean`: Clean output directory before building.
* `--local-version (-l)`: Add or replace a local version label to the build.
* `--output (-o)`: Set output directory for build artifacts. Default is `dist`.
@z

@x
{{% note %}}
When using `--local-version`, the identifier must be [PEP 440](https://peps.python.org/pep-0440/#local-version-identifiers)
compliant. This is useful for adding build numbers, platform specificities etc. for private packages.
{{% /note %}}
@y
{{% note %}}
When using `--local-version`, the identifier must be [PEP 440](https://peps.python.org/pep-0440/#local-version-identifiers)
compliant. This is useful for adding build numbers, platform specificities etc. for private packages.
{{% /note %}}
@z

@x
{{% warning %}}
Local version identifiers SHOULD NOT be used when publishing upstream projects to a public index server, but MAY be
used to identify private builds created directly from the project source.
@y
{{% warning %}}
Local version identifiers SHOULD NOT be used when publishing upstream projects to a public index server, but MAY be
used to identify private builds created directly from the project source.
@z

@x
See [PEP 440](https://peps.python.org/pep-0440/#local-version-identifiers) for more information.
{{% /warning %}}
@y
See [PEP 440](https://peps.python.org/pep-0440/#local-version-identifiers) for more information.
{{% /warning %}}
@z

@x
## publish
@y
## publish
@z

@x
This command publishes the package, previously built with the [`build`](#build) command, to the remote repository.
@y
This command publishes the package, previously built with the [`build`](#build) command, to the remote repository.
@z

@x
It will automatically register the package before uploading if this is the first time it is submitted.
@y
It will automatically register the package before uploading if this is the first time it is submitted.
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
It can also build the package if you pass it the `--build` option.
@y
It can also build the package if you pass it the `--build` option.
@z

@x
{{% note %}}
See [Publishable Repositories]({{< relref "repositories/#publishable-repositories" >}}) for more information on how to configure and use publishable repositories.
{{% /note %}}
@y
{{% note %}}
See [Publishable Repositories]({{< relref "repositories/#publishable-repositories" >}}) for more information on how to configure and use publishable repositories.
{{% /note %}}
@z

@x
### Options
@y
### Options
@z

@x
* `--repository (-r)`: The repository to register the package to (default: `pypi`).
Should match a repository name set by the [`config`](#config) command.
* `--username (-u)`: The username to access the repository.
* `--password (-p)`: The password to access the repository.
* `--cert`: Certificate authority to access the repository.
* `--client-cert`: Client certificate to access the repository.
* `--dist-dir`: Dist directory where built artifact are stored. Default is `dist`.
* `--build`: Build the package before publishing.
* `--dry-run`: Perform all actions except upload the package.
* `--skip-existing`: Ignore errors from files already existing in the repository.
@y
* `--repository (-r)`: The repository to register the package to (default: `pypi`).
Should match a repository name set by the [`config`](#config) command.
* `--username (-u)`: The username to access the repository.
* `--password (-p)`: The password to access the repository.
* `--cert`: Certificate authority to access the repository.
* `--client-cert`: Client certificate to access the repository.
* `--dist-dir`: Dist directory where built artifact are stored. Default is `dist`.
* `--build`: Build the package before publishing.
* `--dry-run`: Perform all actions except upload the package.
* `--skip-existing`: Ignore errors from files already existing in the repository.
@z

@x
{{% note %}}
See [Configuring Credentials]({{< relref "repositories/#configuring-credentials" >}}) for more information on how to configure credentials.
{{% /note %}}
@y
{{% note %}}
See [Configuring Credentials]({{< relref "repositories/#configuring-credentials" >}}) for more information on how to configure credentials.
{{% /note %}}
@z

@x
## config
@y
## config
@z

@x
The `config` command allows you to edit poetry config settings and repositories.
@y
The `config` command allows you to edit poetry config settings and repositories.
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
### Usage
@y
### Usage
@z

@x
````bash
poetry config [options] [setting-key] [setting-value1] ... [setting-valueN]
````
@y
````bash
poetry config [options] [setting-key] [setting-value1] ... [setting-valueN]
````
@z

@x
`setting-key` is a configuration option name and `setting-value1` is a configuration value.
See [Configuration]({{< relref "configuration" >}}) for all available settings.
@y
`setting-key` is a configuration option name and `setting-value1` is a configuration value.
See [Configuration]({{< relref "configuration" >}}) for all available settings.
@z

@x
{{% warning %}}
Use `--` to terminate option parsing if your values may start with a hyphen (`-`), e.g.
```bash
poetry config http-basic.custom-repo gitlab-ci-token -- ${GITLAB_JOB_TOKEN}
```
Without `--` this command will fail if `${GITLAB_JOB_TOKEN}` starts with a hyphen.
{{% /warning%}}
@y
{{% warning %}}
Use `--` to terminate option parsing if your values may start with a hyphen (`-`), e.g.
```bash
poetry config http-basic.custom-repo gitlab-ci-token -- ${GITLAB_JOB_TOKEN}
```
Without `--` this command will fail if `${GITLAB_JOB_TOKEN}` starts with a hyphen.
{{% /warning%}}
@z

@x
### Options
@y
### Options
@z

@x
* `--unset`: Remove the configuration element named by `setting-key`.
* `--list`: Show the list of current config variables.
* `--local`: Set/Get settings that are specific to a project (in the local configuration file `poetry.toml`).
@y
* `--unset`: Remove the configuration element named by `setting-key`.
* `--list`: Show the list of current config variables.
* `--local`: Set/Get settings that are specific to a project (in the local configuration file `poetry.toml`).
@z

@x
## run
@y
## run
@z

@x
The `run` command executes the given command inside the project's virtualenv.
@y
The `run` command executes the given command inside the project's virtualenv.
@z

@x
```bash
poetry run python -V
```
@y
```bash
poetry run python -V
```
@z

@x
It can also execute one of the scripts defined in `pyproject.toml`.
@y
It can also execute one of the scripts defined in `pyproject.toml`.
@z

@x
So, if you have a script defined like this:
@y
So, if you have a script defined like this:
@z

@x
```toml
[tool.poetry.scripts]
my-script = "my_module:main"
```
@y
```toml
[tool.poetry.scripts]
my-script = "my_module:main"
```
@z

@x
You can execute it like so:
@y
You can execute it like so:
@z

@x
```bash
poetry run my-script
```
@y
```bash
poetry run my-script
```
@z

@x
Note that this command has no option.
@y
Note that this command has no option.
@z

@x
## shell
@y
## shell
@z

@x
The shell command spawns a shell within the project's virtual environment.
@y
The shell command spawns a shell within the project's virtual environment.
@z

@x
By default, the current active shell is detected and used. Failing that,
the shell defined via the environment variable `SHELL` (on *nix) or
`COMSPEC` (on Windows) is used.
@y
By default, the current active shell is detected and used. Failing that,
the shell defined via the environment variable `SHELL` (on *nix) or
`COMSPEC` (on Windows) is used.
@z

@x
If a virtual environment does not exist, it will be created.
@y
If a virtual environment does not exist, it will be created.
@z

@x
```bash
poetry shell
```
@y
```bash
poetry shell
```
@z

@x
Note that this command starts a new shell and activates the virtual environment.
@y
Note that this command starts a new shell and activates the virtual environment.
@z

@x
As such, `exit` should be used to properly exit the shell and the virtual environment instead of `deactivate`.
@y
As such, `exit` should be used to properly exit the shell and the virtual environment instead of `deactivate`.
@z

@x
{{% note %}}
Poetry internally uses the [Shellingham](https://github.com/sarugaku/shellingham) project to detect current
active shell.
{{% /note %}}
@y
{{% note %}}
Poetry internally uses the [Shellingham](https://github.com/sarugaku/shellingham) project to detect current
active shell.
{{% /note %}}
@z

@x
## check
@y
## check
@z

@x
The `check` command validates the content of the `pyproject.toml` file
and its consistency with the `poetry.lock` file.
It returns a detailed report if there are any errors.
@y
The `check` command validates the content of the `pyproject.toml` file
and its consistency with the `poetry.lock` file.
It returns a detailed report if there are any errors.
@z

@x
{{% note %}}
This command is also available as a pre-commit hook. See [pre-commit hooks]({{< relref "pre-commit-hooks#poetry-check">}}) for more information.
{{% /note %}}
@y
{{% note %}}
This command is also available as a pre-commit hook. See [pre-commit hooks]({{< relref "pre-commit-hooks#poetry-check">}}) for more information.
{{% /note %}}
@z

@x
```bash
poetry check
```
@y
```bash
poetry check
```
@z

@x
### Options
@y
### Options
@z

@x
* `--lock`: Verifies that `poetry.lock` exists for the current `pyproject.toml`.
@y
* `--lock`: Verifies that `poetry.lock` exists for the current `pyproject.toml`.
@z

@x
## search
@y
## search
@z

@x
This command searches for packages on a remote index.
@y
This command searches for packages on a remote index.
@z

@x
```bash
poetry search requests pendulum
```
@y
```bash
poetry search requests pendulum
```
@z

@x
## lock
@y
## lock
@z

@x
This command locks (without installing) the dependencies specified in `pyproject.toml`.
@y
This command locks (without installing) the dependencies specified in `pyproject.toml`.
@z

@x
{{% note %}}
By default, this will lock all dependencies to the latest available compatible versions. To only refresh the lock file, use the `--no-update` option.
This command is also available as a pre-commit hook. See [pre-commit hooks]({{< relref "pre-commit-hooks#poetry-lock">}}) for more information.
{{% /note %}}
@y
{{% note %}}
By default, this will lock all dependencies to the latest available compatible versions. To only refresh the lock file, use the `--no-update` option.
This command is also available as a pre-commit hook. See [pre-commit hooks]({{< relref "pre-commit-hooks#poetry-lock">}}) for more information.
{{% /note %}}
@z

@x
```bash
poetry lock
```
@y
```bash
poetry lock
```
@z

@x
### Options
@y
### Options
@z

@x
* `--check`: Verify that `poetry.lock` is consistent with `pyproject.toml`. (**Deprecated**) Use `poetry check --lock` instead.
* `--no-update`: Do not update locked versions, only refresh lock file.
@y
* `--check`: Verify that `poetry.lock` is consistent with `pyproject.toml`. (**Deprecated**) Use `poetry check --lock` instead.
* `--no-update`: Do not update locked versions, only refresh lock file.
@z

@x
## version
@y
## version
@z

@x
This command shows the current version of the project or bumps the version of
the project and writes the new version back to `pyproject.toml` if a valid
bump rule is provided.
@y
This command shows the current version of the project or bumps the version of
the project and writes the new version back to `pyproject.toml` if a valid
bump rule is provided.
@z

@x
The new version should be a valid [PEP 440](https://peps.python.org/pep-0440/)
string or a valid bump rule: `patch`, `minor`, `major`, `prepatch`, `preminor`,
`premajor`, `prerelease`.
@y
The new version should be a valid [PEP 440](https://peps.python.org/pep-0440/)
string or a valid bump rule: `patch`, `minor`, `major`, `prepatch`, `preminor`,
`premajor`, `prerelease`.
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
If you would like to use semantic versioning for your project, please see
[here]({{< relref "libraries#versioning" >}}).
@y
If you would like to use semantic versioning for your project, please see
[here]({{< relref "libraries#versioning" >}}).
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
The table below illustrates the effect of these rules with concrete examples.
@y
The table below illustrates the effect of these rules with concrete examples.
@z

@x
| rule       | before  | after   |
| ---------- |---------|---------|
| major      | 1.3.0   | 2.0.0   |
| minor      | 2.1.4   | 2.2.0   |
| patch      | 4.1.1   | 4.1.2   |
| premajor   | 1.0.2   | 2.0.0a0 |
| preminor   | 1.0.2   | 1.1.0a0 |
| prepatch   | 1.0.2   | 1.0.3a0 |
| prerelease | 1.0.2   | 1.0.3a0 |
| prerelease | 1.0.3a0 | 1.0.3a1 |
| prerelease | 1.0.3b0 | 1.0.3b1 |
@y
| rule       | before  | after   |
| ---------- |---------|---------|
| major      | 1.3.0   | 2.0.0   |
| minor      | 2.1.4   | 2.2.0   |
| patch      | 4.1.1   | 4.1.2   |
| premajor   | 1.0.2   | 2.0.0a0 |
| preminor   | 1.0.2   | 1.1.0a0 |
| prepatch   | 1.0.2   | 1.0.3a0 |
| prerelease | 1.0.2   | 1.0.3a0 |
| prerelease | 1.0.3a0 | 1.0.3a1 |
| prerelease | 1.0.3b0 | 1.0.3b1 |
@z

@x
The option `--next-phase` allows the increment of prerelease phase versions.
@y
The option `--next-phase` allows the increment of prerelease phase versions.
@z

@x
| rule                    | before   | after    |
|-------------------------|----------|----------|
| prerelease --next-phase | 1.0.3a0  | 1.0.3b0  |
| prerelease --next-phase | 1.0.3b0  | 1.0.3rc0 |
| prerelease --next-phase | 1.0.3rc0 | 1.0.3    |
@y
| rule                    | before   | after    |
|-------------------------|----------|----------|
| prerelease --next-phase | 1.0.3a0  | 1.0.3b0  |
| prerelease --next-phase | 1.0.3b0  | 1.0.3rc0 |
| prerelease --next-phase | 1.0.3rc0 | 1.0.3    |
@z

@x
### Options
@y
### Options
@z

@x
* `--next-phase`: Increment the phase of the current version.
* `--short (-s)`: Output the version number only.
* `--dry-run`: Do not update pyproject.toml file.
@y
* `--next-phase`: Increment the phase of the current version.
* `--short (-s)`: Output the version number only.
* `--dry-run`: Do not update pyproject.toml file.
@z

@x
## export
@y
## export
@z

@x
This command exports the lock file to other formats.
@y
This command exports the lock file to other formats.
@z

@x
```bash
poetry export -f requirements.txt --output requirements.txt
```
@y
```bash
poetry export -f requirements.txt --output requirements.txt
```
@z

@x
{{% warning %}}
This command is provided by the [Export Poetry Plugin](https://github.com/python-poetry/poetry-plugin-export).
In a future version of Poetry this plugin will not be installed by default anymore.
In order to avoid a breaking change and make your automation forward-compatible,
please install poetry-plugin-export explicitly.
See [Using plugins]({{< relref "plugins#using-plugins" >}}) for details on how to install a plugin.
{{% /warning %}}
@y
{{% warning %}}
This command is provided by the [Export Poetry Plugin](https://github.com/python-poetry/poetry-plugin-export).
In a future version of Poetry this plugin will not be installed by default anymore.
In order to avoid a breaking change and make your automation forward-compatible,
please install poetry-plugin-export explicitly.
See [Using plugins]({{< relref "plugins#using-plugins" >}}) for details on how to install a plugin.
{{% /warning %}}
@z

@x
{{% note %}}
This command is also available as a pre-commit hook.
See [pre-commit hooks]({{< relref "pre-commit-hooks#poetry-export" >}}) for more information.
{{% /note %}}
@y
{{% note %}}
This command is also available as a pre-commit hook.
See [pre-commit hooks]({{< relref "pre-commit-hooks#poetry-export" >}}) for more information.
{{% /note %}}
@z

@x
{{% note %}}
Unlike the `install` command, this command only includes the project's dependencies defined in the implicit `main`
group defined in `tool.poetry.dependencies` when used without specifying any options.
{{% /note %}}
@y
{{% note %}}
Unlike the `install` command, this command only includes the project's dependencies defined in the implicit `main`
group defined in `tool.poetry.dependencies` when used without specifying any options.
{{% /note %}}
@z

@x
### Options
@y
### Options
@z

@x
* `--format (-f)`: The format to export to (default: `requirements.txt`).
  Currently, only `constraints.txt` and `requirements.txt` are supported.
* `--output (-o)`: The name of the output file.  If omitted, print to standard
  output.
* `--dev`: Include development dependencies. (**Deprecated**, use `--with dev` instead)
* `--extras (-E)`: Extra sets of dependencies to include.
* `--without`: The dependency groups to ignore.
* `--with`: The optional dependency groups to include.
* `--only`: The only dependency groups to include.
* `--without-hashes`: Exclude hashes from the exported file.
* `--without-urls`: Exclude source repository urls from the exported file.
* `--with-credentials`: Include credentials for extra indices.
@y
* `--format (-f)`: The format to export to (default: `requirements.txt`).
  Currently, only `constraints.txt` and `requirements.txt` are supported.
* `--output (-o)`: The name of the output file.  If omitted, print to standard
  output.
* `--dev`: Include development dependencies. (**Deprecated**, use `--with dev` instead)
* `--extras (-E)`: Extra sets of dependencies to include.
* `--without`: The dependency groups to ignore.
* `--with`: The optional dependency groups to include.
* `--only`: The only dependency groups to include.
* `--without-hashes`: Exclude hashes from the exported file.
* `--without-urls`: Exclude source repository urls from the exported file.
* `--with-credentials`: Include credentials for extra indices.
@z

@x
## env
@y
## env
@z

@x
The `env` command regroups sub commands to interact with the virtualenvs
associated with a specific project.
@y
The `env` command regroups sub commands to interact with the virtualenvs
associated with a specific project.
@z

@x
See [Managing environments]({{< relref "managing-environments" >}}) for more information about these commands.
@y
See [Managing environments]({{< relref "managing-environments" >}}) for more information about these commands.
@z

@x
## cache
@y
## cache
@z

@x
The `cache` command regroups sub commands to interact with Poetry's cache.
@y
The `cache` command regroups sub commands to interact with Poetry's cache.
@z

@x
### cache list
@y
### cache list
@z

@x
The `cache list` command lists Poetry's available caches.
@y
The `cache list` command lists Poetry's available caches.
@z

@x
```bash
poetry cache list
```
@y
```bash
poetry cache list
```
@z

@x
### cache clear
@y
### cache clear
@z

@x
The `cache clear` command removes packages from a cached repository.
@y
The `cache clear` command removes packages from a cached repository.
@z

@x
For example, to clear the whole cache of packages from the `pypi` repository, run:
@y
For example, to clear the whole cache of packages from the `pypi` repository, run:
@z

@x
```bash
poetry cache clear pypi --all
```
@y
```bash
poetry cache clear pypi --all
```
@z

@x
To only remove a specific package from a cache, you have to specify the cache entry in the following form `cache:package:version`:
@y
To only remove a specific package from a cache, you have to specify the cache entry in the following form `cache:package:version`:
@z

@x
```bash
poetry cache clear pypi:requests:2.24.0
```
@y
```bash
poetry cache clear pypi:requests:2.24.0
```
@z

@x
## source
@y
## source
@z

@x
The `source` namespace regroups sub commands to manage repository sources for a Poetry project.
@y
The `source` namespace regroups sub commands to manage repository sources for a Poetry project.
@z

@x
### source add
@y
### source add
@z

@x
The `source add` command adds source configuration to the project.
@y
The `source add` command adds source configuration to the project.
@z

@x
For example, to add the `pypi-test` source, you can run:
@y
For example, to add the `pypi-test` source, you can run:
@z

@x
```bash
poetry source add pypi-test https://test.pypi.org/simple/
```
@y
```bash
poetry source add pypi-test https://test.pypi.org/simple/
```
@z

@x
You cannot use the name `pypi` for a custom repository as it is reserved for use by
the default PyPI source. However, you can set the priority of PyPI:
@y
You cannot use the name `pypi` for a custom repository as it is reserved for use by
the default PyPI source. However, you can set the priority of PyPI:
@z

@x
```bash
poetry source add --priority=explicit pypi
```
@y
```bash
poetry source add --priority=explicit pypi
```
@z

@x
#### Options
@y
#### Options
@z

@x
* `--default`: Set this source as the [default]({{< relref "repositories#default-package-source" >}}) (disable PyPI). Deprecated in favor of `--priority`.
* `--secondary`: Set this source as a [secondary]({{< relref "repositories#secondary-package-sources" >}}) source. Deprecated in favor of `--priority`.
* `--priority`: Set the priority of this source. Accepted values are: [`default`]({{< relref "repositories#default-package-source" >}}), [`secondary`]({{< relref "repositories#secondary-package-sources" >}}), [`supplemental`]({{< relref "repositories#supplemental-package-sources" >}}), and [`explicit`]({{< relref "repositories#explicit-package-sources" >}}). Refer to the dedicated sections in [Repositories]({{< relref "repositories" >}}) for more information.
@y
* `--default`: Set this source as the [default]({{< relref "repositories#default-package-source" >}}) (disable PyPI). Deprecated in favor of `--priority`.
* `--secondary`: Set this source as a [secondary]({{< relref "repositories#secondary-package-sources" >}}) source. Deprecated in favor of `--priority`.
* `--priority`: Set the priority of this source. Accepted values are: [`default`]({{< relref "repositories#default-package-source" >}}), [`secondary`]({{< relref "repositories#secondary-package-sources" >}}), [`supplemental`]({{< relref "repositories#supplemental-package-sources" >}}), and [`explicit`]({{< relref "repositories#explicit-package-sources" >}}). Refer to the dedicated sections in [Repositories]({{< relref "repositories" >}}) for more information.
@z

@x
{{% note %}}
At most one of the options above can be provided. See [package sources]({{< relref "repositories#package-sources" >}}) for more information.
{{% /note %}}
@y
{{% note %}}
At most one of the options above can be provided. See [package sources]({{< relref "repositories#package-sources" >}}) for more information.
{{% /note %}}
@z

@x
### source show
@y
### source show
@z

@x
The `source show` command displays information on all configured sources for the project.
@y
The `source show` command displays information on all configured sources for the project.
@z

@x
```bash
poetry source show
```
@y
```bash
poetry source show
```
@z

@x
Optionally, you can show information of one or more sources by specifying their names.
@y
Optionally, you can show information of one or more sources by specifying their names.
@z

@x
```bash
poetry source show pypi-test
```
@y
```bash
poetry source show pypi-test
```
@z

@x
{{% note %}}
This command will only show sources configured via the `pyproject.toml`
and does not include the implicit default PyPI.
{{% /note %}}
@y
{{% note %}}
This command will only show sources configured via the `pyproject.toml`
and does not include the implicit default PyPI.
{{% /note %}}
@z

@x
### source remove
@y
### source remove
@z

@x
The `source remove` command removes a configured source from your `pyproject.toml`.
@y
The `source remove` command removes a configured source from your `pyproject.toml`.
@z

@x
```bash
poetry source remove pypi-test
```
@y
```bash
poetry source remove pypi-test
```
@z

@x
## about
@y
## about
@z

@x
The `about` command displays global information about Poetry, including the current version and version of `poetry-core`.
@y
The `about` command displays global information about Poetry, including the current version and version of `poetry-core`.
@z

@x
```bash
poetry about
```
@y
```bash
poetry about
```
@z

@x
## help
@y
## help
@z

@x
The `help` command displays global help, or help for a specific command.
@y
The `help` command displays global help, or help for a specific command.
@z

@x
To display global help:
@y
To display global help:
@z

@x
```bash
poetry help
```
@y
```bash
poetry help
```
@z

@x
To display help for a specific command, for instance `show`:
@y
To display help for a specific command, for instance `show`:
@z

@x
```bash
poetry help show
```
@y
```bash
poetry help show
```
@z

@x
{{% note %}}
The `--help` option can also be passed to any command to get help for a specific command.
@y
{{% note %}}
The `--help` option can also be passed to any command to get help for a specific command.
@z

@x
For instance:
@y
For instance:
@z

@x
```bash
poetry show --help
```
{{% /note %}}
@y
```bash
poetry show --help
```
{{% /note %}}
@z

@x
## list
@y
## list
@z

@x
The `list` command displays all the available Poetry commands.
@y
The `list` command displays all the available Poetry commands.
@z

@x
```bash
poetry list
```
@y
```bash
poetry list
```
@z

@x
## self
@y
## self
@z

@x
The `self` namespace regroups sub commands to manage the Poetry installation itself.
@y
The `self` namespace regroups sub commands to manage the Poetry installation itself.
@z

@x
{{% note %}}
Use of these commands will create the required `pyproject.toml` and `poetry.lock` files in your
[configuration directory]({{< relref "configuration" >}}).
{{% /note %}}
@y
{{% note %}}
Use of these commands will create the required `pyproject.toml` and `poetry.lock` files in your
[configuration directory]({{< relref "configuration" >}}).
{{% /note %}}
@z

@x
{{% warning %}}
Especially on Windows, `self` commands that update or remove packages may be problematic
so that other methods for installing plugins and updating Poetry are recommended.
See [Using plugins]({{< relref "plugins#using-plugins" >}}) and
[Installing Poetry]({{< relref "docs#installation" >}}) for more information.
{{% /warning %}}
@y
{{% warning %}}
Especially on Windows, `self` commands that update or remove packages may be problematic
so that other methods for installing plugins and updating Poetry are recommended.
See [Using plugins]({{< relref "plugins#using-plugins" >}}) and
[Installing Poetry]({{< relref "docs#installation" >}}) for more information.
{{% /warning %}}
@z

@x
### self add
@y
### self add
@z

@x
The `self add` command installs Poetry plugins and make them available at runtime. Additionally, it can
also be used to upgrade Poetry's own dependencies or inject additional packages into the runtime
environment
@y
The `self add` command installs Poetry plugins and make them available at runtime. Additionally, it can
also be used to upgrade Poetry's own dependencies or inject additional packages into the runtime
environment
@z

@x
{{% note %}}
The `self add` command works exactly like the [`add` command](#add). However, is different in that the packages
managed are for Poetry's runtime environment.
@y
{{% note %}}
The `self add` command works exactly like the [`add` command](#add). However, is different in that the packages
managed are for Poetry's runtime environment.
@z

@x
The package specification formats supported by the `self add` command are the same as the ones supported
by the [`add` command](#add).
{{% /note %}}
@y
The package specification formats supported by the `self add` command are the same as the ones supported
by the [`add` command](#add).
{{% /note %}}
@z

@x
For example, to install the `poetry-plugin-export` plugin, you can run:
@y
For example, to install the `poetry-plugin-export` plugin, you can run:
@z

@x
```bash
poetry self add poetry-plugin-export
```
@y
```bash
poetry self add poetry-plugin-export
```
@z

@x
To update to the latest `poetry-core` version, you can run:
@y
To update to the latest `poetry-core` version, you can run:
@z

@x
```bash
poetry self add poetry-core@latest
```
@y
```bash
poetry self add poetry-core@latest
```
@z

@x
To add a keyring provider `artifacts-keyring`, you can run:
@y
To add a keyring provider `artifacts-keyring`, you can run:
@z

@x
```bash
poetry self add artifacts-keyring
```
@y
```bash
poetry self add artifacts-keyring
```
@z

@x
#### Options
@y
#### Options
@z

@x
* `--editable (-e)`: Add vcs/path dependencies as editable.
* `--extras (-E)`: Extras to activate for the dependency. (multiple values allowed)
* `--allow-prereleases`: Accept prereleases.
* `--source`: Name of the source to use to install the package.
* `--dry-run`: Output the operations but do not execute anything (implicitly enables --verbose).
@y
* `--editable (-e)`: Add vcs/path dependencies as editable.
* `--extras (-E)`: Extras to activate for the dependency. (multiple values allowed)
* `--allow-prereleases`: Accept prereleases.
* `--source`: Name of the source to use to install the package.
* `--dry-run`: Output the operations but do not execute anything (implicitly enables --verbose).
@z

@x
### self update
@y
### self update
@z

@x
The `self update` command updates Poetry version in its current runtime environment.
@y
The `self update` command updates Poetry version in its current runtime environment.
@z

@x
{{% note %}}
The `self update` command works exactly like the [`update` command](#update). However,
is different in that the packages managed are for Poetry's runtime environment.
{{% /note %}}
@y
{{% note %}}
The `self update` command works exactly like the [`update` command](#update). However,
is different in that the packages managed are for Poetry's runtime environment.
{{% /note %}}
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
#### Options
@y
#### Options
@z

@x
* `--preview`: Allow the installation of pre-release versions.
* `--dry-run`: Output the operations but do not execute anything (implicitly enables --verbose).
@y
* `--preview`: Allow the installation of pre-release versions.
* `--dry-run`: Output the operations but do not execute anything (implicitly enables --verbose).
@z

@x
### self lock
@y
### self lock
@z

@x
The `self lock` command reads this Poetry installation's system `pyproject.toml` file. The system
dependencies are locked in the corresponding `poetry.lock` file.
@y
The `self lock` command reads this Poetry installation's system `pyproject.toml` file. The system
dependencies are locked in the corresponding `poetry.lock` file.
@z

@x
```bash
poetry self lock
```
@y
```bash
poetry self lock
```
@z

@x
#### Options
@y
#### Options
@z

@x
* `--check`: Verify that `poetry.lock` is consistent with `pyproject.toml`. (**Deprecated**)
* `--no-update`: Do not update locked versions, only refresh lock file.
@y
* `--check`: Verify that `poetry.lock` is consistent with `pyproject.toml`. (**Deprecated**)
* `--no-update`: Do not update locked versions, only refresh lock file.
@z

@x
### self show
@y
### self show
@z

@x
The `self show` command behaves similar to the show command, but
working within Poetry's runtime environment. This lists all packages installed within
the Poetry install environment.
@y
The `self show` command behaves similar to the show command, but
working within Poetry's runtime environment. This lists all packages installed within
the Poetry install environment.
@z

@x
To show only additional packages that have been added via self add and their
dependencies use `self show --addons`.
@y
To show only additional packages that have been added via self add and their
dependencies use `self show --addons`.
@z

@x
```bash
poetry self show
```
@y
```bash
poetry self show
```
@z

@x
#### Options
@y
#### Options
@z

@x
* `--addons`: List only add-on packages installed.
* `--tree`: List the dependencies as a tree.
* `--latest (-l)`: Show the latest version.
* `--outdated (-o)`: Show the latest version but only for packages that are outdated.
@y
* `--addons`: List only add-on packages installed.
* `--tree`: List the dependencies as a tree.
* `--latest (-l)`: Show the latest version.
* `--outdated (-o)`: Show the latest version but only for packages that are outdated.
@z

@x
### self show plugins
@y
### self show plugins
@z

@x
The `self show plugins` command lists all the currently installed plugins.
@y
The `self show plugins` command lists all the currently installed plugins.
@z

@x
```bash
poetry self show plugins
```
@y
```bash
poetry self show plugins
```
@z

@x
### self remove
@y
### self remove
@z

@x
The `self remove` command removes an installed addon package.
@y
The `self remove` command removes an installed addon package.
@z

@x
```bash
poetry self remove poetry-plugin-export
```
@y
```bash
poetry self remove poetry-plugin-export
```
@z

@x
#### Options
@y
#### Options
@z

@x
* `--dry-run`: Outputs the operations but will not execute anything (implicitly enables --verbose).
@y
* `--dry-run`: Outputs the operations but will not execute anything (implicitly enables --verbose).
@z

@x
### self install
@y
### self install
@z

@x
The `self install` command ensures all additional packages specified are installed in the current
runtime environment.
@y
The `self install` command ensures all additional packages specified are installed in the current
runtime environment.
@z

@x
{{% note %}}
The `self install` command works similar to the [`install` command](#install). However,
is different in that the packages managed are for Poetry's runtime environment.
{{% /note %}}
@y
{{% note %}}
The `self install` command works similar to the [`install` command](#install). However,
is different in that the packages managed are for Poetry's runtime environment.
{{% /note %}}
@z

@x
```bash
poetry self install --sync
```
@y
```bash
poetry self install --sync
```
@z

@x
#### Options
@y
#### Options
@z

@x
* `--sync`: Synchronize the environment with the locked packages and the specified groups.
* `--dry-run`: Output the operations but do not execute anything (implicitly enables --verbose).
@y
* `--sync`: Synchronize the environment with the locked packages and the specified groups.
* `--dry-run`: Output the operations but do not execute anything (implicitly enables --verbose).
@z
