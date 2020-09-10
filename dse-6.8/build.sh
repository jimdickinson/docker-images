#!/usr/bin/env bash

set -euo pipefail

if [ -z ${1+x} ]; then 
   echo "stargate version is a required argument"
fi

stargate_version=$1
DOCKER_IMAGE=stargateio/stargate-dse-68

cd -P -- "$(dirname -- "$0")" # switch to this dir

# TODO: Uncomment once persistence-extensions are added

# echo "Building $DOCKER_IMAGE"
# docker buildx build --push \
# --build-arg VERSION=${stargate_version} \
# --tag ${DOCKER_IMAGE}:${stargate_version} \
# --file Dockerfile \
# --platform linux/amd64,linux/arm64 .

# echo "Inspecting $DOCKER_IMAGE"
# docker buildx imagetools inspect ${DOCKER_IMAGE}:${stargate_version}