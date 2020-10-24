#!/bin/sh

# Verbosity, crash on errors.
set -euxo

# Clean.
rm -f search-strategy.pdf

# Build image.
IMAGE_NAME="rpsearchstrat"
cat <<EOF | docker build -t $IMAGE_NAME -
FROM pandoc/latex
RUN apk add texmf-dist
EOF

# Build pdf.
docker run \
    --rm \
    --volume "`pwd`:/data" \
    --user `id -u`:`id -g` \
    "$IMAGE_NAME" \
    --citeproc \
    -d settings.yaml \
    search-strategy.md

# Open.
xdg-open search-strategy.pdf