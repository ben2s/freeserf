#!/bin/bash
pushd `dirname $0` >/dev/null
[ -e Makefile ] && make clean
[ -e Makefile ] && make distclean
for f in `cat .gitignore`; do [ $f != SPAE.PA ] && rm -rvf $f; done
popd >/dev/null
