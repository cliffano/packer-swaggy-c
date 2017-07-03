class swagger_codegen::install (
  $revision = 'master',
  $repo_dir = '/opt/swagger-codegen/repo',
) {

  include swagger_codegen::langs::java
  
  include git

  vcsrepo { $repo_dir:
    ensure   => present,
    provider => git,
    source   => 'git://github.com/swagger-api/swagger-codegen.git',
    revision => $revision,
  }

  exec { '/usr/bin/mvn package -Dmaven.test.skip=true':
    cwd => $repo_dir,
  }

}
