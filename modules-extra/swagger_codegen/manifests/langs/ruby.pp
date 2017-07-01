class swagger_codegen::langs::ruby (
  $bundler_version  = '1.15.1',
  $ruby_version     = '2.3.3',
  $rubydev_version  = '2.3.34',
  $rubyjson_version = '2.0.1',
  $bin_dir          = '/opt/swagger-codegen/bin/',
) {

  package { 'ruby-dev':
    ensure => $rubydev_version,
  }

  package { 'ruby':
    ensure => $ruby_version,
  }

  package { 'ruby-json':
    ensure => $rubyjson_version,
  }

  package { 'bundler':
    ensure   => $bundler_version,
    provider => gem;
  }

  file { "${bin_dir}/ruby-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/ruby-info.sh',
    mode   => '0755',
  }

}
