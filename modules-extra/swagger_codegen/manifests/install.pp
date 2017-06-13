class swagger_codegen::install (
  $revision = 'master',
  $base_dir = '/opt/swagger-codegen',
) {

  package { 'git':
    ensure   => '2.13.0-r0',
    provider => 'apk',
  }

  vcsrepo { "${base_dir}/swagger-codegen":
    ensure   => present,
    provider => git,
    source   => 'git://github.com/swagger-api/swagger-codegen.git',
    revision => $revision,
  }

  class { 'maven::maven':
    version => '3.5.0',
  }

  exec { '/usr/bin/mvn package -Dmaven.test.skip=true':
    cwd => "${base_dir}/swagger-codegen",
  }

}
