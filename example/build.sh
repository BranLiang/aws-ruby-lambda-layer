#!/bin/bash -x

set -e

rm -rf vendor

docker build -t ruby25-pg-builder -f Dockerfile .

CONTAINER=$(docker run -d ruby25-pg-builder false)

docker cp \
    $CONTAINER:/var/task/vendor \
    vendor

docker rm $CONTAINER