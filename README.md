# Ruby Lambda Layer
This Repo shows how to include ruby native gems

## Attention

It is generally a bad practice using api directly in the aws lambda. As it will consume too much connections very quickly.

## How to use

build files

```shell
$ ./build.sh
```

deploy to aws

```shell
$ sls deploy
```

Then see [the docs](https://serverless.com/framework/docs/providers/aws/guide/functions/#layers)
and configure your lambda to use the layer you just published.

or 

deploy manually via aws cli

```shell
$ cd layer
$ zip -r layer.zip ./lib ./ruby/ -x ./ruby/2.5.0/cache/\*
$ aws lambda publish-layer-version \
         --layer-name ruby-kubectl-pg \
         --region us-east-1 \
         --compatible-runtimes ruby2.5 \
         --zip-file fileb://layer.zip
```

## Gems included
```Gemfile
gem 'json'
gem 'rack'
gem 'rack-contrib'
gem 'rake'
gem 'pg'
gem 'sequel'
gem 'activerecord'
gem 'dotenv'
gem 'httparty'
gem 'sidekiq'
gem 'redis'

# aws
gem 'aws-sdk-firehose'
gem 'aws-sdk-lambda'
gem 'aws-sdk-s3'
```

## Credit

dschep https://github.com/dschep/sqlite-lambda-layer/
