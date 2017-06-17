class swagger_codegen::langs::php (
  $php5_version = '5.6.30-r0',
  $bin_dir      = '/opt/swagger-codegen/bin/',
) {

  package { 'php5':
    ensure   => $php5_version,
    provider => 'apk',
  }

  file { "${bin_dir}/php-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/php-info.sh',
    mode   => '0755',
  }

}
