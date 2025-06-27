set -e

# Set up kubeconfig for EKS
aws eks update-kubeconfig --region us-wes-2 --name demo-mde

echo "validating pods status"
kubectl get pods,all -n local
