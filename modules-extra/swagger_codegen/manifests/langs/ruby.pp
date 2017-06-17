class swagger_codegen::langs::ruby (
  $bundler_version   = '1.15.1',
  $ioconsole_version = '0.4.6',
  $rspec_version     = '3.6.0',
  $ruby_version      = '2.4.1-r4',
  $rubydev_version   = '2.4.1-r4',
  $bin_dir           = '/opt/swagger-codegen/bin/',
) {

  package { 'ruby-dev':
    ensure   => $rubydev_version,
    provider => 'apk',
  }

  package { 'ruby':
    ensure   => $ruby_version,
    provider => 'apk',
  }

  package { 'bundler':
    ensure   => $bundler_version,
    provider => gem;
  }

  #package { 'io-console':
  #  ensure   => $ioconsole_version,
  #  provider => gem;
  #}

  package { 'rspec':
    ensure   => $rspec_version,
    provider => gem;
  }

  file { "${bin_dir}/ruby-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/ruby-info.sh',
    mode   => '0755',
  }

}
