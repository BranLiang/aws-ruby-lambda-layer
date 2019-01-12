#!/bin/bash -x

set -e

rm -rf layer && mkdir -p layer/lib && mkdir -p layer/ruby/gems

docker build -t ruby25-pg-builder -f Dockerfile .

CONTAINER=$(docker run -d ruby25-pg-builder false)

docker cp \
    $CONTAINER:/usr/lib64/libpq.so.5.5 \
    layer/lib/libpq.so.5

docker cp \
    $CONTAINER:/var/task/vendor/bundle/ruby/2.5.0 \
    layer/ruby/gems/2.5.0

docker rm $CONTAINER