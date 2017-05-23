package { 'go':
  ensure   => '1.8.1-r0',
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
