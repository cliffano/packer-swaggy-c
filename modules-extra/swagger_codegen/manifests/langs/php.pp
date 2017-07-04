class swagger_codegen::langs::php (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  class { '::php':
    ensure       => latest,
    manage_repos => true,
    fpm          => true,
    dev          => true,
    composer     => true,
    pear         => true,
    phpunit      => false,
  }

  file { "${bin_dir}/php-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/php-info.sh',
    mode   => '0755',
  }

}
