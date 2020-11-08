#!/bin/sh

if [ "$RP_BUILD_ONCE" -eq 1 ]; then
    bundle exec nanoc
    exit 0
fi

bundle exec guard --no-interactions &
while true; do
    nanoc
    sleep 5
done