FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.1

RUN gem install deliver --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["deliver"]
CMD ["--help"]
