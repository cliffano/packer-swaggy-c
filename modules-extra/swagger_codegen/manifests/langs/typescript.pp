class swagger_codegen::langs::typescript (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  include swagger_codegen::langs::javascript

  package { 'typescript':
    ensure   => latest,
    provider => npm;
  }

  file { "${bin_dir}/typescript-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/typescript-info.sh',
    mode   => '0755',
  }

}
