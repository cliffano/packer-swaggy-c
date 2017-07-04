class swagger_codegen::langs::python (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  class { 'python' :
    version    => 'system',
    pip        => 'present',
    dev        => 'present',
    virtualenv => 'present',
    gunicorn   => 'absent',
  }

  file { "${bin_dir}/python-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/python-info.sh',
    mode   => '0755',
  }

}
