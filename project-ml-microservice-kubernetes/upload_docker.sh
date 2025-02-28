#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
export dockerpath=antongordon76/mlproject

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=antongordon76
docker tag antongordon76/mlproject:latest 

# Step 3:
# Push image to a docker repository
docker push antongordon76/mlproject
