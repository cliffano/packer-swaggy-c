class swagger_codegen::langs::clojure (
  $leiningen_version = '2.7.1',
  $bin_dir           = '/opt/swagger-codegen/bin/',
) {

  include swagger_codegen::langs::java

  sdkman::package { 'leiningen':
    ensure     => present,
    version    => $leiningen_version,
    is_default => true,
  }

  file { "${bin_dir}/clojure-info.sh":
    ensure  => present,
    content => epp('swagger_codegen/langs/clojure-info.sh.epp', {
      leiningen_version => $leiningen_version,
    }),
    mode    => '0755',
  }

}
