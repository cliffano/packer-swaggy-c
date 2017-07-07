class swagger_codegen::langs::clojure (
  $bin_dir = '/opt/swagger-codegen/bin/',
) {

  include swagger_codegen::langs::java

  include leiningen

  file { "${bin_dir}/clojure-info.sh":
    ensure => present,
    source => 'puppet:///modules/swagger_codegen/langs/clojure-info.sh',
    mode   => '0755',
  }

}
