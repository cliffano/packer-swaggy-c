<img align="right" src="https://raw.github.com/cliffano/packer-swaggy-c/master/avatar.jpg" alt="Avatar"/>

[![Build Status](https://img.shields.io/travis/cliffano/packer-swaggy-c.svg)](http://travis-ci.org/cliffano/packer-swaggy-c)
[![Docker Pulls Count](https://img.shields.io/docker/pulls/cliffano/swaggy-c.svg)](https://hub.docker.com/r/cliffano/swaggy-c/)

Packer Swaggy C
---------------

Packer Swaggy C is a Packer builder for a Docker image that contains most languages supported by [Swagger CodeGen](https://github.com/swagger-api/swagger-codegen).

The Docker image is based on [Ubuntu Linux](https://hub.docker.com/_/ubuntu/). It aims to have all Swagger CodeGen supported languages installed, along with Swagger CodeGen CLI jar and [Swaggy C](https://github.com/cliffano/swaggy-c).

This is handy when you have an OpenAPI spec and you want to build multiple API clients without having to install the languages one by one.

Supported Swagger CodeGen languages: Clojure, Dart, Erlang, Go, Java, JavaScript, Perl, PHP, Python, Ruby, Scala, TypeScript. More to come!

Installation
------------

Pull Swaggy C Docker image from Docker Hub:

    docker pull cliffano/swaggy-c

Or alternatively, you can create the Docker image:

    git clone https://github.com/cliffano/packer-swaggy-c
    cd packer-swaggy-c
    make docker

An image with `cliffano/swaggy-c` repository and `latest` tag should show up:

    haku> docker images

    REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
    cliffano/swaggy-c   latest              a9ea23c9807d        7 minutes ago       3.61 GB
    ubuntu              latest              14f60031763d        7 days ago          120 MB

Usage
-----

Execute `swaggy-c` to generate the API clients, Swaggy C and Swagger CodeGen are already installed within the container:

    docker run \
      --workdir /opt/workspace \
      -v $(pwd):/opt/workspace \
      -t cliffano/swaggy-c \
      --rm \
      swaggy-c \
      --jar /opt/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar \
      --api-spec path/to/spec.yml \
      javascript-gen

The sample above uses the current working directory as the workspace. The generated API clients will be written to `{lang}/generated/` directory.

What's inside
-------------

| Path | Description |
|-|-|
| `/usr/local/bin/swaggy-c` | Swaggy C CLI command, available in `PATH` |
| `/opt/swaggy-c/bin/info.sh` | Display versions info of all provisioned languages |
| `/opt/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar` | Swagger CodeGen CLI jar, use this when you want to run the latest jar from the time when the Docker image was created |

Adding new language
-------------------

As Swagger CodeGen keeps evolving, new languages will be added throughout time. To add a new language support to Packer Swaggy C:

# Create new language provisioning manifest at `modules-extra/swagger_codegen/manifests/langs/<lang>.pp`

# If the provisioning manifest requires a new Puppet module, add the dependency to `Puppetfile`

# Create the corresponding info script for the new language at `modules-extra/swagger_codegen/files/langs/<lang>-info.sh`, or alternatively if the info script is a template `modules-extra/swagger_codegen/templates/langs/<lang>-info.sh.epp`

# Update `provisioners/main.pp` to include the new language by adding `include swagger_codegen::langs::<lang>`

Colophon
--------

Related Projects:

* [swaggy-c](http://github.com/cliffano/swaggy-c) - Builder for Swagger CodeGen-generated API clients in multiple languages
