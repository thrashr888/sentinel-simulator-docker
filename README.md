# sentinel-simulator-docker

This project builds the container image for using the [`sentinel`](https://www.terraform.io/docs/enterprise/sentinel/index.html) command line program.

## Getting Started

```shell
docker run \
    --interactive \
    --tty \
    thrashr888/sentinel-simulator:latest \
    --version
```

```shell
docker run \
    --interactive \
    --tty \
    --volume $(pwd):/app/ \
    --workdir /app/ \
    thrashr888/sentinel-simulator:latest \
    fmt -check=true $(find . -name "*.sentinel" -type f)
```

```shell
docker run \
    --interactive \
    --tty \
    --volume $(pwd):/app/ \
    --workdir /app/ \
    thrashr888/sentinel-simulator:latest \
    test $(find . -name "*.sentinel" ! -path "*/testdata/*")
```

## Description

The `latest` version of this container will copy the current stable version of the binary into the container, and set it for use as the default entry point. This will be the best option for most uses, and if you are just looking to run the binary from a container. See all Sentinel releases [here](https://releases.hashicorp.com/sentinel/).
