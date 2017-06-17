package { 'git':
  ensure   => '2.13.0-r0',
  provider => 'apk',
}

package { 'make':
  ensure   => '4.2.1-r0',
  provider => 'apk',
}

include swagger_codegen
include swagger_codegen::install
include swagger_codegen::langs::javascript
include swagger_codegen::langs::ruby
include swaggy_c::install
