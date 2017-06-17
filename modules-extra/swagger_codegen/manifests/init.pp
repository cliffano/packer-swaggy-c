class swagger_codegen (
  $gcc_version = '6.3.0-r4',
) {

  package { 'gcc':
    ensure   => $gcc_version,
    provider => 'apk',
  }

}
