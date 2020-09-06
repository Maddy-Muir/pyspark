#! /bin/bash
docker-compose up -d

# Waiting for docker container to start fully
sleep 10s

docker exec jupyter /opt/conda/bin/jupyter notebook list