class swagger_codegen::langs::erlang (
  $erlang_version = '19.3.0-r3',
) {

  package { 'erlang':
    ensure   => $erlang_version,
    provider => 'apk',
  }

}
