class swagger_codegen::langs::javascript (
  $nodejs_version = '6.10.3-r0',
  $npm_version    = '6.10.3-r0',
  $bin_dir        = '/opt/swagger-codegen/bin/',
) {

  package { 'nodejs':
    ensure   => $nodejs_version,
    provider => 'apk',
  }

  package { 'nodejs-npm':
    ensure   => $npm_version,
    provider => 'apk',
  }

  file { "${bin_dir}/javascript-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/javascript-info.sh',
    mode   => '0755',
  }

}
