FROM docker.io/library/debian:10-slim

ENV SENTINEL_VERSION=0.16.1 \
    PATH=/src:$PATH

WORKDIR /src

RUN apt-get update \
    && apt-get install \
        --assume-yes \
        --no-install-recommends \
        ca-certificates=* \
        curl=* \
        unzip=* \
    && apt-get clean \
    && rm \
        --force \
        --recursive \
        /var/lib/apt/lists/*

RUN curl \
        --show-error \
        --silent \
        --request GET \
        https://releases.hashicorp.com/sentinel/${SENTINEL_VERSION}/sentinel_${SENTINEL_VERSION}_linux_amd64.zip \
        --output \
        sentinel_${SENTINEL_VERSION}_linux_amd64.zip \
    && unzip \
        sentinel_${SENTINEL_VERSION}_linux_amd64.zip

ENTRYPOINT ["sentinel"]
