FROM vivid-core-0


RUN apt-get update && apt-get install -y exim4 
RUN apt-get -y clean
RUN find /var/lib/apt/lists/ -type f -exec rm {} \;

EXPOSE 25
