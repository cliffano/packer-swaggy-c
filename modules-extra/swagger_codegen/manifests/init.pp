class swagger_codegen (
  $gcc_version = '6.3.0-r4',
  $base_dir    = '/opt/swagger-codegen',
) {

  package { 'gcc':
    ensure   => $gcc_version,
    provider => 'apk',
  }

  file { $base_dir:
    ensure => directory,
    mode   => '0755',
  } -> file { "${base_dir}/bin/":
    ensure => directory,
    mode   => '0755',
  } -> file { "${base_dir}/bin/info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/info.sh',
    mode   => '0755',
  }

}
