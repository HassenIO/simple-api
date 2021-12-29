run:
	docker run --rm -p 8081:8081 --name simple-api simple-api:0.1.0

build:
	docker build -t simple-api:0.1.0 .
