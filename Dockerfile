FROM trusty-core-0
MAINTAINER Alberto Bañon, dragon@dragonde.es

ENV DEBIAN_FRONTEND noninteractive

RUN perl -pi -e "s| restricted| restricted universe|" /etc/apt/sources.list

RUN apt-get update && apt-get install -y locales aptitude openssh-server supervisor

RUN dpkg-reconfigure locales && \
    locale-gen es_ES.UTF-8 && \
    /usr/sbin/update-locale LANG=es_ES.UTF-8

# Set default locale for the environment
ENV LC_ALL es_ES.UTF-8
ENV LANG es_ES.UTF-8
ENV LANGUAGE es_ES.UTF-8

RUN echo "Europe/Madrid" > /etc/timezone
RUN dpkg-reconfigure tzdata

RUN find /var/lib/apt/lists -type f -exec rm {} \;

