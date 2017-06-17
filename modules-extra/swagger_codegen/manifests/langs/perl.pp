class swagger_codegen::langs::perl (
  $perl_version = '5.24.1-r2',
) {

  package { 'perl':
    ensure   => $perl_version,
    provider => 'apk',
  }

}
