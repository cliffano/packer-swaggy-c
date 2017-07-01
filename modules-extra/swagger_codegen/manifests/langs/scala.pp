class swagger_codegen::langs::scala (
  $scala_version = '2.12.2',
  $bin_dir       = '/opt/swagger-codegen/bin/',
  $stage_dir     = '/tmp',
) {

  include swagger_codegen::langs::java

  class { 'scala':
    version   => $scala_version,
    stage_dir => $stage_dir,
  }

  file { "${bin_dir}/scala-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/scala-info.sh',
    mode   => '0755',
  }

}
