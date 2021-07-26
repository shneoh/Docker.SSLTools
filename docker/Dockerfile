FROM alpine

MAINTAINER Nelson Neoh (https://github.com/shneoh/Docker.SSLTools)

RUN apk update && \
  apk add --no-cache openssl && \
  apk add ca-certificates && \
  update-ca-certificates && \
  apk add --no-cache coreutils && \
  apk add --no-cache openjdk11-jdk && \
  apk add --no-cache bash && \
  rm -rf /var/cache/apk/*

COPY .bashrc /root && COPY sample_scripts /root

RUN /bin/bash
