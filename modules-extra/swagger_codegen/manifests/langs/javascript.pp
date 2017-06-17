class swagger_codegen::langs::javascript (
  $nodejs_version = '6.10.3-r0',
  $npm_version    = '6.10.3-r0',
) {

  package { 'nodejs':
    ensure   => $nodejs_version,
    provider => 'apk',
  }

  package { 'nodejs-npm':
    ensure   => $npm_version,
    provider => 'apk',
  }

}
