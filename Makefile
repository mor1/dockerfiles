build:
	docker build --rm -t python3-local .

push:
	docker push mor1/alpine-python3
