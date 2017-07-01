class swagger_codegen::langs::go (
  $golang_version = '1.8',
  $bin_dir        = '/opt/swagger-codegen/bin/',
) {

  package { 'golang':
    ensure => $golang_version,
  }

  file { "${bin_dir}/go-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/go-info.sh',
    mode   => '0755',
  }

}
