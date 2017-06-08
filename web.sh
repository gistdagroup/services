#!/bin/bash

docker pull gistda/web
docker-compose stop web || true
docker-compose rm -f web || true
docker-compose up -d web || true
