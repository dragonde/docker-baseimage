FROM ubuntu-core-14.10-core

ADD sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y ansible
RUN apt-get -y clean
