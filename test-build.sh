#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="goss-docker"

function clean_up_images() {
    echo "Removing all ${IMAGE_NAME} images..."
    docker rmi --force $(docker images ${IMAGE_NAME} -qa) > /dev/null
}
trap clean_up_images EXIT

for DIR in $(find ./* -name Dockerfile | awk -F / '{ print $2 }'); do
    echo "Building image version ${IMAGE_NAME}:${DIR}..."
    docker build -t ${IMAGE_NAME}:${DIR} ${DIR} > /dev/null
done
