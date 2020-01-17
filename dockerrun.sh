#!/usr/local/bin/bash

docker_image_tag=$(./docker-get-tag.sh)
echo "docker image tag = $docker_image_tag"
docker run -v "$(pwd)":/check-scripts:rw -v "$HOME/.ssh:/root/.ssh:ro" -v "$HOME/.gitconfig:/root/.gitconfig:ro" -it "$docker_image_tag" shellcheck "/check-scripts/$1"
