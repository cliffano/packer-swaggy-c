class swagger_codegen::langs::scala (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  include swagger_codegen::langs::java

  include 'scala'

  file { "${bin_dir}/scala-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/scala-info.sh',
    mode   => '0755',
  }

}
