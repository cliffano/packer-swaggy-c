class swagger_codegen::langs::erlang (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  include 'erlang'

  file { "${bin_dir}/erlang-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/erlang-info.sh',
    mode   => '0755',
  }

}
