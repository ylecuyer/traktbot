FROM ruby:2.4.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs netcat && apt-get clean

WORKDIR /usr/src/app

ENV BUNDLE_PATH /ruby_gems
ENV SPRING_TMP_PATH tmp
ENV SPRING_SOCKET tmp/spring.sock
ENV SPRING_PIDFILE tmp/spring.pid

EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
