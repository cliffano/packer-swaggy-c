class swagger_codegen::langs::javascript (
  $nodejs_version = '4.8.3',
  $bin_dir        = '/opt/swagger-codegen/bin/',
) {

  package { 'nodejs':
    ensure => $nodejs_version,
  }

  file { "${bin_dir}/javascript-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/javascript-info.sh',
    mode   => '0755',
  }

}
