FROM debian:wheezy
MAINTAINER finalcut bill@rawlinson.us

ENV REFRESHED_AT 2014_08_20_1
RUN apt-get update
RUN apt-get install -y unzip

# i have my own copy of an older version of coldspring hosted locally.
ADD  http://198.183.217.181/coldspring1-2-final.zip /tmp/coldspring.zip

WORKDIR /tmp
RUN unzip -qq  coldspring.zip -d coldspring
RUN rm coldspring.zip

VOLUME /tmp/coldspring
