IMAGENAME?=TheNotary/ts3_shivtr_exporter
TAG?=latest
SHIVTR_SERVER?=https://myjenkins

debug: image
	docker run --rm -p 9118:9118 -e DEBUG=1 -e SHIVTR_SERVER=$(SHIVTR_SERVER) -e VIRTUAL_PORT=9118 $(IMAGENAME):$(TAG)

image:
	docker build -t $(IMAGENAME):$(TAG) .

push: image
	docker push $(IMAGENAME):$(TAG)


.PHONY: image push debug
