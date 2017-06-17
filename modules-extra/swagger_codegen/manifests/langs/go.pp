class swagger_codegen::langs::go (
  $go_version = '1.8.1-r0',
) {

  package { 'go':
    ensure   => $go_version,
    provider => 'apk',
  }

}
