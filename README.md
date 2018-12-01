# PG Ruby Lambda Lib
This Repo shows how to include ruby native gems

## How to use
First you must clone the repo, build the file, and publish it to AWS:
```shell
git clone git@github.com:DevHubCo/ruby-pg-lambda
cd ruby-pg-lambda
./build
sls deploy -v
```
Then see [the docs](https://serverless.com/framework/docs/providers/aws/guide/functions/#layers)
and configure your lambda to use the layer you just published.

## Credit

dschep https://github.com/dschep/sqlite-lambda-layer/