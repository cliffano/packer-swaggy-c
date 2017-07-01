#!/bin/sh

apt-get update
apt-get install puppet

echo "****************************************"
echo "* Host info"
echo "****************************************"
echo "PATH: $PATH"
echo "puppet version: $(puppet --version)"
echo "facter version: $(facter --version)"
facter os

# Create stage directory for provisioning using puppet-masterless
mkdir -p /tmp/packer-swaggy-c/
