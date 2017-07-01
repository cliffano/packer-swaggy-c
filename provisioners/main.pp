package { 'git':
  ensure   => '2.13.0-r0',
  provider => apk,
}

package { 'rpm':
  ensure   => '4.13.0-r1',
  provider => apk,
}

package { 'alien':
  ensure   => '8.95-r0',
  provider => apk,
}

include swagger_codegen
include swagger_codegen::install
include swagger_codegen::langs::erlang
include swagger_codegen::langs::go
include swagger_codegen::langs::java
include swagger_codegen::langs::javascript
include swagger_codegen::langs::perl
include swagger_codegen::langs::php
include swagger_codegen::langs::python
include swagger_codegen::langs::ruby
#include swagger_codegen::langs::scala
include swagger_codegen::langs::typescript

include swaggy_c
include swaggy_c::install
