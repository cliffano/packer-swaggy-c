class swagger_codegen::langs::perl (
  $perl_version = '5.24.1',
  $bin_dir      = '/opt/swagger-codegen/bin/',
) {

  package { 'perl':
    ensure => $perl_version,
  }

  file { "${bin_dir}/perl-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/perl-info.sh',
    mode   => '0755',
  }

}
