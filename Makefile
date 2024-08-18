init: docker-down-clear docker-up app-init
down: docker-down-clear
check: lint test

docker-up:
	docker compose up

docker-down-clear:
	docker compose down -v --remove-orphans

docker-pull:
	docker compose pull

docker-build-pull:
	docker compose build --pull

app-init:
	composer-install

composer-install:
	docker compose run --rm php-cli composer install

composer-update:
	docker compose run --rm php-cli composer update

lint:
	docker compose run --rm php-cli composer php-cs-fixer fix -- --dry-run --diff

cs-fix:
	docker compose run --rm php-cli composer php-cs-fixer fix

test:
	docker compose run --rm php-cli composer test
