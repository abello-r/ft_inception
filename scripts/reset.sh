#!bin/bash

docker stop  $(docker ps -a -q) 2>/dev/null > clean_log.txt
docker rm  $(docker ps -a -q -f) 2>/dev/null > clean_log.txt
docker rmi $(docker images -q) 2>/dev/null > clean_log.txt
docker system prune -fa 2>/dev/null > clean_log.txt
rm clean_log.txt

