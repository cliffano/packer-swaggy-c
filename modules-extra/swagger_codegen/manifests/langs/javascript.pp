class swagger_codegen::langs::javascript (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  class { '::nodejs':
    manage_package_repo       => false,
    nodejs_dev_package_ensure => 'present',
    npm_package_ensure        => 'present',
  }

  file { "${bin_dir}/javascript-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/javascript-info.sh',
    mode   => '0755',
  }

}
