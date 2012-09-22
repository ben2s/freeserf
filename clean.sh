#!/bin/bash
[ -e Makefile ] && make clean
[ -e Makefile ] && make distclean
for f in `cat .gitignore`; do [ $f != SPAE.PA ] && rm -rvf $f; done
