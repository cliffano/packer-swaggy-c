ci: clean tools deps lint docker docker-info

clean:
	rm -rf logs modules

deps:
	r10k puppetfile install --moduledir modules

lint:
	puppet-lint \
		--fail-on-warnings \
		--no-documentation-check \
		provisioners/*.pp \
		modules-extra/*/manifests/*.pp \
		modules-extra/*/manifests/langs/*.pp
	shellcheck \
		provisioners/*.sh \
		modules-extra/*/files/langs/*.sh

docker:
	mkdir -p logs/
	PACKER_LOG_PATH=logs/packer-$@.log \
		PACKER_LOG=1 \
		packer build \
		templates/$@.json

docker-info:
	docker run \
	  --rm \
	  --workdir /opt/workspace \
	  -v `pwd`:/opt/workspace \
	  -t cliffano/swaggy-c \
	  /opt/swagger-codegen/bin/info.sh

docker-publish:
	docker push cliffano/swaggy-c:latest

tools:
	gem install puppet-lint r10k

.PHONY: ci clean deps lint docker docker-info docker-publish tools
