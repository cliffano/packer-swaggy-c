class swagger_codegen::langs::kotlin (
  $kotlin_version = '1.1.3',
  $bin_dir        = '/opt/swagger-codegen/bin/',
) {

  include swagger_codegen::langs::java

  sdkman::package { 'kotlin':
    ensure     => present,
    version    => $kotlin_version,
    is_default => true,
  }

  file { "${bin_dir}/kotlin-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/kotlin-info.sh',
    mode   => '0755',
  }

}
