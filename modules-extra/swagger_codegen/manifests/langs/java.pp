class swagger_codegen::langs::java (
  $maven_version    = '3.5.0',
  $openjdk7_version = '7.131.2.6.9-r1',
) {

  package { 'openjdk7':
    ensure   => $openjdk7_version,
    provider => 'apk',
  }

  class { 'maven::maven':
    version => $maven_version,
  }

}
