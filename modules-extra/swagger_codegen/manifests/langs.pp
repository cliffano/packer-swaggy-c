class swagger_codegen::langs (
  $erlang_version   = '19.3.0-r3',
  $ghc_version      = '8.0.2-r6',
  $go_version       = '1.8.1-r0',
  $mono_version     = '4.6.1.5-r0',
  $nodejs_version   = '6.10.3-r0',
  $npm_version      = '6.10.3-r0',
  $openjdk7_version = '7.131.2.6.9-r1',
  $perl_version     = '5.24.1-r2',
  $php_version      = '5.6.30-r0',
  $python_version   = '2.7.12-r0',
) {

  package { 'erlang':
    ensure   => $erlang_version,
    provider => 'apk',
  }

  #package { 'ghc':
  #  ensure   => $ghc_version,
  #  provider => 'apk',
  #}

  package { 'go':
    ensure   => $go_version,
    provider => 'apk',
  }

  #package { 'mono':
  #  ensure   => $mono_version,
  #  provider => 'apk',
  #}

  package { 'nodejs':
    ensure   => $nodejs_version,
    provider => 'apk',
  }

  package { 'nodejs-npm':
    ensure   => $npm_version,
    provider => 'apk',
  }

  package { 'openjdk7':
    ensure   => $openjdk_version,
    provider => 'apk',
  }

  package { 'perl':
    ensure   => $perl_version,
    provider => 'apk',
  }

  package { 'php5':
    ensure   => $php_version,
    provider => 'apk',
  }

  package { 'python':
    ensure   => $python_version,
    provider => 'apk',
  }

}
