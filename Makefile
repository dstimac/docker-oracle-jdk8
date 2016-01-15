IMAGE_NAME="mentatlabs/oracle-jdk8"
TAG="8u65"

## Build image from Dockerfile
build:
	docker build --rm -t $(IMAGE_NAME) .

## Push image to hub
push:
	docker push $(IMAGE_NAME)

## Push tagged image to hub
push-tag:
	docker push $(IMAGE_NAME):$(TAG)

## Run container with default command
run:
	docker run -it \
		--log-driver=syslog \
		$(IMAGE_NAME)
