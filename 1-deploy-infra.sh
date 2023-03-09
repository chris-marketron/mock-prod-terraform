#!/bin/bash

AWS_REGION=us-east-1
EKS_CLUSTER_NAME=rev-training

# Pull config_map_aws_auth.yaml if exists
# aws s3 cp s3://mktn-prod-us-east-1-tfstate/$EKS_CLUSTER_NAME/config_map_aws_auth.yaml ./
terraform init
terraform plan
terraform apply --auto-approve
