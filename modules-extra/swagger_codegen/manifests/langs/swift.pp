class swagger_codegen::langs::swift (
  $bin_dir    = '/opt/swagger-codegen/bin/',
  $langs_dir  = '/opt/swagger-codegen/langs/',
  $source_url = 'https://swift.org/builds/swift-3.1.1-release/ubuntu1604/swift-3.1.1-RELEASE/swift-3.1.1-RELEASE-ubuntu16.04.tar.gz',
) {

  package { 'clang':
    ensure   => latest,
    provider => apt,
  }

  package { 'libicu-dev':
    ensure   => latest,
    provider => apt,
  }

  archive { $langs_dir:
    ensure       => present,
    extract      => true,
    extract_path => $langs_dir,
    source       => $source_url,
    cleanup      => true,
  }

  file { "${bin_dir}/swift-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/swift-info.sh',
    mode   => '0755',
  }

}
