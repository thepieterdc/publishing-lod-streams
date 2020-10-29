#!/bin/sh

bundle exec guard --no-interactions &
while true; do
    nanoc
    sleep 5
done