class swaggy_c (
  $base_dir = '/opt/swaggy-c',
) {

  file { $base_dir:
    ensure => directory,
    mode   => '0755',
  } -> file { "${base_dir}/bin/":
    ensure => directory,
    mode   => '0755',
  } -> file { "${base_dir}/bin/info.sh":
    ensure => present,
    source => 'puppet:///modules/swaggy_c/info.sh',
    mode   => '0755',
  }

}
