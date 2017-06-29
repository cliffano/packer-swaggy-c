<img align="right" src="https://raw.github.com/cliffano/packer-swaggy-c/master/avatar.jpg" alt="Avatar"/>

[![Build Status](https://img.shields.io/travis/cliffano/packer-swaggy-c.svg)](http://travis-ci.org/cliffano/packer-swaggy-c)

[![Docker Pulls Count](https://img.shields.io/docker/pulls/cliffano/swaggy-c.svg)](https://hub.docker.com/r/cliffano/swaggy-c/)

Packer Swaggy C
---------------

Packer Swaggy C is a Packer builder for a Docker image that contains most languages supported by [Swagger CodeGen](https://github.com/swagger-api/swagger-codegen).

The Docker image is based on [Alpine Linux](https://hub.docker.com/_/alpine/). It aims to have all Swagger CodeGen supported languages installed, along with Swagger CodeGen CLI jar and [Swaggy C](https://github.com/cliffano/swaggy-c).

This is handy when you have an OpenAPI spec and you want to build multiple API clients without having to install the languages support one by one.

Supported Swagger CodeGen languages: Java, JavaScript, Python, Ruby. More coming soon!

Installation
------------

Pull Swaggy C Docker image from Docker Hub:

    docker pull cliffano/swaggy-c

Or alternatively, you can create the Docker image locally:

    git clone https://github.com/cliffano/packer-swaggy-c
    cd packer-swaggy-c
    make docker

An image with `cliffano/swaggy-c` repository and `latest` tag should show up:

    haku> docker images

    REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
    cliffano/swaggy-c   latest              36417fe204e3        About an hour ago   979.5 MB
    alpine              latest              a41a7446062d        2 weeks ago         3.962 MB

Usage
-----

Execute `swaggy-c` to generate the API clients, Swaggy C and Swagger CodeGen are already installed within the container:

    docker run \
      --workdir /opt/workspace \
      -v $(pwd):/opt/workspace \
      -t cliffano/swaggy-c \
      swaggy-c \
      --jar /opt/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar \
      --api-spec path/to/spec.yml \
      javascript-gen

The sample above uses the current working directory as the workspace. The generated API clients will be written to `{lang}/generated/` directory.

What's inside
-------------

| `/usr/local/bin/swaggy-c` | Swaggy C CLI command, available in `PATH` |
| `/opt/swaggy-c/bin/info.sh` | Display versions info of all provisioned languages |
| `/opt/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar` | Swagger CodeGen CLI jar, use this when you want to run the latest jar from the time when the Docker image was created |

Colophon
--------

Related Projects:

* [swaggy-c](http://github.com/cliffano/swaggy-c) - Builder for Swagger CodeGen-generated API clients in multiple languages
