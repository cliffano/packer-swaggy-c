class swagger_codegen (
  $base_dir = '/opt/swagger-codegen',
) {

  exec { 'apt-get update':
    path => [
      '/usr/local/sbin',
      '/usr/local/bin',
      '/usr/sbin',
      '/usr/bin',
      '/sbin',
      '/bin',
    ],
  }

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
  }

}
