class swagger_codegen::langs::swift (
  $bin_dir    = '/opt/swagger-codegen/bin/',
  $langs_dir  = '/opt/swagger-codegen/langs/',
  $source_url = 'https://swift.org/builds/ubuntu1510/swift-2.2-SNAPSHOT-2015-12-10-a/swift-2.2-SNAPSHOT-2015-12-10-a-ubuntu15.10.tar.gz',
) {

  archive { $langs_dir:
    ensure        => present,
    extract       => true,
    extract_path  => $langs_dir,
    source        => $source_url,
    cleanup       => true,
  }

  file { "${bin_dir}/swift-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/swift-info.sh',
    mode   => '0755',
  }

}
