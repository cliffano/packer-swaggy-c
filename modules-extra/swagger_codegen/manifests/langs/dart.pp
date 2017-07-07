class swagger_codegen::langs::dart (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  file { "${bin_dir}/dart-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/dart-info.sh',
    mode   => '0755',
  }

}
