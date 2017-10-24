#!/bin/bash

push() {
  NGINX_VERSION=$1

  TAG=${NGINX_VERSION}

# base
  echo
  echo Pushing axelspringer/registry-proxy:${TAG}
  docker push axelspringer/registry-proxy:${TAG} || exit $?

  # login docker before push
  docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"

}

#    Nginx 
push "1.13.5"