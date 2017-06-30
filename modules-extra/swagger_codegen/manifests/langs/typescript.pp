class swagger_codegen::langs::typescript (
  $typescript_version = '2.4.1',
) {

  include swagger_codegen::langs::javascript

  package { 'typescript':
    ensure   => $typescript_version,
    provider => 'npm',
  }

  file { "${bin_dir}/typescript-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/typescript-info.sh',
    mode   => '0755',
  }

}
