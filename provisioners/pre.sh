# https://puppet.com/blog/using-puppet-alpine-linux

echo http://dl-4.alpinelinux.org/alpine/edge/testing/ >> /etc/apk/repositories
apk update
apk add sudo shadow ruby less bash
gem install puppet --no-rdoc -no-ri

ln -s /usr/lib/ruby/gems/2.3.0/gems/puppet-4.10.1/bin/puppet /usr/local/bin/puppet
ln -s /usr/lib/ruby/gems/2.3.0/gems/facter-2.4.6/bin/facter /usr/local/bin/facter

facter os

mkdir -p /tmp/packer-swaggy-c/