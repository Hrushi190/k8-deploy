#!/bin/bash
# Set up kubeconfig for EKS
export KUBECONFIG=/home/ec2-user/.kube/config
aws eks update-kubeconfig --region us-west-2 --name demo-mde

echo "Running K8 deployment/....."
kubectl apply -f k8s/ -n appln-test
