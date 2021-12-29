.PHONY: compile-dev compile build run

compile-dev:
	pip-compile requirements.in requirements-dev.in --output-file requirements-dev.txt && \
	pip3 install -r requirements-dev.txt

compile: compile-dev
	pip-compile requirements.in

build:
	docker build -t simple-api:0.1.0 .

run:
	docker run --rm -p 8081:8081 --name simple-api simple-api:0.1.0

test:
	pytest
