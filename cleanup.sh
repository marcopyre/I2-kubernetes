#!/bin/bash

# Arrêt et suppression des conteneurs Docker
docker compose down -v

# Suppression des ressources Kubernetes
kubectl delete -f ./k8s/

echo "Nettoyage terminé"
