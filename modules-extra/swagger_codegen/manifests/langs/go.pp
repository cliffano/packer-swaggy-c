class swagger_codegen::langs::go (
  $go_version = '1.8.1-r0',
  $bin_dir    = '/opt/swagger-codegen/bin/',
) {

  package { 'go':
    ensure   => $go_version,
    provider => 'apk',
  }

  file { "${bin_dir}/go-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/go-info.sh',
    mode   => '0755',
  }

}
