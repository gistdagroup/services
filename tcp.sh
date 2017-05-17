#!/bin/bash
git pull -r
docker pull gistda/nmea-tcp-receiver
for i in {1..10}
do
  docker-compose stop tcp$i || true
  docker-compose rm -f tcp$i || true
  docker-compose up -d tcp$i || true
done
