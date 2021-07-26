FROM alpine

LABEL "Maintener" 	= "Nelson Neoh" \
      "GitHub" 		= "https://github.com/shneoh/Docker.SSLTools" \
      "Contribute"	= "WebNIC" \
      "Description"	= "SSL Tools for dealing with certificates."

RUN apk update && \
  apk add --no-cache openssl && \
  apk add ca-certificates && \
  update-ca-certificates && \
  apk add --no-cache coreutils && \
  apk add --no-cache openjdk11-jdk && \
  rm -rf /var/cache/apk/*

COPY sample_scripts /root/sample_scripts

RUN chmod 766 /root/sample_scripts -R

WORKDIR /root

#Additional bash cli tool.
#apk add --no-cache bash
#COPY .bashrc /root 
#RUN /bin/bash
