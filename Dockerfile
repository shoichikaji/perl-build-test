FROM ubuntu:14.04

WORKDIR /root

RUN apt-get update -y
RUN apt-get install -y build-essential wget tar

RUN wget -q http://www.cpan.org/src/5.0/perl-5.20.2.tar.gz
RUN tar xf perl-5.20.2.tar.gz

RUN date
RUN uname -a
RUN env

RUN cd perl-5.20.2 && ./Configure -Dprefix=/tmp/test1 -de && make
RUN cd perl-5.20.2 && ./Configure -Dprefix=/tmp/test2 -de && make
