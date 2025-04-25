#!/bin/bash

# Remplacez par votre nom d'utilisateur Docker Hub
DOCKER_USERNAME="marcopyre"
TAG="latest"

# Construction et push de l'image proxy
cd ./proxy
docker build -t $DOCKER_USERNAME/voting-proxy:$TAG .
docker push $DOCKER_USERNAME/voting-proxy:$TAG

# Construction et push de l'image vote
cd ../vote
docker build -t $DOCKER_USERNAME/voting-vote:$TAG .
docker push $DOCKER_USERNAME/voting-vote:$TAG

# Construction et push de l'image result
cd ../result
docker build -t $DOCKER_USERNAME/voting-result:$TAG .
docker push $DOCKER_USERNAME/voting-result:$TAG

# Construction et push de l'image worker
cd ../worker
docker build -t $DOCKER_USERNAME/voting-worker:$TAG .
docker push $DOCKER_USERNAME/voting-worker:$TAG

echo "Toutes les images ont été construites et poussées vers Docker Hub"
