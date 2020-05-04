FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y nodejs
ENV APP_DIR /myapp
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR
COPY . $APP_DIR
RUN gem install bundler:2.0.2
ENV BUNDLER_VERSION=2.0.2

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]