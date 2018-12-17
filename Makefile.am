ACLOCAL_AMFLAGS = -I m4

dist_doc_data = README.md

AM_LDFLAGS = -Wl,-soname,libnss_pool.so
MODULES_LDFLAGS = -fPIC -fno-stack-protector -avoid-version -module -shared

lib_LTLIBRARIES= libnss_pool.la

libnss_pool_la_SOURCES = src/libnss_pool.c

libnss_pool_la_CFLAGS = $(AM_CFLAGS)
libnss_pool_la_LDFLAGS = $(AM_LDFLAGS) $(MODULES_LDFLAGS)
