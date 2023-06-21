FROM ruby:3.2.2

RUN apt update -qq && apt install -y vim

ENV LANG=C.UTF-8

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install # 初回

COPY containers/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000