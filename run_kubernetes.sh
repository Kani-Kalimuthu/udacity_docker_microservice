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