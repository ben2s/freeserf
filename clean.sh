#!/bin/bash
pushd `dirname $0` >/dev/null
[ -e Makefile ] && make clean
[ -e Makefile ] && make distclean
while read f; do
 if [[ $f != \#* ]]; then
  [ "$f" != "SPAE.PA" ] && rm -rvf "$f"
 fi
done < .gitignore
popd >/dev/null
