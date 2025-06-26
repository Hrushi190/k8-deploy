#!/bin/bash
set -e

echo "Running K8 deployment/....."
kubectl apply -f k8s/
