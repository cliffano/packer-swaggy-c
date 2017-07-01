class swagger_codegen::langs::php (
  $php_version = '7.1',
  $bin_dir     = '/opt/swagger-codegen/bin/',
) {

  package { 'php':
    ensure => $php_version,
  }

  file { "${bin_dir}/php-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/php-info.sh',
    mode   => '0755',
  }

}
