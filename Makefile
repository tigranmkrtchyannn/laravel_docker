DOCKER_COMPOSE := docker-compose

MYSQL_SERVICE := mysql
PHP_SERVICE := php
NGINX_SERVICE := nginx

.PHONY:

build:
	$(DOCKER_COMPOSE) build

start:
	$(DOCKER_COMPOSE) up -d


stop:
	$(DOCKER_COMPOSE) stop

restart:
	$(DOCKER_COMPOSE) restart

down:
	$(DOCKER_COMPOSE) down

composer:
	$(DOCKER_COMPOSE) exec $(PHP_SERVICE) composer install

migrate:
	$(DOCKER_COMPOSE) exec $(PHP_SERVICE) php artisan migrate

seed:
	$(DOCKER_COMPOSE) exec $(PHP_SERVICE) php artisan db:seed
