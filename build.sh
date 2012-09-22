#!/bin/bash
pushd `dirname $0` >/dev/null
./bootstrap
./configure
make
popd >/dev/null
