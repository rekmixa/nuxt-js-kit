all: up logs-pm2

env:
	@@docker-compose exec nginx bash

up:
	@docker-compose up -d --remove-orphans --force-recreate --build

down:
	@docker-compose down

down-v:
	@docker-compose down -v

stop:
	@docker-compose stop

restart:
	@docker-compose restart

logs:
	@docker-compose logs -f nginx

logs-pm2:
	@docker-compose exec nginx pm2 logs 0

cp-env:
	@test -f .env || cp .env-dist .env

docker-compose-override:
	@test -f docker-compose.override.yml || echo "version: '3'" >> docker-compose.override.yml

install: cp-env docker-compose-override up

yarn:
	@docker-compose run --rm --no-deps nginx yarn
