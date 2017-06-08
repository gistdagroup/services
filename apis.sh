#!/bin/bash

docker pull gistda/apis
docker-compose stop apis || true
docker-compose rm -f apis || true
docker-compose up -d apis || true
