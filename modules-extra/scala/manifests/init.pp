class scala (
  $version   = '2.12.2',
  $stage_dir = '/tmp',
) {

  wget::fetch { "https://downloads.lightbend.com/scala/${version}/scala-${version}.rpm":
    destination => "${stage_dir}/scala-${version}.rpm",
  } -> exec { "alien -i ${stage_dir}/scala-${version}.rpm --scripts":
    path => [
      '/usr/local/sbin',
      '/usr/local/bin',
      '/usr/sbin',
      '/usr/bin',
      '/sbin',
      '/bin',
    ],
  }

}
