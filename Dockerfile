FROM debian:wheezy
MAINTAINER finalcut bill@rawlinson.us

ENV REFRESHED_AT 2014_08_20_1

ADD  https://github.com/markmandel/coldspring/archive/2.0-alpha1.tar.gz /var/coldspring.tar.gz

WORKDIR /var
RUN tar -xzf coldspring.tar.gz
RUN mv coldspring-2.0-alpha1/coldspring coldspring
RUN rm -Rf coldspring-2.0-alpha1

VOLUME /var/coldspring
