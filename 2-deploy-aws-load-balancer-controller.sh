#!/bin/bash

AWS_REGION=us-east-1
EKS_CLUSTER_NAME=rev-training
ACCOUNT_ID=$(aws sts get-caller-identity | grep Arn | awk -F: '{print $6}')

aws eks --region $AWS_REGION update-kubeconfig --name $EKS_CLUSTER_NAME

# The following will install AWS Load Balancer Controller in EKS
eksctl utils associate-iam-oidc-provider \
    --region $AWS_REGION \
    --cluster $EKS_CLUSTER_NAME \
    --approve

# We only need helm repo add if it's not already cached on the runner
# helm repo add eks https://aws.github.io/eks-charts

helm upgrade --install \
    aws-load-balancer-controller eks/aws-load-balancer-controller \
    --set clusterName=$EKS_CLUSTER_NAME \
    --namespace kube-system \
    --set serviceAccount.create=true \
    --set serviceAccount.name=aws-load-balancer-controller

# Validate the service account got created...
kubectl get serviceaccounts -n kube-system | grep aws-load-balancer-controller
sleep 30
kubectl get pods -n kube-system
