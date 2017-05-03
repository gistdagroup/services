#!/bin/bash

docker pull gistda/gnss-udp-receiver
docker-compose stop udp || true
docker-compose rm -f udp || true
docker-compose up -d udp || true
