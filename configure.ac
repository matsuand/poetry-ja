#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.71])
AC_INIT([poetry-ja], [0.0.0], [michio.matsuyama AT gmail DOT com])
AC_CONFIG_SRCDIR([build-aux/ctie/ctie-k.c])
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE([foreign -Wno-portability])
AM_MAINTAINER_MODE

m4_include([build-aux/m4/progs.m4])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([malloc.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL

# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([strerror])

AC_CONFIG_FILES([Makefile
                 build-aux/ctie/Makefile
                 poetry/Makefile
                 poetry/docs/Makefile
                 website/Makefile
                 website/content/Makefile
                 website/content/blog/Makefile
                 website/layouts/Makefile
                 website/layouts/partials/Makefile
])
AC_OUTPUT
