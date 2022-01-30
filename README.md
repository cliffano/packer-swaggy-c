<img align="right" src="https://raw.github.com/cliffano/packer-swaggy-c/master/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/cliffano/packer-swaggy-c/workflows/CI/badge.svg)](https://github.com/cliffano/packer-swaggy-c/actions?query=workflow%3ACI)
[![Docker Pulls Count - Swaggy-C](https://img.shields.io/docker/pulls/cliffano/swaggy-c.svg)](https://hub.docker.com/r/cliffano/swaggy-c/)
[![Docker Pulls Count - Swagger CodeGen Langs](https://img.shields.io/docker/pulls/cliffano/swagger-codegen-langs.svg)](https://hub.docker.com/r/cliffano/swagger-codegen-langs/)
[![Vulnerability Scanning Status](https://snyk.io/test/github/cliffano/packer-swaggy-c/badge.svg)](https://snyk.io/test/github/cliffano/packer-swaggy-c)

Packer Swaggy C
---------------

Packer Swaggy C is a Packer builder of Docker image which contains [Swagger CodeGen](https://github.com/swagger-api/swagger-codegen) supported languages, [Swagger CodeGen](https://github.com/swagger-api/swagger-codegen) CLI jar and [Swaggy C](https://github.com/cliffano/swaggy-c).

This is useful when you want to build multiple API clients from an OpenAPI spec without having to install the languages one by one.

Current included languages: Clojure, Dart, Erlang, Go, Java, JavaScript, Perl, PHP, Python, Ruby, Scala, TypeScript. More coming soon!

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

1. Create new language provisioning manifest at `modules-extra/swagger_codegen/manifests/langs/<lang>.pp`
2. If the provisioning manifest requires a new Puppet module, add the dependency to `Puppetfile`
3. Create the corresponding info script for the new language at `modules-extra/swagger_codegen/files/langs/<lang>-info.sh`, or alternatively if the info script is a template `modules-extra/swagger_codegen/templates/langs/<lang>-info.sh.epp`
4. Update `provisioners/swagger-codegen-langs.pp` to include the new language by adding `include swagger_codegen::langs::<lang>`
5. Build Swagger Codegen Languages Docker image `make docker-swagger-codegen-langs`
6. Build Swaggy C Docker image `make docker-swaggy-c`

Colophon
--------

Related Projects:

* [swaggy-c](http://github.com/cliffano/swaggy-c) - Builder for Swagger CodeGen-generated API clients in multiple languages
