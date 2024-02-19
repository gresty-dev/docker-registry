#!/bin/sh
. ./env.sh
docker push $REGISTRY/$IMAGE_NAME:$IMAGE_VERSION-2tudor
