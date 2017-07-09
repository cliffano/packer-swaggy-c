exec { 'apt-get update':
  path => [
    '/usr/local/sbin',
    '/usr/local/bin',
    '/usr/sbin',
    '/usr/bin',
    '/sbin',
    '/bin',
  ],
}
include git

include swagger_codegen
include swagger_codegen::install
include swagger_codegen::langs::clojure
include swagger_codegen::langs::dart
include swagger_codegen::langs::erlang
include swagger_codegen::langs::go
include swagger_codegen::langs::java
include swagger_codegen::langs::javascript
include swagger_codegen::langs::kotlin
include swagger_codegen::langs::perl
include swagger_codegen::langs::php
include swagger_codegen::langs::python
include swagger_codegen::langs::qt
include swagger_codegen::langs::ruby
include swagger_codegen::langs::scala
#include swagger_codegen::langs::sinatra
include swagger_codegen::langs::swift
include swagger_codegen::langs::typescript

include swaggy_c
include swaggy_c::install
