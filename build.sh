#!/usr/bin/env bash

#TO SETUP
# Install Docker
# Make sure you have python3 installed
# - you can use conda or the python installer for you system.  
#   Preferred approach is to using miniconda:
#   https://docs.conda.io/en/latest/miniconda.html
#
# Install repo2docker
# pip install jupyter-repo2docker
#
# Launch repo2docker
# - The following cmd will run repo2docker using a git repo 
#   that you have cloned onto your system

# repo2docker --user-id 1000 -v $PWD:/home/$USER/data .
export IMAGE_NAME="datascience"
export TARGET_DIR="/home/$USER/.cache"

docker rmi -f $IMAGE_NAME:latest

echo jupyter-repo2docker \
    --build \
    --image-name $IMAGE_NAME \
    --no-run --user-id=$UID \
    --user-name=$USER \
    --Repo2Docker.platform=linux/amd64 \
    --target-repo-dir=$TARGET_DIR \
    --build-arg platform="linux/amd64" .

jupyter-repo2docker \
    --build \
    --image-name $IMAGE_NAME \
    --no-run --user-id=$UID \
    --user-name=$USER \
    --Repo2Docker.platform=linux/amd64 \
    --target-repo-dir=$TARGET_DIR \
    --build-arg platform="linux/amd64" .
