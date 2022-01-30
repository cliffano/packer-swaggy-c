version ?= 0.9.0-pre.0

ci: clean deps lint build-swagger-codegen-langs info-swagger-codegen-langs publish-swagger-codegen-langs build-swaggy-c info-swaggy-c publish-swaggy-c

clean:
	rm -rf logs modules

deps:
	gem install bundler
	bundle install --binstubs -j4
	bundle exec r10k puppetfile install --moduledir modules

lint:
	bundle exec puppet-lint \
		--fail-on-warnings \
		--no-documentation-check \
		provisioners/*.pp \
		modules-extra/*/manifests/*.pp
		modules-extra/*/manifests/langs/*.pp
	shellcheck \
		provisioners/*.sh

build-swagger-codegen-langs:
	mkdir -p logs/
	PACKER_LOG_PATH=logs/packer-swagger-codegen-langs.log \
		PACKER_LOG=1 \
		packer build \
		templates/docker-swagger-codegen-langs.json

build-swaggy-c:
	mkdir -p logs/
	PACKER_LOG_PATH=logs/packer-swaggy-c.log \
		PACKER_LOG=1 \
		packer build \
		templates/docker-swaggy-c.json

info-swagger-codegen-langs:
	docker run \
	  --rm \
	  --workdir /opt/workspace \
	  -v `pwd`:/opt/workspace \
	  -t cliffano/swagger-codegen-langs \
	  /opt/swagger-codegen/bin/info.sh

info-swaggy-c:
	docker run \
	  --rm \
	  --workdir /opt/workspace \
	  -v `pwd`:/opt/workspace \
	  -t cliffano/swaggy-c \
	  /bin/sh -c "/opt/swagger-codegen/bin/info.sh; /opt/swaggy-c/bin/info.sh"

publish-swagger-codegen-langs:
	docker push cliffano/swagger-codegen-langs:latest
	docker push cliffano/swagger-codegen-langs:${version}

publish-swaggy-c:
	docker push cliffano/swaggy-c:latest
	docker push cliffano/swaggy-c:${version}

tools:
	gem install puppet-lint r10k

.PHONY: ci clean deps lint build-swagger-codegen-langs info-swagger-codegen-langs publish-swagger-codegen-langs build-swaggy-c info-swaggy-c publish-swaggy-c
