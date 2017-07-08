class swagger_codegen::langs::kotlin (
  $kotlin_version = '1.1.3',
  $bin_dir        = '/opt/swagger-codegen/bin/',
) {

  include swagger_codegen::langs::java

  package { 'unzip':
    ensure   => latest,
    provider => apt,
  }

  package { 'zip':
    ensure   => latest,
    provider => apt,
  }

  package { 'curl':
    ensure   => latest,
    provider => apt,
  }

  include sdkman

  sdkman::package { 'kotlin':
    ensure     => present,
    version    => $kotlin_version,
    is_default => true,
  }

  file { '/usr/local/bin/kotlin':
    ensure => link,
    target => '/root/.sdkman/candidates/kotlin/current/bin/kotlin',
  }

  file { '/usr/local/bin/kotlinc':
    ensure => link,
    target => '/root/.sdkman/candidates/kotlin/current/bin/kotlinc',
  }

  file { "${bin_dir}/kotlin-info.sh":
    ensure  => present,
    content => epp('swagger_codegen/langs/kotlin-info.sh.epp', {
      version => $kotlin_version,
    }),
    mode    => '0755',
  }

}
