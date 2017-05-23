echo "PATH: $(echo $PATH)"
echo "bash version: $(bash --version)"
echo "facter version: $(facter --version)"
echo "gem version: $(gem --version)"
echo "go version: $(go version)"
echo "perl version: $(perl --version)"
echo "php version: $(php --version)"
echo "puppet version: $(puppet --version)"
echo "python version: $(python --version)"
echo "ruby version: $(ruby --version)"

rm -rf /tmp/packer-swaggy-c/