#!/bin/sh

set -e

# install dependencies
apk add --no-cache blas-dev cmake gfortran g++ lapack-dev meson musl-dev openblas pkgconf

# build
pip wheel --no-deps --extra-index-url https://alpine-wheels.github.io/index --requirement requirements.txt
