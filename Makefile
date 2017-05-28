clean:
	rm -rf logs modules

deps:
	r10k puppetfile install --moduledir modules

lint:
	puppet-lint \
		--fail-on-warnings \
		provisioners/*.pp
	shellcheck \
		provisioners/*.sh

docker:
	mkdir -p logs/
	PACKER_LOG_PATH=logs/packer-$@.log \
		PACKER_LOG=1 \
		packer build \
		templates/$@.json

tools:
	gem install puppet-lint r10k

.PHONY: clean deps lint docker tools