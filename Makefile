run:
	docker run -v $(shell pwd)/config.yaml:/opt/sinopia/config.yaml -d --restart=always -p 4873:4873 --name npm keyvanfatehi/sinopia:latest

start:
	docker start npm
