class scala (
  $version   = '2.12.2',
  $stage_dir = '/tmp',
) {

  archive { "${stage_dir}/scala-${version}.rpm":
    ensure => present,
    source => "https://downloads.lightbend.com/scala/${version}/scala-${version}.rpm",
  }

  package { 'scala':
    ensure   => installed,
    source   => "${stage_dir}/scala-${version}.rpm",
    provider => rpm,
  }

}
