#!/usr/bin/env bash

if [ -z "${1}" ]
then
  echo "Releases a new version of the Sentinel Docker image."
  echo "Example:"
  echo "    ./release.sh v0.23.1"
  exit 1
fi

SENTINEL_VERSION=${1}

git add .
git commit --message "Upgrade to ${SENTINEL_VERSION}"
git tag ${SENTINEL_VERSION}
git push
git push origin ${SENTINEL_VERSION}
