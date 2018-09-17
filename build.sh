#! /bin/bash

# get absolute path of this file
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# use the 1st command line argument as the tag. Default the tag to qa if one isn't provided
TAG=${1:-latest}

docker build --no-cache \
    -f ${CWD}/Dockerfile \
    -t shawnrushefsky/rabbitmq-delayed-message-exchange:${TAG} \
    -t shawnrushefsky/rabbitmq-delayed-message-exchange:3.7.7 \
    ${CWD}

docker push shawnrushefsky/rabbitmq-delayed-message-exchange:${TAG}
docker push shawnrushefsky/rabbitmq-delayed-message-exchange:3.7.7