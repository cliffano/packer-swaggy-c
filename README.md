<img align="right" src="https://raw.github.com/cliffano/packer-swaggy-c/master/avatar.jpg" alt="Avatar"/>

[![Build Status](https://img.shields.io/travis/cliffano/packer-swaggy-c.svg)](http://travis-ci.org/cliffano/packer-swaggy-c)

Packer Swaggy C
---------------

Packer Swaggy C is a Packer builder for a Docker image that contains most languages supported by [Swagger CodeGen](https://github.com/swagger-api/swagger-codegen).

The Docker image is based on [Alpine Linux](https://hub.docker.com/_/alpine/). It aims to have all Swagger CodeGen supported languages installed, along with Swagger CodeGen CLI jar and [Swaggy C](https://github.com/cliffano/swaggy-c).

Installation
------------

    npm install -g packer-swaggy-c

Usage
-----

Create Docker image with languages provisioned using Puppet:

    make docker

It will create `cliffano/swaggy-c` repository with `latest` tag.

```
haku> docker images

REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
cliffano/swaggy-c   latest              36417fe204e3        About an hour ago   979.5 MB
alpine              latest              a41a7446062d        2 weeks ago         3.962 MB
```

Colophon
--------

Related Projects:

* [swaggy-c](http://github.com/cliffano/swaggy-c) - Builder for Swagger CodeGen-generated API clients in multiple languages
