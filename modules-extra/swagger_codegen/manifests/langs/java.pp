class swagger_codegen::langs::java (
  $maven_version    = '3.5.0',
  $openjdk8_version = '8u131-b11',
  $bin_dir          = '/opt/swagger-codegen/bin/',
) {

  package { 'openjdk-8-jdk':
    ensure => $openjdk8_version,
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
