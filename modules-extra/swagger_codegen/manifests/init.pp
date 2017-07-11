class swagger_codegen (
  $base_dir  = '/opt/swagger-codegen',
  $stage_dir = '/tmp/packer-swaggy-c',
) {

  file { $base_dir:
    ensure => directory,
    mode   => '0755',
  } -> file { "${base_dir}/bin/":
    ensure => directory,
    mode   => '0755',
  } -> file { "${base_dir}/bin/info.sh":
    ensure  => present,
    content => epp('swagger_codegen/info.sh.epp', {
      bin_dir  => "${base_dir}/bin/",
      repo_dir => "${base_dir}/repo/",
    }),
    mode    => '0755',
  } -> file { "${base_dir}/langs/":
    ensure => directory,
    mode   => '0755',
  } -> file { "${stage_dir}":
    ensure => directory,
    mode   => '0755',
  }

}
