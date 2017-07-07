class swagger_codegen::langs::kotlin (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  file { "${bin_dir}/kotlin-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/kotlin-info.sh',
    mode   => '0755',
  }

}
