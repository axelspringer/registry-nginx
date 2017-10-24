[![Build Status](https://travis-ci.org/axelspringer/registry-proxy.svg?branch=master)](https://travis-ci.org/axelspringer/registry-proxy) [![Docker Stars](https://img.shields.io/docker/stars/axelspringer/registry-proxy.svg)](https://hub.docker.com/r/axelspringer/registry-proxy/) [![Docker Pulls](https://img.shields.io/docker/pulls/axelspringer/registry-proxy.svg)](https://hub.docker.com/r/axelspringer/registry-proxy/)

Runs an [Nginx](https://nginx.org) as proxy for [Docker Registry](https://github.com/docker/distribution).

## Getting Started

Available on the Docker Index as [axelspringer/exhibitor](https://index.docker.io/u/axelspringer/exhibitor/):

    `docker pull axelspringer/registry-proxy`

[![](https://badge.imagelayers.io/axelspringer/registry-proxy:1.13.5.svg)](https://imagelayers.io/?images=axelspringer/registry-proxy:1.13.5.svg)

## Usage
The container expects the following environment variables to be passed in:

* `DOCKER_REGISTRY_DOMAIN` - is the accessible registry domain (e.g. registry.example.com)
* `DOCKER_REGISTRY_HOSTNAME` - is the hostname of the registry to connect (e.g. registry)
* `DOCKER_REGISTRY_PORT` - is the port the registry listens on (e.g. 5000)

> It is highly recommended to further proxy this proxy

Starting the container:

    docker run -p 80:80 \
        -e DOCKER_REGISTRY_DOMAIN=registry.example.com \
        -e DOCKER_REGISTRY_HOSTNAME=registry \
        -e DOCKER_REGISTRY_PORT=5000 \
        axelspringer/registry-proxy:1.13.5

# License
[Apache-2.0](/LICENSE)