#!/bin/sh

set -e

# install dependencies
apk add --no-cache blas-dev gfortran lapack-dev musl-dev

# build
pip wheel --no-deps --extra-index-url https://alpine-wheels.github.io/index --requirement requirements.txt
