class swagger_codegen::langs::erlang (
  $erlang_version = '18.3.4.4',
  $bin_dir        = '/opt/swagger-codegen/bin/',
) {

  package { 'erlang':
    ensure => $erlang_version,
  }

  file { "${bin_dir}/erlang-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/erlang-info.sh',
    mode   => '0755',
  }

}
