# sentinel-simulator Docker Container
### Usage
This repository automatically builds containers for using the [`sentinel`](https://www.terraform.io/docs/enterprise/sentinel/index.html) command line program. It contains two distinct varieties of build, a `light` version, which just contains the binary, and a `full` version while compiles the binary from source inside the container before exposing it for use. Which you want will depend on use.


##### `latest` (default)

The `latest` version of this container will copy the current stable version of the binary into the container, and set it for use as the default entrypoint. This will be the best option for most uses, and if you are just looking to run the binary from a container.

You can use this version with the following:
```shell
docker run -i -t thrashr888/sentinel-simulator:latest <command>
```

```shell
docker run -i -t -v $(pwd):/app/ -w /app/ thrashr888/sentinel-simulator:latest test
```
