class swagger_codegen::langs::sinatra (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  include sinatra

  file { "${bin_dir}/sinatra-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/sinatra-info.sh',
    mode   => '0755',
  }

}
