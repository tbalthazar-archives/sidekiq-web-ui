FROM ruby:2.6.1-slim-stretch

MAINTAINER {{name}} <{{email}}>

ENV WORKDIR /app/
ENV PORT 3000
ENV RACK_ENV production

WORKDIR $WORKDIR

COPY . .

RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-t 1:1", "-p $PORT", "-e $RACK_ENV}
