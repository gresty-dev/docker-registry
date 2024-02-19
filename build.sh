#!/bin/sh
. ./env.sh
step ca root $CA_ROOT
docker build --build-arg IMAGE=$IMAGE --build-arg IMAGE_VERSION=$IMAGE_VERSION --build-arg CA_ROOT=$CA_ROOT -t $REGISTRY/$IMAGE:$IMAGE_VERSION-2tudor .
rm $CA_ROOT