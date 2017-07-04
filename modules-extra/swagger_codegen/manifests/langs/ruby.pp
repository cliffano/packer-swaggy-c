class swagger_codegen::langs::ruby (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  class { '::ruby':
    version      => 'latest',
    gems_version => 'latest',
  }

  package { 'bundler':
    ensure   => latest,
    provider => gem;
  }

  package { 'rspec':
    ensure   => latest,
    provider => gem;
  }

  file { "${bin_dir}/ruby-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/ruby-info.sh',
    mode   => '0755',
  }

}
