class scala (
  $version   = '2.12.2',
  $stage_dir = '/tmp',
) {

  wget::fetch { "https://downloads.lightbend.com/scala/${version}/scala-${version}.rpm":
    destination => $stage_dir,
  } -> package { 'scala':
    ensure   => installed,
    source   => "${stage_dir}/scala-${version}.rpm",
    provider => rpm,
  }

}
