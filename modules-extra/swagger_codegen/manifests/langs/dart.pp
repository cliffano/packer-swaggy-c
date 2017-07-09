# Adapted from https://github.com/dartsim/dart/wiki/DART-5.0-Installation-for-Ubuntu
class swagger_codegen::langs::dart (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  exec { 'apt-add-repository ppa:dartsim -- dart':
    command => 'apt-add-repository ppa:dartsim',
    path    => '/bin:/usr/bin',
  } -> exec { 'apt-get update -- dart':
    command => 'apt-get update',
    path    => '/bin:/usr/bin',
  } -> package { 'libdart6-all-dev':
    ensure   => latest,
    provider => apt,
  }

  file { "${bin_dir}/dart-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/dart-info.sh',
    mode   => '0755',
  }

}
