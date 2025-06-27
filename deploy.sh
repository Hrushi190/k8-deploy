#!/bin/bash
set -e
# Set up kubeconfig for EKS
aws eks update-kubeconfig --region us-wes-2 --name demo-mde

echo "Running K8 deployment/....."
kubectl apply -f k8s/ -n appln-test
