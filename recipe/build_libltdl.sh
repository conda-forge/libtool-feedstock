#!/bin/sh

set -euo pipefail

pushd libltdl
./configure --prefix=${PREFIX} --enable-ltdl-install
make
make install
