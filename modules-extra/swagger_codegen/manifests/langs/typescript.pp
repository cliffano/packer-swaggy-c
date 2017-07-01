class swagger_codegen::langs::typescript (
  $typescript_version = '2.4.1',
  $bin_dir            = '/opt/swagger-codegen/bin/',
) {

  include swagger_codegen::langs::javascript

  exec { "npm install -g typescript@${typescript_version}":
    path => [
      '/usr/local/bin',
    ],
  }

  file { "${bin_dir}/typescript-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/typescript-info.sh',
    mode   => '0755',
  }

}
