AC_PREREQ([2.69])
AC_INIT([nss_pool], [0.0.1], [info@cyberninjas.com])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AC_CANONICAL_HOST
AM_INIT_AUTOMAKE([1.11 foreign subdir-objects -Wall -Werror])
AM_SILENT_RULES([yes])

dnl Checks for programs.
AC_PROG_CC_C_O
AM_PROG_AR

LT_INIT

dnl Checks for header files.
AC_CHECK_HEADERS([shadow.h stdlib.h string.h])

dnl Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_SIZE_T
AC_TYPE_UID_T

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
