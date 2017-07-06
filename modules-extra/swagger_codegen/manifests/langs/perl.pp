class swagger_codegen::langs::perl (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  include ::perl

  file { "${bin_dir}/perl-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/perl-info.sh',
    mode   => '0755',
  }

}
