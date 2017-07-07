class swagger_codegen::langs::kotlin (
  $bin_dir = '/opt/swagger-codegen/bin/',
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
    version    => '1.1.3',
    is_default => true,
    ensure     => present,
  }

  file { "${bin_dir}/kotlin-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/kotlin-info.sh',
    mode   => '0755',
  }

}
