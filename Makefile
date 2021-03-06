ci: clean tools deps lint docker-swagger-codegen-langs docker-info-swagger-codegen-langs docker-swaggy-c docker-info-swaggy-c

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

docker-swagger-codegen-langs:
	mkdir -p logs/
	PACKER_LOG_PATH=logs/packer-swagger-codegen-langs.log \
		PACKER_LOG=1 \
		packer build \
		templates/docker-swagger-codegen-langs.json

docker-swaggy-c:
	mkdir -p logs/
	PACKER_LOG_PATH=logs/packer-swaggy-c.log \
		PACKER_LOG=1 \
		packer build \
		templates/docker-swaggy-c.json

docker-info-swagger-codegen-langs:
	docker run \
	  --rm \
	  --workdir /opt/workspace \
	  -v `pwd`:/opt/workspace \
	  -t cliffano/swagger-codegen-langs \
	  /opt/swagger-codegen/bin/info.sh

docker-info-swaggy-c:
	docker run \
	  --rm \
	  --workdir /opt/workspace \
	  -v `pwd`:/opt/workspace \
	  -t cliffano/swaggy-c \
	  /bin/sh -c "/opt/swagger-codegen/bin/info.sh; /opt/swaggy-c/bin/info.sh"

docker-publish-swagger-codegen-langs:
	docker push cliffano/swagger-codegen-langs:latest

docker-publish-swaggy-c:
	docker push cliffano/swaggy-c:latest

tools:
	gem install puppet-lint r10k

.PHONY: ci clean deps lint docker-swagger-codegen-langs docker-info-swagger-codegen-langs docker-publish-swagger-codegen-langs docker-swaggy-c docker-info-swaggy-c docker-publish-swaggy-c tools
