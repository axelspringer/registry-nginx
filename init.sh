#! /bin/bash -e

# Generates the config for the registry proxy

MISSING_VAR_MESSAGE="must be set"

ARGS=""
: ${DOCKER_REGISTRY_HOST:?$MISSING_VAR_MESSAGE}
: ${DOCKER_REGISTRY_PORT:?$MISSING_VAR_MESSAGE}
: ${DOCKER_REGISTRY_DOMAIN:?$MISSING_VAR_MESSAGE}
: ${ARGS:=""}

sed -i 's#$DOCKER_REGISTRY_HOST#'"$DOCKER_REGISTRY_HOST"'#g' /etc/nginx/nginx.conf
sed -i 's#$DOCKER_REGISTRY_PORT#'"$DOCKER_REGISTRY_PORT"'#g' /etc/nginx/nginx.conf
sed -i 's#$DOCKER_REGISTRY_DOMAIN#'"$DOCKER_REGISTRY_DOMAIN"'#g' /etc/nginx/nginx.conf

exec "$@"