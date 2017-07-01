class swagger_codegen::langs::python (
  $pip_version    = '9.0.1-2',
  $python_version = '2.7.13',
  $bin_dir        = '/opt/swagger-codegen/bin/',
) {

  package { 'python':
    ensure => $python_version,
  }

  package { 'python-pip':
    ensure => $pip_version,
  }

  file { "${bin_dir}/python-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/python-info.sh',
    mode   => '0755',
  }

}
