CTIE=build-aux/ctie/ctie$EXEEXT
AC_SUBST(CTIE)

POETRYDIR=poetry.orig
AC_ARG_WITH(poetrydir,
[  --with-poetrydir=DIR    Specify poetry source directory [[DIR=poetry.orig]]],
[
  if test -d "${with_poetrydir}" ; then
    POETRYDIR=${with_poetrydir}
  fi
]
)
AC_MSG_CHECKING([for the poetry files])
if test ! -f "${POETRYDIR}/src/poetry/config/config.py"; then
  AC_MSG_RESULT([no])
  AC_MSG_ERROR([The original files not found in ${POETRYDIR}])
else
  AC_MSG_RESULT([ok])
fi
AC_SUBST(POETRYDIR)
abs_poetrydir=`(cd $POETRYDIR && pwd)`
AC_SUBST(abs_poetrydir)

WEBSITEDIR=website.orig
AC_ARG_WITH(websitedir,
[  --with-websitedir=DIR   Specify website source directory [[DIR=website.orig]]],
[
  if test -d "${with_websitedir}" ; then
    WEBSITEDIR=${with_websitedir}
  fi
]
)
AC_MSG_CHECKING([for the website files])
if test ! -f "${WEBSITEDIR}/bin/website"; then
  AC_MSG_RESULT([no])
  AC_MSG_ERROR([The website file not found in ${WEBSITEDIR}])
else
  AC_MSG_RESULT([ok])
fi
AC_SUBST(WEBSITEDIR)
abs_websitedir=`(cd $WEBSITEDIR && pwd)`
AC_SUBST(abs_websitedir)

AC_MSG_CHECKING([for hugo binary])
HUGOBIN=hugo
AC_ARG_WITH(hugobin,
[  --with-hugobin=file     Specify Hugo binary [[file=hugo]]],
[
  ${with_hugobin} --help >/dev/null 2>&1
  if test $? -eq 0; then
    HUGOBIN="${with_hugobin}"
  fi
  AC_MSG_RESULT([${HUGOBIN}])
]
)
AC_SUBST(HUGOBIN)
