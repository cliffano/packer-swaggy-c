class swagger_codegen::langs::qt (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  package { 'qt-sdk':
    ensure   => latest,
    provider => apt,
  }

  file { "${bin_dir}/qt-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/qt-info.sh',
    mode   => '0755',
  }

}
