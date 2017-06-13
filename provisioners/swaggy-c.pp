include swagger_codegen::langs
include swagger_codegen::install

vcsrepo { '/opt/swaggy-c':
  ensure   => present,
  provider => git,
  source   => 'git://github.com/cliffano/swaggy-c.git',
  revision => 'master',
}

exec { '/usr/bin/npm link':
  cwd => '/opt/swaggy-c',
}
