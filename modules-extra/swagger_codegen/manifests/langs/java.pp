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

  file { "${bin_dir}/java-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/java-info.sh',
    mode   => '0755',
  }

}
