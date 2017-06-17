class swagger_codegen (
  $buildbase_version = '0.5-r0',
  $base_dir          = '/opt/swagger-codegen',
) {

  package { 'build-base':
    ensure   => $buildbase_version,
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
