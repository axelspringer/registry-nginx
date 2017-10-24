#!/bin/bash

build() {
  NGINX_VERSION=$1

  TAG=${NGINX_VERSION}

# base
  docker build \
    -t axelspringer/registry-proxy \
    --compress \
    . || exit $?

# tag
  echo
  echo Tagging axelspringer/registry-proxy:${TAG}
  docker tag axelspringer/registry-proxy axelspringer/registry-proxy:${TAG} \
    || exit $?
}

#     Nginx
build "1.13.5"