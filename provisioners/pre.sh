#!/bin/sh

# Create stage directory for provisioning using puppet-masterless
mkdir -p /tmp/packer-swaggy-c/
cd /tmp/packer-swaggy-c/

# Install Puppet, adapted from
# https://github.com/puppetlabs/puppet-in-docker/blob/master/puppet-agent-ubuntu/Dockerfile
# Will switch to Puppetlabs' Docker image if they provide puppet-masterless
apt-get update
apt-get install --no-install-recommends -y wget  ca-certificates lsb-release sudo apt-utils software-properties-common python-software-properties
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
dpkg -i puppetlabs-release-pc1-xenial.deb
rm puppetlabs-release-pc1-xenial.deb
apt-get update
apt-get install --no-install-recommends -y puppet-agent
rm -rf /var/lib/apt/lists/*
PATH=/opt/puppetlabs/server/bin:/opt/puppetlabs/puppet/bin:/opt/puppetlabs/bin:$PATH

echo "****************************************"
echo "* Host info"
echo "****************************************"
echo "PATH: $PATH"
echo "puppet version: $(puppet --version)"
echo "facter version: $(facter --version)"
echo "hiera version: $(hiera --version)"
facter os
