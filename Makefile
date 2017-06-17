ci: clean tools deps lint docker

clean:
	rm -rf logs modules

deps:
	r10k puppetfile install --moduledir modules

lint:
	puppet-lint \
		--fail-on-warnings \
		--no-documentation-check \
		provisioners/*.pp \
		modules-extra/*/manifests/*.pp
	shellcheck \
		provisioners/*.sh

docker:
	mkdir -p logs/
	PACKER_LOG_PATH=logs/packer-$@.log \
		PACKER_LOG=1 \
		packer build \
		templates/$@.json

docker-publish:
	docker push cliffano/swaggy-c:latest

tools:
	gem install puppet-lint r10k

.PHONY: ci clean deps lint docker docker-publish tools
