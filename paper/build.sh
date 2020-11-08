#!/bin/sh

# Verbosity, crash on errors.
set -euxo

# Build image.
IMAGE_NAME="rppaper"
docker build -t "$IMAGE_NAME" .

# Start the container.
docker run --rm --volume "`pwd`:/data" -e "RP_BUILD_ONCE=1" --user `id -u`:`id -g` "$IMAGE_NAME"