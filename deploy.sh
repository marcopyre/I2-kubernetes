#!/bin/bash

set -e

echo "Déploiement du namespace..."
kubectl apply -f ./k8s/00-namespace.yaml -n voting-app

echo "Déploiement de la ConfigMap et des Secrets..."
kubectl apply -f ./k8s/01-configmap-secret.yaml -n voting-app

echo "Déploiement des volumes..."
kubectl apply -f ./k8s/02-persistent-volumes.yaml -n voting-app

echo "Déploiement des applications..."
kubectl apply -f ./k8s/03-deployments.yaml -n voting-app

echo "Déploiement des services..."
kubectl apply -f ./k8s/04-services.yaml -n voting-app

echo "Déploiement des ingress..."
kubectl apply -f ./k8s/05-ingress.yaml -n voting-app

echo "Déploiement des HPA..."
kubectl apply -f ./k8s/06-hpa.yaml -n voting-app

echo "Déploiement du monitoring..."
kubectl apply -f ./k8s/07-grafana-ingress.yaml -n monitoring


echo "✅ Déploiement terminé avec succès."
