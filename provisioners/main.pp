package { 'git':
  ensure   => '2.13.0-r0',
  provider => 'apk',
}

include swagger_codegen::langs
include swagger_codegen::install
include swaggy_c::install