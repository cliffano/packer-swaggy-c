class swagger_codegen::langs::java (
  $openjdk7_version = '7.131.2.6.9-r1',
) {

  package { 'openjdk7':
    ensure   => $openjdk_version,
    provider => 'apk',
  }

}
