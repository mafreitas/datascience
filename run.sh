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

echo docker run -it \
    -v $PWD/share:/home/$USER/.cache/share \
    -p 8888:8888 \
    $IMAGE_NAME:latest \
    jupyter lab \
    --ip 0.0.0.0 \
    --NotebookApp.token='' \
    --NotebookApp.password=''

docker run -it \
    -v $PWD/share:/home/$USER/.cache/share \
    -p 8888:8888 \
    $IMAGE_NAME:latest \
    jupyter lab \
    --ip 0.0.0.0 \
    --NotebookApp.token='' \
    --NotebookApp.password=''