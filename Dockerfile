FROM ruby:3.0.2-alpine3.13

LABEL maintainer="Matheus M<mmacedo@icasei.com.br>"

RUN apk --update --upgrade add \
      bash\
      sqlite\ 
      sqlite-dev\
      build-base\
      tzdata\
      git\
      python3\
      librdkafka\
      openssl-dev 

RUN mkdir /app


WORKDIR /app

RUN ls

COPY Gemfile* ./
COPY . /app

RUN gem install bundler

RUN bundle install

EXPOSE 3000

CMD ["/usr/bin/bash"]