FROM ubuntu:utopic 
 
MAINTAINER Alberto Bañon, dragon@dragonde.es

ENV DEBIAN_FRONTEND noninteractive

#RUN perl -pi -e "s| restricted| restricted universe|" /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends \
   locales \
   aptitude \
   supervisor

## Configure default locale
RUN echo "es_ES.UTF-8 UTF-8" >> /etc/locale.gen \
&& locale-gen es_ES.utf8 \
&& /usr/sbin/update-locale LANG=es_ES.UTF-8
ENV LC_ALL es_ES.UTF-8

RUN echo "Europe/Madrid" > /etc/timezone
RUN dpkg-reconfigure tzdata

RUN find /var/lib/apt/lists -type f -exec rm {} \;
