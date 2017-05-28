package { 'erlang':
  ensure   => '19.3.0-r3',
  provider => 'apk',
}

#package { 'ghc':
#  ensure   => '8.0.2-r6', 
#  provider => 'apk',
#}

package { 'go':
  ensure   => '1.8.1-r0',
  provider => 'apk',
}

package { 'mono':
  ensure   => '4.6.1.5-r0',
  provider => 'apk',
}

package { 'nodejs':
  ensure   => '6.10.3-r0',
  provider => 'apk',
}

package { 'nodejs-npm':
  ensure   => '6.10.3-r0',
  provider => 'apk',
}

package { 'openjdk7':
  ensure   => '7.131.2.6.9-r1',
  provider => 'apk',
}

package { 'perl':
  ensure   => '5.24.1-r2',
  provider => 'apk',
}

package { 'php5':
  ensure   => '5.6.30-r0',
  provider => 'apk',
}

package { 'python':
  ensure   => '2.7.12-r0',
  provider => 'apk',
}

#package { 'typescript':
#  ensure   => '2.3.3',
#  provider => 'npm',
#}