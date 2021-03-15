#!/usr/bin/env bash
INDEXES="{$1}*"

curl -s -XDELETE "localhost:9200/${INDEXES}" --user elastic:changeme; echo
docker rm -f fb01 ls01 redis
rm -fv assets/logs/apache.log


# docker-compose up -d redis && docker-compose logs -f --tail 500 redis | gawk -F " " "/Ready to accept connections/{print;exit}"
docker-compose restart flog
docker-compose up -d redis
docker-compose up -d ls01  && docker-compose logs -f --tail 500 ls01  | gawk -F " " "/ Registering Redis/{print;exit}"
docker-compose up -d fb01  && docker-compose logs -f --tail 500 fb01  | gawk -F " " "/ Inputs completed/{print;exit}"
