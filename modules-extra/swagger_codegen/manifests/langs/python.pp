class swagger_codegen::langs::python (
  $python_version = '2.7.12-r0',
  $bin_dir        = '/opt/swagger-codegen/bin/',
) {

  package { 'python':
    ensure   => $python_version,
    provider => 'apk',
  }

  file { "${bin_dir}/python-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/python-info.sh',
    mode   => '0755',
  }

}
