class swagger_codegen::langs::javascript (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  class { 'nodejs': }

  file { "${bin_dir}/javascript-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/javascript-info.sh',
    mode   => '0755',
  }

}
