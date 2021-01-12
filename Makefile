VER=0.5

build:
	docker build . -t t20:5000/data-science:latest -t t20:5000/data-science:${VER}

push:
	docker push t20:5000/data-science:latest
	docker push t20:5000/data-science:${VER}
