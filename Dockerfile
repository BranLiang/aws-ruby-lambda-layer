FROM lambci/lambda:build-ruby2.5

RUN yum install -y postgresql postgresql-devel