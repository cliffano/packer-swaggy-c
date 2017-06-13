class swagger_codegen::install (
  $revision = 'master',
  $repo_dir = '/opt/swagger-codegen',
) {

  vcsrepo { "${repo_dir}":
    ensure   => present,
    provider => git,
    source   => 'git://github.com/swagger-api/swagger-codegen.git',
    revision => $revision,
  }

  class { 'maven::maven':
    version => '3.5.0',
  }

  exec { '/usr/bin/mvn package -Dmaven.test.skip=true':
    cwd => $repo_dir,
  }

}
