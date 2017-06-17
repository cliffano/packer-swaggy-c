class swaggy_c::install (
  $revision = 'master',
  $repo_dir = '/opt/swaggy_c/repo',
) {

  include swagger_codegen::langs::javascript

  vcsrepo { $repo_dir:
    ensure   => present,
    provider => git,
    source   => 'git://github.com/cliffano/swaggy-c.git',
    revision => 'master',
  }

  exec { '/usr/bin/npm link':
    cwd => $repo_dir,
  }

  file { '/usr/local/bin/swaggy-c':
    ensure => link,
    target => "${repo_dir}/bin/swaggy-c",
  }

}
