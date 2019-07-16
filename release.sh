#!/bin/bash

if [ -z "$1" ]
then
  echo "Releases a new version of the Sentinel Docker image."
  echo "Example:"
  echo "    ./release.sh v0.10.3"
  exit 1
fi

SENTINEL_VERSION=$1

git add .
git commit -m"upgrade to $SENTINEL_VERSION"
git tag ${SENTINEL_VERSION}
git push
git push origin ${SENTINEL_VERSION}
