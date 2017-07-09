# Adapted from https://github.com/dartsim/dart/wiki/DART-5.0-Installation-for-Ubuntu
class swagger_codegen::langs::dart (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  apt::ppa { 'ppa:libccd-debs/ppa': }

  apt::ppa { 'ppa:fcl-debs/ppa': }

  apt::ppa { 'ppa:dartsim/ppa': }

  package { 'libdart-core5-dev':
    ensure   => latest,
    provider => apt,
  }

  package { 'libdart5-dev':
    ensure   => latest,
    provider => apt,
  }

  file { "${bin_dir}/dart-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/dart-info.sh',
    mode   => '0755',
  }

}
