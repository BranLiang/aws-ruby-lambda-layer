FROM lambci/lambda:build-ruby2.5

RUN yum install -y postgresql postgresql-devel

ADD Gemfile /var/task/Gemfile
ADD Gemfile.lock /var/task/Gemfile.lock

RUN bundle install --without development test --deployment