FROM ruby:latest

RUN gem install grpc

WORKDIR /kvclient

code:
    COPY client.rb .
    COPY github.com/earthly/earthly-example-proto:main+proto-rb/rb-pb/*.rb .

kv-ruby-client-docker:
    FROM +code
    SAVE IMAGE as kv-ruby-client:latest

all:
    BUILD +lint
    BUILD +kv-ruby-client-docker
