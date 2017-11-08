NAME=veltra/cloudsql-proxy

.PHONY: all build

include .env

all: build

build: ## Build docker containers
	@docker build -t $(NAME) .

start: build ## Start docker containers.
	docker run -d --name cloudsqlproxy --env-file .env -p 3306:3306 $(NAME)

stop: ## Stop docker containers.
	@docker rm -f cloudsqlproxy

test: start
	@docker run --rm --network container:cloudsqlproxy appropriate/curl --retry 10 --retry-connrefused --head telnet://127.0.0.1:3306
