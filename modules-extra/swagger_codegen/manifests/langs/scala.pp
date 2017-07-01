class swagger_codegen::langs::scala (
  $scala_version = '2.11.8',
  $bin_dir       = '/opt/swagger-codegen/bin/',
) {

  include swagger_codegen::langs::java

  package { 'scala':
    ensure => $scala_version,
  }

  file { "${bin_dir}/scala-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/scala-info.sh',
    mode   => '0755',
  }

}
