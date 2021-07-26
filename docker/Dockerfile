FROM alpine

LABEL "Maintener" 	= "Nelson Neoh" \
	  "GitHub" 		= "https://github.com/shneoh/Docker.SSLTools" \
	  "Contribute"	= "WebNIC" \
	  "Description"	= "SSL Tools for dealing with certificates." \
	  "version"		= "1.0"

RUN apk update && \
  apk add --no-cache openssl && \
  apk add ca-certificates && \
  update-ca-certificates && \
  apk add --no-cache coreutils && \
  apk add --no-cache openjdk11-jdk && \
  #apk add --no-cache bash && \
  rm -rf /var/cache/apk/*

COPY .bashrc /root 
COPY sample_scripts /root/sample_scripts

#RUN /bin/bash