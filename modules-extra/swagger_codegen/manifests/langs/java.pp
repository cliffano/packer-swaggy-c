class swagger_codegen::langs::java (
  $maven_version    = '3.5.0',
  $openjdk7_version = '7.131.2.6.9-r1',
  $bin_dir          = '/opt/swagger-codegen/bin/',
) {

  package { 'openjdk7':
    ensure   => $openjdk7_version,
    provider => 'apk',
  }

  class { 'maven::maven':
    version => $maven_version,
  }

  file { "${bin_dir}/java-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/java-info.sh',
    mode   => '0755',
  }

}
