class swagger_codegen::langs::swift (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  file { "${bin_dir}/swift-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/swift-info.sh',
    mode   => '0755',
  }

}
