class swagger_codegen::langs::php (
  $php5_version = '5.6.30-r0',
) {

  package { 'php5':
    ensure   => $php5_version,
    provider => 'apk',
  }

}
