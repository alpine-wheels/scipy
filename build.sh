#!/bin/sh

set -e

# install dependencies
apk add --no-cache gfortran g++ openblas-dev

# runtime dependencies
# apk add --no-cache libstdc++ openblas

# build
pip wheel --no-deps --extra-index-url https://alpine-wheels.github.io/index --requirement requirements.txt
