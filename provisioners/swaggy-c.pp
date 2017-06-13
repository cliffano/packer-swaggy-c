include swagger_codegen::langs
include swagger_codegen::install

vcsrepo { '/tmp/swaggy-c':
  ensure   => present,
  provider => git,
  source   => 'git://github.com/cliffano/swaggy-c.git',
  revision => 'master',
}

exec { '/usr/npm link':
  cwd => '/tmp/swaggy-c',
}
