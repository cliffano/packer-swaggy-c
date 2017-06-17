class swagger_codegen::langs::erlang (
  $erlang_version = '19.3.0-r3',
  $bin_dir        = '/opt/swagger-codegen/bin/',
) {

  package { 'erlang':
    ensure   => $erlang_version,
    provider => 'apk',
  }

  file { "${bin_dir}/erlang-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/erlang-info.sh',
    mode   => '0755',
  }

}
