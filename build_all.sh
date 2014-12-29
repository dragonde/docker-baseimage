#/bin/bash

docker build -t=utopic-base .
docker save utopic-base | gzip > utopic-base.tgz
