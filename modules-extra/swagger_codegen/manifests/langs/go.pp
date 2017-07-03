class swagger_codegen::langs::go (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  include 'golang'

  file { "${bin_dir}/go-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/go-info.sh',
    mode   => '0755',
  }

}
