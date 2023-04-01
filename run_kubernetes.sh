#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>

# Step 2
# Run the Docker Hub container with kubernetes


# Step 3:
# List kubernetes pods

# Step 4:
# Forward the container port to a host

#!/usr/bin/env bash
dockerpath="kanikalimuthu/udacity"

# Run the Docker Hub container with kubernetes
#kubectl run container --image=$dockerpath --image-pull-policy="Always"
kubectl run udacitydevops --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

sleep 5

# Step 4:
# Forward the container port to a host

kubectl port-forward pod/udacitydevops 8080:80