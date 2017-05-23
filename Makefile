clean:
	rm -rf logs modules

deps:
	r10k puppetfile install --moduledir modules

docker:
	mkdir -p logs/
	PACKER_LOG_PATH=logs/packer-$@.log \
		PACKER_LOG=1 \
		packer build \
		templates/$@.json

tools:
	gem install r10k

.PHONY: clean deps docker tools