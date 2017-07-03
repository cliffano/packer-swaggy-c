class swagger_codegen::langs::java (
  $jdk8_version_major = '8u101',
  $jdk8_version_minor = 'b13',
  $maven_version      = '3.5.0',
  $bin_dir            = '/opt/swagger-codegen/bin/',
) {

  java::oracle { 'jdk8' :
    ensure        => 'present',
    version_major => $jdk8_version_major,
    version_minor => $jdk8_version_minor = 'b13',
    java_se       => 'jdk',
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
