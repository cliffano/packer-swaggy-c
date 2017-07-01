class swagger_codegen::langs::javascript (
  $nodejs_version = 'v8',
  $bin_dir        = '/opt/swagger-codegen/bin/',
) {

  # Use willdurand/nodejs module instead of
  # nodejs and nodejs-npm packages from apk
  # due to npm package provider availability
  class { 'nodejs':
    version => 'v6.0.0',
  }

  file { "${bin_dir}/javascript-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/javascript-info.sh',
    mode   => '0755',
  }

}
