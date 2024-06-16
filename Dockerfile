FROM ruby:3.3

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /app
COPY Gemfile .

RUN gem install bundler && bundle install

EXPOSE 4000