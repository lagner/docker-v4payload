
IMG_HOST = lagner
IMG_NAME = v4payload
IMG_TAG = latest
IMG = $(IMG_HOST)/$(IMG_NAME):$(IMG_TAG)


.PHONY: build run clear push pull


build:
	docker build --rm -t $(IMG) .

run:
	docker run -ti --rm -h $(IMG_HOST) $(IMG)

clear:
	docker rmi $(shell docker images $(IMG) -q)

push:
	docker push $(IMG)

pull:
	docker pull $(IMG)
