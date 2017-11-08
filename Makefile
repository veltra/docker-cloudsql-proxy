.PHONY: all build

all: build

build: ## Build docker containers
	@docker-compose build cloudsql-proxy

cli: ## Run cli
	@docker-compose run --rm cloudsql-proxy bash

start: build ## Start docker containers.
	@docker-compose up -d

stop: ## Stop docker containers.
	@docker-compose stop

status: ## Status docker containers.
	@docker-compose ps

restart: ## Restart docker containers.
restart: stop start

clean: ## Claen docker containers and clean this project
clean: stop
	@docker-compose rm --force
	@find . -name \*.pyc -delete
	@find . -name \*.mo -delete

tail: ## Tail logs for docker containers
	@docker-compose logs -f cloudsql-proxy

test: start
	@docker run --rm --network container:cloudsqlproxy appropriate/curl --retry 10 --retry-connrefused --head telnet://cloudsqlproxy:3306
