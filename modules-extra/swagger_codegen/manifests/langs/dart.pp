class swagger_codegen::langs::dart (
  $bin_dir      = '/opt/swagger-codegen/bin/',
  $stage_dir    = '/tmp/packer-swaggy-c',
  $archive_file = 'dart_1.24.2-1_amd64.deb',
  $source_url   = 'https://storage.googleapis.com/dart-archive/channels/stable/release/latest/linux_packages/dart_1.24.2-1_amd64.deb',
) {

  wget::fetch { 'dart-fetch':
    source      => $source_url,
    destination => "${stage_dir}/${archive_file}",
    timeout     => 0,
    verbose     => true,
  } -> package { 'dart':
    name     => 'dart',
    ensure   => installed,
    provider => dpkg,
    source   => "${stage_dir}/${archive_file}",
  }

  file { "${bin_dir}/dart-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/dart-info.sh',
    mode   => '0755',
  }

}
