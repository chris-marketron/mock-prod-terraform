#!/bin/bash

# Check that load balancer pods exist
kubectl get pods -n kube-system

# Create k8s namespace for the 2048 game
kubectl create namespace 2048-game

# Deploy helm charts for 2048
kubectl apply -f ./2048
