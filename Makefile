build:
	docker build --rm -t jekyll-local .

push:
	docker push mor1/alpine-jekyll
