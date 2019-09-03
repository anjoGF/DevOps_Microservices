#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=antongordon76/boston_housing

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run boston-housing2 --image=antongordon76/boston_housing --port 8000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/boston-housing2  8000:80
