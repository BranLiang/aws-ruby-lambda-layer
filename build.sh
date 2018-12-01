#!/bin/bash -x

set -e

rm -rf layer && mkdir -p layer/ruby/lib

docker build -t ruby25-pg-builder -f Dockerfile .

CONTAINER=$(docker run -d ruby25-pg-builder false)

docker cp \
    $CONTAINER:/usr/lib64/libpq.so.5.5 \
    layer/ruby/lib/libpq.so.5

docker rm $CONTAINER