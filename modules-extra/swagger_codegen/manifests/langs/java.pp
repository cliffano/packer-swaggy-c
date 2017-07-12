class swagger_codegen::langs::java (
  $maven_version = '3.5.0',
  $bin_dir       = '/opt/swagger-codegen/bin/',
) {

  class { 'java':
    distribution => 'jdk',
  }

  class { 'maven::maven':
    version => $maven_version,
  }

  package { 'unzip':
    ensure   => latest,
    provider => apt,
  }

  package { 'zip':
    ensure   => latest,
    provider => apt,
  }

  package { 'curl':
    ensure   => latest,
    provider => apt,
  }

  include sdkman

  file { "${bin_dir}/java-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/java-info.sh',
    mode   => '0755',
  }

}
