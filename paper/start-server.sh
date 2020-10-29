#!/bin/sh

# Verbosity, crash on errors.
set -euxo

# Build image.
IMAGE_NAME="rppaper"
docker build -t "$IMAGE_NAME" .

# Start the container.
docker run -it --rm --volume "`pwd`:/data" --user `id -u`:`id -g` -p 3000:3000 "$IMAGE_NAME"